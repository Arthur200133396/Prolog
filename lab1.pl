% №1
gift("Nick","Book","Tom").
gift("Mary","Pen","Tom").
gift("Rick","Toy","Mary").
gift("Bob","Toy","Pet").

% ?-
% gift("Nick","Toy","Tom").
% gift("Mary",Gift,"Tom").
% gift(_,Gift,"Tom").
% gift(Peaple,"Toy","Pet").

% №2
parent("Maria","Fedor").
parent("Ivan","Stepan").
parent("Fedor","Olga").
parent("Fedor","Tatyana").

grandChild(Grand,Grandchild):-parent(Grand,Parent),parent(Parent,Grandchild).
grand(Grand,Grandchild):-parent(Parent,Grandchild),parent(Grand,Parent).

% ?-
% parent("Fedor","Olga").
% parent(Parent,"Tatyana").
% parent("Ivan",Children).
% grand(Grand,"Olga").
% grand("Ivan",Grandchild).
% grandchild("Ivan",Grandchild).
% parent(Parent,"Fedor"),parent(Parent,"Stepan")
% parent(Parent,Children).

% №3
love("Vova", "Chocolate").
love("Sveta", "Bananas").
love("Sveta", "Apples").
love("Ivan", "Chocolate").
fruit("Apples").
fruit("Bananas").
sweet("Chocolate").

love_fruit(X):-love(X,Product),fruit(Product).
no_fruit(X):-love(X,Product),not(fruit(Product)).

% ?-
% love(Name,"Bananas").
% love(Name,"Chocolate"),love(Name,"Apples").
% love("Vova",Product).
% love("Vova",Product),love("Sveta",Product).
% love_fruit(Name).

% №4
play("Andrey","Volleyball").
play("Olga","Volleyball").
play("Sasha","Football").
men("Andrey").
men("Sasha").
women("Olga").

volley_women(X):-play(X,"Volleyball"),women(X).
volley_men(X):-play(X,"Volleyball"),men(X).

% ?-
% play("Andrey",Sport).
% play(Name,"Volleyball").
% play("Olga",Sport),play("Sasha",Sport).
% play("Andrey","Football").
% volley_women(Name).