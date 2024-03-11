
CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(15),
    description TEXT,
    SKU VARCHAR(10),
    category_id INT references product_category(id),
    inventory_id INT references product_inventory(id),   
    discount_id INT references discount(id),
    price DECIMAL(10,2),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);
 CREATE TABLE product_category(
     id INT PRIMARY KEY,
     name VARCHAR(15),
     description TEXT,
     created_at TIMESTAMP,
     modified_at TIMESTAMP,
    deleted_at TIMESTAMP   
 );
CREATE TABLE product_inventory(
     id INT PRIMARY KEY,
     quantity INT,
     created_at TIMESTAMP,
     modified_at TIMESTAMP,
    deleted_at TIMESTAMP
     );
CREATE TABLE discount(
    id INT PRIMARY KEY,
    name VARCHAR(15),
    description TEXT,
    discount_percent DECIMAL(5,2),
    active BOOL,
    created_at TIMESTAMP,
     modified_at TIMESTAMP,
    deleted_at TIMESTAMP
)
