/**
 * @swagger
 * components:
 *   schemas:
 *     WishlistName:
 *       type: object
 *       required:
 *         - title
 *         - customer_id
 *         - total
 *         - region_id
 *       properties:
 *         id:
 *           type: string
 *           description: The auto-generated id of the wishlist name id
 *         title:
 *           type: string
 *           description: The title of your wishlist name
 *         customer_id:
 *           type: string
 *           description: The wishlist name of customer
 *         total:
 *           type: number
 *           description: The total of all prices of wishlist items
 *         region_id:
 *           type: string
 *           description: The price format of the total
 *         created_at:
 *           type: string
 *           format: date
 *           description: The date the wishlist name was added
 *         updated_at:
 *           type: string
 *           format: date
 *           description: The date the wishlist name was updated
 *       example:
 *         id: wishlistName_01HF1A305NT8YME1AYVVY82DRJ
 *         title: Birthday
 *         customer_id: cus_01HDVRJGHMVDAMWT73KKHSR9T2
 *         total: 5000
 *         region_id: reg_01HDVQ9V8R4FZ0Q2SBF6VN909E
 *         created_at: 2023-11-12 15:24:06.069659+07
 *         updated-at: 2023-11-13 23:28:06.435339+07
 */
/**
 * @swagger
 * components:
 *   schemas:
 *     Wishlist:
 *       type: object
 *       required:
 *         - product_id
 *         - wishlist_name_id
 *         - title
 *         - description
 *         - quantity
 *         - thumbnail
 *         - original_total
 *         - sub_total
 *         - total
 *         - unit_price
 *         - variant_id
 *       properties:
 *         id:
 *           type: string
 *           description: The auto-generated id of the wishlist id
 *         created_at:
 *           type: string
 *           format: date
 *           description: The date the wishlist was added
 *         updated_at:
 *           type: string
 *           format: date
 *           description: The date the wishlist was updated
 *         product_id:
 *           type: string
 *           description: The products added to wishlist
 *         wishlist_name_id: 
 *           type: string
 *           description: The wishlist that is entered into the wishlist name
 *         title:
 *           type: string
 *           description: The title of product
 *         description:
 *           type: string
 *           description: The variant product
 *         quantity:
 *           type: integer
 *           description: The quantity entered into the wishlist of the product
 *         thumbnail:
 *           type: string
 *           description: The thumbnail of product
 *         original_total:
 *           type: number
 *           description: The original total price of the product entered into the wishlist
 *         sub_total:
 *           type: number
 *           description: The sub total price of the product entered into the wishlist
 *         total:
 *           type: number
 *           description: The total price of the product entered into the wishlist
 *         unit_price:
 *           type: number
 *           description: The price of a product
 *         variant_id:
 *           type: string
 *           description: The variant of product
 *       example:
 *         id: wishlist_01HF1BD6FES3ANQZFZ5BAY3VR2
 *         created_at: 2023-11-12 15:47:08.783344+07
 *         updated_at: 2023-11-13 17:25:46.491687+07
 *         product_id: prod_01HECK50SAA8349E6FXE6YV825
 *         wishlist_name_id: wishlistName_01HF1A305NT8YME1AYVVY82DRJ
 *         title: UNKL347 Kaos T-shirt Katun Lengan Pendek Motif Army Purple SIIN - Purple
 *         description: Purple / XL
 *         quantity: 1
 *         thumbnail: http://localhost:9000/uploads/1699082306282-065d6df6-38b6-4d04-b7ba-5ebc1a5b3bf4.jpg
 *         original_total: 5000
 *         sub_total: 5000
 *         total: 5000
 *         unit_price: 5000
 *         variant_id: variant_01HECK50VZQ11448BKBDRE0Q6T
 */
