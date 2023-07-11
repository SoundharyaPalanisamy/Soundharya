create database bank;
use bank;
create table employees(e_id int,
e_salary int check (e_salary>8000),
e_name varchar(20) not null,
branch_name varchar(20) not null,
branch_id varchar(10) primary key,
e_age int check(e_age>21));

insert into employees values(100,9000,"soundharya","chennai","EE01",25),
(101,13000,"vijay","chennai","EE02",25),
(103,15000,"teju","bangalore","EE03",35),
(102,35000,"selva","coimbatore","EE04",34),
(104,19000,"jaswan","bangalore","EE05",33),
(107,52000,"dhiya","coimbatore","EE06",45),
(110,41000,"mamitha","chennai","EE07",26),
(113,9000,"vidhya","bangalore","EE08",35),
(114,29000,"saranya","bangalore","EE09",33),
(108,10000,"logi","coimbatore","EE10",25);
select*from employees;

create table customer(cus_accNo int not null,
cus_pin int ,
cus_name varchar(20) not null,
balance_amount int,
acc_type varchar(20),
cus_panNo varchar(20) primary key,
cus_contactNo varchar(10),
cus_address varchar(50) default "not mention",
branch_id varchar(20));
select*from customer;

insert into customer values(123456,1111,"yogapriya",10000,"savings_account","yoga123","1234567890","salem","EE01"),
(2324345,2222,"vishali",25000,"primary_account","viji123","9087654329","attur","EE08"),
(12345786,3333,"thenmozhi",10500,"savings_account","thenu123","1235676789","coimbatore","EE05"),
(1234586,4444,"lisa",50000,"savings_account","li123","1234564891","erode","EE09"),
(6789456,5555,"sneha",45100,"primary_account","sne123","4564567456","namakkal","EE02"),
(12334576,7777,"yuva",34567,"primary_account","yuvi123","0012456753","dharmapuri","EE10"),
(345356,7891,"preethika",56000,"savings_account","pre123","7896878345","hosur","EE03"),
(0098456,7896,"sandhiya",23000,"primary_account","dhiya123","3412345967","namakkal","EE07"),
(123789,6722,"shree",100000,"savings_account","shree123","1278789378","belur","EE06"),
(1789456,1110,"priya",10900,"primary_account","pri123","8649994567","trichy","EE04"),
(5768456,1001,"nivetha",76000,"primary_account","nivi123","1234562000","hosur","EE10"),
(1987456,2345,"deepika",46300,"savings_account","deepi123","1275348090","raasipuram","EE10"),
(789156,8999,"navinaka",23000,"primary_account","navi123","5678567754","salem","EE09"),
(907656,7890,"vinitha",76000,"savings_account","vini123","1234000591","salem","EE08"),
(178966,1234,"jazmitha",16000,"primary_account","jazz123","7834780567","attur","EE02");

SELECT * from customer
inner join employees
on employees.branch_id=customer.branch_id;
select*from customer order by branch_id;