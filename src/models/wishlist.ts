import { BeforeInsert, Column, Entity, JoinColumn, ManyToOne } from "typeorm";
import { BaseEntity } from "@medusajs/medusa";
import { generateEntityId } from "@medusajs/medusa/dist/utils";
import { WishlistName } from "./wishlistName";
import { Product } from "./product";
import { ProductVariant } from "./productVariant";

@Entity()
export class Wishlist extends BaseEntity {
  @Column()
  product_id: string;

  @Column({ type: "varchar" })
  wishlist_name_id: string;

  @Column()
  title: string;

  @Column({ nullable: true })
  description: string;

  @Column()
  quantity: number;

  @Column()
  thumbnail: string;

  @Column({ nullable: true })
  original_total: number;

  @Column({ nullable: true })
  sub_total: number;

  @Column({ nullable: true })
  total: number;

  @Column()
  unit_price: number;

  @Column({ nullable: true })
  variant_id: string;

  @ManyToOne(() => ProductVariant, variant => variant.wishlists)
  @JoinColumn({ name: "variant_id" })
  variant: ProductVariant;

  @ManyToOne(() => WishlistName, wishlistName => wishlistName.wishlists)
  @JoinColumn({ name: "wishlist_name_id" })
  wishlistName: WishlistName;

  @ManyToOne(() => Product, product => product.wishlists)
  @JoinColumn({ name: "product_id" })
  products: Product;


  @BeforeInsert()
  private beforeInsert(): void {
    this.id = generateEntityId(this.id, "wishlist");
  }
}
