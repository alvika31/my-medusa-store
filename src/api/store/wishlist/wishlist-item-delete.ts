import type { MedusaRequest, MedusaResponse } from "@medusajs/medusa";
import { EntityManager } from "typeorm";
import WishlistNameRepository from "src/repositories/wishlistName";
import WishlistRepository from "src/repositories/wishlist";

export const deleteWishlistItem = async (req: MedusaRequest, res: MedusaResponse) => {
    try {
        const { id } = req.params;
        if (!id || typeof id !== 'string') {
            res.status(400).json({ message: "Invalid or missing id" });
            return
        }
        const wishlistRepository: typeof WishlistRepository =
            req.scope.resolve("wishlistRepository");
        const manager: EntityManager = req.scope.resolve("manager");
        const wishListRepo = manager.withRepository(wishlistRepository);
        const wishlist = await wishListRepo.findOne({
            where: {
                id: id
            }
        })

        if (!wishlist) {
            res.status(400).json({ message: "Wishlist Item Not Found" });
            return
        }
        await wishListRepo.remove([wishlist])

        const wishlistNameRepository: typeof WishlistNameRepository =
            req.scope.resolve("wishlistNameRepository");
        const wishlistNameRepo = manager.withRepository(wishlistNameRepository);
        const wishlistName = await wishlistNameRepo.findOne({
            where: {
                id: wishlist.wishlist_name_id
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

        res.json({ message: 'Wishlist Item Deleted' })
    } catch (error) {
        console.log(error)
    }
}