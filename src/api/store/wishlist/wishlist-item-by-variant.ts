import type { MedusaRequest, MedusaResponse } from "@medusajs/medusa";
import { EntityManager, Like } from "typeorm";
import WishlistRepository from "src/repositories/wishlist";

export const getWishlistItemByVariant = async (req: MedusaRequest, res: MedusaResponse): Promise<void> => {
    try {
        const { variant_id } = req.params
        if (!variant_id || typeof variant_id !== 'string') {
            res.status(400).json({ message: "Invalid or missing variant_id" });
            return
        }
        const wishlistRepository: typeof WishlistRepository = req.scope.resolve("wishlistRepository");
        const manager: EntityManager = req.scope.resolve("manager");
        const wishListRepo = manager.withRepository(wishlistRepository);

        const wishlistByVariant = await wishListRepo.find({
            where: { variant_id: variant_id },
        });

        res.json({
            wishlistItem: wishlistByVariant,
        });
    } catch (error) {
        console.error(error);
        res.status(500).json({
            message: "Internal Server Error",
        });
    }
};
