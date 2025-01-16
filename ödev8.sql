--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee (name, birthday, email)
VALUES 
('John Doe', '1985-05-15', 'john.doe@example.com'),
('Jane Smith', '1990-07-10', 'jane.smith@example.com'),
-- Mockaroo'dan gelen diğer 48 kayıtları buraya ekleyin
('Chris Johnson', '1978-03-22', 'chris.johnson@example.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Updated Name'
WHERE id = 10;

UPDATE employee
SET birthday = '2000-01-01'
WHERE name = 'Jane Smith';

UPDATE employee
SET email = 'updated.email@example.com'
WHERE birthday = '1985-05-15';

UPDATE employee
SET name = 'New Name'
WHERE email = 'john.doe@example.com';

UPDATE employee
SET email = 'new.email@example.com'
WHERE id = 5;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id = 10;

DELETE FROM employee
WHERE name = 'Jane Smith';

DELETE FROM employee
WHERE birthday = '1985-05-15';

DELETE FROM employee
WHERE email = 'john.doe@example.com';

DELETE FROM employee
WHERE id > 45 AND birthday < '1990-01-01';
