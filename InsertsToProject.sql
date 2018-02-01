show databases;
use mydb;
Show tables;
-------------------------------------------------------------------------------------------------------------------------
INSERT INTO Address Values (' ','St. Germain','5','Boston','Massachusetts','02115','US');
INSERT INTO Address Values (' ','Beacon Street','40','Boston','Massachusetts','02134','US');
INSERT INTO Address values (' ','Boston Common','9','Boston','Massachusetts','02211','US');
INSERT INTO Address values (' ','10 Bosworth St','9','Boston','Massachusetts','02108','US');
INSERT INTO Address values (' ','290 Washington St.','6','Boston','Massachusetts','02108','US');
INSERT INTO Address values (' ','48 Temple Pl','9','Boston','Massachusetts','02111','US');
INSERT INTO Address values (' ','558 Washington St','10','Boston','Massachusetts','02111','US');
INSERT INTO Address values (' ','39 Dalton St','10','Boston','Massachusetts','02115','US');
INSERT INTO Address values (' ','800 Boylston St','2','Boston','Massachusetts','02118','US');
INSERT INTO Address values (' ','55 Washington St','10','Boston','Massachusetts','02111','US');
INSERT INTO Address values (' ','3 Dalton St','10','Boston','Massachusetts','02115','US');
INSERT INTO Address values (' ','8 Boylston St','2','Boston','Massachusetts','02118','US');
INSERT INTO Address values (' ','26 Boston Common','9','Boston','Massachusetts','02211','US');
INSERT INTO Address values (' ','1 Bosworth St','9','Boston','Massachusetts','02108','US');
INSERT INTO Address values (' ','29 Washington St.','6','Boston','Massachusetts','02108','US');
INSERT INTO Address values (' ','4 Temple Pl','9','Boston','Massachusetts','02111','US');
INSERT INTO Address values (' ','200 Washington St.','6','Boston','Massachusetts','02108','US');
INSERT INTO Address values (' ','8 Temple Pl','9','Boston','Massachusetts','02111','US');
-- Employee
INSERT INTO Address values (' ','70 Boylston St','2','Boston','Massachusetts','02418','US');
INSERT INTO Address values (' ','26 Parker Hill','9','Boston','Massachusetts','02211','US');
INSERT INTO Address values (' ','3 Bosworth St','9','Boston','Massachusetts','02138','US');
INSERT INTO Address values (' ','29 Park St.','6','Boston','Massachusetts','02118','US');
INSERT INTO Address values (' ','4 Avenue Pl','9','Boston','Massachusetts','02113','US');
INSERT INTO Address values (' ','200 Newton St.','6','Boston','Massachusetts','02138','US');
INSERT INTO Address values (' ','8 Boston Architecture','9','Boston','Massachusetts','02111','US');
-------------------------------------------------------------------------------------------------------------------------

INSERT INTO Cuisine Values (1,'Asian');
INSERT INTO Cuisine Values (2,'Thai');
INSERT INTO Cuisine Values (3,'Middle Eastern');
INSERT INTO Cuisine Values (4 ,'Mexican');
INSERT INTO Cuisine Values (5,'American');
INSERT INTO Cuisine Values (6,'Bakery');
INSERT INTO Cuisine Values (7,'Pizza');
INSERT INTO Cuisine Values (8,'Mediterranean');
INSERT INTO Cuisine Values (9,'Japanesse');

