CREATE TABLE users(
    user_id INT NOT NULL,
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    username VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    website VARCHAR(255)
);

INSERT INTO users(user_id, name, username, email, phone, website) VALUES (1, "Leanne Graham", "Bret", "Sincere@april.biz", "1-770-736-8031 x56442", "hildegard.org"),
(2, "Ervin Howell", "Antonette", "Shanna@melissa.tv", "010-692-6593 x09125", "anastasia.net"),
(3, "Clementine Bauch", "Samantha", "Nathan@yesenia.net", "1-463-123-4447", "ramiro.info"),
(4, "Patricia Lebsack", "Karianne", "Julianne.OConner@kory.org", "493-170-9623 x156", "kale.biz"),
(5, "Chelsey Dietrich", "Kamren", "Lucio_Hettinger@annie.ca", "(254)954-1289", "demarco.info"),
(6, "Mrs. Dennis Schulist", "Leopoldo_Corkery", "Karley_Dach@jasper.info", "1-477-935-8478 x6430", "ola.org"),
(7, "Kurtis Weissnat", "Elwyn.Skiles", "Telly.Hoeger@billy.biz", "210.067.6132", "elvis.io"),
(8, "Nicholas Runolfsdottir V", "Maxime_Nienow", "Sherwood@rosamond.me", "586.493.6943 x140", "jacynthe.com"),
(9, "Glenna Reichert", "Delphine", "Chaim_McDermott@dana.io", "(775)976-6794 x41206", "conrad.com"),
(10, "Clementina DuBuque",  "Moriah.Stanton", "Rey.Padberg@karina.biz", "024-648-3804", "ambrose.net");

CREATE TABLE addresses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255),
    suite VARCHAR(255),
    city VARCHAR(255),
    zipcode VARCHAR(255),
    geo VARCHAR(255)
);

INSERT INTO addresses(street, suite, city, zipcode, geo) VALUES ("Kulas Light", "Apt. 556", "Gwenborough", "92998-3874", "lat:-37.3159, lng:81.1496"),
("Victor Plains", "Suite 879", "Wisokyburgh", "90566-7771", "lat:-43.9509, lng:-34.4618"),
("Douglas Extension", "Suite 847", "McKenziehaven", "59590-4157", "lat:-68.6102, lng:-47.0653"),
("Hoeger Mall", "Apt. 692", "South Elvis", "53919-4257", "lat:29.4572, lng:-164.2990"),
("Skiles Walks", "Suite 351", "Roscoeview", "33263", "lat:-31.8129, lng:62.5342"),
("Norberto Crossing", "Apt. 950", "South Christy", "23505-1337", "lat:-71.4197, lng:71.7478"),
("Rex Trail", "Suite 280", "Howemouth", "58804-1099", "lat:24.8918, lng:21.8984"),
("Ellsworth Summit", "Suite 729", "Aliyaview", "45169", "lat:-14.3990, lng:-120.7677"),
("Dayna Park", "Suite 449", "Bartholomebury", "76495-3109", "lat:24.6463, lng:-168.8889"),
("Kattie Turnpike", "Suite 198", "Lebsackbury", "31428-2261", "lat:-38.2386, lng:57.2232");


CREATE TABLE companies(
    id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(255),
    catchphrase VARCHAR(255),
    bs VARCHAR(255)
);

INSERT INTO companies(company_name, catchphrase, bs) VALUES ("Romaguera-Crona", "Multi-layered client-server neural-net", "harness real-time e-markets"),
("Deckow-Crist", "Proactive didactic contingency", "synergize scalable supply-chains"),
("Romaguera-Jacobson", "Face to face bifurcated interface", "e-enable strategic applications"),
("Robel-Corkery",  "Multi-tiered zero tolerance productivity", "transition cutting-edge web services"),
("Keebler LLC", "User-centric fault-tolerant solution", "revolutionize end-to-end systems"),
("Considine-Lockman", "Synchronised bottom-line interface", "e-enable innovative applications"),
("Johns Group", "Configurable multimedia task-force", "generate enterprise e-tailers"),
("Abernathy Group", "Implemented secondary concept", "e-enable extensible e-tailers"),
("Yost and Sons", "Switchable contextually-based project", "aggregate real-time technologies"),
("Hoeger LLC", "Centralized empowering task-force", "target end-to-end models");