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

SELECT * FROM Hospital.Appointment;