-----------------------------------------------------------------------------------------------------
INSERT INTO User_Details Values ('','Lia.Shelton','LiaShel1');
INSERT INTO User_Details Values ('','Marcus.Cruz','MarcusC1');
INSERT INTO User_Details Values ('','Justine.Henderson','JustineH@');
INSERT INTO User_Details Values ('','Yan Pipkins','Yan.P$');
INSERT INTO User_Details Values ('','Priya.Agarwal','Agarwal123@');
INSERT INTO User_Details Values ( '','Supreme Pizza','Supreme');
INSERT INTO User_Details Values ('','Regina Pizzeria','Regin@');
INSERT INTO User_Details Values ('','New York Pizza','NYP@123');
INSERT INTO User_Details Values ('','Wok n Talk','WoknTalk');
INSERT INTO User_Details Values ('','SUBWAY','SUB12345');
INSERT INTO User_Details Values ('','Boston.Shawarma','Shawarma');
INSERT INTO User_Details Values('','Cheesecake.Factory','cheesecake');
INSERT INTO User_Details Values('','IHOP','HOP123');
INSERT INTO User_Details Values ('','BiMediterranean','BismED');
INSERT INTO User_Details Values ('','Krutika.Kothawale','Krutika');

-------------------------------------------------------------------------------------------------------------
INSERT INTO Customer values(1,'Lia','Shelton','2014-05-10','6178299977','Lia.Shelton@gmail.com','1');
INSERT INTO Customer values('','Marcus','Cruz','2017-01-02','6179299988','Marcus.Cruz@gmail.com','2');
INSERT INTO Customer values ('','Justine','Henderson','2017-01-02','6179299988','Henderson@gmail.com','3');
INSERT INTO Customer values ('','Yan','Pipkins','2017-05-05','6179444988','Yan@gmail.com','4');
INSERT INTO Customer values('','Priya','Agarwal','2004-07-12','6179893988','Priya@gmail.com','5');
INSERT INTO Customer values ('','Krutika','Kothawale','2004-07-12','6178209539','Krutika.k@gmail.com','6');

INSERT INTO Customer values('','Li','Shel','2014-05-10','6178299977','Lia.Shelton@gmail.com','7');
INSERT INTO Customer values('','Marc','Cru','2017-01-02','6179299988','Marcus.Cruz@gmail.com','8');
INSERT INTO Customer values ('','Just','son','2017-01-02','6179299988','Henderson@gmail.com','9');
INSERT INTO Customer values ('','Yank','Pipk','2017-05-05','6179444988','Yan@gmail.com','10');
INSERT INTO Customer values('','P','Agarwal','2004-07-12','6179893988','Priya@gmail.com','11');

select * from Customer;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Restaurant values ( 1,'Supreme Pizza', '10:00:00', '02:00:00' ,'Y','Y','N',25.00,75.00,'6178934095','Supreme@gmail.com' ,'2005-05-05',6,1);
INSERT INTO Restaurant values ( 2,'Regina Pizzeria', '10:00:00', '02:00:00' ,'Y','Y','N',30.00,00.00,'6178834095','Pizzeria@gmail.com' ,'2012-04-07',7,2);
INSERT INTO Restaurant values ( 3,'New York Pizza', '11:00:00', '12:00:00' ,'Y','N','N',00.00,00.00,'6178864095','NYP@gmail.com' ,'2015-04-06',8,3);
INSERT INTO Restaurant values ( 4,'Wok n Talk', '12:00:00', '23:00:00' ,'N','Y','N',00.00,00.00,'6178864095','WNT@gmail.com' ,'2000-04-06',9,4);
INSERT INTO Restaurant values ( 5,'SUBWAY', '11:00:00', '23:00:00' ,'Y','Y','N',30.00,50.00,'6179964095','subway@gmail.com' ,'2003-04-09',10,5);
INSERT INTO Restaurant values ( 6,'Boston Shawarma', '11:00:00', '23:00:00' ,'Y','Y','N',30.00,50.00,'6179064095','shawarma@gmail.com' ,'2009-04-11',11,6);
INSERT INTO Restaurant values ( 7,'Cheesecake Factory', '11:00:00', '23:00:00' ,'Y','Y','N',30.00,100.00,'6179964091','Cheesecake@gmail.com' ,'2013-04-09',12,7);
INSERT INTO Restaurant values ( 8,'IHOP', '11:00:00', '23:00:00' ,'Y','Y','N',30.00,50.00,'6179964099','IHOP@gmail.com' ,'2013-07-09',13,8);
INSERT INTO Restaurant values ( 9,'BiMediterranean', '11:00:00', '23:00:00' ,'Y','Y','N',30.00,50.00,'6179964094','BiMediterranean@gmail.com' ,'2008-04-07',14,9);

