-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-07-04 09:31:05.963


-- Drop tabeli 
-- foreign keys
ALTER TABLE Zlecenie
    DROP CONSTRAINT Cel_ID;

ALTER TABLE Zlecenie
    DROP CONSTRAINT Klient_ID;

ALTER TABLE Narzedzie
    DROP CONSTRAINT Narzedzie_Zasob;

ALTER TABLE Obowiazek_Stanowisko
    DROP CONSTRAINT Obowiazek_Stanowisko_Obowiazki;

ALTER TABLE Pracownik
    DROP CONSTRAINT Pracownik_Osoba;

ALTER TABLE Pracownik
    DROP CONSTRAINT Pracownik_Pracownik;

ALTER TABLE Pracownik
    DROP CONSTRAINT Pracownik_Stanowisko;

ALTER TABLE Srodek_Transportu
    DROP CONSTRAINT Srodek_Transportu_Typ_Silnika;

ALTER TABLE Srodek_Transportu
    DROP CONSTRAINT Srodek_Transportu_Zasob;

ALTER TABLE Obowiazek_Stanowisko
    DROP CONSTRAINT Table_7_Stanowisko;

ALTER TABLE Uniforma
    DROP CONSTRAINT Uniforma_Kolor;

ALTER TABLE Uniforma
    DROP CONSTRAINT Uniforma_Rozmiar;

ALTER TABLE Uniforma
    DROP CONSTRAINT Uniforma_Zasob;

ALTER TABLE Zasob_Zlecenie
    DROP CONSTRAINT Zasob_Zlecenie_Zasob;

ALTER TABLE Zasob_Zlecenie
    DROP CONSTRAINT Zasob_Zlecenie_Zlecenie;

ALTER TABLE Zlecenie_Pracownik
    DROP CONSTRAINT Zlecenie_Pracownik_Pracownik;

ALTER TABLE Zlecenie_Pracownik
    DROP CONSTRAINT Zlecenie_Pracownik_Zlecenie;

-- tables
DROP TABLE Kolor;

DROP TABLE Narzedzie;

DROP TABLE Obowiazek_Stanowisko;

DROP TABLE Obowiazki;

DROP TABLE Osoba;

DROP TABLE Pracownik;

DROP TABLE Rozmiar;

DROP TABLE Srodek_Transportu;

DROP TABLE Stanowisko;

DROP TABLE Typ_Silnika;

DROP TABLE Uniforma;

DROP TABLE Zasob;

DROP TABLE Zasob_Zlecenie;

DROP TABLE Zlecenie;

DROP TABLE Zlecenie_Pracownik;



-- tables
-- Table: Kolor
CREATE TABLE Kolor (
    ID integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    CONSTRAINT Kolor_pk PRIMARY KEY (ID)
) ;

-- Table: Narzedzie
CREATE TABLE Narzedzie (
    Zasob_ID integer  NOT NULL,
    Opis_Przeznaczenia varchar2(100)  NOT NULL,
    CONSTRAINT Narzedzie_pk PRIMARY KEY (Zasob_ID)
) ;

-- Table: Obowiazek_Stanowisko
CREATE TABLE Obowiazek_Stanowisko (
    Stanowisko_ID integer  NOT NULL,
    Obowiazki_ID integer  NOT NULL,
    CONSTRAINT Obowiazek_Stanowisko_pk PRIMARY KEY (Stanowisko_ID,Obowiazki_ID)
) ;

-- Table: Obowiazki
CREATE TABLE Obowiazki (
    ID integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    Opis varchar2(100)  NOT NULL,
    CONSTRAINT Obowiazki_pk PRIMARY KEY (ID)
) ;

-- Table: Osoba
CREATE TABLE Osoba (
    ID integer  NOT NULL,
    PESEL varchar2(11)  NULL,
    Imie varchar2(30)  NOT NULL,
    Nazwisko varchar2(30)  NOT NULL,
    CONSTRAINT Osoba_pk PRIMARY KEY (ID)
) ;

