CREATE TABLE czytelnicy (
    id INTEGER PRIMARY KEY,
    imie VARCHAR(15) NOT NULL,
    nazwisko VARCHAR(25) NOT NULL,
    plec VARCHAR(10) NOT NULL,
    data_urodzenia DATETIME
);

--another testing comment

CREATE TABLE typy_kar (
    id INTEGER PRIMARY KEY,
    nazwa VARCHAR(50) 
);

CREATE TABLE kategorie (
    id INTEGER PRIMARY KEY,
    nazwa VARCHAR(10) NOT NULL
);

CREATE TABLE kary (
    id INTEGER PRIMARY KEY,
    wypozyczenie_id INTEGER,
    typ_kary_id INTEGER,
    kwota NUMERIC(14, 2),
    opis VARCHAR(255)
);

CREATE TABLE wypozyczenia (
    id INTEGER PRIMARY KEY,
    ksiazka_id INTEGER  ,
    czytelnik_id INTEGER,
    data_wypozyczenia TIMESTAMP,
    planowana_data_zwrotu TIMESTAMP NULL DEFAULT NULL,
    data_zwrotu TIMESTAMP NULL DEFAULT NULL
);


CREATE TABLE ksiazki (
    id INTEGER PRIMARY KEY,
    nazwa VARCHAR(255) NOT NULL,
    ilosc_stron INTEGER NOT NULL,
    kategoria_id INTEGER NOT NULL,
    autor VARCHAR(255) NOT NULL
);

-- drop table kary;
-- drop table typy_kar;
-- drop table wypozyczenia;
-- drop table ksiazki;
-- drop table kategorie;
-- drop table czytelnicy;

ALTER TABLE kary
ADD FOREIGN KEY (typ_kary_id) REFERENCES typy_kar(id);

ALTER TABLE kary
ADD FOREIGN KEY (wypozyczenie_id) REFERENCES wypozyczenia(id);

ALTER TABLE wypozyczenia
ADD FOREIGN KEY (ksiazka_id) REFERENCES ksiazki(id);

ALTER TABLE wypozyczenia
ADD FOREIGN KEY (czytelnik_id) REFERENCES czytelnicy(id);

ALTER TABLE ksiazki
ADD FOREIGN KEY (kategoria_id) REFERENCES kategorie(id);

INSERT INTO
    czytelnicy(id, imie, nazwisko, plec, data_urodzenia)
VALUES
    (1, 'Małgorzata', 'Janiszewska', 'Kobieta', '1985-04-02'),
    (2, 'Kinga', 'Kurek', 'Kobieta', '1947-03-15'),
    (3, 'Kamil', 'Michalak', 'Mężczyzna', '1988-07-16'),
    (4, 'Joanna', 'Paluch', 'Kobieta', '1980-05-22'),
    (5, 'Zofia', 'Kurowska', 'Kobieta', '1990-06-01'),
    (6, 'Antoni', 'Lipiński', 'Mężczyzna', '1990-04-15'),
    (7, 'Kaja', 'Domagała', 'Kobieta', '1990-09-19'),
    (8, 'Szymon', 'Żak', 'Mężczyzna', '1975-11-25'),
    (9, 'Michał', 'Kasprzak', 'Mężczyzna', '1989-10-13');


INSERT INTO
    kategorie(id, nazwa)
VALUES
    (1, 'Fantastyka'),
    (2, 'Horror'),
    (3, 'Kryminał'),
    (4, 'Poezja'),
    (5, 'Dramat');


INSERT INTO 
    ksiazki (id, nazwa, ilosc_stron, kategoria_id, autor)
