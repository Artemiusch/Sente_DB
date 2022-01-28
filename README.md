# Sente DB 

## Language 
* [Polish](#polish-language)
* [English](#english)
* [Ukrainian](#ukrainian-language)
* [List of Tables](#[PL]-Spis-Tabel-[EN]-List-of-Tables-[UA]-Таблиці)


## Polish language
Rekrutacja na stanowisko praktykant  dziale Baz Danych.
Test zdalny, czas wykonywania 60 minut.
Była podana baza danych, czyli spis tabel oraz ER Diagram, który 
podpowiada w jaki sposób one zostałe połączone. 

## Opis plików
1. Sente_DB - zawiera tabeli, połączone między sobą za pomocą klucza obcego.
2. Task_DB - 10 rozwiązanych zadań.
3. DB.vuerd.json - ER Diagram, demonstruje polączenia między tabelami.

## Instrukcja odpalania
1. Zainstalować XAMPP.
2. Instalacja MS Visual Studio Code.
3. W Edytorze kodu MS Visual  instalujemy SQLTools oraz Draw.io
4. Otwieramy XAMPP, gdzie odpalamy modul Apache oraz MySQL (klikając przycisk start)
5. W wyszukiwace piszemy adres strony: http://localhost/phpmyadmin/ i tworzymy folder, który będzie naszą Bazą Danych.
6. Odpalamy pliki SENTE_DB.sql, Sente_task.sql oraz DB.vuerd.json
    Aby odpalić ER Diagram należy w pliku DB.vued.json we własnym projekcie w Visual Studio Code w górnym rogu ekranu kliknąć przycisk "Open ERD Editor".


## Zadania
Task 1
Zestawienie książek które nigdy nie zostały wypożyczone.

Task 2
Zestawienie czytelników, którzy posiadają aktualnie wypożyczoną książke i nie dokonali jej zwrócenia.

Task 3
Kategorie wraz z ilością książek przypisanych do tej kategorii.

Task 4
Pierwszych pięciu czytelników, którzy posiadają największą ilość wypożyczeń.

Task 5
Czytelnicy wraz z sumą nalożonych na nich kar. Interesują nas tylko ci, którze posiadają więcej niż jedną karę. Ci o najwyższej sumie kar mają być wyświetlani jako pierwszi.

Task 6
Z jakiego typu kar posiadamy największe wpływy, wyświetli nazwe kar wraz z sumą kwot.

Task 7
Czytelnicy w jakim wieku posiadają najwiekszą ilość wypożyczeń? Zwróć wiek wraz z ilością wypożyczeń.

Task 8
Która płeć wypożycza większą ilość książek oraz jakie ma to odniesienie do wysokości naliczonych kar. Zwróc płec, ilość wypożyczeń oraz sumę naliczonych kar.

Task 9
Wyświetl książki, którym zostało mniej niż tydzień do planowanej daty ich zwotu.

Task 10
Wyświetl ksiązki które nie zostałe zwrócone w terminie oraz nie zostały dla nich jeszcze naliczone kary z tytułuowego przekroczenia.

## English
Internship to Database recruitment.\
Remote test, execution time 60 minutes.\
A database was given. You need to solve a 10 tasks.

## File description
1. Sente_DB - contains a tables, linked together by a foreign key.
2. Task_DB - 10 solved problems.
3. DB.vuerd.json - ER Diagram, demonstrates connections between tables.

## Instruction
1. Install XAMPP.
2. Installation of MS Visual Studio Code.
3. In the MS Visual Code Editor, install SQLTools and Draw.io
4. Open XAMPP, run the Apache and MySQL modules (by clicking the start button).
5. In the search engine, write the website address: http://localhost/phpmyadmin/ and create a folder that will be our Database.
6. Open SENTE_DB.sql, Sente_task.sql and DB.vuerd.json files.
    To run ER Diagram, in the DB.vued.json file in your own project in Visual Studio Code in the upper corner of the screen, click the "Open ERD Editor" button.

## Tasks
Task 1
List of books that have never been borrowed.

Task 2
List of readers who have a currently borrowed book and have not returned it.

Task 3
Categories with the number of books assigned to this category.

Task 4
The first five readers who have the largest number of rented books.

Task 5
Readers with the sum of the penalties imposed on them. We are only interested in those who have more than one punishment. Those with the highest total penalties are to be displayed first.

Task 6
What type of penalties we have the highest proceeds will display the name of the penalty with the total amount.

Task 7
What age do readers have the largest number of rentals? Return age and number of rentals.

Task 8
Which gender is borrowing the most books and how does this relate to the amount of penalties charged? Please return the gender, the number of rentals and the sum of penalties.

Task 9
View books with less than one week left to the planned date.

Task 10
View books that have not been returned on time and have not yet been charged for overshooting.

## Ukrainian language
Стажування по базам даних.\
Дистанційний тест, час виконання 60 хв.\
Дано базу даних. Вам необхідно розв’язати 10 завдань.

## Опис файлу
1. Sente_DB - містиць таблиці, пов'язані між собою зовнішніми ключами.
2. Task_DB - 10 розв'язаних завдань.
3. DB.vuerd.json - діаграма ER, демонструє зв'язки між таблицями.

## Інструкція
1. Встановіть XAMPP.
2. Встановлення коду MS Visual Studio.
3. У редакторі MS Visual Code Editor встановіть SQLTools і Draw.io
4. Відкрийте XAMPP, запустіть модулі Apache і MySQL (натиснувши кнопку «Start»).
5. У пошуковій системі напишіть адресу веб-сайту: http://localhost/phpmyadmin/ і створіть папку, яка буде нашою базою даних.
6. Відкрийте файли SENTE_DB.sql, Sente_task.sql і DB.vuerd.json.
     Щоб запустити діаграму ER, у файлі DB.vued.json у вашому власному проекті в Visual Studio Code у верхньому куті екрана натисніть кнопку «Open ERD Editor».

## Завдання
Task 1
Список книг, які ніколи не позичалися.

Task 2
Список читачів, які мають на даний момент позичену книгу і не повернули її.

Task 3
Категорії з кількістю книг, віднесених до цієї категорії.

Task 4
Перші п’ять читачів, які мають найбільшу кількість взятих книг.

Task 5
Читачі із сумою накладених на них штрафів. Нас цікавлять лише ті, хто має більше одного покарання. Першими відображаються ті, у кого є найбільша сума штрафів.

Task 6
З якому типу штрафних санкцій у нас є найбільші доходи, висвітліть назва штрафу із загальною сумою.

Task 7
Яка вікова група читачів має найбільшу кількість взятих книг? Поверніть вік та кількість взятих книг.

Task 8
Яка стать запозичує найбільше книг і як це пов’язано з сумою нарахованих штрафів? Поверніть будь ласка стать, кількість взятих книг та суму штрафів.

Task 9
Висвітліть книги, у яких до запланованої дати повернення залишилося менше тижня.

Task 10
Висвітліть книги, які не були повернуті вчасно і за котрі ще не нараховано жодних плату за перевищення.

## [PL] Spis Tabel [EN] List of Tables [UA] Таблиці 
* **[PL] Czytelnicy** **[EN] Readers** **[UA] Читачі**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/czytelnicy.PNG)](##Spis-tabel)

* **[PL] Kary** **[EN] Penalties** **[UA] Штрафні санкції**

[![](https://github.com/Artemiusch/Sente_DB/blob/testing_branch/kary.PNG)](##Spis-tabel)


* **[PL] Kategorie** **[EN] Categories** **[UA] Категорії**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/kategorie.PNG)](##Spis-tabel)


* **[PL] Książki** **[EN] Books** **[UA] Книги**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/ksiazki.PNG)](##Spis-tabel)


* **[PL] Typy kar** **[EN] Types of penalties** **[UA] Види покарань**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/typy_kar.PNG)](##Spis-tabel)


* **[PL] Wypożyczenia** **[EN] Information about books** **[UA] Інформація про видані книги**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/wypozyczenia.PNG)](##Spis-tabel)


* **ER Diagram**

[![](https://github.com/Artemiusch/Sente_DB/blob/main/ER_Diagram.PNG)](##Spis-tabel)