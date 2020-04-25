# AirlineDB

![Ex](https://github.com/roax47/AirlineDB/blob/master/erd.png)

#ZADANIE 2-02

#### cechy zadania: zadanie z równaniem ciaglości przeplywu

1-procesorowy system masowej obsługi posiada pamięć buforową o pojemności $$ Q \le \infty $$ zgłoszeń i pracuje ze współczynnikiem obciążenia $$ r > 1 $$.
W takim systemie pomimo wzrostu Q frakcja utraconych zgłoszeń : nigdy nie spadnie poniżej pewnego progu - jaką ma on wartość ?

### Wskazówki:

1. Należy przypomnieć sobię równianie ciągłości przepływu.
2. Jak często procesor jest bezczynny gdy $$ Q \to \infty $$

### Wzory

> równanie ciągłości przepływu:
> $$ 1 - p_{0} = \frac{1-L}{a_{sr}}*\tau_{sr} = (1-L)*r $$

> $$ p_{0} $$ współczynik bezczynności procesora
> $$ L $$ współczynnik strat
> $$ r $$ współczynnik obciążenia
> $$ a_{sr} $$ 
> $$ \tau_{sr} $$

## Rozwiązanie

$$ 1 - p_{0} = (1-L)*r $$  

$$ \frac{1-p_{0}}{r} = \frac{(1-L)*r}{r} $$

$$ \frac{1-p_{0}}{r} = (1-L) $$

$$ \frac{1-p_{0}}{r} - 1 = -L $$

$$ L = 1 -\frac{1-p_{0}}{r} $$

wiedząc że $$ r > 1 $$ oraz że $$ Q \to \infty $$ można przyjąć że współczynnik bezczynności procesora w takich warunkach wynosi 0 ( $$ p_{0} \to 0 $$ )

$$ L = 1- \frac{1-p_{0}}{r} \ge 1 - \frac{1-0}{r} = 1 - \frac{1}{r} $$ dla $$ r > 1 $$
 
![wykres](wykres.png "wykres")

----
## Odpowiedź

Ponieważ $$ r > 1 $$,  L nigdy nie będzie równe 0 ( jest to szukany próg ).
