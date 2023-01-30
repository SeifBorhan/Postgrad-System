GO

create proc insertAdmin 
@email varchar(50),@password VARCHAR(20)
as 
insert into PostGradUser(email,[password]) VALUES(@email,@password);
declare @var int
set @var = SCOPE_IDENTITY()
insert into Admin VALUES(@var);

exec insertAdmin 'coolboy@gmail.com','cool'

exec SupervisorRegister 'Omar' ,'Mohamed' ,'Omar223' ,'Engineering' ,'OmarMoh@gmail.com'
exec SupervisorRegister 'Ahmed' ,'Ahmed' ,'Ahmed' ,'Pharmacy' ,'Ahmed@gmail.com'

exec StudentRegister 'Ahmed', 'Sharara', 'SharShar' , 'Engineering', 0, 'AhmedSharara@icloud.com','13 Moh Metwally Sharaawy ST'
exec StudentRegister 'Karim', 'Adel', 'Bassy' , 'Pharmacy', 0, 'NoSalah@icloud.com','13 Moh Salah Liverpool'


exec editMyProfile  4,'Ahmed', 'Sharara', 'SharShar' ,'AhmedSharara@icloud.com','13 Moh Metwally Sharaawy ST', 'PHD'
exec editMyProfile   5,'Karim', 'Adel', 'Bassy' ,  'NoSalah@icloud.com','13 Moh Salah Liverpool','Mas'



exec StudentRegister 'Ab', 'Yusif', '7RB' , 'Pharmacy', 1, 'baraelmagal@yahoo.com','13 abubakr Mexico'
exec StudentRegister 'Ahmed', 'El joker', 'rakam1MshEnta' , 'Engineering', 1, 'Baba@hotmail.com','9 St building 6'



exec editMyProfile  6,'Ab', 'Yusif', '7RB' , 'baraelmagal@yahoo.com','13 abubakr Mexico' ,'Mas'
exec editMyProfile 7,'Ahmed', 'El joker', 'rakam1MshEnta' , 'Baba@hotmail.com','9 St building 6','PHD'



exec addMobile 4,'07775000'
exec addMobile 5,'01065030090'
exec addMobile 6,'010101022'
exec addMobile 7,'0123333552'


exec addUndergradID 6,492607
exec addUndergradID 7,493188


exec addCourse 'COMM401',4,8500.23
exec addCourse 'DMET501',5,3.14
exec addCourse 'CSIS101',6,7000.23
exec addCourse 'ORG901',8,12000



exec linkCourseStudent 1,4
exec linkCourseStudent 2,4
exec linkCourseStudent 3,5
exec linkCourseStudent 3,5
exec linkCourseStudent 4,4
exec linkCourseStudent 4,5


exec addStudentCourseGrade 1,4,60
exec addStudentCourseGrade 2,4,49
exec addStudentCourseGrade 3,5,70
exec addStudentCourseGrade 3,5,88
exec addStudentCourseGrade 4,4,92
exec addStudentCourseGrade 4,5,60

insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
VALUES('Engineering','Mas','Sensors','2001/11/08','2002/12/31','2002/12/17',0)
insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
VALUES('Engineering','Mas','Gaming Devices','2002/10/08','2003/12/31','2003/12/17',0)
insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
VALUES('Engineering','Mas','Virtual Reality','2003/11/08','2004/12/31','2004/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Web Development','2004/11/08','2005/12/31','2005/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Voltage Reduction','2005/11/08','2006/12/31','2006/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Natural flow of Gas','2006/11/08','2007/12/31','2007/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Carbon index','2007/11/08','2008/12/31','2008/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Analytics','2008/11/08','2009/12/31','2009/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','Logistics','2009/11/08','2010/12/31','2010/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','Mas','E-Waste','2010/11/08','2011/12/31','2011/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','Mas','Treating Carcenoma','2012/11/08','2013/12/31','2013/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','Mas','Plancktonic','2013/11/08','2014/12/31','2014/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','Mas','Colestine','2014/11/08','2015/12/31','2015/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','Mas','Antipsychotic','2015/11/08','2016/12/31','2016/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','Mas','Listerine','2016/11/08','2017/12/31','2017/12/17',0)

insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
VALUES('Engineering','PHD','IOT','2001/11/08','2002/12/31','2002/12/17',0)
insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
VALUES('Engineering','PHD','Cloud','2002/10/08','2003/12/31','2003/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Construction','2003/11/08','2004/12/31','2004/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Augmented Reality','2004/11/08','2005/12/31','2005/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Virtual Reality','2005/11/08','2006/12/31','2006/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Information Systems','2006/11/08','2007/12/31','2007/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Health & Safety','2007/11/08','2008/12/31','2008/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Sustainability','2008/11/08','2009/12/31','2009/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Cryptography','2009/11/08','2010/12/31','2010/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Engineering','PHD','Processors','2010/11/08','2011/12/31','2011/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','PHD','Taxodium','2012/11/08','2013/12/31','2012/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','PHD','Etopocyte','2013/11/08','2014/12/31','2013/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','PHD','Dopamine','2014/11/08','2015/12/31','2014/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','PHD','Eglypsy','2015/11/08','2016/12/31','2015/12/17',0)
--insert into Thesis(field,[type],title,startDate,endDate,defenseDate,noOfExtensions) 
--VALUES('Pharmacy','PHD','AntileeshManyal','2016/11/08','2017/12/31','2016/12/17',0)



exec AdminIssueThesisPayment 1,23000.50,2,0.5
GO

exec AdminIssueThesisPayment 2,20000.50,2,0.4
GO

exec AdminIssueThesisPayment 3,21000.50,2,0.5
GO

exec AdminIssueThesisPayment 4,22000.50,2,0.6
GO

--exec AdminIssueThesisPayment 5,24000.50,2,0.7
--GO
--
--exec AdminIssueThesisPayment 6,25000.50,2,0.8
--GO
--
--exec AdminIssueThesisPayment 7,26000.50,2,0.9
--GO
--
--exec AdminIssueThesisPayment 8,27000.50,2,0.3
--GO
--exec AdminIssueThesisPayment 9,28000.50,2,0.2
--GO
--
--exec AdminIssueThesisPayment 10,29000.50,2,0.4
--GO
--
--exec AdminIssueThesisPayment 11,23000.40,2,0.5
--GO
--
--exec AdminIssueThesisPayment 12,23000.70,2,0.7
--GO
--
--exec AdminIssueThesisPayment 13,23000.80,2,0.8
--GO
--
--exec AdminIssueThesisPayment 14,23000.90,2,0.1
--GO
--
--exec AdminIssueThesisPayment 15,23000.10,2,0.9
--GO
--
--exec AdminIssueThesisPayment 16,25000.50,2,0.5
--GO
--
--
--exec AdminIssueThesisPayment 17,25000.40,2,0.4
--GO
--
--exec AdminIssueThesisPayment 18,25000.60,2,0.7
--GO
--
--exec AdminIssueThesisPayment 19,25000.70,2,0.8
--GO
--
--exec AdminIssueThesisPayment 20,25000.80,2,0.3
--GO
--
--exec AdminIssueThesisPayment 21,25000.90,2,0.4
--GO
--
--exec AdminIssueThesisPayment 22,30000.50,2,0.5
--GO
--
--exec AdminIssueThesisPayment 23,30000.80,2,0.6
--GO
--
--exec AdminIssueThesisPayment 24,30000.50,2,0.8
--GO
--
--exec AdminIssueThesisPayment 25,23000.50,2,0.2
--GO
--
--exec AdminIssueThesisPayment 26,24000.90,2,0.4
--GO
--
--exec AdminIssueThesisPayment 27,31000.50,2,0.5
--GO
--
--exec AdminIssueThesisPayment 28,32000.50,2,0.7
--GO
--
--exec AdminIssueThesisPayment 29,33000.50,2,0.9
--GO
--
--exec AdminIssueThesisPayment 30,35000.50,2,0.8


