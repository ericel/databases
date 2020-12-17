
INSERT INTO Hospital.Doctor (doctor_id, name, phone, speciality_number, supervisor)
            VALUES("D1",	"Doctor Karen",	"555-1212",	"S6", ""),
				("D2",	"Doctor John",	 "555-2934", 	"S2",	"D1"),
				("D3",	"Doctor Robert",	"555-6723",	"S6",	"D1"),
				("D4",	"Doctor David",	"555-1745",	"S4",	"D1"),
				("D5",	"Doctor Mary",	"555-6565",	"S5",	"D1"),
				("D6",	"Doctor Linda",	"555-4889",	"S1",	"D1"),
				("D7",	"Doctor Susan",	"555-4581",	"S3",	"D1"),
				("D8",	 "Doctor Zeynep", 	"555-7891",	"S4",	"D1"),
				("D9",	"Doctor Mat",	"555-7791",	"S1",	"D1");
                
INSERT INTO Hospital.Speciality (speciality_number, speciality_name)
		VALUES("S1", "Dermatology"),
			  ("S2", "Psychiatry"),
              ("S3", "Oncology"),
			  ("S4", "Cardiology"),
              ("S5", "Urology"),
			  ("S6", "Pediatrics");                

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

INSERT INTO Hospital.Appointment (appointment_id, patient_id, doctor_id, 
			appointment_date, blood_pressure, weight,
            treatement_notes)  
           VALUES("A1",	"P1",	"D2",	STR_TO_DATE('07/01/2019', '%m/%d/%Y'),	80,	65,	"Dream to success"),
			("A2",	"P13",	"D4",	STR_TO_DATE('01/04/2019', '%m/%d/%Y'),	77,	88,	"Good heart rate"),
			("A3",	"P11",	"D9",	STR_TO_DATE('03/22/2019', '%m/%d/%Y'),	82,	95,	"Many spots"),
			("A4",	"P7",	"D4",	STR_TO_DATE('02/01/2020', '%m/%d/%Y'),	85,	74,	"Fast heart rate"),
			("A5",	"P9",	"D5",	STR_TO_DATE('04/13/2019', '%m/%d/%Y'),	75,	56,	"Reports checked"),
			("A6",	"P3",	"D6",	STR_TO_DATE('11/12/2019', '%m/%d/%Y'),	81,	96,	"Sun light spots"),
			("A7",	"P10",	"D7",	STR_TO_DATE('01/29/2020', '%m/%d/%Y'),	80,	87,	"Early treatment"),
			("A8",	"P9",	"D5",	STR_TO_DATE('08/12/2019', '%m/%d/%Y'),	86,	92,	"Much better"),
			("A9",	"P14",	"D4",	STR_TO_DATE('05/18/2019', '%m/%d/%Y'),	75,	75,	"Good heart rate"),
			("A10",	"P8",	"D3",	STR_TO_DATE('11/18/2019', '%m/%d/%Y'),	76,	79,	"New teeth"),
			("A11",	"P11",	"D9",	STR_TO_DATE('06/22/2019', '%m/%d/%Y'),	78,	71,	"Much better"),
			("A12",	"P2",	"D7",	STR_TO_DATE('02/21/2020', '%m/%d/%Y'),	82,	86,	"Early treatment"),
			("A13",	"P4",	"D2",	STR_TO_DATE('08/17/2019', '%m/%d/%Y'),	81,	101,	"Bad dreams"),
			("A14",	"P6",	"D6",	STR_TO_DATE('06/27/2019', '%m/%d/%Y'),	79,	49,	"Sun light spots"),
			("A15",	"P10",	"D7",	STR_TO_DATE('07/29/2020', '%m/%d/%Y'),	80,	83,	"Early treatment"),
			("A16",	"P7",	"D4",	STR_TO_DATE('08/01/2020', '%m/%d/%Y'),	78,	79,	"Good heart rate");
            
            
INSERT INTO Hospital.Allergy (allergy_id, allergy_name)
		    VALUES("AL1", "Drug"),
				  ("AL2", "Food"),
                  ("AL3", "Skin"),
                  ("AL4", "Asthma"),
                  ("AL5", "Rhinitis");
                  

INSERT INTO Hospital.Patient_Allergy (allergy_id, patient_id)
            VALUES("AL4",	"P1"),
                  ("AL2",	"P13"),
				  ("AL3", 	"P11"),
				  ("AL4",	"P7"),
				  ("AL5",	"P9"),
				  ("AL1",	"P3");


INSERT INTO Hospital.Medicine (medicine_id, medicine_name)
            VALUES("M1",	"Ativan"),
				  ("M2",	"Ibuprofen"),
				  ("M3",	"Omeprazole"),
				  ("M4",	"Metoprolol"),
				  ("M5",	"Azithromycin"),
				  ("M6",	"Codeine");


INSERT INTO Hospital.Patient_Medicine (appointment_id, medicine_id)
            VALUES("A15",	"M1"), ("A2",	"M6"),
				  ("A8",	"M3"), ("A6",	"M3"),
				  ("A15",	"M2"), ("A10",	"M6"),
				  ("A10",	"M2"),("A4",	"M5"),
				  ("A3",	"M5"), ("A1",	"M2");