--Blok zapytań zwracających po kolei wszystkie tabele
SELECT * FROM Kolor;
SELECT * FROM Narzedzie;
SELECT * FROM Obowiazek_Stanowisko;
SELECT * FROM Obowiazki;
SELECT * FROM Osoba;
SELECT * FROM Pracownik;
SELECT * FROM Rozmiar;
SELECT * FROM Srodek_Transportu;
SELECT * FROM Stanowisko;
SELECT * FROM Typ_Silnika;
SELECT * FROM Uniforma;
SELECT * FROM Zasob;
SELECT * FROM Zasob_Zlecenie;
SELECT * FROM Zlecenie;
SELECT * FROM Zlecenie_Pracownik;

------------------------------------------------------------------------------------------------------------

--Zapytanie zwraca ID zgłoszenia, Datę, opis, wynagrodzenie oraz użyte sprzęty

SELECT 
 ZL.ID
,ZL.Data_Zgloszenia
,ZL.Opis
,ZL.Wynagrodzenie
,ZAS.Nazwa 
FROM Zlecenie ZL
JOIN Zasob_Zlecenie ZA ON ZL.ID = ZA.Zlecenie_ID
JOIN Zasob ZAS ON ZA.Zasob_ID = ZAS.ID
ORDER BY ZL.ID ASC;

------------------------------------------------------------------------------------------------------------

--Zapytanie zwraca iformacje o tym jaki pracownik jakie stanowski ma i z jakimi obowiązkami
SELECT 
 P.Osoba_ID
,O.Imie
,P.Data_Zatrudnienia
,S.Nazwa AS "Nazwa Stanowiska" 
,OB.Opis AS "Opis Stanowiska"
FROM Pracownik P
INNER JOIN Osoba O ON P.Osoba_ID = O.ID
INNER JOIN STANOWISKO S ON P.Osoba_ID = S.ID
INNER JOIN Obowiazek_Stanowisko OS ON S.ID = OS.Stanowisko_ID
INNER JOIN Obowiazki OB ON OS.Obowiazki_ID = OB.ID;

------------------------------------------------------------------------------------------------------------

--Zapytanie z podzapytaniem zwracające jedynie silniki które posiadają zakupione auta
SELECT DISTINCT(T.Nazwa)
FROM Typ_Silnika T
WHERE T.ID IN (
    SELECT Typ_Silnika_ID
    FROM Srodek_Transportu
);

------------------------------------------------------------------------------------------------------------

--Zapytanie z podzapytaniem skorelowanym
--zapytanie zwraca listę osób będących celami w zleceniach

SELECT o.Imie, o.nazwisko
FROM Osoba o
WHERE EXISTS (
	SELECT 1
	FROM Zlecenie z
	WHERE o.ID = Z.Cel_ID
);

------------------------------------------------------------------------------------------------------------

--Polecenie UPDATE z podzapytaniem
--Polecenie zmniejsza wartość wynagrodzenia w tych zleceniach do których zostały użyte auta 
--z bencynowym silnikiem

SELECT * FROM Zlecenie;

UPDATE Zlecenie
SET Wynagrodzenie = (Wynagrodzenie - 1000)
WHERE ID IN (
    SELECT Zlecenie_ID
    FROM Zasob_Zlecenie
    WHERE Zasob_ID IN (
    	SELECT Zasob_ID
    	FROM Srodek_Transportu
    	WHERE Typ_Silnika_ID = (
    		SELECT ID
    		FROM Typ_Silnika
    		WHERE nazwa = 'Benzynowy'
        )
    )
);

SELECT * FROM Zlecenie;

------------------------------------------------------------------------------------------------------------

--Polecenie DELETE z użyciem podzapytania
--usuwamy z bazy te typy silników których nie używamy

SELECT * FROM Typ_Silnika;

DELETE FROM Typ_Silnika WHERE ID NOT IN (
	SELECT DISTINCT(Typ_Silnika_ID)
	FROM Srodek_Transportu
);

SELECT * FROM Typ_Silnika;

------------------------------------------------------------------------------------------------------------