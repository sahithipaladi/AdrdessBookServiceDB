
----------------UC1:Create Database----------------
create database AddressBookService;
----------------UC2:Create Table----------------
create table AddressBookServiceTable
(
FirstName varchar(100),
LastName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200)
)
------ UC3:Insert Values into Table ------
Insert into AddressBookServiceTable(FirstName,LastName,Address,City,State,zip,PhoneNumber,Email) 
values('Arjun','A','Nellore Road','Pamur','AndhraPradesh',523108,8858548393,'arjun@gmail.com'),
('Vanitha','P','Gandhi Nagar','Ongole','AndhraPradesh',523001,9995559955,'vanitha@gamil.com'),
('Sameera','S','Magunta Layout','Nellore','AndhraPradesh',524003,8393839475,'sameera@gmail.com');
------ UC4:Update Values in Table ------
update AddressBookServiceTable set Email='vani123@gmail.com' where FirstName='Vanitha';
------ UC5:Delete Values in Table ------
delete AddressBookServiceTable where FirstName='Vanitha';
------ UC6:Retrieve Data using City or State------
select * from AddressBookServiceTable where city='Nellore' or State='AndhraPradesh';
------ UC7:Count of City and State------
Select Count(*) As Count,City,State from AddressBookServiceTable group by City,State;
------ UC8:Sort the name alphabetically using city------
Insert into AddressBookServiceTable 
values('Rahul','P','Kanigiri Road','Pamur','AndhraPradesh',523108,9995559955,'rahul@gamil.com');
select * from AddressBookServiceTable where city='Pamur' order by FirstName;
----------UC9:Add the address book name and type columns-----------
alter table AddressBookServiceTable add AddressBookName varchar(50),RelationType varchar(50);

update AddressBookServiceTable set AddressBookName='Friends',RelationType='Friend' where FirstName='Sameera' ;
update AddressBookServiceTable set AddressBookName ='Family',RelationType ='Family' where zip=523108;