exec AdminIssueInstallPayment 1,'2001/11/08'
exec AdminIssueInstallPayment 2,'2002/10/08'
exec AdminIssueInstallPayment 3,'2003/11/08'
exec AdminIssueInstallPayment 4,'2004/11/08'
--exec AdminIssueInstallPayment 5,'2005/11/08'
--exec AdminIssueInstallPayment 6,'2006/11/08'
--exec AdminIssueInstallPayment 7,'2007/11/08'
--exec AdminIssueInstallPayment 8,'2008/11/08'
--exec AdminIssueInstallPayment 9,'2009/11/08'
--exec AdminIssueInstallPayment 10,'2010/11/08'
--exec AdminIssueInstallPayment 11,'2012/11/08'
--exec AdminIssueInstallPayment 12,'2013/11/08'
--exec AdminIssueInstallPayment 13,'2014/11/08'
--exec AdminIssueInstallPayment 14,'2015/11/08'
--exec AdminIssueInstallPayment 15,'2016/11/08'
--exec AdminIssueInstallPayment 16,'2001/11/08'
--exec AdminIssueInstallPayment 17,'2002/11/08'
--exec AdminIssueInstallPayment 18,'2003/11/08'
--exec AdminIssueInstallPayment 19,'2004/11/08'
--exec AdminIssueInstallPayment 20,'2005/11/08'
--exec AdminIssueInstallPayment 21,'2006/11/08'
--exec AdminIssueInstallPayment 22,'2007/11/08'
--exec AdminIssueInstallPayment 23,'2008/11/08'
--exec AdminIssueInstallPayment 24,'2009/11/08'
--exec AdminIssueInstallPayment 25,'2010/11/08'
--exec AdminIssueInstallPayment 26,'2012/11/08'
--exec AdminIssueInstallPayment 27,'2013/11/08'
--exec AdminIssueInstallPayment 28,'2014/11/08'
--exec AdminIssueInstallPayment 29,'2015/11/08'
--exec AdminIssueInstallPayment 30,'2016/11/08'


insert into NonGUCianStudentRegisterThesis(sid,supid,serial_no) VALUES(4,2,3)
insert into NonGUCianStudentRegisterThesis(sid,supid,serial_no) VALUES(5,3,1)



insert into GUCianStudentRegisterThesis(sid,supid,serial_no) VALUES(6,2,2)
insert into GUCianStudentRegisterThesis(sid,supid,serial_no) VALUES(7,3,4)


exec AddProgressReport 1,'2002/5/6',5,1
exec AddProgressReport 2,'2013/5/6',6,1
exec AddProgressReport 3,'2003/5/6',4,1
exec AddProgressReport 4,'2002/5/6',7,1





exec  FillProgressReport 1,1,80,'Amazing report',5
exec  FillProgressReport 2,1,80,'report explaining thesis',6
exec  FillProgressReport 3,1,80,'great report',4
exec  FillProgressReport 4,1,80,'spectacular report',7



update GUCianProgressReport set supid=2 where sid=6
update GUCianProgressReport set supid=3 where sid=7


update NonGUCianProgressReport set supid=2 where sid=4
update NonGUCianProgressReport set supid=3 where sid=5



exec EvaluateProgressReport 2,3,1,2
exec EvaluateProgressReport 2,2,1,0
exec EvaluateProgressReport 3,1,1,1
exec EvaluateProgressReport 3,4,1,3



exec AddDefenseGucian 2,'2014/12/17','C3.301'
exec AddDefenseGucian 4,'2004/12/17','C3.501'




exec AddDefenseNonGucian 1,'2002/12/17','C6.206'
exec AddDefenseNonGucian 3,'2013/12/17','C6.306'







exec AddExaminer 1,'2002/12/17','Mohamed Ali','ali',0,'Engineer'
exec AddExaminer 2,'2003/12/17','Mohamed seif','seif',0,'Engineer'
exec AddExaminer 3,'2013/12/17','Mohamed Ahmed','ahmed',0,'Pharmacist'
exec AddExaminer 4,'2014/12/17','Mina Khaled','khaled',0,'Pharmacist'



select * from PostGradUser
select * from Admin
select * from GUCianStudent
select * from NonGUCianStudent
select * from GUCStudentPhoneNumber
select * from NonGUCStudentPhoneNumber
select * from course
select * from Supervisor
select * from Thesis
select * from Publication
SELECT * from Payment
SELECT * from Examiner
select * from Defense
select * from GUCianProgressReport
select * from NonGUCianProgressReport
select * from Installment
select * from NonGucianStudentPayForCourse
select * from NonGucianStudentTakeCourse
select * from GUCianStudentRegisterThesis
select * from NonGUCianStudentRegisterThesis
select * from ExaminerEvaluateDefense
SELECT * from ThesisHasPublication

Exec ViewSupStudentsYears 2
Exec ViewAStudentPublications 6

Exec addPublication Pub1,'2001/3/1','Al-Ahly','EL-Gezira',1

Exec linkPubThesis 1,2

Exec ViewCoursesGrades 4

Exec viewMyThesis 5

Exec AdminListSup

Exec ExaminerListAll 12