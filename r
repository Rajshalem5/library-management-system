CREATE TABLE Branch
(
  branch_id INT NOT NULL AUTO_INCREMENT,
  manager_id INT NOT NULL,
  Address VARCHAR(255) NOT NULL,
  PRIMARY KEY (branch_id)
);

CREATE TABLE Customer
(
  customer_id INT NOT NULL AUTO_INCREMENT,
  book_issued VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  reg_date DATE NOT NULL,
  branch_id INT NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Authentication_system
(
  login_id INT NOT NULL AUTO_INCREMENT,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (login_id)
);

CREATE TABLE Publisher
(
  publisher_id INT NOT NULL AUTO_INCREMENT,
  category VARCHAR(255) NOT NULL,
  retail_price INT NOT NULL,
  publish_year INT NOT NULL,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE Author
(
  author_id INT NOT NULL AUTO_INCREMENT,
  author_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE Staff
(
  staff_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  salary INT NOT NULL,
  branch_id INT NOT NULL,
  login_id INT NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (staff_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
  FOREIGN KEY (login_id) REFERENCES Authentication_system(login_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Book
(
  book_id INT NOT NULL AUTO_INCREMENT,
  branch_id INT NOT NULL,
  publisher_id INT NOT NULL,
  author_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
  FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id),
  FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Updates
(
  update_id INT NOT NULL AUTO_INCREMENT,
  login_id INT NOT NULL,
  book_id INT NOT NULL,
  PRIMARY KEY (update_id),
  FOREIGN KEY (login_id) REFERENCES Authentication_system(login_id),
  FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

CREATE TABLE Issue_Status
(
  issue_id INT NOT NULL AUTO_INCREMENT,
  issue_date DATE NOT NULL,
  status VARCHAR(255) NOT NULL,
  customer_id INT NOT NULL,
  book_id INT NOT NULL,
  PRIMARY KEY (issue_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (book_id) REFERENCES Book(book_id)
);