select * from Restaurant;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Fav_Restaurant values (1,1);
INSERT INTO Fav_Restaurant values (1,5);
INSERT INTO Fav_Restaurant values (2,7);
INSERT INTO Fav_Restaurant values (5,5);
INSERT INTO Fav_Restaurant values (4,2);

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO Menu values (1, 'Veggie delight pizza', 'Pizza', 14.00, 7,1);
INSERT INTO Menu values (2, 'Buffalo Chicken Supreme Pizza', 'Pizza', 12.00, 7,2); 
INSERT INTO Menu values (3, 'Buffalo Chicken Supreme Pizza', 'Pizza', 17.00, 7,2); 
-- -New york Pizza
INSERT INTO Menu values (4, 'Cheese', 'Specialty Pizza and Calzones', 14.00, 7,3);
INSERT INTO Menu values (5, 'Chicken Broccoli Ziti', 'Specialty Pizza and Calzones', 20.00, 7,4); 
-- Asian
INSERT INTO Menu values (6, 'Preserved Egg with Chilled Tofu','Appetizers',12.95,1,5);
INSERT INTO Menu values (7, 'Clam Soup','Soup',11.95,1,5); 
INSERT INTO Menu values (8, 'Almond Bubble Tea','Drinks',04.50,1,6);
-- American
INSERT INTO Menu values (9, 'Caesar Salad Bowl','Salad Bowls',06.49,5,6);
INSERT INTO Menu values (10, 'Meal for 6','Family Meals',46.49,5,7);
-- Bakery
INSERT INTO Menu values (11, 'Flat White Coffee','Espresso',12.99,6,7);
-- medi
INSERT INTO Menu values (12, 'Shawarma Salad','Fresh Salads',09.00,8,8);
--  japnesse
INSERT INTO Menu values (13, 'House Tempura Burrito','Signature Sushi Burritos',10.00,9,9);
INSERT INTO Menu values (14, 'House veg Burrito','Signature Sushi Burritos',10.00,9,9);

-----------------------------------------------------------------------------------------------------------------
INSERT INTO Ref_Address_Type Values (1,'Home Address');
INSERT INTO Ref_Address_Type Values (2,'Office Address');
INSERT INTO Ref_Address_Type Values (3,'Billing Address');

------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Customer_Address Values (1,10,1);
INSERT INTO Customer_Address Values (1,11,2);
INSERT INTO Customer_Address Values (1,12,3);
INSERT INTO Customer_Address Values (2,13,1);
INSERT INTO Customer_Address Values (3,14,1);
INSERT INTO Customer_Address Values (4,15,1);
INSERT INTO Customer_Address Values (4,16,2);
INSERT INTO Customer_Address Values (5,17,1);
INSERT INTO Customer_Address Values (6,18,1);

