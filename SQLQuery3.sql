INSERT INTO Miejsce_w_samolocie VALUES ('01A');
INSERT INTO Miejsce_w_samolocie VALUES ('01B');
INSERT INTO Miejsce_w_samolocie VALUES ('01D');
INSERT INTO Miejsce_w_samolocie VALUES ('05A');
INSERT INTO Miejsce_w_samolocie VALUES ('06F');
INSERT INTO Miejsce_w_samolocie VALUES ('11E');
INSERT INTO Miejsce_w_samolocie VALUES ('11F');
INSERT INTO Miejsce_w_samolocie VALUES ('12C');
INSERT INTO Miejsce_w_samolocie VALUES ('14B');
INSERT INTO Miejsce_w_samolocie VALUES ('15D');

INSERT INTO Lotniska VALUES ('GDN', 'Port lotniczy Gdañsk-Rêbiechowo im. Lecha Wa³êsy', 'Gdañsk');
INSERT INTO Lotniska VALUES ('WMI', 'Port lotniczy Warszawa-Modlin', 'Warszawa');
INSERT INTO Lotniska VALUES ('POZ', 'Port Lotniczy Poznañ-£awica im. Henryka Wieniawskiego', 'Poznañ');
INSERT INTO Lotniska VALUES ('LBA', 'Leeds Bradford International Airport', 'Leeds/Bradford');
INSERT INTO Lotniska VALUES ('BCN', 'Barcelona–El Prat', 'Barcelona');
INSERT INTO Lotniska VALUES ('MUC', 'Flughafen München Franz Josef Strauß', 'Monachium');
INSERT INTO Lotniska VALUES ('CDG', 'Charles de Gaulle International Airport lub Roissy Airport', 'Pary¿');

INSERT INTO Kadra DEFAULT VALUES;
INSERT INTO Personel VALUES ('Kapitan', 'Tomasz', 'Zymkowski', '+48722321456', '2012-06-18 10:34:09', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Pierwszy Oficer', 'Szymon', 'Stelter', '+48710234123', '2012-06-19 13:12:49', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Jakub', 'Szreder', '+48793245412', '2012-06-21 09:52:29', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Pawe³', 'Tygrys', '+48723412432', '2012-06-22 14:42:11', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Anita', 'Kot', '+48793244441', '2012-06-23 15:00:01', NULL, IDENT_CURRENT('Kadra'));

INSERT INTO Kadra DEFAULT VALUES;
INSERT INTO Personel VALUES ('Kapitan', 'John', 'Fly','+441667450158', '2012-07-01 10:34:21', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Pierwszy Oficer', 'Steven', 'Faux','+441437451258', '2012-07-02 10:42:09', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Teressa', 'Warden','+441247451265', '2012-07-03 12:42:15', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Anna', 'Kurpyenko','+441432545435', '2012-07-04 13:12:16', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Mohammed', 'Hassan','+441243543485', '2012-07-05 08:41:13', NULL, IDENT_CURRENT('Kadra'));
INSERT INTO Personel VALUES ('Steward', 'Brayan', 'Watford','+441991234123', '2012-07-06 13:46:16', '2017-10-14 10:00:00', IDENT_CURRENT('Kadra')); -- Pracownik zwolniony.
-- Mimo ¿e zosta³ w sk³adzie to zaleznie od daty zwolnienia bedzie mozna okreslic kadre obsluguj¹ca dany lot.

INSERT INTO Samoloty VALUES ('SP-SPN','Boeing','737-800',21200,189)
INSERT INTO Samoloty VALUES ('SP-SAN','Boeing','737-800',21200,189)
INSERT INTO Samoloty VALUES ('EI-DAC','Boeing','737-800',21200,189)
INSERT INTO Samoloty VALUES ('EI-DCH','Boeing','737-800',21200,189)
INSERT INTO Samoloty VALUES ('EI-DEC','Boeing','737-800',21200,189)
INSERT INTO Samoloty VALUES ('EI-DFA','Boeing','737-800',21200,189)
-- Linia RyanAir na tylko jeden model samolotow

INSERT INTO Loty VALUES ('FR1503', '2017-10-06 13:00:00', '2017-10-06 14:50:00', 'SP-SPN', 'GDN', 'LBA', 1)
INSERT INTO Loty VALUES ('FR1641', '2017-10-08 14:20:00', '2017-10-08 16:20:00', 'SP-SAN', 'GDN', 'BCN', 2)
INSERT INTO Loty VALUES ('FR2413', '2017-10-10 11:15:00', '2017-10-10 14:15:00', 'EI-DAC', 'LBA', 'MUC', 1)
INSERT INTO Loty VALUES ('FR2243', '2017-10-12 16:30:00', '2017-10-12 17:45:00', 'SP-SAN', 'POZ', 'CDG', 1)
INSERT INTO Loty VALUES ('FR2513', '2017-10-15 20:30:00', '2017-10-15 21:30:00', 'EI-DEC', 'MUC', 'WMI', 2)
INSERT INTO Loty VALUES ('FR1722', '2017-10-20 09:00:00', '2017-10-20 11:15:00', 'EI-DCH', 'WMI', 'CDG', 2)
INSERT INTO Loty VALUES ('FR2133', '2017-10-27 13:00:00', '2017-10-27 14:10:00', 'EI-DFA', 'MUC', 'CDG', 1)
INSERT INTO Loty VALUES ('FR1503', '2017-11-01 13:00:00', '2017-11-01 14:50:00', 'SP-SPN', 'GDN', 'LBA', 2)
INSERT INTO Loty VALUES ('FR2302', '2017-11-04 06:50:00', '2017-11-04 08:50:00', 'EI-DAC', 'BCN', 'MUC', 1)
INSERT INTO Loty VALUES ('FR2522', '2017-12-23 15:00:00', '2017-12-23 16:00:00', 'SP-SPN', 'POZ', 'GDN', 2)



