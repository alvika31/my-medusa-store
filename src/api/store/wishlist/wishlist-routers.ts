import { Router } from "express";
import { wrapHandler } from "@medusajs/medusa";
import { insertWishlist } from "./wishlist-insert";
import { getWishlistByCustomer } from "./wishlist-by-customer";
import { deleteWishlist } from "./wishlist-delete";
import { updateWishlist } from "./wishlist-update";
import { insertWishlistItem } from "./wishlist-item-insert";
import { updateWishlistItem } from "./wishlist-item-update";
import { deleteWishlistItem } from "./wishlist-item-delete";
import { getWishlistItemByVariant } from "./wishlist-item-by-variant";

export default function wishlistRouters(router: Router) {
    router.get("/store/wishlist/customer/:customer_id", wrapHandler(getWishlistByCustomer));
    router.post("/store/wishlist", wrapHandler(insertWishlist));
    router.delete("/store/wishlist/:id", wrapHandler(deleteWishlist));
    router.put("/store/wishlist/:id", wrapHandler(updateWishlist));
    router.get("/store/wishlist-item/variant/:variant_id", wrapHandler(getWishlistItemByVariant));
    router.put("/store/wishlist-item/:id", wrapHandler(updateWishlistItem))
    router.delete("/store/wishlist-item/:id", wrapHandler(deleteWishlistItem));
    router.post("/store/wishlist/:wishlist_name_id/wishlist-item", wrapHandler(insertWishlistItem));
}
