CREATE DATABASE IF NOT EXISTS
es_2007;

USE es_2007;

DROP TABLE IF EXISTS medico;

CREATE TABLE IF NOT EXISTS
medico (
  cf CHAR(16) PRIMARY KEY,
  nome VARCHAR(50),
  cognome VARCHAR(50),
  num_albo INTEGER,
  specializzazione ENUM (
            'di base',
            'anestesista',
            'cardiologo',
            'dentista')
);

DROP TABLE IF EXISTS paziente;

CREATE TABLE IF NOT EXISTS
paziente (
  cf CHAR(16) PRIMARY KEY,
  nome VARCHAR(50),
  cognome VARCHAR(50)
);

DROP TABLE IF EXISTS fascia_oraria;

CREATE TABLE IF NOT EXISTS
fascia_oraria (
    id INTEGER PRIMARY KEY,
    giorno_settimana ENUM (
        'Lun',
        'Mar',
        'Mer',
        'Gio',
        'Ven'),
    inizio TIME,
    fine TIME
);

DROP TABLE IF EXISTS disponibilita;

CREATE TABLE IF NOT EXISTS
disponibilita (
    medico CHAR(16) REFERENCES medico(cf),
    orario INTEGER REFERENCES fascia_oraria(id),
    PRIMARY KEY(medico, orario)
);

DROP TABLE IF EXISTS tipo_prestazione;

CREATE TABLE IF NOT EXISTS
tipo_prestazione (
    id INTEGER PRIMARY KEY,
    costo REAL,
    tempo_medio INTEGER DEFAULT 15
);

DROP TABLE IF EXISTS prestazione;

CREATE TABLE IF NOT EXISTS
prestazione (
    id INTEGER PRIMARY KEY,
    medico CHAR(16) REFERENCES medico(cf),
    paziente CHAR(16) REFERENCES paziente(cf),
    tipo_prestazione INTEGER REFERENCES tipo_prestazione(id),
    data DATE,
    ora_prenotazione TIME,
    ora_inizio TIME,
    ora_fine TIME DEFAULT NULL,
    costo REAL,
    effettuato BIT,
    UNIQUE (medico, paziente, tipo_prestazione, data)
);


DROP TABLE IF EXISTS abilitazione;

CREATE TABLE IF NOT EXISTS
abilitazione (
    medico CHAR(16) REFERENCES medico(cf),
    tipo_prestazione INTEGER REFERENCES tipo_prestazione(id),
    PRIMARY KEY (medico, tipo_prestazione)
);