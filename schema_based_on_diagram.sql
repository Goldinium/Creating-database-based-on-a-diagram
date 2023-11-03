CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE
);

CREATE TABLE medical_histories
(
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP,
  patient_id INTEGER,
  status VARCHAR(255),
  FOREIGN KEY (patient_id) REFERENCES patients (id)
);

CREATE INDEX ON medical_histories
(patient_id);

CREATE TABLE treatments
(
  id SERIAL PRIMARY KEY,
  type VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE medical_histories_treatments
(
  id SERIAL PRIMARY KEY,
  medical_history_id INTEGER,
  treatment_id INTEGER,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories (id),
  FOREIGN KEY (treatment_id) REFERENCES treatments (id)
);