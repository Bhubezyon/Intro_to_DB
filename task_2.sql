--task_2.sql
--Create all tables for the alx_book_store database

CREATE TABLE authors (author_id INT AUTO_INCREMENT PRIMARY KEY,
                      author_name VARCHAR(200) NOT NULL,
                      BIO TEXT);

CREATE TABLE BOOKS (BOOK_ID INT AUTO_INCREMENT PRIMARY KEY,
                    TITLE VARCHAR(255) NOT NULL,
                    AUTHOR_ID INT NOT NULL,
                    GENRE VARCHAR(100),
                    PRICE DECIMAL(10, 2),
                    STOCK INT DEFAULT 0,
                    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID));

CREATE TABLE CUSTOMERS (CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
                        FIRST_NAME VARCHAR(100) NOT NULL,
                        LAST_NAME VARCHAR(100) NOT NULL,
                        EMAIL VARCHAR(255) UNIQUE NOT NULL,
                        PHONE VARCHAR(20),
                        ADDRESS TEXT);

CREATE TABLE ORDERS (ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
                     CUSTOMER_ID INT NOT NULL,
                     ORDER_DATE DATETIME DEFAULT CURRENT_TIME STAMP,
                     STATUS VARCHAR(50) DEFAULT 'PENDING',
                     FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
                     );

CREATE TABLE ORDER_DETAILS (ORDER_DETAIL_ID INT AUTO PRIMARY KEY,
                            ORDER_ID INT NOT NULL,
                            BOOK_ID INT NOT NULL,
                            QUANTITY INT NOT NULL,
                            UNIT_PRICE DECIMAL(10, 2) NOT NULL,
                            FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
                            FOREIGN KEY (BOOK_ID) REFERNCES BOOKS(BOOK_ID));