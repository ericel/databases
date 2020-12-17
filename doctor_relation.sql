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

SELECT * FROM Hospital.Doctor;