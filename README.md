# Sente DB 
## Language 
* [Polish](#polish-language)
* [English]
* [Ukrainian]
## Polish language
Rekrutacja na stanowisko praktykant  dziale Baz Danych.\
Test zdalny, czas wykonywania 60 minut.
Była podana baza danych, czyli spis tabel oraz ER Diagram, który 
podpowiada w jaki sposób one zostałe połączone. 

## Spic Tabel
* **Czytelnicy**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/czytelnicy.PNG)](##Spis-tabel)

* **Kary**

[![](https://github.com/Artemiusch/Sente_DB/blob/testing_branch/kary.PNG)](##Spis-tabel)


* **Kategorie**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/kategorie.PNG)](##Spis-tabel)


* **Książki**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/ksiazki.PNG)](##Spis-tabel)


* **Typy kar**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/typy_kar.PNG)](##Spis-tabel)


* **Wypożyczenia**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/wypozyczenia.PNG)](##Spis-tabel)


* **ER Diagram**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/ER_Diagram.PNG)](##Spis-tabel)

## Opis plików
1. Sente_DB - zawiera tabeli, połączone między sobą za pomocą klucza obecgo.
2. Task_DB - 10 rozwiązanych zadań
3. DB.vuerd.json - ER Diagram, demonstuje polączenia między tabelami

## Instrukcja odpalania

Plik Sente_DB zawiera tabeli, polączenia między nimi oraz dane do tabel.
Plik
Jeden ze sposobów odpalenia bazy danych na komputerze.
1. Zainstalować XAMPP
2. Instalacja MS Visual Studio Code
3. W Edytorze kodu MS Visual  instalujemy SQLTools oraz Draw.io
4. Otwieramy XAMPP, gdzie odpalamy modul Apache oraz MySQL (klikając przycisk start)
5. W wyszukiwace piszemy adres strony: http://localhost/phpmyadmin/
6. Tworzymy własną Baze Danych
7. W Visual Studio Code już możemy odpalić własną bazę danych.
8. Wtedy już możemy odpalić pliki SENTE_DB oraz TASK_DB

Aby odpalić ER Diagram należy plik DB.vued.json odpalić we własnym projekcie w Visual Studio Code i w górnym rogu ekranu nacisnąć przycisk "Open ERD Editor"


## Zadania

Task 1
Zestawienie książek które nigdy nie zostały wypożyczone

Task 2
Zestawienie czytelników, którzy posiadają aktualnie wypożyczoną książke i nie dokonali jej zwrócenia

Task 3
Kategorie wraz z ilością książek przypisanych do tej kategorii

Task 4
Pierwszych pięciu czytelników, którzy posiadają największą ilość wypożyczeń

Task 5
Czytelnicy wraz z sumą nalożonych na nich kar. Interysują nas tylko ci, którze posiadają więcej niż jedną karę. Ci o najwyższej sumie kar mają być wyświetlani jako pierwszi.

Task 6
Z jakiego typu kar posiadamy największe wpływy, wyświetli nazwe kar wraz z sumą kwot.

Task 7
Czytelnicy w jakim wieku posiadają najwiekszą ilość wypożyczeń? Zwróć wiek wraz z ilością wypożyczeń

Task 8
Która płeć wypożycza większą ilość książek oraz jakie ma to odniesienie do wysokości naliczonych kar. Zwróc płec, ilość wypożyczeń oraz sumę naliczonych kar

Task 9
Wyświetl książki, którym zostało mniej niż tydzień do planowanej daty ich zwotu

Task 10
Wyświetl ksiązki które nie zostałe zwrócone w terminie oraz nie zostały dla nich jeszcze naliczone kary z tytułuowego przekroczenia