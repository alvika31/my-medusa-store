import type { MedusaRequest, MedusaResponse } from "@medusajs/medusa";
import { EntityManager } from "typeorm";
import WishlistRepository from "src/repositories/wishlist";
import { check, validationResult } from "express-validator";
import WishlistNameRepository from "src/repositories/wishlistName";

export const insertWishlistItem = async (
    req: MedusaRequest,
    res: MedusaResponse
): Promise<void> => {
    try {
        const { wishlist_name_id } = req.params;
        if (!wishlist_name_id || typeof wishlist_name_id !== "string") {
            res.status(400).json({ message: "Invalid or missing wishlist_name_id" });
            return;
        }
        await check("product_id").notEmpty().run(req);
        await check("title").notEmpty().run(req);
        await check("description").notEmpty().run(req);
        await check("quantity").notEmpty().run(req);
        await check("thumbnail").notEmpty().run(req);
        await check("original_total").notEmpty().run(req);
        await check("sub_total").notEmpty().run(req);
        await check("total").notEmpty().run(req);
        await check("unit_price").notEmpty().run(req);
        await check("variant_id").notEmpty().run(req);

        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            res.status(400).json({ errors: errors.array() });
            return;
        }
        const manager: EntityManager = req.scope.resolve("manager");

        const wishlistRepository: typeof WishlistRepository =
            req.scope.resolve("wishlistRepository");
        const wishlistRepo = manager.withRepository(wishlistRepository);

        const wishlistNameRepository: typeof WishlistNameRepository =
            req.scope.resolve("wishlistNameRepository");
        const wishlistNameRepo = manager.withRepository(wishlistNameRepository);


        const wishlist = wishlistRepo.create();
        wishlist.product_id = req.body.product_id;
        wishlist.title = req.body.title;
        wishlist.description = req.body.description;
        wishlist.quantity = req.body.quantity;
        wishlist.thumbnail = req.body.thumbnail;
        wishlist.original_total = req.body.original_total;
        wishlist.sub_total = req.body.sub_total;
        wishlist.total = req.body.total;
        wishlist.unit_price = req.body.unit_price;
        wishlist.variant_id = req.body.variant_id;
        wishlist.wishlist_name_id = wishlist_name_id;
        const result = await wishlistRepo.save(wishlist);

        const wishlistName = await wishlistNameRepo.findOne({
            where: {
                id: wishlist_name_id
            },
            relations: ["wishlists"],
        })

        if (!wishlistName) {
            res.status(404).json({ message: "Wishlist Name not found" });
            return;
        }
        const total = wishlistName.wishlists.reduce((sum, wishlist) => sum + wishlist.total, 0);
        const data = {
            total: total
        }
        console.log(data)
        Object.assign(wishlistName, data)
        await wishlistNameRepo.save(wishlistName)

        if (result) {
            res.status(201).json({
                message: "Success Insert Wishlist Item",
            });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({
            message: "Internal Server Error",
        });
    }
};
