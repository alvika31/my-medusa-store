## Cara Penggunaan Medusa Backend
1. Buka terminal apa saja, lalu ketikan perintah: git clone https://github.com/alvika31/my-medusa-store.git
2. Setelah selesai, buka PgAdmin 4 atau apa saja untuk memanage postgresSQL, lalu import database, database ada di Folder DB
3. Configurasikan nama database dan password databasenya di .env dan datasource.js dengan nama dan password database yang dibuat.
4. Setelah itu ketikan perintah: npm install
5. Jika ada error (0 , modules_sdk_1.registerModules) is not a function, maka di direktori root, package.json ubah versi @medusajs/medusa ke versi "1.17.4" lalu ketikan perintah: npm install
6. Sesudah selesai ketikan perintah: npm run dev untuk menjalankan server backend dan dashboard admin
