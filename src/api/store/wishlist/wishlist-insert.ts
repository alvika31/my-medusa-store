import type { MedusaRequest, MedusaResponse } from "@medusajs/medusa";
import { EntityManager } from "typeorm";
import WishlistNameRepository from "src/repositories/wishlistName";
import { check, validationResult } from "express-validator";

export const insertWishlist = async (
  req: MedusaRequest,
  res: MedusaResponse
): Promise<void> => {
  try {
    await check("title").notEmpty().run(req);
    await check("customer_id").notEmpty().isString().run(req);
    await check("region_id").notEmpty().run(req);


    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      res.status(400).json({ errors: errors.array() });
      return;
    }
    const wishlistNameRepository: typeof WishlistNameRepository = req.scope.resolve("wishlistNameRepository");
    const manager: EntityManager = req.scope.resolve("manager");
    const wishListRepo = manager.withRepository(wishlistNameRepository);

    const wishlistName = wishListRepo.create();
    wishlistName.title = req.body.title;
    wishlistName.customer_id = req.body.customer_id;
    wishlistName.total = 0
    wishlistName.region_id = req.body.region_id;

    const result = await wishListRepo.save(wishlistName);
    if (result) {
      res.status(201).json({
        message: "Success Insert Wishlist",
      });
    }
  } catch (error) {
    console.error(error);
    res.status(500).json({
      message: "Internal Server Error",
    });
  }
};
