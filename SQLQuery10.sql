CREATE DATABASE CarService;
USE CarService;


CREATE TABLE Clients(
	Clients_id int IDENTITY(1,1),
	Family varchar(255),
	Clients_name varchar(255),
	Last_name varchar(255),
	City varchar(255),
	Address varchar(255),
	Phone_Number bigint,
	Email varchar(255),
	PRIMARY KEY(Clients_id)
);

CREATE TABLE SpareParts(
	SpareParts_id int IDENTITY(1,1),
	SpareParts_name varchar(255),
	BrandAuto varchar(255),
	ModelAuto varchar(255),
	TypeEngine varchar(255),
	Producer varchar(255),
	Quantity int,
	Price float
	PRIMARY KEY(SpareParts_id)
);

CREATE TABLE Work(
	Work_id int IDENTITY(1,1),
	Work_name varchar(255),
	Price float
	PRIMARY KEY(Work_id)
);

CREATE TABLE Car(
	Car_id int IDENTITY(1,1),
	Clients_id int FOREIGN KEY REFERENCES Clients(Clients_id),
	BrandAuto varchar(255),
	ModelAuto varchar(255),
	TypeEngine varchar(255),
	YearRelese int,
	Mileage int,
	StateRegistrationNumber varchar(255),
	Color varchar(255),
	DateRegistration date
	PRIMARY KEY(Car_id)
);

CREATE TABLE WorkOrder(
	WorkOrder_id int IDENTITY(1,1),
	Clients_id int FOREIGN KEY REFERENCES Clients(Clients_id),
	Work_id int FOREIGN KEY REFERENCES Work(Work_id)
	PRIMARY KEY(WorkOrder_id)
);
CREATE TABLE SparePartsOrder(
	SparePartsOrder_id int IDENTITY(1,1),
	Clients_id int FOREIGN KEY REFERENCES Clients(Clients_id),
	SpareParts_id int FOREIGN KEY REFERENCES SpareParts(SpareParts_id)
	PRIMARY KEY(SparePartsOrder_id)
);


INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Александрова','Алиса','Евгеньевна','Углич','Ярославское шоссе, 9-28', 79053165118,'xapougregougau-4522@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Гришина','Мария','Романовна','Калининград','?площадь Маршала Василевского, 1-12', 79830236379,'grouquannenequau-5999@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Комиссарова','Анастасия','Матвеевна','Красноярск','Дзержинского, 18-63', 79373820195,'zadureddeimmo-4339@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Худякова','Виктория','Адамовна','Екатеринбург','?Малышева, 68-16',79100378385 ,'wozavefeba-5616@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Ефремов','Александр','Константинович','Москва','Шаболовка, 65-1',79190372945 ,'troyavumowei-1900@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Мартынов','Максим','Богданович','Новосибирск','Ипподромская, 8-45',79091393921 ,'marireuddelle-2815@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Богданов','Александр','Ильич','Самара','Ленинская, 93а-37', 79012041880,'gimmiseleppo-7629@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Жданова','Полина','Александровна','Екатеринбург','Мичурина, 217', 79555674120,'gimmiseleppo-7629@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Некрасов','Кирилл','Максимович','Новосибирск','Воинская, 65-39', 79339067887,'brumoukukifre-5773@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Яковлев','Александр','Михайлович','Омск','Лермонтова, 97-41', 79003073665,'guddeweuprosoi-6622@gmail.com');


INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Тормозные колодки, комплект, задние','Audi','TT II (8J3)','Бензиновый','ABS',20,4886);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Тормозные колодки, комплект, передние','Audi','TT II (8J3)','Бензиновый','ABS',24,5372);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Свеча накаливания','Audi','A7 Sportback (4GA)','Дизельный','Bosch',25,3150);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Фильтр воздушный','Audi','A7 Sportback (4GA)','Дизельный','Knecht',75,2865);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Датчик износа тормозных колодок','BMW','X5 II (E70, E70N)','Дизельный','NGK',13,1368);---
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Диск тормозной, передний','BMW','BMW X1 (E84)','Дизельный',' ATE',42,7015);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Диск тормозной, задний','BMW','X5 II (E70, E70N)','Дизельный','Brembo',35,13375);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Диск тормозной, задний','Chevrolet','Camaro V','Бензиновый','Lucas',35,16575);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Фильтр воздушный','Chevrolet','Camaro V','Бензиновый','H&K',14,2612);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Фильтр топливный, задний','Honda','Accord VIII (CP, CU)','Бензиновый','Knect mahle',68,5999);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Свеча зажигания','Honda','Accord VIII (CP, CU)','Бензиновый','Bosch',14,2810);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Фильтр салона, пылевой','Ford','Focus кабрио','Бензиновый','Kolbenschmidt', 24,3649);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Резинка стеклоотчистителя, передняя левая','Jaguar','X-Type седан (X400)','Дизельный',' Valeo', 12,3572);---
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Тормозные колодки, комплект, передние',' Jaguar','XF седан (X250)','Дизельный','Remsa',24,20464);
INSERT INTO SpareParts(SpareParts_name, BrandAuto,ModelAuto, TypeEngine, Producer, Quantity, Price) values ('Диск тормозной, передний','Mazda',' Mazda3 седан III (BM)','Бензиновый','Schneider',24,5867);


