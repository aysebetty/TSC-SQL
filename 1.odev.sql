-- Departments tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
--Veri ekleme

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Employees tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
--veri ekleme

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, DepartmentID, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 30, 1, 55000, '2020-01-15'),
(2, 'Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
(3, 'Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
(4, 'Lisa', 'White', 35, 3, 70000, '2019-03-18'),
(5, 'Mark', 'Black', 50, 1, 75000, '2015-11-05'),
(6, 'Lucy', 'Green', 40, 2, 60000, '2017-10-10');

--a. Belirli Kolonları Seçme
--Çalışanların sadece FirstName, LastName ve Salary bilgilerini getiren bir SQL sorgusu yazınız.

SELECT FirstName, LastName, Salary FROM Employees;

--b. DISTINCT Komutu ile Tekrarları Önleme
--Çalışanların çalıştıkları departmanları benzersiz olarak listeleyen bir SQL sorgusu yazınız.

SELECT DISTINCT DepartmentID FROM Employees;

--c. Belirli bir departmana ait calisanlari listeleme
--Sadece IT departmaninda calisanlarin bilgilerini veren bir SQL sorgusu yaziniz

SELECT * FROM Employees WHERE DepartmentID = 1;

--d. Maaşa Göre Sıralama
--Çalışanları maaşlarına göre büyükten küçüğe sıralayan bir SQL sorgusu yazınız.

SELECT * FROM Employees ORDER BY Salary DESC;

--e. Kolonlari birlestirme (Concatenation) 
--Calisanlarin FirstName ve LastName alanlarini birlestirerek, tam adlarini iceren 
--yeni bir kolon olusturan bir SQL sorgusu yaziniz

SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Employees;