-- Table: Pracownik
CREATE TABLE Pracownik (
    Osoba_ID integer  NOT NULL,
    Data_Zatrudnienia date  NOT NULL,
    Data_Zwolnienia date  NULL,
    Stanowisko_ID integer  NOT NULL,
    Przelozony_ID integer  NULL,
    CONSTRAINT Pracownik_pk PRIMARY KEY (Osoba_ID)
) ;

-- Table: Rozmiar
CREATE TABLE Rozmiar (
    ID integer  NOT NULL,
    Symbol varchar2(10)  NOT NULL,
    CONSTRAINT Rozmiar_pk PRIMARY KEY (ID)
) ;

-- Table: Srodek_Transportu
CREATE TABLE Srodek_Transportu (
    Zasob_ID integer  NOT NULL,
    Ile_Osob_Pomieszcza integer  NOT NULL,
    Typ_Silnika_ID integer  NOT NULL,
    CONSTRAINT Srodek_Transportu_pk PRIMARY KEY (Zasob_ID)
) ;

-- Table: Stanowisko
CREATE TABLE Stanowisko (
    ID integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    CONSTRAINT Stanowisko_pk PRIMARY KEY (ID)
) ;

-- Table: Typ_Silnika
CREATE TABLE Typ_Silnika (
    ID integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    CONSTRAINT Typ_Silnika_pk PRIMARY KEY (ID)
) ;

-- Table: Uniforma
CREATE TABLE Uniforma (
    Zasob_ID integer  NOT NULL,
    Czy_Meska smallint  NOT NULL,
    Kolor_ID integer  NOT NULL,
    Rozmiar_ID integer  NOT NULL,
    CONSTRAINT Uniforma_pk PRIMARY KEY (Zasob_ID)
) ;

-- Table: Zasob
CREATE TABLE Zasob (
    ID integer  NOT NULL,
    Nazwa varchar2(30)  NOT NULL,
    Wartosc integer  NOT NULL,
    Data_Nabycia date  NOT NULL,
    CONSTRAINT Zasob_pk PRIMARY KEY (ID)
) ;

-- Table: Zasob_Zlecenie
CREATE TABLE Zasob_Zlecenie (
    Zlecenie_ID integer  NOT NULL,
    Zasob_ID integer  NOT NULL,
    CONSTRAINT Zasob_Zlecenie_pk PRIMARY KEY (Zlecenie_ID,Zasob_ID)
) ;

-- Table: Zlecenie
CREATE TABLE Zlecenie (
    ID integer  NOT NULL,
    Data_Zgloszenia date  NOT NULL,
    Opis varchar2(100)  NOT NULL,
    Wynagrodzenie integer  NOT NULL,
    Klient_ID integer  NOT NULL,
    Cel_ID integer  NULL,
    CONSTRAINT Zlecenie_pk PRIMARY KEY (ID)
) ;

-- Table: Zlecenie_Pracownik
CREATE TABLE Zlecenie_Pracownik (
    Zlecenie_ID integer  NOT NULL,
    Pracownik_Osoba_ID integer  NOT NULL,
    CONSTRAINT Zlecenie_Pracownik_pk PRIMARY KEY (Zlecenie_ID,Pracownik_Osoba_ID)
) ;

-- foreign keys
-- Reference: Cel_ID (table: Zlecenie)
ALTER TABLE Zlecenie ADD CONSTRAINT Cel_ID
    FOREIGN KEY (Cel_ID)
    REFERENCES Osoba (ID);

-- Reference: Klient_ID (table: Zlecenie)
ALTER TABLE Zlecenie ADD CONSTRAINT Klient_ID
    FOREIGN KEY (Klient_ID)
    REFERENCES Osoba (ID);

-- Reference: Narzedzie_Zasob (table: Narzedzie)
ALTER TABLE Narzedzie ADD CONSTRAINT Narzedzie_Zasob
    FOREIGN KEY (Zasob_ID)
    REFERENCES Zasob (ID);

