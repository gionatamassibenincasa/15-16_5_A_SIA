USE sim1_es_stato_2016_miur;

DELETE FROM collezione;
INSERT INTO collezione(codice, nome, stagione, anno)
VALUES
  (1, 'Camicie d''autore', 'Primavera/Estate', 2016),
  (2, 'Camicie d''autore', 'Autunno/Inverno', 2016),
  (3, 'Hawaii', 'Primavera/Estate', 2016),
  (4, 'Norge', 'Autunno/Inverno', 2016);
  
DELETE FROM colore;
INSERT INTO colore (codice, nome, tessuto)
VALUES
  (1, 'Sky 354', 'cotone egiziano, trama popeline, doppio ritorto in trama e ordito'),
  (2, 'Moma', 'cotone egiziano, tessuto twill spigato, doppio ritorto in trama e ordito'),
  (3, 'Manchester', 'tessuto trama oxford, super compact'),
  (4, 'Stampati', 'cotone egiziano, tessuto trama popeline stampato, doppio ritorto in trama e ordito');
  
DELETE FROM modello;
INSERT INTO modello(codice, prezzo, nome, genere, collezione)
VALUES
  (1, 119.99, 'Gabbiano', 'M', 1),
  (2, 99.99, 'Ninfea', 'F', 1),
  (3, 129.99, 'Stella alpina', 'M', 2),
  (4, 159.99, 'Edelweiss', 'F', 2),
  (5, 59.99, 'Arcobaleno', 'M', 3);

DELETE FROM dipendente;  
INSERT INTO dipendente(codice, nome, cognome)
VALUES
  (1, 'Pinco', 'Pallino');

DELETE FROM negozio;
INSERT INTO negozio(codice, denominazione, apertura, telefono)
VALUES
    (1, 'Showroom Milano', '2015-05-09', '+39 02 123456');

DELETE FROM indirizzo; 
INSERT INTO indirizzo(negozio, nazione, localita,
    cap, via)
VALUES
    (1, 'Italia', 'Milano', 'I-20121', 'Via Montenapoleone 100/A');
