import { MigrationInterface, QueryRunner } from "typeorm";

export class WishlistNameCreate1699773378063 implements MigrationInterface {
    name = 'WishlistNameCreate1699773378063'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "wishlist" ("id" character varying NOT NULL, "created_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "updated_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "product_id" character varying NOT NULL, "wishlist_name_id" character varying NOT NULL, "title" character varying NOT NULL, "description" character varying, "quantity" integer NOT NULL, "thumbnail" character varying NOT NULL, "original_total" integer, "sub_total" integer, "total" integer, "unit_price" integer NOT NULL, "variant_id" character varying, CONSTRAINT "PK_620bff4a240d66c357b5d820eaa" PRIMARY KEY ("id"))`);
        await queryRunner.query(`CREATE TABLE "wishlist_name" ("id" character varying NOT NULL, "created_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "updated_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "title" character varying NOT NULL, "customer_id" character varying NOT NULL, "total" integer NOT NULL, "region_id" character varying NOT NULL, CONSTRAINT "PK_31afb60122a06a75ad03b69c913" PRIMARY KEY ("id"))`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`DROP TABLE "wishlist_name"`);
        await queryRunner.query(`DROP TABLE "wishlist"`);
    }

}