-- Reference: Obowiazek_Stanowisko_Obowiazki (table: Obowiazek_Stanowisko)
ALTER TABLE Obowiazek_Stanowisko ADD CONSTRAINT Obowiazek_Stanowisko_Obowiazki
    FOREIGN KEY (Obowiazki_ID)
    REFERENCES Obowiazki (ID);

-- Reference: Pracownik_Osoba (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Osoba
    FOREIGN KEY (Osoba_ID)
    REFERENCES Osoba (ID);

-- Reference: Pracownik_Pracownik (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Pracownik
    FOREIGN KEY (Przelozony_ID)
    REFERENCES Pracownik (Osoba_ID);

-- Reference: Pracownik_Stanowisko (table: Pracownik)
ALTER TABLE Pracownik ADD CONSTRAINT Pracownik_Stanowisko
    FOREIGN KEY (Stanowisko_ID)
    REFERENCES Stanowisko (ID);

-- Reference: Srodek_Transportu_Typ_Silnika (table: Srodek_Transportu)
ALTER TABLE Srodek_Transportu ADD CONSTRAINT Srodek_Transportu_Typ_Silnika
    FOREIGN KEY (Typ_Silnika_ID)
    REFERENCES Typ_Silnika (ID);

-- Reference: Srodek_Transportu_Zasob (table: Srodek_Transportu)
ALTER TABLE Srodek_Transportu ADD CONSTRAINT Srodek_Transportu_Zasob
    FOREIGN KEY (Zasob_ID)
    REFERENCES Zasob (ID);

-- Reference: Table_7_Stanowisko (table: Obowiazek_Stanowisko)
ALTER TABLE Obowiazek_Stanowisko ADD CONSTRAINT Table_7_Stanowisko
    FOREIGN KEY (Stanowisko_ID)
    REFERENCES Stanowisko (ID);

-- Reference: Uniforma_Kolor (table: Uniforma)
ALTER TABLE Uniforma ADD CONSTRAINT Uniforma_Kolor
    FOREIGN KEY (Kolor_ID)
    REFERENCES Kolor (ID);

-- Reference: Uniforma_Rozmiar (table: Uniforma)
ALTER TABLE Uniforma ADD CONSTRAINT Uniforma_Rozmiar
    FOREIGN KEY (Rozmiar_ID)
    REFERENCES Rozmiar (ID);

-- Reference: Uniforma_Zasob (table: Uniforma)
ALTER TABLE Uniforma ADD CONSTRAINT Uniforma_Zasob
    FOREIGN KEY (Zasob_ID)
    REFERENCES Zasob (ID);

-- Reference: Zasob_Zlecenie_Zasob (table: Zasob_Zlecenie)
ALTER TABLE Zasob_Zlecenie ADD CONSTRAINT Zasob_Zlecenie_Zasob
    FOREIGN KEY (Zasob_ID)
    REFERENCES Zasob (ID);

-- Reference: Zasob_Zlecenie_Zlecenie (table: Zasob_Zlecenie)
ALTER TABLE Zasob_Zlecenie ADD CONSTRAINT Zasob_Zlecenie_Zlecenie
    FOREIGN KEY (Zlecenie_ID)
    REFERENCES Zlecenie (ID);

-- Reference: Zlecenie_Pracownik_Pracownik (table: Zlecenie_Pracownik)
ALTER TABLE Zlecenie_Pracownik ADD CONSTRAINT Zlecenie_Pracownik_Pracownik
    FOREIGN KEY (Pracownik_Osoba_ID)
    REFERENCES Pracownik (Osoba_ID);

-- Reference: Zlecenie_Pracownik_Zlecenie (table: Zlecenie_Pracownik)
ALTER TABLE Zlecenie_Pracownik ADD CONSTRAINT Zlecenie_Pracownik_Zlecenie
    FOREIGN KEY (Zlecenie_ID)
    REFERENCES Zlecenie (ID);

-- End of file.