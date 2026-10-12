create database hospital_db;
 use hospital_db;
 
 create table Doctors(
 doctor_id int,
 doctor_name varchar(40),
 specialization varchar(30),
 experience_year int,
 email varchar(40),
 phone char(10),
 primary key(doctor_id));
  
  create table Patients(
 patient_id int,
 patient_name varchar(40),
 age int,
 gender varchar(30),
 city varchar(40),
 phone char(10),
 primary key(patient_id));
 
 create table Medicines(
 medicine_id int,
 medicine_name varchar(40),
 category varchar(40),
 price int,
 expiry_date date,
 primary key(medicine_id));
 
 create table Surgical(
 surgical_id int,
 surgical_name varchar(40),
 type varchar(40),
 cost int,
 stock_qty int,
 primary key(surgical_id));
 
 create table Appointments(
 appointment_id int,
 patient_id int,
 doctor_id int,
 appointment_date date,
 status varchar(30),
 primary key(appointment_id));
 
 create table Prescriptions(
 prescription_id int,
 patient_id int,
 doctor_id int,
 medicine_id int,
 prescription_date date,
 primary key(prescription_id));
 
 alter table Doctors add column email varchar(40);
 
 alter table Doctors rename column phone to contact_number;
 
 alter table Medicines modify price decimal;
 
 alter table  Surgical drop column stock_qty;
 
 rename table Surgical to Surgical_items;
 
 INSERT INTO Doctors(doctor_id, doctor_name, specialization, experience_year,email,contact_number)
 VALUES
 (1, 'Dr. Amit Sharma', 'Cardiology', 12, 'amit.sharma@hospital.com', '9876543210'),
(2, 'Dr. Neha Verma', 'Neurology', 9, 'neha.verma@hospital.com', '9876543211'),
(3, 'Dr. Rajiv Mehta', 'Orthopedics', 15, 'rajiv.mehta@hospital.com', '9876543212'),
(4, 'Dr. Pooja Kulkarni', 'Gynecology', 10, 'pooja.k@hospital.com', '9876543213'),
(5, 'Dr. Sanjay Patil', 'General Medicine', 18, 'sanjay.p@hospital.com', '9876543214'),
(6, 'Dr. Ankit Jain', 'Dermatology', 7, 'ankit.j@hospital.com', '9876543215'),
(7, 'Dr. Kavita Rao', 'Pediatrics', 11, 'kavita.rao@hospital.com', '9876543216'),
(8, 'Dr. Rohit Iyer', 'ENT', 8, 'rohit.iyer@hospital.com', '9876543217'),
(9, 'Dr. Sneha Deshmukh', 'Psychiatry', 6, 'sneha.d@hospital.com', '9876543218'),
(10, 'Dr. Prakash Nair', 'Urology', 14, 'prakash.n@hospital.com', '9876543219'),
(11, 'Dr. Arjun Malhotra', 'Oncology', 16, 'arjun.m@hospital.com', '9876543220'),
(12, 'Dr. Ritu Bansal', 'Ophthalmology', 9, 'ritu.b@hospital.com', '9876543221'),
(13, 'Dr. Sameer Khan', 'Pulmonology', 13, 'sameer.k@hospital.com', '9876543222'),
(14, 'Dr. Anjali Gupta', 'Endocrinology', 10, 'anjali.g@hospital.com', '9876543223'),
(15, 'Dr. Vikas Joshi', 'Radiology', 17, 'vikas.j@hospital.com', '9876543224'),
(16, 'Dr. Meenal Chavan', 'Anesthesiology', 8, 'meenal.c@hospital.com','9876543225'),
(17, 'Dr. Ramesh Pillai', 'Nephrology', 19, 'ramesh.p@hospital.com','9876543226'),
(18, 'Dr. Nitin Agrawal', 'Gastroenterology', 12, 'nitin.a@hospital.com','9876543227'),
(19, 'Dr. Shilpa More', 'Rheumatology', 7, 'shilpa.m@hospital.com', '9876543228'),
(20, 'Dr. Kunal Bhatt', 'Emergency Medicine', 5, 'kunal.b@hospital.com', '9876543229');
select*from Doctors;


INSERT INTO Patients(patient_id,patient_name,age,gender,city,phone)
 VALUES
