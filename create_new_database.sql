CREATE DATABASE WordPressdb; 
CREATE USER wordpressuser@localhost;
SET PASSWORD FOR wordpressuser@localhost= PASSWORD("password");
GRANT ALL PRIVILEGES ON WordPressdb.* TO wordpressuser@localhost IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