-------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Customer_Care_Contact Values (1,'6179012345','customer.care1@gmail.com');
INSERT INTO Customer_Care_Contact Values (2,'6179012456','customer.care2@gmail.com');
INSERT INTO Customer_Care_Contact Values (3,'6179012345','customer.care3@gmail.com');
-------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Employee Values (1,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care Representative',19);
INSERT INTO Employee Values (2,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care Representative',20);
INSERT INTO Employee Values (3,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Customer Care Representative',21);
INSERT INTO Employee Values (4,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',22);
INSERT INTO Employee Values (5,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',23);
INSERT INTO Employee Values (6,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',24);
INSERT INTO Employee Values (7,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',25);
INSERT INTO Employee Values (8,'Austin','Stephenson','6173456987','Stephenson@gmail.com','2017-02-01','Delivery Agent',26);

-------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO Customer_Complaint Values (1,'High','Order not delevered and money deducted','Active','1','2','4''6179012345',1);
-- INSERT INTO Customer_Complaint Values (2,'Medium','Wrong order delivered','Handelled','2','5','2',NULL,'customer.care2@gmail.com');
-- INSERT INTO Customer_Complaint Values (3,'Low','Order Was Late','Handelled','3','4','5''6179045345',NULL);

-------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Rest_Discounts Values (1,'Thanksgiving Flat 30%','THANKS30',30,'2017-11-24','2017-11-27',1);
INSERT INTO Rest_Discounts Values (2,'End Of Season Flat 50%','THANKS30',50,'2017-12-11','2017-12-14',2);
INSERT INTO Rest_Discounts Values (3,'Sale Flat 30%','THANKS30',30,'2017-10-24','2017-10-27',3);

-- select * from Rest_Discounts;
-------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Restaurant_Menu Values (1,4);
INSERT INTO Restaurant_Menu Values (1,2);
INSERT INTO Restaurant_Menu Values (1,3);
INSERT INTO Restaurant_Menu Values (3,4);
INSERT INTO Restaurant_Menu Values (3,5);
INSERT INTO Restaurant_Menu Values (2,6);
INSERT INTO Restaurant_Menu Values (2,7);
INSERT INTO Restaurant_Menu Values (2,8);
INSERT INTO Restaurant_Menu Values (4,9);
INSERT INTO Restaurant_Menu Values (5,10);
INSERT INTO Restaurant_Menu Values (6,11);
INSERT INTO Restaurant_Menu Values (7,12);
INSERT INTO Restaurant_Menu Values (8,13);
INSERT INTO Restaurant_Menu Values (9,14);

select * from restaurant_menu;

-----------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Restorent_Cuisine Values (1,7);
INSERT INTO Restorent_Cuisine Values (2,7);
INSERT INTO Restorent_Cuisine Values (3,8);
INSERT INTO Restorent_Cuisine Values (6,7);
INSERT INTO Restorent_Cuisine Values (3,7);
INSERT INTO Restorent_Cuisine Values (2,8);
INSERT INTO Restorent_Cuisine Values (4,4);
INSERT INTO Restorent_Cuisine Values (5,5);
INSERT INTO Restorent_Cuisine Values (6,6);
INSERT INTO Restorent_Cuisine Values (7,7);
INSERT INTO Restorent_Cuisine Values (8,8);

delete from Restorent_Cuisine where restaurant_ID in (1,2,3,4,5,6,7,8);

-----------------------------------------------------------------------------------------------------------------------------------------

 INSERT INTO Saved_Card_Details Values (1,'Credit','12341234123341234','2712','Lia Shelton',1);
 INSERT INTO Saved_Card_Details Values (2,'Debit','12341234103301204','2712','Justine Henderson',3);
 INSERT INTO Saved_Card_Details Values (3,'Credit','12341234123341234','2712','Priya Agarwal',5);
-----------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Ref_Order_Status Values (1,'Placed');
INSERT INTO Ref_Order_Status Values (2,'Cancelled');
INSERT INTO Ref_Order_Status Values (3,'Delivered');
----------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Ref_Delivery_Status Values (1,'Completed');
INSERT INTO Ref_Delivery_Status Values (2,'Returned');
INSERT INTO Ref_Delivery_Status Values (3,'Cancelled');
---------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO rating_restaurent Values (5, 'Food was good',1,1);
INSERT INTO rating_restaurent Values (4, 'Order was accurate',2,5);
INSERT INTO rating_restaurent Values (3, 'Food was not good',6,6);
INSERT INTO rating_restaurent Values (2, 'Bellow Average',5,3);
INSERT INTO rating_restaurent Values (1, 'Worst Food',4,5);

select * from rating_restaurent;
----------------------------------------------------------------------------------------------------------------------

INSERT INTO rating_delivery Values (1,4,1);
INSERT INTO rating_delivery Values (4,2,2);
INSERT INTO rating_delivery Values (3,6,3);

delete from rating_delivery where delivery_ID in (1,2,3);
-----------------------------------------------------------------------------------------------------------------------

INSERT INTO `ORDER` values (1,200.00,'2017-02-01 11:20:20',1,1,1); 
INSERT INTO `ORDER` values (2,100.00,'2016-02-08 12:20:20',1,1,1); 
INSERT INTO `ORDER` values (3,50.00,'2016-02-09 10:20:20',1,1,1); 
INSERT INTO `ORDER` values (4,20.00,'2017-04-9 02:20:20',1,1,1); 
INSERT INTO `ORDER` values (5,26.00,'2017-06-01 01:20:20',1,1,1); 
INSERT INTO `ORDER` values (6,29.00,'2017-02-01 11:10:20',1,1,1);
INSERT INTO `ORDER` values (7,29.00,'2017-12-13 11:10:20',1,1,1);

delete from `ORDER` where Order_ID IN (8,9,10); 

------------------------------------------------------------------------------------------------------------------

INSERT INTO payment_method_used value (1,'Credit Card',1);
INSERT INTO payment_method_used value (2,'Debit Card',2);
--------------------------------------------------------------------------------------------------------------------

INSERT INTO orderline values (1,1,5,20);
INSERT INTO orderline values (2,2,4,10);
INSERT INTO orderline values (3,2,1,10);
INSERT INTO orderline values (4,3,1,90);
INSERT INTO orderline values (5,3,1,90);
INSERT INTO orderline values (6,4,5,20);
INSERT INTO orderline values (7,5,5,20);

delete from orderline where Menu_ID IN (1,2,3,4,5,6,7);
-------------------------------------------------------------------------------------------------------------------

INSERT INTO delivery value (1,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,1,5,1);
INSERT INTO delivery value (2,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,7,2);
INSERT INTO delivery value (3,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,8,3);
INSERT INTO delivery value (4,'2017-02-01 11:20:20','2017-02-01 11:20:30',4,2,9,4);

select * from delivery;
delete from delivery where Delivery_ID IN (5,6);
------------------------------------------------------------------------------------------------------------------


-- Select Queries

Select Restaurant_Name, Opening_Time, Closing_Time, current_time, 
				(CASE WHEN (current_time > Opening_Time && current_time < Closing_Time)
				Then ' Restaurent is open'
				ELSE  ' Restaurent is Closed' 
				End ) AS Restaurant_Status
From Restaurant 
where Restaurant_ID IN (select Restaurant_ID from Restaurant);
            
            
------------------------------------------------------------
-- 2.

SELECT Restaurant_Name, Address.ZIP
FROM Restaurant
INNER JOIN Address ON restaurant.Address_ID = Address.Address_ID
Where Address.ZIP IN (SELECT Address.ZIP
						FROM Customer
						INNER JOIN customer_address ON Customer.CUSTOMER_ID = customer_address.Customer_ID
                        INNER JOIN Address ON customer_address.Address_ID = address.Address_ID
                        INNER JOIN ref_address_type on customer_address.ref_address_type_ID = ref_address_type.ref_address_type_ID
                        Where Customer.CUSTOMER_ID = 1
                        AND Address_type_description in ('Home Address','Office Address'));
                        
------------------------------------------------------------------------------------------


-- 3

SELECT 	`Order`.Order_ID, Round(((SUM(OrderLIne.Line_Price) * OrderLIne.Quantity) * (1 - (rest_Discounts.Discount_Percentage)/100)),2) AS Final_Price_after_discount
FROM 	`Order`, OrderLine, Menu, Restaurant, rest_Discounts
WHERE 	`Order`.Order_ID = OrderLine.Order_ID
AND		OrderLine.Menu_ID = Menu.Menu_ID
AND		Restaurant.Restaurant_ID = Menu.Restaurant_ID
AND		Restaurant.Restaurant_ID = rest_Discounts.Restaurant_ID;
 
-- 5

SELECT concat(Customer_FirstName,' ',Customer_LastName) `Customer Name`,
		Restaurant_Name,
        count(`order`.Order_ID) as `number of orders`
        From Customer
        inner join `Order` on customer.Customer_ID = `order`.customer_ID
        inner join orderline on orderline.Order_ID = `order`.order_ID
        inner join menu on orderline.Menu_ID = menu.Menu_ID
        inner join restaurant on restaurant.Restaurant_ID = menu.Restaurant_ID
        where order_status_ID = (select order_status_ID from ref_order_status where Order_Status_Description = 'Placed')
		AND customer.Customer_ID = 1
        AND restaurant.Restaurant_ID = 1;
        
-- Views

CREATE VIEW V_Restaurant_List AS
Select distinct Restaurant_Name, Opening_Time As Opens_At, 
Closing_Time As Closes_At, 
Min_Order_Price As Min_Order_Should_Be, 
Concat(Street, ' ', City, ' ',State, ' ',ZIP, ' ', Country) As Address, 
(Select (CASE WHEN(MAX(Discount_Percentage) > 0) 
			Then MAX(Discount_Percentage)
            Else 'Discount Not Available'
            END) 
			from Rest_Discounts where Restaurant.Restaurant_ID = Rest_Discounts.Restaurant_ID) AS Discount, 
(Select CASE WHEN (Delivery_Facility = 'Y')
				Then ' Delivery Available'
            When (Pickup_Facility = 'Y')
				Then ' Pickup Available'
            When (Catering_Facility = 'Y') 
				Then ' Catering Available'
		End) As `Delivery Or Pickup`,

(Select Round(Avg(Rating),0) From Rating_Restaurent Where Rating_Restaurent.Restaurant_ID = Restaurant.Restaurant_ID) As Average_Rating_of_Restaurant
From Restaurant 
INNER JOIN Address ON Restaurant.Address_ID = Address.Address_ID
LEFT OUTER JOIN Rest_Discounts
ON Restaurant.Restaurant_ID = Rest_Discounts.Restaurant_ID;

-- AND  Restaurant.Restaurant_ID = Rest_Discounts.Restaurant_ID ;


 drop view V_Restaurant_List;
select * from V_Restaurant_List;

-- View 2

CREATE VIEW V_Order_History AS
SELECT Restaurant_Name, `order`.Order_ID as `Order ID`, `order`.OrderTotal `Order total`, Date(`order`.Order_Timestamp) AS `Order Placed Date`, 
ref_order_status.Order_Status_Description AS `Status`,  
Concat(Street, ' ', City, ' ',State, ' ',ZIP, ' ', Country) As `Restaurant Address`,
payment_Method_Name AS `Used Payment Method`
From  `Order`, Restaurant, ref_order_status, Address, payment_method_used, orderline, menu, customer
Where `order`.order_ID = orderline.order_ID
AND   orderline.menu_ID = menu.menu_ID
AND   menu.restaurant_ID = restaurant.restaurant_ID
AND   restaurant.address_ID = address.address_ID
AND   `order`.pay_Method_ID =  payment_method_used.pay_method_ID
AND   `order`.Order_Status_ID = ref_order_status.Order_Status_ID
AND  `order`.Customer_ID = Customer.Customer_ID
AND   Customer.Customer_ID = 1;

drop view V_Order_History;
Select * from V_Order_History;



-- Stored Procedure

DELIMITER %%
CREATE PROCEDURE sp_find_rest_details()
BEGIN
	DROP view IF EXISTS V_details_of_rest;
	Create View V_details_of_rest AS
	SELECT 	Restaurant_Name,  
            Menu.Menu_Type `Menu catagory`,
            Menu.menu_name `Menu`,
            Menu.Price `cost of item`,
            Cuisine.Cuisine_name `Cuisine`
	From Restaurant
    Left outer join Menu on menu.restaurant_ID = restaurant.restaurant_ID
    Left outer join Cuisine on menu.cuisine_ID = cuisine.cuisine_ID;
 end %%	
DELIMITER ;

call sp_find_rest_details();

Select * from V_details_of_rest;
  
DELIMITER %%
CREATE PROCEDURE Revenue(IN Restaurant_Name varchar(30), IN Date1 varchar(10), OUT total_Revenue int)
BEGIN
	Select sum(`order`.OrderTotal) as `Revenue of Restaurant`
    From `Order` 
    INNER join orderline ON `Order`.Order_ID = OrderLine.Order_ID
    INNER join menu ON OrderLine.Menu_ID = Menu.Menu_ID
    inner JOIN Restaurant ON Restaurant.Restaurant_ID = Menu.Restaurant_ID
    where Restaurant.Restaurant_Name = Restaurant_Name
    AND Date(`order`.Order_timestamp) = date1
    AND `order`.Order_status_ID = (Select Order_Status_ID From ref_order_status where Order_Status_Description = 'Placed');
 end %%
DELIMITER ;  

call Revenue('Supreme Pizza','2017-02-01', @total_Revenue);
    
DELIMITER %%
CREATE PROCEDURE sp_top_5_restaurants ()
BEGIN
    Select 	Restaurant_Name, rating
    From restaurant
	Left outer join rating_restaurent
    on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID
    order by Rating desc
    LIMIT 5;
 end %%
DELIMITER ; 

drop procedure sp_top_5_restaurants;
Call sp_top_5_restaurants();


-- Trigger


DROP TRIGGER IF EXISTS t_after_order_placed;

delimiter //
create trigger t_after_order_placed
after insert on `order`
for each row
begin 
    INSERT INTO delivery 
    	select '', now(),'',2,1, Address.Address_ID,`order`.Order_ID 
    	from `order`, customer, address, customer_address
    	where `order`.Customer_ID = customer.Customer_ID
    	AND customer.Customer_ID = customer_address.Customer_ID
    	and customer_address.Address_ID = address.Address_ID
    	order by Order_Timestamp desc
    	limit 1;
end; //


INSERT INTO `ORDER` values (13,29.00,'2017-12-15 11:15:20',1,1,1);
//
select * from delivery;

//
Update mydb.`order` 
set Order_Status_ID = 2 
where Order_ID = 12;

//

DROP TRIGGER IF EXISTS t_after_order_updated;

delimiter //
create trigger t_after_order_updated
after update on `order`
for each row
begin 
	
  if (select Order_Status_ID from `order` order by Order_Timestamp desc limit 1) =2 then
    
	update delivery
	Set Delivery_Status_ID = 3
	where Order_ID = (select * from `order` order by Order_Timestamp desc limit 1); 
	end if;
end; //

select * from delivery;
-------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Rating_Restaurent` (
  `Rating` INT NOT NULL,
  `Rating_Comments` VARCHAR(100) NULL,
  `Customer_ID` INT NOT NULL,
  `Restaurant_ID` INT NOT NULL,
  FULLTEXT (Rating_comments),
  INDEX `fk_Rating_Customer1_idx` (`Customer_ID` ASC),
  PRIMARY KEY (`Customer_ID`, `Restaurant_ID`),
  CONSTRAINT `fk_Rating_Customer1`
    FOREIGN KEY (`Customer_ID`)
    REFERENCES `mydb`.`Customer` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rating_Restaurant1`
    FOREIGN KEY (`Restaurant_ID`)
    REFERENCES `mydb`.`Restaurant` (`Restaurant_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO rating_restaurent Values (5, 'Timing was accurate and Food was good. It was served Hot',1,1);
INSERT INTO rating_restaurent Values (4, 'Order was accurate. It was on time as well',2,5);
INSERT INTO rating_restaurent Values (3, 'Food was not good. I enjoyed the food',6,6);
INSERT INTO rating_restaurent Values (2, 'Bellow Average',5,3);
INSERT INTO rating_restaurent Values (1, 'Worst Food',4,5);

INSERT INTO rating_restaurent Values (5, 'Food was good, I had shushi',5,1);
INSERT INTO rating_restaurent Values (4, 'Order was accurate, and also on time',7,5);
INSERT INTO rating_restaurent Values (3, 'Food was not good. It was not delevered on time as well',8,6);
INSERT INTO rating_restaurent Values (2, 'Bellow Average. I did not enjoy it',9,3);
INSERT INTO rating_restaurent Values (1, 'Worst Food i had',6,5);

INSERT INTO rating_restaurent Values (5, 'Food was good, and was fresh',1,3);
INSERT INTO rating_restaurent Values (4, 'Order was accurate and on time',2,1);
INSERT INTO rating_restaurent Values (3, 'Food was not good I did not like it',6,3);
INSERT INTO rating_restaurent Values (2, 'Qualitu was Bellow Average ',5,7);
INSERT INTO rating_restaurent Values (1, 'Worst Food',4,1);

INSERT INTO rating_restaurent Values (5, ' Quality was good and Food was good',5,5);
INSERT INTO rating_restaurent Values (4, 'I ordered from this reataurant and Order was accurate',6,4);
INSERT INTO rating_restaurent Values (3, 'Order came on time and Food was not good',7,3);
INSERT INTO rating_restaurent Values (2, 'it was not good at all Bellow Average',8,2);
INSERT INTO rating_restaurent Values (1, 'it was the Worst Food I ever had',9,1);

select * from rating_restaurent;

SELECT (concat((count(Rating_comments)/(Select count(Rating_comments) FROM rating_restaurent))*100), '%') As percentage 
FROM rating_restaurent
WHERE MATCH (Rating_comments)
AGAINST ('"Food was good"' IN NATURAL LANGUAGE MODE);






DELIMITER %%
CREATE PROCEDURE sp_rating_percentage(IN text_to_search varchar(30),IN rest_name varchar(40), OUT percentage int)
BEGIN
select concat((round(((count(Rating_comments)/(select count(Rating_comments) 
												FROM rating_restaurent 
												inner join Restaurant
												on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID 
												where Restaurant_Name = Rest_name)) * 100),0)),' %') AS `Precentage of given text in database`
FROM rating_restaurent 
inner join Restaurant
on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID
WHERE MATCH (Rating_comments)
AGAINST (text_to_search IN NATURAL LANGUAGE MODE)
AND Restaurant_Name = Rest_name;
 end %%		
DELIMITER ;

call sp_rating_percentage('"Food was good"','Supreme Pizza', @percentage);

drop procedure sp_rating_percentage; 





call Revenue('Supreme Pizza','2017-02-01', @total_Revenue);

select Rating_comments
FROM rating_restaurent
WHERE MATCH (Rating_comments)
AGAINST ('"Food was good"' IN NATURAL LANGUAGE MODE);
 SELECT * FROM rating_restaurent
        WHERE MATCH (Rating_comments)
        AGAINST ('"worst"' IN NATURAL LANGUAGE MODE);
 
select concat((round(  ((    count(Rating_comments)  /  (select count(Rating_comments) from rating_restaurent)     ) * 100)   ,0  )) , ' %') AS precentage
FROM rating_restaurent
WHERE MATCH (Rating_comments)
AGAINST ('"Food was good"' IN NATURAL LANGUAGE MODE)
and Restaurant_ID = 1;

select Rating_comments
FROM rating_restaurent 
inner join Restaurant
on Restaurant.Restaurant_ID = rating_restaurent.Restaurant_ID
WHERE MATCH (Rating_comments)
AGAINST ('"Food was good"' IN NATURAL LANGUAGE MODE)
and Restaurant.restaurant_name = 'Supreme Pizza';

use mydb;

create user 'NewRestaurantdb'@'localhost'; 

revoke all privileges, grant option from 'NewRestaurantdb'@'localhost';

grant select on mydb.customer to 'NewRestaurantdb'@'localhost';
grant insert on mydb.delivery to 'NewRestaurantdb'@'localhost';

Flush privileges;