INSERT INTO Work(Work_name, Price) values ('Замена воздушного фильтра', 160 );
INSERT INTO Work(Work_name, Price) values ('Замена топливного фильтра',550 );
INSERT INTO Work(Work_name, Price) values ('Замена фильтра салона',630 );
INSERT INTO Work(Work_name, Price) values ('Замена тормозных дисков', 700 );
INSERT INTO Work(Work_name, Price) values ('Замена тормозных колодок',1700);
INSERT INTO Work(Work_name, Price) values ('Замена свечей зажигания', 650);
INSERT INTO Work(Work_name, Price) values ('Замена свечей накаливания',900);
INSERT INTO Work(Work_name, Price) values ('Замена датчиков износа тормозных колодок',650);



INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (1,'Audi','TT II (8J3)','Бензиновый',2009,160648,'К 072 М А','синий','08.02.2021');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (3,'Audi','A7 Sportback (4GA)','Бензиновый',2010,123456,'Р 501 М Т','серый','10.03.2020');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (6,'BMW','X5 II (E70, E70N)','Дизельный',2007,150000,'В 440 О Т','чёрный','14.06.2020');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (9,'BMW','X1 (E84)','Дизельный',2012,65606,'С 393 О К','красный','23.12.2018');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (7,'Chevrolet','Camaro V','Бензиновый',2011,200001,'М 327 С С','жёлтый','24.06.2018');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (4,'Honda','Accord VIII (CP, CU)','Бензиновый',2013,508538,'О 975 Е С','белый','09.11.2016');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (10,'Ford','Focus кабрио','Бензиновый',2006,196470,'Р 619 К К','синий','21.08.2022');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (8,'Jaguar','XF седан (X250)','Дизельный',2008,67271,'О 358 А У','чёрный','12.01.2019');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (2,'Mazda',' Mazda3 седан III (BM)','Бензиновый',2013,55555,'В 211 У Т','зелёный','22.07.2015');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (5,'Chevrolet','Camaro V','Бензиновый',2009,81702,'Р 195 Н Х','чёрный','05.03.2016');


INSERT INTO WorkOrder(Clients_id, Work_id ) values (1,5);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (2,4);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (3,5);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (4,2);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (5,1);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (6,8);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (7,4);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (8,5);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (9,5);
INSERT INTO WorkOrder(Clients_id, Work_id ) values (10,3);



INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (1,2);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (2,15);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (3,3);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (4,10);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (5,9);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (6,5);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (7,8);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (8,14);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (9,6);
INSERT INTO SparePartsOrder(Clients_id, SpareParts_id ) values (10,12);




--запросы
select * from Clients;--вывод всех таблиц
select * from SpareParts;
select * from Work;
select * from Car;
select * from WorkOrder;
select * from SparePartsOrder;


--вывод данных о клиентах и заказе запчастей
select Clients.Clients_id ,Family, Clients_name, SpareParts_name, Price 
from Clients, SpareParts,SparePartsOrder
where Clients.Clients_id = SparePartsOrder.Clients_id
AND SparePartsOrder.SpareParts_id  = SpareParts.SpareParts_id AND SpareParts.Price >= 5000;


--вывод данных о клиентах и заказе работ
select Clients.Clients_id ,Family, Clients_name, Work_name, Price 
from Clients, Work, WorkOrder
where Clients.Clients_id = WorkOrder.Clients_id
AND WorkOrder.Clients_id  = Work.Work_id AND Work.Price >= 700;

--вывод данных о клиентах и их авто
select Family, Clients_name, Address, Phone_Number, BrandAuto, ModelAuto, StateRegistrationNumber 
from Clients, Car
where Clients.Clients_id = Car.Car_id;


--заполните данные о себе, как указанно в примере
--(Пример) INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) values ('Иванов','Иван','Иванович','Углич','Ярославское шоссе, 9-28', 79053165118,'xapougregougau-4522@gmail.com');
INSERT INTO Clients(Family, Clients_name, Last_name, City, Address, Phone_Number, Email) 
    VALUES ('Иванов','Иван','Иванович','Углич','Ярославское шоссе, 9-28', 79053165118,'xapougregougau-4522@gmail.com') 

--заполните данные об автомобиле, как указанно в примере
--(Пример) INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) values (1,'Audi','TT II (8J3)','Бензиновый',2009,160648,'К 072 М А','синий','08.02.2021');
INSERT INTO Car(Clients_id, BrandAuto,ModelAuto, TypeEngine, YearRelese, Mileage, StateRegistrationNumber, Color, DateRegistration) 
	VALUES  (1,'Audi','TT II (8J3)','Бензиновый',2009,160648,'К 072 М А','синий','08.02.2021');




