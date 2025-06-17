CREATE TABLE customers_dataset(
    "customer_id" TEXT PRIMARY KEY,
    "customer_unique_id" TEXT,
    "customer_zip_code_prefix" TEXT,
    "customer_city" TEXT,
    "customer_state" TEXT,
);
CREATE TABLE geolocation_dataset(
    "geolocation_zip_code_prefix" TEXT,
    "geolocation_lat" TEXT,
    "geolocation_lng"	TEXT,
    "geolocation_city"	TEXT,
    "geolocation_state" TEXT,
);
CREATE TABLE order_items_dataset(
    "order_id" TEXT,
    "order_item_id"	INTEGER,
    "product_id"	TEXT,
    "seller_id"	TEXT,
    "shipping_limit_date" TIMESTAMP,
    "price"	REAL,
    "freight_value" REAL,
    PRIMARY KEY (order_id, order_item_id)
);
CREATE TABLE order_payments_dataset(
    "order_id"	TEXT,
    "payment_sequential" INTEGER,
    "payment_type"	TEXT,
    "payment_installments"	INTEGER,
    "payment_value" REAL,
    PRIMARY KEY (order_id, payment_sequential)
);
CREATE TABLE order_reviews_dataset(
    "review_id"	TEXT,
    "order_id"	TEXT,
    "review_score"	INTEGER,
    "review_comment_title"	TEXT,
    "review_comment_message"	TEXT,
    "review_creation_date"	TIMESTAMP,
    "review_answer_timestamp" TIMESTAMP,
    PRIMARY KEY (order_id, review_id)
);
CREATE TABLE orders_dataset(
    "order_id"	TEXT,
    "customer_id"	TEXT,
    "order_status"	TEXT,
    "order_purchase_timestamp"	TIMESTAMP,
    "order_approved_at"	TIMESTAMP,
    "order_delivered_carrier_date"	TIMESTAMP,
    "order_delivered_customer_date"	TIMESTAMP,
    "order_estimated_delivery_date" TIMESTAMP,
    PRIMARY KEY (order_id, customer_id)
);
CREATE TABLE products_dataset(
    "product_id" TEXT PRIMARY KEY,
    "product_category_name"	TEXT,
    "product_name_lenght"	INTEGER,
    "product_description_lenght"	INTEGER,
    "product_photos_qty"	INTEGER,
    "product_weight_g"	INTEGER,
    "product_length_cm"	INTEGER,
    "product_height_cm"	INTEGER,
    "product_width_cm" INTEGER,
);
CREATE TABLE sellers_dataset(
    "seller_id"	TEXT PRIMARY KEY,
    "seller_zip_code_prefix" TEXT,
    "seller_city"	TEXT,
    "seller_state" TEXT,
);
CREATE TABLE product_category_name_translation(
    "product_category_name"	TEXT PRIMARY KEY,
    "product_category_name_english" TEXT,
);