CREATE TABLE Pasa¿er (	
	ID_Pasazera INTEGER IDENTITY(1,1), 
	Imie VARCHAR(100) NOT NULL,
	Nazwisko VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
	Adres VARCHAR(100) NOT NULL,
	Miasto VARCHAR(100) NOT NULL,
	Telefon VARCHAR(15),
	Data_Rejestracji DATETIME NOT NULL,
	PRIMARY KEY (ID_Pasazera)
);

CREATE TABLE Miejsce_w_samolocie(
	ID_Miejsca CHAR(3) CHECK(ID_Miejsca LIKE '[0-3][0-9][A-F]'),
	PRIMARY KEY (ID_Miejsca)
);
	
CREATE TABLE Lotniska(
	Kod_lotniska CHAR(3) CHECK(Kod_lotniska LIKE '[A-Z][A-Z][A-Z]'),
	Nazwa VARCHAR(100)  NOT NULL,
	Miasto VARCHAR(100) NOT NULL,
	PRIMARY KEY (Kod_lotniska)
);

CREATE TABLE Kadra(
	Numer_kadry INTEGER IDENTITY(1,1),
	PRIMARY KEY (Numer_kadry)
);

CREATE TABLE Personel (	
	ID_Pracownika INTEGER IDENTITY(1,1), 
	Stanowisko VARCHAR(20) NOT NULL
		CHECK(Stanowisko = 'Kapitan' OR Stanowisko = 'Pierwszy Oficer' OR Stanowisko = 'Steward'),
	Imie VARCHAR(100) NOT NULL,
	Nazwisko VARCHAR(100) NOT NULL,
	Telefon VARCHAR(15) NOT NULL,
	Data_zatrudnienia DATETIME NOT NULL,
	Data_zakonczenia_zatrudnienia DATETIME,
	Numer_kadry INTEGER NOT NULL REFERENCES Kadra,
	PRIMARY KEY (ID_Pracownika)
);

CREATE TABLE Samoloty(	
	Miêdzynarodowy_kod_samoloty VARCHAR(7) 
		CHECK(Miêdzynarodowy_kod_samoloty LIKE '[A-Z][-][A-Z][A-Z][A-Z]' OR 
			Miêdzynarodowy_kod_samoloty LIKE '[A-Z][A-Z][-][A-Z][A-Z][A-Z]' OR
			Miêdzynarodowy_kod_samoloty LIKE'[A-Z][A-Z][A-Z][-][A-Z][A-Z][A-Z]'),
	Producent VARCHAR(100) NOT NULL,
	Model VARCHAR(100) NOT NULL,
	Max_ladownosc INTEGER NOT NULL,
	Ilosc_miejsc INTEGER NOT NULL,
	PRIMARY KEY (Miêdzynarodowy_kod_samoloty)
		
);

CREATE TABLE Loty(	
	ID_Lotu INTEGER IDENTITY(1,1), 
	Numer_lotu VARCHAR(6) CHECK(Numer_lotu LIKE '[F][R][0-9][0-9][0-9][0-9]'),
	Data_wylotu DATETIME NOT NULL,
	Data_przylotu DATETIME NOT NULL,
	Miêdzynarodowy_kod_samoloty VARCHAR(7) NOT NULL REFERENCES Samoloty,
	Kod_lotniska_wylotu CHAR(3) NOT NULL REFERENCES Lotniska,
	Kod_lotniska_przylotu CHAR(3) NOT NULL REFERENCES Lotniska,
	Numer_kadry INTEGER NOT NULL REFERENCES Kadra,
	PRIMARY KEY (ID_Lotu)
		
);

CREATE TABLE Rezerwacje (
	Numer_Rezerwacji INTEGER IDENTITY(1,1), 
	Data_Rezerwacji DATETIME NOT NULL,
	Klasa_przelotu VARCHAR(15) NOT NULL CHECK(Klasa_przelotu = 'Ekonomiczna' or Klasa_przelotu ='Biznesowa' or  Klasa_przelotu ='Pierwsza'),
	ID_Pasazera INTEGER NOT NULL REFERENCES Pasa¿er,
	ID_miejsca CHAR(3) NOT NULL REFERENCES Miejsce_w_samolocie,
	ID_lotu INTEGER NOT NULL REFERENCES Loty,
	PRIMARY KEY (Numer_Rezerwacji)
);

CREATE TABLE Baga¿_Rejestrowany(
	ID_Baga¿u INTEGER IDENTITY(1,1),
	Numer_Rezerwacji INTEGER NOT NULL REFERENCES Rezerwacje
	PRIMARY KEY (ID_Baga¿u)
);

CREATE TABLE Platnosci(
	ID_Platnosci INTEGER IDENTITY(1,1),
	Oplata FLOAT NOT NULL,
	Zaksiegowana BIT NOT NULL, --BOOLEAN
	Rodzaj VARCHAR(30) NOT NULL 
		CHECK(Rodzaj = 'Gotówka' or Rodzaj = 'Przelew zwyk³y' or  Rodzaj = 'Karta p³atnicza' or Rodzaj = 'Przelew b³yskawiczny'),
	Numer_Rezerwacji INTEGER NOT NULL REFERENCES Rezerwacje
	PRIMARY KEY (ID_Platnosci)
);