VALUES
    (1, 'Cień', 434, 1, 'Pzechzta Adam'),
    (2, 'Podejrzany', 320, 3, 'Świst Paulina'),
    (3, 'Outsider', 640, 2, 'King Stephen'),
    (4, 'Tango', 208, 5, 'Morżek Sławomir'),
    (5, 'Miała dzikie serce', 232, 4, 'Atticus'),
    (6, 'Dramaty', 280, 5, 'Masłowska Dorota'),
    (7, 'Cztery żywioły. Tom 4. Czewony pająk', 816, 3, 'Bonda Katarzyna'),
    (8, 'Mitologia nordycka', 208, 1, 'Gaiman Neil'),
    (9, 'Policja', 386, 5, 'Mrożek Sławomir'),
    (10, 'To', 1150, 2, 'King Stephen'),
    (11, 'Wirus', 320, 2, 'Masterton Gaham'),
    (12, 'I że cię nie opuszczę', 488, 3, 'Richmond Michelle'),
    (13, 'Otchlań. Księga 2', 565, 1, 'Brett Peter V.'),
    (14, 'Mleko i miód Milk and Honey', 416, 4, 'Rupi Kaur'),
    (15, 'Zew Cthulhu', 296, 2, 'Lovecraft Howard Philips');


INSERT INTO 
    wypozyczenia(id, ksiazka_id, czytelnik_id, data_wypozyczenia, planowana_data_zwrotu, data_zwrotu)
VALUES
    (1, 7, 3, '2017-11-18', '2018-01-17', '2018-01-12'),
    (2, 5, 6, '2018-06-05', '2018-08-04', null),
    (3, 3, 4, '2017-09-29', '2017-11-28', '2017-11-23'),
    (4, 11, 8, '2018-04-10', '2018-06-09', '2018-06-04'),
    (5, 15, 1, '2018-01-11', '2018-03-12', null),
    (6, 7, 9, '2018-05-01', '2018-06-30', '2018-06-25'),
    (7, 8, 1, '2018-03-05', '2018-05-04', '2018-04-29'),
    (8, 9, 4, '2018-02-23', '2018-04-24', null),
    (9, 8, 6, '2017-12-16', '2018-02-14', null),
    (10, 8, 2, '2017-08-22', '2017-10-21', '2017-10-16'),
    (11, 3, 3, '2017-08-22', '2017-10-21', '2017-10-25'),
    (12, 4, 1, '2018-02-05', '2018-04-06', null),
    (13, 6, 6, '2017-11-08', '2018-01-07', null),
    (14, 2, 4, '2018-02-28', '2018-04-29', null),
    (15, 13, 4, '2018-02-23', '2018-04-24', null),
    (16, 7, 7, '2018-04-10', '2018-06-09', null),
    (17, 4, 4, '2017-12-16', '2018-02-14', '2018-01-23'),
    (18, 8, 5, '2018-01-11', '2018-03-12', '2018-02-05'),
    (19, 11, 6, '2018-06-05', '2018-08-04', null),
    (20, 14, 4, '2017-04-21', '2017-06-20', null);

INSERT INTO
    typy_kar(id, nazwa)
VALUES
    (1, 'Znieszczenie'),
    (2, 'Brak terminowego zdania'),
    (3, 'Znaczne pogorszenie stanu');

INSERT INTO
    kary(id, wypozyczenie_id, typ_kary_id, kwota, opis)
VALUES
    (1, 3, 1, 40, 'Nie nadaje się do ponownego użytku'),
    (2, 5, 2, 5, null),
    (3, 7, 2, 5, null),
    (4, 12, 3, 10, 'Zalanie kilku stron'),
    (5, 14, 2, 5, null),
    (6, 20, 2, 5, null);

-- wyświetlenie tablicy czytelnicy
-- popawienie daty
SELECT id, imie, nazwisko, plec,
DATE_FORMAT(data_urodzenia, '%d-%m-%Y') AS data_urodzenia
FROM czytelnicy;

-- wyświetlenie tablicy kary
SELECT * FROM kary;

-- wyświetlenie tablicy kategorie
SELECT * FROM kategorie;


-- wyświetlenie tablicy książki
SELECT * FROM ksiazki;

-- wyświetlenie tablicy typy_kar
SELECT * FROM typy_kar;

-- wyświetlenie tablicy wypożyczenia
SELECT id, ksiazka_id, czytelnik_id,
DATE_FORMAT(data_wypozyczenia, '%Y-%m-%d') AS data_wypozyczenia,
DATE_FORMAT(planowana_data_zwrotu, '%Y-%m-%d') AS planowana_data_zwrotu,
DATE_FORMAT(data_zwrotu, '%Y-%m-%d') AS data_zwrotu
FROM wypozyczenia;