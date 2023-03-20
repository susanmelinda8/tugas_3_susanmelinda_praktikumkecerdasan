girls(mary).
girls(lisa).
girls(amy).
girls(karen).
boy(david).
boy(jhon).
boy(ray).
boy(jack).
boy(peter).

pasangan(david,amy).
pasangan(jack,karen).
pasangan(jhon,susan).

sodara(liza,jhon).
sodara(susan,ray).
sodara(peter,mary).

kakek(david,jhon).
nenek(amy,karen).
anakL(jhon,ray).
anakP(liza,susan).

is_boy(X) :- boy(X).
is_girls(Y) :- girls(Y).
is_pasangan(X,Y) :- pasangan(X,Y).
is_childboy(X,Y) :- anakL(X,Y).
is_childgirls(X,Y) :- anakP(X,Y).
is_sodara(X,Y) :- sodara(X,Y).
is_kakek(X1,X2) :- kakek(X2,X1).
is_nenek(Y2,Y1) :- nenek(Y1,Y2).
not(sah(menikah(X,Y))):- is_sodara(X,Y).
sah(menikah(X,Y)) :- is_pasangan(X,Y).











