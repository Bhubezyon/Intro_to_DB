--task_2.sql
--Create all tables for the alx_book_store database

CREATE TABLE Authors (author_id INT AUTO_INCREMENT PRIMARY KEY,
                      author_name VARCHAR(200) NOT NULL,
                      BIO TEXT);

CREATE TABLE Books (book_id INT AUTO_INCREMENT PRIMARY KEY,
                    title VARCHAR(255) NOT NULL,
                    author INT NOT NULL,
                    genre VARCHAR(100),
                    price DECIMAL(10, 2),
                    stock INT DEFAULT 0,
                    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID));

CREATE TABLE Customers (customer_id INT AUTO_INCREMENT PRIMARY KEY,
                        customer_name VARCHAR(215) NOT NULL,
                        last_name VARCHAR(100) NOT NULL,
                        email VARCHAR(215) UNIQUE NOT NULL,
                        phone VARCHAR(20),
                        address TEXT);

CREATE TABLE Orders (order_id INT AUTO_INCREMENT PRIMARY KEY,
                     customer_id INT NOT NULL,
                     order_date DATETIME DEFAULT CURRENT_TIME STAMP,
                     STATUS VARCHAR(50) DEFAULT 'PENDING',
                     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
                     );

CREATE TABLE Order_Details (order_detail_id INT AUTO PRIMARY KEY,
                            order_id INT NOT NULL,
                            book_id INT NOT NULL,
                            quantity DOUBLE INT NOT NULL,
                            unit_price DECIMAL(10, 2) NOT NULL,
                            FOREIGN KEY (order_id) REFERENCES Orders(order_id),
                            FOREIGN KEY (book_id) REFERENCES Books(book_id));