/**
 * @swagger
 * tags:
 *   name: WishlistName
 *   description: wishlist name operation
 * /store/wishlist/customer/{customer_id}:
 *   get:
 *     summary: Get the wishlist name by id customer
 *     tags: [WishlistName]
 *     parameters:
 *       - in: path
 *         name: customer_id
 *         schema:
 *           type: string
 *         required: true
 *         description: The customer id
 *     responses:
 *       200:
 *         description: The wishlist name response by customer id
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/WishlistName'
 * /store/wishlist:
 *   post:
 *     summary: Create a new wishlist Name
 *     tags: [WishlistName]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             required:
 *               - title
 *               - customer_id
 *               - region_id
 *             properties:
 *               title:
 *                 type: string
 *                 description: The title of the wishlist
 *               customer_id:
 *                 type: string
 *                 description: The customer ID for the wishlist
 *               region_id:
 *                 type: string
 *                 description: The region ID for the wishlist
 *     responses:
 *       201:
 *         description: Wishlist created successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Success Insert Wishlist
 *       400:
 *         description: Bad request. Validation errors may occur.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 errors:
 *                   type: array
 *                   items:
 *                     type: object
 *                     properties:
 *                       msg:
 *                         type: string
 *                         description: The error message
 *                       param:
 *                         type: string
 *                         description: The parameter that caused the error
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * /store/wishlist/{id}:
 *   delete:
 *     summary: Delete a wishlist name by ID
 *     tags: [WishlistName]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the wishlist name to delete
 *     responses:
 *       200:
 *         description: Wishlist deleted successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Deleted
 *       400:
 *         description: Bad request. Invalid or missing ID.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing id
 *       404:
 *         description: Wishlist or wishlist name not found.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid wishlistname id
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * /store/wishlist/{id}:
 *   put:
 *     summary: Update a wishlist name by ID
 *     tags: [WishlistName]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the wishlist name to update
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               title:
 *                 type: string
 *                 description: The updated title of the wishlist name
 *     responses:
 *       200:
 *         description: Wishlist updated successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Updated
 *       400:
 *         description: Bad request. Invalid or missing ID.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing id
 *       404:
 *         description: Wishlist not found.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid wishlist id
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * tags:
 *   name: Wishlist
 *   description: Wishlist operations
 * /store/wishlist-item/variant/{variant_id}:
 *   get:
 *     summary: Get wishlist items by variant ID
 *     tags: [Wishlist]
 *     parameters:
 *       - in: path
 *         name: variant_id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the variant to retrieve wishlist items
 *     responses:
 *       200:
 *         description: Wishlist items retrieved successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 wishlistItem:
 *                   type: array
 *                   items:
 *                     type: object
 *                     properties:
 *                       id:
 *                         type: string
 *                         description: The auto-generated id of the wishlist item
 *                       created_at:
 *                         type: string
 *                         format: date
 *                         description: The date the wishlist item was added
 *                       updated_at:
 *                         type: string
 *                         format: date
 *                         description: The date the wishlist item was updated
 *                       product_id:
 *                         type: string
 *                         description: The ID of the product in the wishlist item
 *                       wishlist_name_id:
 *                         type: string
 *                         description: The ID of the wishlist name in the wishlist item
 *                       title:
 *                         type: string
 *                         description: The title of the product in the wishlist item
 *                       description:
 *                         type: string
 *                         description: The description of the product in the wishlist item
 *                       quantity:
 *                         type: integer
 *                         description: The quantity of the product in the wishlist item
 *                       thumbnail:
 *                         type: string
 *                         description: The thumbnail of the product in the wishlist item
 *                       original_total:
 *                         type: number
 *                         description: The original total price of the product in the wishlist item
 *                       sub_total:
 *                         type: number
 *                         description: The sub total price of the product in the wishlist item
 *                       total:
 *                         type: number
 *                         description: The total price of the product in the wishlist item
 *                       unit_price:
 *                         type: number
 *                         description: The price of a single unit of the product in the wishlist item
 *                       variant_id:
 *                         type: string
 *                         description: The ID of the variant in the wishlist item
 *       400:
 *         description: Bad request. Invalid or missing variant ID.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing variant_id
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * tags:
 *   name: Wishlist
 *   description: Wishlist operations
 * /store/wishlist-item/{id}:
 *   put:
 *     summary: Update a wishlist item by ID
 *     tags: [Wishlist]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the wishlist item to update
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               quantity:
 *                 type: integer
 *                 description: The updated quantity of the wishlist item
 *     responses:
 *       200:
 *         description: Wishlist item updated successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Item Updated
 *       400:
 *         description: Bad request. Invalid or missing ID.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing id
 *       404:
 *         description: Wishlist item or wishlist name not found.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Item not found
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * tags:
 *   name: Wishlist
 *   description: Wishlist operations
 * /store/wishlist-item/{id}:
 *   delete:
 *     summary: Delete a wishlist item by ID
 *     tags: [Wishlist]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the wishlist item to delete
 *     responses:
 *       200:
 *         description: Wishlist item deleted successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Item Deleted
 *       400:
 *         description: Bad request. Invalid or missing ID.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing id
 *       404:
 *         description: Wishlist item or wishlist name not found.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Item Not Found
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * tags:
 *   name: Wishlist
 *   description: Wishlist operations
 * /store/wishlist/{wishlist_name_id}/wishlist-item:
 *   post:
 *     summary: Insert a wishlist item
 *     tags: [Wishlist]
 *     parameters:
 *       - in: path
 *         name: wishlist_name_id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the wishlist name to insert the item into
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               product_id:
 *                 type: string
 *                 description: The ID of the product
 *               title:
 *                 type: string
 *                 description: The title of the wishlist item
 *               description:
 *                 type: string
 *                 description: The description of the wishlist item
 *               quantity:
 *                 type: integer
 *                 description: The quantity of the wishlist item
 *               thumbnail:
 *                 type: string
 *                 description: The thumbnail URL of the wishlist item
 *               original_total:
 *                 type: number
 *                 description: The original total price of the wishlist item
 *               sub_total:
 *                 type: number
 *                 description: The sub total price of the wishlist item
 *               total:
 *                 type: number
 *                 description: The total price of the wishlist item
 *               unit_price:
 *                 type: number
 *                 description: The unit price of the wishlist item
 *               variant_id:
 *                 type: string
 *                 description: The ID of the variant
 *     responses:
 *       201:
 *         description: Wishlist item inserted successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Success Insert Wishlist Item
 *       400:
 *         description: Bad request. Invalid or missing wishlist_name_id or validation errors.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing wishlist_name_id
 *                 errors:
 *                   type: array
 *                   items:
 *                     type: object
 *                     properties:
 *                       param:
 *                         type: string
 *                       msg:
 *                         type: string
 *                       value:
 *                         type: any
 *       404:
 *         description: Wishlist name not found.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Wishlist Name not found
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 */
/**
 * @swagger
 * tags:
 *   name: Admin
 *   description: Admin operations
 * /admin/{customer_id}/wishlist:
 *   get:
 *     summary: Get wishlist for a specific customer (admin access required)
 *     tags: [Admin]
 *     security:
 *       - bearerAuth: ["eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidXNyXzAxSERWUUJTVkFUNU1KUUROMFZCTjFWREhDIiwiZG9tYWluIjoiYWRtaW4iLCJpYXQiOjE2OTk5NTIyNTIsImV4cCI6MTcwMDAzODY1Mn0.73srPqiCkOnfSjbGZ5Tngs1V5hLr1a51RXBVYMKba2M"]
 *     parameters:
 *       - in: path
 *         name: customer_id
 *         schema:
 *           type: string
 *         required: true
 *         description: The ID of the customer to get the wishlist for
 *     responses:
 *       200:
 *         description: Wishlist retrieved successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 wishlist:
 *                   type: array
 *                   items:
 *                     type: object
 *                     properties:
 *                       id:
 *                         type: string
 *                         description: The auto-generated id of the wishlist
 *                       title:
 *                         type: string
 *                         description: The title of the wishlist
 *                       customer_id:
 *                         type: string
 *                         description: The ID of the customer associated with the wishlist
 *                       total:
 *                         type: number
 *                         description: The total price of all items in the wishlist
 *                       region_id:
 *                         type: string
 *                         description: The ID of the region associated with the wishlist
 *                       created_at:
 *                         type: string
 *                         format: date
 *                         description: The date the wishlist was added
 *                       updated_at:
 *                         type: string
 *                         format: date
 *                         description: The date the wishlist was updated
 *                       wishlists:
 *                         type: array
 *                         items:
 *                           type: object
 *                           properties:
 *                             id:
 *                               type: string
 *                               description: The auto-generated id of the wishlist item
 *                             created_at:
 *                               type: string
 *                               format: date
 *                               description: The date the wishlist item was added
 *                             updated_at:
 *                               type: string
 *                               format: date
 *                               description: The date the wishlist item was updated
 *                             product_id:
 *                               type: string
 *                               description: The ID of the product in the wishlist item
 *                             wishlist_name_id:
 *                               type: string
 *                               description: The ID of the wishlist associated with the item
 *                             title:
 *                               type: string
 *                               description: The title of the product in the wishlist item
 *                             description:
 *                               type: string
 *                               description: The description of the product variant in the wishlist item
 *                             quantity:
 *                               type: integer
 *                               description: The quantity of the product in the wishlist item
 *                             thumbnail:
 *                               type: string
 *                               description: The thumbnail URL of the product in the wishlist item
 *                             original_total:
 *                               type: number
 *                               description: The original total price of the product in the wishlist item
 *                             sub_total:
 *                               type: number
 *                               description: The sub total price of the product in the wishlist item
 *                             total:
 *                               type: number
 *                               description: The total price of the product in the wishlist item
 *                             unit_price:
 *                               type: number
 *                               description: The unit price of the product in the wishlist item
 *                             variant_id:
 *                               type: string
 *                               description: The ID of the variant in the wishlist item
 *       400:
 *         description: Bad request. Invalid or missing customer_id.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Invalid or missing customer_id
 *       500:
 *         description: Internal Server Error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Internal Server Error
 *       401:
 *         description: Unauthorized. Admin access required.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Unauthorized. Admin access required.
 */