(101, 'Rahul Joshi', 32, 'Male', 'Nagpur', '9876500001'),
(102, 'Sneha Patil', 28, 'Female', 'Pune', '9876500002'),
(103, 'Amit Verma', 45, 'Male', 'Delhi', '9876500003'),
(104, 'Pooja Shah', 36, 'Female', 'Ahmedabad', '9876500004'),
(105, 'Rohan Kulkarni', 50, 'Male', 'Mumbai', '9876500005'),
(106, 'Neha Gupta', 24, 'Female', 'Jaipur', '9876500006'),
(107, 'Suresh Yadav', 60, 'Male', 'Lucknow', '9876500007'),
(108, 'Kiran Malhotra', 41, 'Male', 'Chandigarh', '9876500008'),
(109, 'Anjali Mehta', 34, 'Female', 'Surat', '9876500009'),
(110, 'Vivek Nair', 38, 'Male', 'Kochi', '9876500010'),
(111, 'Priya Iyer', 29, 'Female', 'Chennai', '9876500011'),
(112, 'Nikhil Jain', 47, 'Male', 'Indore', '9876500012'),
(113, 'Ritu Bhandari', 52, 'Female', 'Bhopal', '9876500013'),
(114, 'Manoj Singh', 65, 'Male', 'Patna', '9876500014'),
(115, 'Swati Deshpande', 31, 'Female', 'Nashik', '9876500015'),
(116, 'Arvind Kumar', 56, 'Male', 'Kanpur', '9876500016'),
(117, 'Shubham Mishra', 27, 'Male', 'Rewa', '9876500017'),
(118, 'Komal Thakur', 39, 'Female', 'Raipur', '9876500018'),
(119, 'Deepak Soni', 44, 'Male', 'Udaipur', '9876500019'),
(120, 'Meera Salunke', 35, 'Female', 'Kolhapur', '9876500020');
select*from Patients;

INSERT INTO Medicines(medicine_id, medicine_name,  category,  price, expiry_date)
values
(201, 'Paracetamol', 'Pain Relief', 25, '2026-12-31'),
(202, 'Amoxicillin', 'Antibiotic', 120, '2025-08-15'),
(203, 'Metformin', 'Diabetes', 90, '2027-01-20'),
(204, 'Aspirin', 'Cardiac', 30, '2026-05-10'),
(205, 'Atorvastatin', 'Cholesterol', 150, '2026-11-05'),
(206, 'Omeprazole', 'Gastric', 80, '2025-10-18'),
(207, 'Insulin', 'Diabetes', 450, '2025-09-30'),
(208, 'Cetirizine', 'Allergy', 40, '2026-03-22'),
(209, 'Azithromycin', 'Antibiotic', 200, '2025-12-01'),
(210, 'Losartan', 'Blood Pressure', 110, '2026-07-14'),
(211, 'Vitamin D3', 'Supplement', 60, '2027-02-28'),
(212, 'Calcium Tablets', 'Supplement', 70, '2026-09-19'),
(213, 'Cough Syrup', 'Cold', 95, '2025-11-25'),
(214, 'Antacid Gel', 'Gastric', 55, '2026-01-11'),
(215, 'Pain Relief Spray', 'Orthopedic', 160, '2026-06-30');
select*from Medicines;

INSERT INTO Surgical_items(surgical_id, surgical_name, type, cost)
VALUES
(301, 'Syringe', 'Disposable', 10),
(302, 'IV Set', 'Disposable', 120),
(303, 'Surgical Gloves', 'Safety', 15),
(304, 'Face Mask', 'Safety', 5),
(305, 'Scalpel', 'Surgical Tool', 250),
(306, 'Stethoscope', 'Diagnostic', 1200),
(307, 'BP Monitor', 'Diagnostic', 2200),
(308, 'Thermometer', 'Diagnostic', 180),
(309, 'Oxygen Mask', 'Respiratory', 350),
(310, 'Catheter', 'Urology', 400),
(311, 'Surgical Drapes', 'Surgical', 600),
(312, 'Suction Tube', 'Surgical', 450),
(313, 'Surgical Scissors', 'Tool', 900),
(314, 'Forceps', 'Tool', 850),
(315, 'Wheelchair', 'Support', 8500);
select*from Surgical_items;

INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date, status)
VALUES
(401, 101, 1, '2025-01-05', 'Completed'),
(402, 102, 4, '2025-01-06', 'Completed'),
(403, 103, 3, '2025-01-06', 'Cancelled'),
(404, 104, 2, '2025-01-07', 'Completed'),
(405, 105, 5, '2025-01-08', 'Pending'),
(406, 106, 6, '2025-01-08', 'Completed'),
(407, 107, 7, '2025-01-09', 'Completed'),
(408, 108, 8, '2025-01-10', 'Completed'),
(409, 109, 9, '2025-01-10', 'Pending'),
(410, 110, 10, '2025-01-11', 'Completed'),
(411, 111, 11, '2025-01-12', 'Completed'),
(412, 112, 12, '2025-01-12', 'Cancelled'),
(413, 113, 13, '2025-01-13', 'Completed'),
(414, 114, 14, '2025-01-14', 'Pending'),
(415, 115, 15, '2025-01-14', 'Completed'),
(416, 116, 16, '2025-01-15', 'Completed'),
(417, 117, 17, '2025-01-16', 'Pending'),
(418, 118, 18, '2025-01-17', 'Completed'),
(419, 119, 19, '2025-01-18', 'Completed'),
(420, 120, 20, '2025-01-19', 'Completed');
select*from Appointments;

