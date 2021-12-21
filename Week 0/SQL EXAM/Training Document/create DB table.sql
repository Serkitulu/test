Create Database Peter_Database 

Create Table Student 
	(Std_id int not null Primary Key, 
	F_name NVarchar(50) Not null, 
	M_name Nvarchar(1) null, 
	L_name Nvarchar(50) not null)

Create Table Instructor_Master
(Inst_id Nvarchar(50) not null, 
Inst_F_name Nvarchar(50)not null,
Inst_L_name Nvarchar(50) not null, 
Inst_Primary_Phone Int not null, 
Inst_Primary_Emial Nvarchar(100) not null
Primary key (inst_id))


Create Table Course 
(Course# Nvarchar(90) not null Primary Key, 
Course_Name Nvarchar(50) not null, 
Credit_hour int not null, 
Contact_hour int not null)


Create Table Registration 
(Reg# int not null Primary Key, 
Std_id int not null Foreign Key references Student(Std_id), 
Coure# Nvarchar(9) not null Foreign Key references Course (Course#), 
Inst_Id Nvarchar(50) not null Foreign Key references Instructor_Master(Inst_id)

