--Stw�rz widok u�ytkownik�w zarejestrowanych po 1 grudnia 2017 roku
CREATE VIEW PoGrudniu
	AS SELECT *
	FROM Pasa�er
		WHERE Data_Rejestracji > '2017-12-01 00:00:00'
		WITH CHECK OPTION;
	
	
-- Podaj pasa�er�w kt�rzy posiadaj� rezerwacje na lot klasy 'Ekonomiczna' i ich ilosc tych rezerwacji
SELECT P.Nazwisko, COUNT(Klasa_przelotu) AS Ilo��
	FROM Pasa�er P,Rezerwacje R
	WHERE P.ID_Pasazera=R.ID_Pasazera AND R.Klasa_przelotu='Ekonomiczna'
	GROUP BY P.Nazwisko

-- Podaj rezerwacje wraz z ich ca�kowity kosztem ( za bilet oraz baga�e)
SELECT R.Numer_Rezerwacji,SUM(Oplata) AS Calkowita
	FROM Rezerwacje R JOIN Platnosci P
		ON R.Numer_Rezerwacji=P.Numer_Rezerwacji
	GROUP BY R.Numer_Rezerwacji
	ORDER BY R.Numer_Rezerwacji


-- Wypisuje pasa�er�w kt�rzy dokonali jednorazowej rezerwacji na kwote wieksz� niz 50 euro
SELECT Imie,Nazwisko
	FROM Pasa�er
	WHERE ID_Pasazera IN
		(SELECT ID_Pasazera
			FROM Rezerwacje
			WHERE Numer_Rezerwacji IN
				(SELECT Numer_Rezerwacji
					FROM Platnosci
					GROUP BY Numer_Rezerwacji
					HAVING SUM(Oplata) > 50))
	ORDER BY Imie;

--Podaj lot o najd�u�szym czasie podr�y
SELECT *, DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU) AS D�ugo��
	FROM Loty
	WHERE DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU)=(SELECT MAX(DATEDIFF(MINUTE,DATA_WYLOTU,DATA_PRZYLOTU)) FROM LOTY)


--Podaj pasa�er�w kt�ry posiadaj� rezerwacje na lot z wi�cej ni� 1 baga�em
SELECT *
	FROM Pasa�er
	WHERE ID_Pasazera IN
		(SELECT ID_Pasazera
			FROM Rezerwacje
			WHERE Numer_Rezerwacji IN
				(SELECT Numer_Rezerwacji
					FROM Baga�_Rejestrowany
					GROUP BY Numer_Rezerwacji
					HAVING COUNT(*)>1))
	ORDER BY ID_Pasazera

--Podaj wszystkie loty z gda�ska
SELECT *
	FROM Loty
	WHERE Kod_lotniska_wylotu='GDN'
