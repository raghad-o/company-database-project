CREATE TABLE Company (
    Company_ID number(10) PRIMARY KEY,
    Company_name VARCHAR(100) not null,
    Company_address VARCHAR(200) not null
  );
     
CREATE TABLE Manager (
    M_ID number(10) PRIMARY KEY,
    Name VARCHAR(100) not null,
    Phone_Number VARCHAR(20),
    Salary number(10, 2) not null,
    Company_ID number(10) not null,
    CONSTRAINT FK_Company_ID FOREIGN KEY (Company_ID) REFERENCES Company(Company_ID)
    );

CREATE TABLE Department (
    Dept_ID number(10) PRIMARY KEY,
    Name VARCHAR(100) not null,
    M_ID number(10) not null,
    constraint FK_M_ID FOREIGN KEY (M_ID) REFERENCES Manager(M_ID)
    );


CREATE TABLE Employee (
    Emp_ID NUMBER(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(20),
    Salary NUMBER(10, 2) NOT NULL,
    Dept_ID NUMBER(10) NOT NULL,
    CONSTRAINT FK_Dept_ID FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
  ); 
        
    CREATE TABLE Product (
    P_ID number(10) PRIMARY KEY,
    Name VARCHAR(100) not null,
    Price number(10, 2) not null,
    Dept_ID NUMBER(10) NOT NULL,
    CONSTRAINT FK_Dept_ID2 FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID) 
 );
CREATE TABLE Order1 (
    O_ID number(10) PRIMARY KEY,
    Emp_ID number(10) not null,
    P_ID number(10) not null,
    Order_Date DATE not null,
    CONSTRAINT FK_Emp_ID FOREIGN KEY (Emp_ID) REFERENCES Employee(Emp_ID),
    CONSTRAINT FK_P_ID FOREIGN KEY (P_ID) REFERENCES Product(P_ID)
  );
     

CREATE TABLE Customer (
    C_ID number(10) PRIMARY KEY,
    Name VARCHAR(100) not null,
    Address varchar(112) not null,
    Email varchar(10) not null,
    O_ID number(10) ,
    CONSTRAINT FK_O_ID FOREIGN KEY (O_ID) REFERENCES Order1(O_ID) 
  );