INSERT INTO Prescriptions(prescription_id,  patient_id,  doctor_id,  medicine_id,  prescription_date)
VALUES
(1, 101, 201, 301, '2024-01-05'),
(2, 102, 202, 302, '2024-01-06'),
(3, 103, 201, 303, '2024-01-07'),
(4, 101, 203, 304, '2024-01-08'),
(5, 104, 204, 305, '2024-01-08'),
(6, 105, 202, 301, '2024-01-09'),
(7, 106, 201, 306, '2024-01-10'),
(8, 102, 203, 307, '2024-01-10'),
(9, 107, 204, 308, '2024-01-11'),
(10, 108, 202, 302, '2024-01-12'),
(11, 109, 201, 309, '2024-01-13'),
(12, 110, 203, 310, '2024-01-14'),
(13, 101, 201, 302, '2024-01-15'),
(14, 103, 204, 305, '2024-01-16'),
(15, 104, 202, 306, '2024-01-17'),
(16, 105, 203, 307, '2024-01-18'),
(17, 106, 201, 308, '2024-01-19'),
(18, 107, 204, 309, '2024-01-20'),
(19, 108, 202, 310, '2024-01-21'),
(20, 109, 203, 301, '2024-01-22');
select*from Prescriptions;

select*from Medicines where medicine_name like '%in%';

select*from Doctors order by experience_year desc;

select*from Patients where city="Nagpur";

select specialization ,count(*) from Doctors group by specialization;

select*from Doctors where doctor_name like 'Dr. A%';

select*from Medicines order by price desc limit 3;

select*from Medicines where price<100;

select*from Patients where age between 30 and 50;

select*from Patients order by  age asc;

select city,count(*) from Patients group by city;

select*from Doctors where specialization like '%card%';

select*from Appointments order by appointment_date desc limit 5;

select city,count(*) from Patients group by city having count(*)>2;

select *from Patients where patient_name like '%a';

select patient_id,count(*) from Prescriptions group by patient_id;

select*from Appointments where status='completed';

 select*from Patients order by patient_name asc limit 4;
 
 select specialization ,count(*) as doctor_count from Doctors group by specialization having count(*)>1;
 
 select*from Medicines where expiry_date between 2026-01-01 and 2027-12-31;
 
 select category,avg(price) from Medicines group by category;
 
 select doctor_id,count(*) from Appointments group by doctor_id having count(*)>2;
 
 select doctor_id,count(*) from Appointments group by doctor_id;
 
 select category,avg(price) from Medicines group by category having avg(price)>150;

select p.patient_name,d.doctor_name from Appointments a join Patients p on a.patient_id = p.patient_id
join Doctors d on a.doctor_id = d.doctor_id;

select p.patient_name ,count(pr.prescription_id) from Patients p left join Prescriptions pr on p.patient_id = pr.patient_id
 group by p.patient_id,p.patient_name;
 
 select d.doctor_name,count(a.appointment_id) from Doctors d left join Appointments a on d.doctor_id = a.doctor_id 
 group by d.doctor_id,d.doctor_name;
 
 select p.patient_name,m.medicine_name from Prescriptions pr join Patients p on pr.patient_id = p.patient_id 
 join Medicines m on pr.medicine_id = m.medicine_id;
 
 select p.patient_name,count(pr.prescription_id) from Patients p left join Prescriptions pr on p.patient_id = pr.patient_id
 group by p.patient_id,p.patient_name;
 
 select d.doctor_name,count(a.appointment_id) from Doctors d join Appointments a on d.doctor_id = a.doctor_id
 group by d.doctor_id,d.doctor_name having count(a.appointment_id)>2;
 
 select d.doctor_name,p.patient_name,a.appointment_date from Appointments a join Doctors d on d.doctor_id = a.doctor_id
 join  Patients p on p.patient_id = a.patient_id;
 
 select d.doctor_name,count(a.appointment_id) from Doctors d left join Appointments a on d.doctor_id = a.doctor_id
 group by d.doctor_id,d.doctor_name;