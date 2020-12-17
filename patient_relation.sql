INSERT INTO Hospital.Patient (patient_id, doctor_id, name, phone, email, address,  date_added)
			VALUES("P1",	"D2",	"Patient Dana",	"444-1212",	  "P1@email.com", "123 Home St.",	STR_TO_DATE('02/01/2019', '%m/%d/%Y')),
                  ("P2",	"D7",	"Patient Harry", "444-2934",   "P2@email.com", "3435 Main St.",	STR_TO_DATE('7/13/2011', '%m/%d/%Y')),
				  ("P3",	"D6",	"Patient Karl",	"444-6723",	"P3@email.com",	  "2176 Baker St.",  STR_TO_DATE('5/10/2009', '%m/%d/%Y')),
                  ("P4",	"D2",	"Patient Sid",	"444-1745",	"P4@email.com",	"176 Right St.",	STR_TO_DATE('6/20/2010', '%m/%d/%Y')),
				  ("P5",	"D8",	  "Patient Marry",  "444-6565",	"P5@email.com",	"435 Main St.",	STR_TO_DATE('5/18/2014', '%m/%d/%Y')),
					("P6",	"D6",	"Patient Kim",	"444-4889",	"P6@email.com",	"34 Home St.",	STR_TO_DATE('3/15/2018', '%m/%d/%Y')),
					("P7",	"D4",	"Patient Susan",  "444-4581",	"P7@email.com",	"65 Water St.",	STR_TO_DATE('9/07/2011', '%m/%d/%Y')),
					("P8",	"D3",	"Patient Sam",	"444-7891",	"P8@email.com",	"23 Hill Drive",	STR_TO_DATE('11/23/2010', '%m/%d/%Y')),
					("P9",	"D5",	"Patient Peter",	"444-7791",	"P9@email.com",	"12 River St.",	STR_TO_DATE('02/01/2008', '%m/%d/%Y')),
					("P10",	"D7",	"Patient Nick",	"123-1212",	"P10@email.com",	"335 Bay St.",	STR_TO_DATE('7/13/2011', '%m/%d/%Y')),
					("P11",	"D9",	"Patient Kyle",	"123-2934",	"P11@email.com",	"216 Baker St.",	STR_TO_DATE('5/10/2016', '%m/%d/%Y')),
					("P12",	"D9",	"Patient Garcia",	"123-6723",	"P12@email.com",	"176 Right St.",	STR_TO_DATE('6/20/2010', '%m/%d/%Y')),
					("P13",	"D4",	"Patient Alicia",	"123-1745",	"P13@email.com",	"823 Left St.",	STR_TO_DATE('5/18/2015', '%m/%d/%Y')),
					("P14",	"D4",	"Patient Dan",	"123-6565",	"P14@email.com",	"534 High St.",	STR_TO_DATE('3/15/2018', '%m/%d/%Y'));
SELECT * FROM Hospital.Patient;