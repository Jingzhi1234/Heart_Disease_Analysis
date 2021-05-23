CREATE TABLE Chest_Pain (
     chest_pain_type int,
     PRIMARY KEY (chest_pain_type)
);

SELECT * FROM Chest_Pain

CREATE TABLE Resting_electrocardiographic (
     resting_electrocardiographic_results int,
     PRIMARY KEY (resting_electrocardiographic_results)
);

CREATE TABLE Slope (
     slope int,
     PRIMARY KEY (slope)
);

CREATE TABLE Vessel_color (
     vessel_color int,
     PRIMARY KEY (vessel_color)
);
SELECT * FROM Slope

CREATE TABLE Patient (
	patient_id int,
	age int,
	sex int,
	cp int,
	threstbps int,
	chol int,
	fbs int,
	restecg int,
	thalach int,
	exang int,
	oldpeak float,
	slope int,
	ca int,
	target int,
	primary key(patient_id)
	FOREIGN KEY(cp) REFERENCES Chest_Pain(chest_pain_type),
	FOREIGN KEY(threstbps) REFERENCES Resting_electrocardiographic(resting_electrocardiographic_results),
	FOREIGN KEY(slope) REFERENCES Slope(slope),
	FOREIGN KEY(ca) REFERENCES Vessel_color(vessel_color)
	);

	SELECT * FROM Patient