INSERT INTO Pasa¿er VALUES ('Jan', 'Kowalski', 'jk1@gmail.com', 'ul.Prosta 4', 'Warszawa', '+48721342345', '2017-10-04 10:50:00'); -- Wiele p³atnoœci

INSERT INTO Rezerwacje VALUES ('2017-10-04 11:00:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '01A', 1);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('17.99', 1, 'Karta p³atnicza', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Karta p³atnicza', IDENT_CURRENT('Rezerwacje'));   



INSERT INTO Pasa¿er VALUES ('Stefan', 'Nowak', 'sn_1@gmail.com', 'ul.Twarda 12A/5', 'Lublin', NULL, '2017-10-05 10:50:00');

INSERT INTO Rezerwacje VALUES ('2017-10-08 10:20:00', 'Pierwsza', IDENT_CURRENT('Pasa¿er'), '11F', 2);
INSERT INTO Platnosci VALUES ('109.99', 1, 'Karta p³atnicza', IDENT_CURRENT('Rezerwacje'));




INSERT INTO Pasa¿er VALUES ('Aneta', 'Kochañska', 'anetka69@wp.pl', 'ul.Ostra 66', 'Poznañ', NULL, '2017-10-01 15:50:00'); -- Wiele rezerwacji

INSERT INTO Rezerwacje VALUES ('2017-10-01 14:20:00', 'Biznesowa', IDENT_CURRENT('Pasa¿er'), '06F', 3);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('59.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));

INSERT INTO Rezerwacje VALUES ('2017-10-01 14:20:00', 'Biznesowa', IDENT_CURRENT('Pasa¿er'), '05A', 5);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('29.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));

INSERT INTO Rezerwacje VALUES ('2017-10-01 14:20:00', 'Biznesowa', IDENT_CURRENT('Pasa¿er'), '11E', 6);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('39.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));




INSERT INTO Pasa¿er VALUES ('Dorota', 'Kuc', 'DKuc@wp.pl', 'ul.Konna 31', 'Gdañsk', NULL, '2017-10-05 11:00:00');

INSERT INTO Rezerwacje VALUES ('2017-10-05 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '12C', 4);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('12.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));

INSERT INTO Rezerwacje VALUES ('2017-10-05 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '14B', 7);
INSERT INTO Platnosci VALUES ('14.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));




INSERT INTO Pasa¿er VALUES ('John', 'Snow', 'KingInTheNorth@gmail.com', '47 Snowy Street', 'Winterfell', '+441632960158', '2017-10-06 11:00:00'); -- Rezerwacja na ten sam lot co osoba wyzej

INSERT INTO Rezerwacje VALUES ('2017-10-05 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '01D', 4);
INSERT INTO Platnosci VALUES ('19.99', 1, 'Przelew b³yskawiczny', IDENT_CURRENT('Rezerwacje'));




INSERT INTO Pasa¿er VALUES ('Jan', 'Deniuk', 'DenJan@wp.pl', 'ul.Sprawna 34/3', 'Szczecin', NULL, '2017-10-10 10:00:00'); -- Wiele baga¿y

INSERT INTO Rezerwacje VALUES ('2017-10-10 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '01B', 8);
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Baga¿_Rejestrowany VALUES (IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('52.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));
INSERT INTO Platnosci VALUES ('5.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));


INSERT INTO Rezerwacje VALUES ('2017-10-10 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '15D', 9);
INSERT INTO Platnosci VALUES ('44.44', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));

INSERT INTO Rezerwacje VALUES ('2017-10-10 14:20:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '01D', 4);
INSERT INTO Platnosci VALUES ('19.99', 1, 'Gotówka', IDENT_CURRENT('Rezerwacje'));





INSERT INTO Pasa¿er VALUES ('Janusz', 'Tracz', 'JTMafia@wp.pl', 'ul.Plebañska 12', 'Tulczyn', NULL, '2017-12-06 10:00:00');  -- To samo miejsce co osoba powy¿ej lecz inny lot

INSERT INTO Rezerwacje VALUES ('2017-12-06 15:00:00', 'Ekonomiczna', IDENT_CURRENT('Pasa¿er'), '15D', 10);
INSERT INTO Platnosci VALUES ('19.19', 0, 'Przelew zwyk³y', IDENT_CURRENT('Rezerwacje'));




INSERT INTO Pasa¿er VALUES ('Stefek', 'Dratewka', 'Drewcio@wp.pl', 'ul.Dobra 12', 'Gdynia', NULL, GETDATE() ); -- Brak rezerwacji

UPDATE Pasa¿er -- Pasa¿er dokonuje zmiany adresu email
SET Email = 'Drewek_nowy@gmail.com'
	WHERE ID_Pasazera = IDENT_CURRENT('Pasa¿er');

UPDATE Rezerwacje -- Pasa¿er Jan Deniuk chce przebookowac lot
SET Data_rezerwacji = GETDATE(), ID_miejsca = '01B', ID_lotu = 10
	WHERE ID_Pasazera = 6 AND ID_lotu = 4;