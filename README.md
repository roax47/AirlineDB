# AirlineDB
#ZADANIE 2-03

#### cechy zadania: zadanie z tabelą - średnich znormalizowanych opóźnienień systemowych

**1 - procesorowy** system przetwarzania raportów z końcówek telemetrycznych posiada skończoną pamięć buforową o pojemności **Q** raportów.
W zależności od **Q** i współczynnika obciążenia **r** zbadano charakterystyki:
średniego opóźnienia systemowego raportu, znormalizowanego względem średniego czasu przetwarzania przez procesor( wytłuczczone w tabeli )
oraz frakcji raportów utraconych wskutek przepełnienia pamięci buforowej.
Wyznacz maksymalną licznę jednakowych końcówek telemetrycznych oraz niezbędną pojemność pamięci buforowej przy następujących założeniach:
* końcówka generuje $$ 20\frac{raport}{min} $$
* raport zawiera średnio $$ 1800  rekordow $$
* dysponujemy procesorem o wydajności przetwarzania  $$ 12000\frac{rekordow}{sek} $$
* podział procesora pomiędzy obsługiwane końcówki ma miejsce na zasadzie wspólnego obszaru pamięci buforowej o skończonej pojemności (w raportach)
* dopuszczalne średnie opóźnienie systemowe raportu wynosi $$ 1.8 sek $$
* dopuszczalne frakcja raportów utraconych wskutek przepełnienia wynosi $$ 4 \% $$

#### Tabelka 

wartość po lewej średnie opóźnienie systemowego raportu, znormalizowanego względem średniego czasu przetwarzania przez procesor( wytłuczczone w tabeli )
wartość po prawej frakcja raportów utraconych wskutek przepełnienia pamięci buforowej.

| r\Q       |     20    |     21    |     22    |     23    |     24    |     25    |
|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| 0.1       | 1.11\0.0  | 1.11\0.0  | 1.11\0.0  | 1.11\ 0.0 | 1.11\ 0.0 | 1.11\   0 | 
| 0.2       | 1.25\0.0  | 1.25\0.0  | 1.25\0.0  | 1.25\ 0.0 | 1.25\ 0.0 | 1.25\   0 |
| 0.3       | 1.43\0.0  | 1.43\0.0  | 1.43\0.0  | 1.43\ 0.0 | 1.43\ 0.0 | 1.43\   0 |
| 0.4       | 1.67\0.0  | 1.67\0.0  | 1.67\0.0  | 1.67\ 0.0 | 1.67\ 0.0 | 1.67\   0 |
| 0.5       | 2   \0.0  | 2   \0.0  | 2   \0.0  | 2   \ 0.0 | 2   \ 0.0 | 2   \   0 |
| 0.6       | 2.5 \0.0  | 2.5 \0.0  | 2.5 \0.0  | 2.5 \ 0.0 | 2.5 \ 0.0 | 2.5 \   0 |
| 0.7       | 3.32\0.0  | 3.32\0.0  | 3.32\0.0  | 3.33\ 0.0 | 3.33\ 0.0 | 3.33\   0 |
| 0.8       | 4.47\0.0  | 4.8 \0.0  | 4.84\0.0  | 4.86\ 0.0 | 4.89\ 0.0 | 4.91\   0 |
| 0.9       | 7.23\0.01 | 7.42\0.01 | 7.6 \0.01 | 7.76\ 0.01| 7.92\ 0.01| 8.07\0.01 |
| 1         | 10.5\0.05 | 11  \0.05 | 11.5\0.04 | 12  \ 0.04| 12.5\ 0.04| 13  \0.04 |
| 1.1       | 13.5\0.11 | 14.3\0.1  | 15.1\0.1  | 15.9\ 0.1 | 16.7\ 0.1 | 17.5\ 0.1 |
| 1.2       | 15.5\0.17 | 16.5\0.17 | 17.4\0.17 | 18.4\ 0.17| 19.3\ 0.17| 20.3\0.17 |

## Dane

> $$ a_{sr} = 3 sek $$

> $$ b_{sr} = 1800 \frac{rek}{rap} $$

> $$ v = 12 000 \frac{rek}{sek} $$

> $$ d = 1.8 sek $$

> $$ L = 4 \% $$

## Rozwiązanie

Chcemy otrzymać współczynik obciążenia od 1 - końcówki:

$$ r = \frac{b_{sr}}{a_{sr}*v} $$

$$ r_1 =  \frac{b_{sr}}{a_{sr1} * v} = \frac{1800 rek}{3 sek * 12000 \frac{rek}{sek}} = 5 \% $$

wiemy że frakcja raportów utraconych ma być mniejsza niż $$ 4 \% $$ co oznacza iż $$ r \leq 1 $$ (wnioskujemy to z tabelki - frakcje strat dla r > 1 zawsze przekraczają 4% )

$$ J * r \leq 1 $$ 

$$ J * 5 \% \leq 1 $$ 

$$ J \leq 20 $$

> *Odpowiedź:* Maksymalna wartość J to 20

$$ \tau_{sr} = \frac{b_{sr}}{v} = \frac{1800 \frac{rek}{rap}}{12 000\frac{rek}{sek}} = 0.15 \frac{sek}{raport} $$

znormalizowane opóźnienie systemowe $$ \frac{d}{\tau_{sr}} = \frac{1.8 sek}{0.15 \frac{sek}{raport}} = 12 raportow $$ 

patrząc na tabelkę szukamy miejsc gdzie znormalizowane opóźnienie systemowe $$ \frac{d}{\tau_{sr}} $$ jest $$ \leq 12 $$ => Q(22) i Q(23)

----
**Odpowiedź:** Maksymalna liczba końcówek to 20, a niezbędna pojemonść bufora wynosi 22. 


![Ex](https://github.com/roax47/AirlineDB/blob/master/erd.png)

