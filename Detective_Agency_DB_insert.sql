INSERT INTO Kolor (ID, Nazwa) VALUES (1, 'Czarny');
INSERT INTO Kolor (ID, Nazwa) VALUES (2, 'Granatowy');
INSERT INTO Kolor (ID, Nazwa) VALUES (3, 'Szary');
INSERT INTO Kolor (ID, Nazwa) VALUES (4, 'Biały');
INSERT INTO Kolor (ID, Nazwa) VALUES (5, 'Czerwony');


INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (1, '12345678901', 'Jan', 'Kowalski');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (2, '23456789012', 'Anna', 'Nowak');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (3, '34567890123', 'Piotr', 'Wiśniewski');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (4, '45678901234', 'Maria', 'Wójcik');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (5, '56789012345', 'Krzysztof', 'Kowal');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (6,  '90010112345', 'Emily', 'Johnson');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (7,  '91020223456', 'Michael', 'Smith');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (8,  '92030334567', 'Isabella', 'Brown');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (9,  '93040445678', 'William', 'Jones');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (10, '94050556789', 'Olivia', 'Garcia');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (11, '95060667890', 'James', 'Martinez');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (12, '96070778901', 'Sophia', 'Rodriguez');
INSERT INTO Osoba (ID, PESEL, Imie, Nazwisko) VALUES (13, '86789012345', 'Tymoteusz', 'Wiśniewicz');

INSERT INTO Rozmiar (ID, Symbol) VALUES (1, 'S');
INSERT INTO Rozmiar (ID, Symbol) VALUES (2, 'M');
INSERT INTO Rozmiar (ID, Symbol) VALUES (3, 'L');
INSERT INTO Rozmiar (ID, Symbol) VALUES (4, 'XL');
INSERT INTO Rozmiar (ID, Symbol) VALUES (5, 'XXL');

INSERT INTO Typ_Silnika (ID, Nazwa) VALUES (1, 'Benzynowy');
INSERT INTO Typ_Silnika (ID, Nazwa) VALUES (2, 'Diesel');
INSERT INTO Typ_Silnika (ID, Nazwa) VALUES (3, 'Elektryczny');
INSERT INTO Typ_Silnika (ID, Nazwa) VALUES (4, 'Hybrydowy');
INSERT INTO Typ_Silnika (ID, Nazwa) VALUES (5, 'Wodorowy');

