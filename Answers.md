1. "Product" table contains information of different products and "Product category" table contains information about particular product category. The "category_id" is a foreign key in "Product" table, which is the primary key of table "Product category".
---------------------------------------
2. Since the "category_id" is a foreign key in "Product" table it accepts only those values which are already present in "id" column of "Product category" and also we can use contraints to set rules for values that we store.
