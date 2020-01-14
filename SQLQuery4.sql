--Stwórz widok u¿ytkowników zarejestrowanych po 1 grudnia 2017 roku
CREATE VIEW PoGrudniu
	AS SELECT *
	FROM Pasa¿er
		WHERE Data_Rejestracji > '2017-12-01 00:00:00'
		WITH CHECK OPTION;
	
	
-- Podaj pasa¿erów którzy posiadaj¹ rezerwacje na lot klasy 'Ekonomiczna' i ich ilosc tych rezerwacji
SELECT P.Nazwisko, COUNT(Klasa_przelotu) AS Iloœæ
	FROM Pasa¿er P,Rezerwacje R
	WHERE P.ID_Pasazera=R.ID_Pasazera AND R.Klasa_przelotu='Ekonomiczna'
	GROUP BY P.Nazwisko

-- Podaj rezerwacje wraz z ich ca³kowity kosztem ( za bilet oraz baga¿e)
SELECT R.Numer_Rezerwacji,SUM(Oplata) AS Calkowita
	FROM Rezerwacje R JOIN Platnosci P
		ON R.Numer_Rezerwacji=P.Numer_Rezerwacji
	GROUP BY R.Numer_Rezerwacji
	ORDER BY R.Numer_Rezerwacji


-- Wypisuje pasa¿erów którzy dokonali jednorazowej rezerwacji na kwote wieksz¹ niz 50 euro
SELECT Imie,Nazwisko
	FROM Pasa¿er
	WHERE ID_Pasazera IN
		(SELECT ID_Pasazera
			FROM Rezerwacje
			WHERE Numer_Rezerwacji IN
				(SELECT Numer_Rezerwacji
					FROM Platnosci
					GROUP BY Numer_Rezerwacji
					HAVING SUM(Oplata) > 50))
	ORDER BY Imie;

--Podaj lot o najd³u¿szym czasie podró¿y
SELECT *, DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU) AS D³ugoœæ
	FROM Loty
	WHERE DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU)=(SELECT MAX(DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU)) FROM LOTY)


--Podaj pasa¿erów który posiadaj¹ rezerwacje na lot z wiêcej ni¿ 1 baga¿em
SELECT *
	FROM Pasa¿er
	WHERE ID_Pasazera IN
		(SELECT ID_Pasazera
			FROM Rezerwacje
			WHERE Numer_Rezerwacji IN
				(SELECT Numer_Rezerwacji
					FROM Baga¿_Rejestrowany
					GROUP BY Numer_Rezerwacji
					HAVING COUNT(*)>1))
	ORDER BY ID_Pasazera

--Podaj wszystkie loty z gdañska
SELECT *
	FROM Loty
	WHERE Kod_lotniska_wylotu='GDN'
