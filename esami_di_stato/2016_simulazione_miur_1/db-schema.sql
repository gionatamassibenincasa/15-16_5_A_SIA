CREATE DATABASE IF NOT EXISTS
sim1_es_stato_2016_miur;

USE sim1_es_stato_2016_miur;

CREATE TABLE IF NOT EXISTS
collezione(
    codice INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    stagione VARCHAR(255) NOT NULL,
    anno INT NOT NULL CHECK
        (anno BETWEEN 2000 AND 2020)
);

CREATE TABLE IF NOT EXISTS
colore(
    codice INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tessuto VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS
modello(
    codice INT PRIMARY KEY,
    prezzo DECIMAL(7,2) NOT NULL, -- ddddd.dd
    nome VARCHAR(255) NOT NULL,
    genere ENUM('M', 'F'),
    collezione INT
        REFERENCES collezione(codice)
);

-- CREATE TABLE IF NOT EXISTS
-- dipendente(codice_fiscale, nome, cognome)

-- CREATE TABLE IF NOT EXISTS
-- negozio(codice, denominazione, apertura, telefono)

-- CREATE TABLE IF NOT EXISTS
-- indirizzo(negozio, nazione, località, cap, via)

-- CREATE TABLE IF NOT EXISTS
-- lavora(dipendente, negozio, inizio, fine, qualifica)

-- CREATE TABLE IF NOT EXISTS
-- abito(codice, taglia, colore, modello, negozio)
