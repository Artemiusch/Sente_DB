-- task 1
-- Zestawienie książek które nigdy nie zostały wypożyczone
SELECT * FROM ksiazki;
SELECT * FROM wypozyczenia
ORDER BY ksiazka_id;

-- uzywając JOIN 
SELECT k.nazwa, k.autor, k.ilosc_stron, k.id
FROM ksiazki k LEFT JOIN wypozyczenia w
ON w.ksiazka_id = k.id
WHERE w.ksiazka_id IS NULL;

-- używając where oraz operator NOT IN
SELECT nazwa, autor, ilosc_stron, id
FROM ksiazki
WHERE id NOT IN (
    SELECT ksiazka_id FROM wypozyczenia
);


-- task 2
-- Zestawienie czytelników, którzy posiadają aktualnie 
-- wypożyczoną książke i nie dokonali jej zwrócenia

SELECT * FROM czytelnicy;
SELECT * FROM wypozyczenia;
ORDER BY data_zwrotu;

-- мій код
SELECT w.id AS numer_wypozyczenia, 
c.id AS id_czytelnika, c.imie, c.nazwisko, 
c.plec, c.data_urodzenia
FROM czytelnicy c INNER JOIN wypozyczenia w 
ON c.id = w.czytelnik_id
WHERE w.data_zwrotu IS NULL
ORDER BY numer_wypozyczenia;


-- task 3
-- kategorie wraz z ilością książek przypisanych do 
-- do tej kategorii
SELECT * FROM ksiazki;
SELECT * FROM kategorie;

-- мій код
SELECT count(k.id) AS ilosc_ksiazek, kat.nazwa
FROM ksiazki k INNER JOIN kategorie kat
ON k.kategoria_id = kat.id
GROUP BY kat.nazwa
ORDER BY ilosc_ksiazek;


-- task 4
-- Pierwszych pięciu czytelników, którzy posiadają 
-- największą ilość wypożyczeń
SELECT * FROM czytelnicy;
SELECT * FROM wypozyczenia;
-- мій код
SELECT count(w.czytelnik_id) AS ilosc_wypozyczen, 
 c.imie, c.nazwisko, c.plec, 
DATE_FORMAT(c.data_urodzenia, "%d-%m-%Y") as data_urodzenia
FROM czytelnicy c INNER JOIN wypozyczenia w
ON c.id = w.czytelnik_id
GROUP BY w.czytelnik_id
ORDER BY count(w.czytelnik_id) desc
LIMIT 5;

-- task 5
-- Czytelnicy wraz z sumą nalożonych na nich kar.
-- Interysują nas tylko ci, którze posiadają więcej niż jedną
-- karę. Ci o najwyższej sumie kar mają być wyświetlani jako pierwszi.

SELECT * FROM czytelnicy;
SELECT * FROM wypozyczenia;
SELECT * FROM kary;

-- мій код
SELECT c.imie, c.nazwisko, c.plec,
sum(k.kwota) as suma_kar
FROM czytelnicy c INNER JOIN wypozyczenia w 
ON c.id = w.czytelnik_id
INNER JOIN kary k 
ON k.wypozyczenie_id = w.id
GROUP BY w.czytelnik_id
HAVING COUNT(w.czytelnik_id) > 1
ORDER BY suma_kar DESC;


-- task 6
-- Z jakiego typu kar posiadamy największe wpływy,
-- wyświetli nazwe kar wraz z sumą kwot
SELECT * FROM typy_kar;
SELECT * FROM kary;

-- мій код
SELECT SUM(K.kwota), tk.nazwa as typ_kary
FROM kary k INNER JOIN typy_kar tk
ON k.typ_kary_id = tk.id
GROUP BY tk.nazwa
ORDER BY k.kwota DESC;


-- Task 7
-- Czytelnicy w jakim wieku posiadają najwiekszą ilość
-- wypożyczeń? Zwróć wiek wraz z ilością wypożyczeń

SELECT * FROM wypozyczenia;
SELECT * FROM czytelnicy;

SELECT COUNT(w.ID) AS ilosc_wypozyczen,
YEAR(CURRENT_DATE) - YEAR(c.data_urodzenia) AS year,
c.imie, c.nazwisko
FROM wypozyczenia w INNER JOIN czytelnicy c 
ON w.czytelnik_id = c.id
GROUP BY w.czytelnik_id
ORDER BY ilosc_wypozyczen DESC;


-- Task 8
-- Która płeć wypożycza większą ilość książek oraz jakie ma to
-- odniesienie do wysokości naliczonych kar. Zwróc płec,
-- ilość wypożyczeń oraz sumę naliczonych kar
SELECT * FROM wypozyczenia;
SELECT * FROM czytelnicy;
SELECT * FROM kary;


SELECT COUNT(w.czytelnik_id) AS ilosc_wypozyczonych_ksiazek,
c.plec, sum(k.kwota) AS suma_kar
FROM wypozyczenia w INNER JOIN czytelnicy c 
ON w.czytelnik_id = c.id INNER JOIN kary K
ON w.id = k.wypozyczenie_id
GROUP BY c.plec;


-- TASK 9
-- Wyświetl książki, którym zostało mniej niż tydzień
-- do planowanej daty ich zwotu
SELECT * FROM ksiazki;
SELECT * FROM wypozyczenia;

SELECT k.nazwa, w.data_zwrotu, w.planowana_data_zwrotu,
w.ksiazka_id,
TIMESTAMPDIFF(day, w.data_zwrotu, w.planowana_data_zwrotu) AS
pozostalo_dni
FROM ksiazki k INNER JOIN wypozyczenia w
ON k.id = w.ksiazka_id
where TIMESTAMPDIFF(day, w.data_zwrotu, w.planowana_data_zwrotu) < 7;

select w.ksiazka_id,
w.data_zwrotu,
w.planowana_data_zwrotu,
k.nazwa
from wypozyczenia w inner join ksiazki k
on k.id = w.ksiazka_id
WHERE DATE(w.data_zwrotu) - DATE(w.planowana_data_zwrotu)  < 7;

-- цей варіант правильний
-- оскільки я думаю тут йдеться про книжи які ще не повернули
select w.ksiazka_id,
w.data_zwrotu,
w.planowana_data_zwrotu,
k.nazwa
from wypozyczenia w inner join ksiazki k
on k.id = w.ksiazka_id
WHERE DATE(current_date) - DATE(w.planowana_data_zwrotu)  < 7;


-- Task 10
-- Wyświetl ksiązki które nie zostałe zwrócone w terminie oraz
-- nie zostały dla nich jeszcze naliczone kary z 
-- tytułuowego przekroczenia
SELECT * FROM ksiazki;
SELECT * FROM wypozyczenia;


SELECT w.ksiazka_id,
ks.nazwa
FROM wypozyczenia w LEFT JOIN kary k
ON w.id = k.wypozyczenie_id
INNER JOIN ksiazki ks
ON w.ksiazka_id = ks.id
WHERE (w.data_zwrotu > w.planowana_data_zwrotu 
OR w.data_zwrotu IS NULL)
AND k.id IS NULL;