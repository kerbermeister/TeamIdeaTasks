/*
	This is the script with the SQL-queries to create schemes and fill the tables.
    We create and fill two tables here: Brand and Auto.
*/

create table Brand 
(
	brandId int primary key auto_increment,
    brandName varchar(20) not null unique,
    brandCountry varchar(30) not null
);

create table Auto 
(
	autoId int primary key auto_increment,
    brandId int not null,
    autoModel varchar(20) not null unique,
    price decimal(10,2) not null,
    foreign key (brandId) references Brand (brandId)
);

insert into Brand (brandName, brandCountry) values 
('Audi', 'Germany'),
('Mercedes', 'Germany'),
('BMW', 'Germany'),
('Toyota', 'Japan'),
('Lexus', 'Japan'),
('Ford', 'USA');

insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'Audi'), 'A8', '20000.00');
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'Audi'), 'A7', '19000.00');
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'Mercedes'), 'S200', 30000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'Mercedes'), 'C300', 15000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'Mercedes'), 'E300', 17000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'BMW'), 'M5', 32000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'BMW'), 'X5', 25000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'BMW'), 'X6', 31000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'BMW'), 'I6', 24500.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'TOYOTA'), 'RAV4', 18700.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'TOYOTA'), 'CAMRY', 24000);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'TOYOTA'), 'HIGHLANDER', 27800.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'FORD'), 'MUSTANG', 31000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'FORD'), 'FOCUS', 11000.00);
insert into Auto (brandId, autoModel, price) values ((select brandId from Brand where brandName = 'FORD'), 'EXPLORER', 19500.00);