INSERT INTO Obowiazki (ID, Nazwa, Opis) VALUES (1, 'Inwigilacja', 'Obserwowanie podejrzanych osób');
INSERT INTO Obowiazki (ID, Nazwa, Opis) VALUES (2, 'Zbieranie dowodów', 'Zbieranie i analiza dowodów');
INSERT INTO Obowiazki (ID, Nazwa, Opis) VALUES (3, 'Wywiad', 'Prowadzenie rozmów z klientami i świadkami');
INSERT INTO Obowiazki (ID, Nazwa, Opis) VALUES (4, 'Raportowanie', 'Tworzenie raportów z dochodzenia');
INSERT INTO Obowiazki (ID, Nazwa, Opis) VALUES (5, 'Analiza danych', 'Analiza zgromadzonych informacji');
 
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (1, 'Kamera ukryta', 1000, TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (2, 'Dyktafon', 500, TO_DATE('2023-02-10', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (3, 'Lornetka', 700, TO_DATE('2023-03-20', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (4, 'Podsluch', 300, TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (5, 'Latarka taktyczna', 200, TO_DATE('2023-05-25', 'YYYY-MM-DD'));

INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (6, 'Koszulka', 50, TO_DATE('2023-01-16', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (7, 'Spodnie', 200, TO_DATE('2023-03-10', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (8, 'Bluza', 150, TO_DATE('2023-06-20', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (9, 'Czapka', 40, TO_DATE('2023-02-05', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (10, 'Kominiarka', 120, TO_DATE('2023-01-25', 'YYYY-MM-DD'));

INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (11, 'Mustang', 90000, TO_DATE('2020-03-15', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (12, 'Fiat', 5000, TO_DATE('2023-01-13', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (13, 'Tesla', 120000, TO_DATE('2022-03-20', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (14, 'Mazda', 50000, TO_DATE('2021-04-05', 'YYYY-MM-DD'));
INSERT INTO Zasob (ID, Nazwa, Wartosc, Data_Nabycia) VALUES (15, 'Toyota', 35000, TO_DATE('2024-05-25', 'YYYY-MM-DD'));


INSERT INTO Stanowisko (ID, Nazwa) VALUES (1, 'Detektyw');
INSERT INTO Stanowisko (ID, Nazwa) VALUES (2, 'Asystent Detektywa');
INSERT INTO Stanowisko (ID, Nazwa) VALUES (3, 'Analityk');
INSERT INTO Stanowisko (ID, Nazwa) VALUES (4, 'Specjalista ds. Wywiadu');
INSERT INTO Stanowisko (ID, Nazwa) VALUES (5, 'Kierownik Zespołu');
 
 
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (1, 'Kamera ukryta');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (2, 'Dyktafon');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (3, 'Lornetka');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (4, 'Zestaw do zbierania odcisków palców');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (5, 'Latarka taktyczna');

INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (6,  'Koszulka');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (7,  'Spodnie');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (8,  'Bluza');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (9,  'Czapka');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (10, 'Kominiarka');

INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (11, 'Mustang');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (12, 'Fiat');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (13, 'Tesla');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (14, 'Mazda');
INSERT INTO Narzedzie (Zasob_ID, Opis_Przeznaczenia) VALUES (15, 'Toyota');

INSERT INTO Obowiazek_Stanowisko (Stanowisko_ID, Obowiazki_ID) VALUES (1, 1);
INSERT INTO Obowiazek_Stanowisko (Stanowisko_ID, Obowiazki_ID) VALUES (1, 2);
INSERT INTO Obowiazek_Stanowisko (Stanowisko_ID, Obowiazki_ID) VALUES (2, 3);
INSERT INTO Obowiazek_Stanowisko (Stanowisko_ID, Obowiazki_ID) VALUES (2, 4);
INSERT INTO Obowiazek_Stanowisko (Stanowisko_ID, Obowiazki_ID) VALUES (3, 5);

INSERT INTO Pracownik (Osoba_ID, Data_Zatrudnienia, Data_Zwolnienia, Stanowisko_ID, Przelozony_ID) VALUES (1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), NULL, 5, NULL);
INSERT INTO Pracownik (Osoba_ID, Data_Zatrudnienia, Data_Zwolnienia, Stanowisko_ID, Przelozony_ID) VALUES (2, TO_DATE('2019-03-15', 'YYYY-MM-DD'), NULL, 4, 1);
INSERT INTO Pracownik (Osoba_ID, Data_Zatrudnienia, Data_Zwolnienia, Stanowisko_ID, Przelozony_ID) VALUES (3, TO_DATE('2021-07-22', 'YYYY-MM-DD'), NULL, 3, 1);
INSERT INTO Pracownik (Osoba_ID, Data_Zatrudnienia, Data_Zwolnienia, Stanowisko_ID, Przelozony_ID) VALUES (4, TO_DATE('2018-10-30', 'YYYY-MM-DD'), NULL, 2, 2);
INSERT INTO Pracownik (Osoba_ID, Data_Zatrudnienia, Data_Zwolnienia, Stanowisko_ID, Przelozony_ID) VALUES (5, TO_DATE('2022-05-17', 'YYYY-MM-DD'), NULL, 1, 1);

INSERT INTO Srodek_Transportu (Zasob_ID, Ile_Osob_Pomieszcza, Typ_Silnika_ID) VALUES (1, 5, 1);
INSERT INTO Srodek_Transportu (Zasob_ID, Ile_Osob_Pomieszcza, Typ_Silnika_ID) VALUES (2, 3, 2);
INSERT INTO Srodek_Transportu (Zasob_ID, Ile_Osob_Pomieszcza, Typ_Silnika_ID) VALUES (3, 4, 3);
INSERT INTO Srodek_Transportu (Zasob_ID, Ile_Osob_Pomieszcza, Typ_Silnika_ID) VALUES (4, 2, 1);
INSERT INTO Srodek_Transportu (Zasob_ID, Ile_Osob_Pomieszcza, Typ_Silnika_ID) VALUES (5, 7, 2);

INSERT INTO Uniforma (Zasob_ID, Czy_Meska, Kolor_ID, Rozmiar_ID) VALUES (1, 1, 1, 2);
INSERT INTO Uniforma (Zasob_ID, Czy_Meska, Kolor_ID, Rozmiar_ID) VALUES (2, 0, 2, 3);
INSERT INTO Uniforma (Zasob_ID, Czy_Meska, Kolor_ID, Rozmiar_ID) VALUES (3, 1, 3, 4);
INSERT INTO Uniforma (Zasob_ID, Czy_Meska, Kolor_ID, Rozmiar_ID) VALUES (4, 0, 4, 1);
INSERT INTO Uniforma (Zasob_ID, Czy_Meska, Kolor_ID, Rozmiar_ID) VALUES (5, 1, 1, 5);

INSERT INTO Zlecenie (ID, Data_Zgloszenia, Opis, Wynagrodzenie, Klient_ID, Cel_ID) VALUES (1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'Sprawa rozwodowa - śledzenie współmałżonka', 5000, 6, 10);
INSERT INTO Zlecenie (ID, Data_Zgloszenia, Opis, Wynagrodzenie, Klient_ID, Cel_ID) VALUES (2, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'Poszukiwanie zaginionej osoby', 10000, 7, 11);
INSERT INTO Zlecenie (ID, Data_Zgloszenia, Opis, Wynagrodzenie, Klient_ID, Cel_ID) VALUES (3, TO_DATE('2024-06-20', 'YYYY-MM-DD'), 'Śledztwo w sprawie kradzieży', 7000, 8, 12);
INSERT INTO Zlecenie (ID, Data_Zgloszenia, Opis, Wynagrodzenie, Klient_ID, Cel_ID) VALUES (4, TO_DATE('2024-06-25', 'YYYY-MM-DD'), 'Obserwacja podejrzanego pracownika', 3000, 1, 5);
INSERT INTO Zlecenie (ID, Data_Zgloszenia, Opis, Wynagrodzenie, Klient_ID, Cel_ID) VALUES (5, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 'Wykrywanie podsłuchów', 4000, 9, NULL);

INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (1, 1);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (1, 3);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (1, 6);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (1, 13);

INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (2, 1);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (2, 4);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (2, 5);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (2, 9);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (2, 11);

INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (3, 3);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (3, 6);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (3, 15);

INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 1);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 3);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 4);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 7);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 8);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 12);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (4, 14);

INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (5, 5);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (5, 6);
INSERT INTO Zasob_Zlecenie (Zlecenie_ID, Zasob_ID) VALUES (5, 11);

INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (1, 1);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (1, 2);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (2, 3);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (2, 4);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (3, 5);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (4, 1);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (4, 5);
INSERT INTO Zlecenie_Pracownik (Zlecenie_ID, Pracownik_Osoba_ID) VALUES (5, 5);

COMMIT;