

parant('Mokbul','Zakir').
parant('Mokbul','Abdul').
parant('Mokbul','Sattar').
parant('Mokbul','Mahabub').
parant('Mokbul','Forida').
parant('Mokbul','Kushi').
parant('Mokbul','Rashu').



parant('Rabeya','Abdul').
parant('Rabeya','Zakir').
parant('Rabeya','Sattar').
parant('Rabeya','Mahabub').
parant('Rabeya','Forida').
parant('Rabeya','Kushi').
parant('Rabeya','Rashu').



parant('Ahmed','Jesmin').
parant('Ahmed','Kamrunnahar').
parant('Ahmed','Runu').
parant('Ahmed','Harun').
parant('Ahmed','Hafez').
parant('Ahmed','Shohel').


parant('Rashida','Jesmin').
parant('Rashida','Kamrunnahar').
parant('Rashida','Runu').
parant('Rashida','Harun').
parant('Rashida','Hafez').
parant('Rashida','Shohel').



parant('Jesmin','Rifat').
parant('Abdul','Rifat').
parant('Jesmin','Ritu').
parant('Abdul','Ritu').
parant('Jesmin','Mahir').
parant('Abdul','Mahir').


parant('Zakir','Atik').
parant('Zakir','Akib').
parant('Zakir','Mizan').
parant('Minu','Atik').
parant('Minu','Akib').
parant('Minu','Mizan').

parant('Sattar','Rayan').
parant('Sattar','Rizban').
parant('Sattar','Safa').
parant('Hasna','Rayan').
parant('Hasna','Rizban').
parant('Hasna','Safa').

parant('Mahabub','Mayrin').
parant('Mahabub','Inaya').
parant('Shopna','Mayrin').
parant('Shopna','Inaya').

parant('Forida','Tohid').
parant('Forida','Sohel').
parant('Forida','Rasel').

parant('Rashu','Shetu').
parant('Rashu','').
parant('Rashu','Ziyad').

parant('Kushi','Moon').
parant('Kushi','Mim').
parant('Kushi','Eti').

parant('Harun','Saifullah').
parant('Harun','Aminullah').
parant('Harun','Saima').
parant('Harun','Habibullah').
parant('Amena','Saifullah').
parant('Amena','Aminullah').
parant('Amena','Saima').
parant('Amena','Habibullah').


parant('Shohel','Mirsab').
parant('Shohel','Mishkat').
parant('Urmi','Mirsab').
parant('Urmi','Mishkat').

parant('Hafez','Hamim').
parant('Hafez','Jahanara').
parant('Joynab','Hamim').
parant('Joynab','Jahanara').

parant('Kamrunnahar','Riyad').
parant('Kamrunnahar','Kawsar').
parant('Kamrunnahar','Ruksar').
parant('Kamrunnahar','Tumpa').
parant('AbulBashar','Riyad').
parant('AbulBashar','Kawsar').
parant('AbulBashar','Ruksar').
parant('AbulBashar','Tumpa').


male('Mokbul').
male('Ahmed').
male('Abdul').
male('Rifat').
male('Mahir').
male('Shohel').
male('Hafez').
male('Harun').
male('Mahabub').
male('Sattar').
male('Zakir').
male('Atik').
male('Mizan').
male('Akib').
male('Rayan').
male('Rizban').
male('Riyad').
male('Saifullah').
male('Aminullah').
male('Habibullah').
male('Hamim').
male('AbulBashar').
male('Mirsab').
male('Mishkat').
male('Tohid').
male('Rasel').
male('Ziyad').


female('Rabeya').
female('Rashida').
female('Jesmin').
female('Ritu').
female('Runu').
female('Kamrunnahar').
female('Minu').
female('Hasna').
female('Shopna').
female('Kawsar').
female('Ruksar').
female('Tumpa').
female('Saima').
female('Forida').
female('Rashu').
female('Kushi').
female('Mayrin').
female('Inaya').
female('Safa').
female('Amena').
female('Joynab').
female('Urmi').
female('Jahanara').
female('Eti').
female('Moon').
female('Mim').
female('Shetu').




mother(X,Y):- parant(X,Y) , female(X).
father(X,Y):- parant(X,Y) , male(X).
siblings(X,Y):- mother(M,X),father(F,X),mother(M,Y),father(F,Y),X\==Y.
grandfather(X,Z):-parant(X,Y),parant(Y,Z),male(X).
grandmother(X,Z):-parant(X,Y),parant(Y,Z),female(X).
dada(X,Z):- parant(X,Y),parant(Y,Z),male(Y),male(X).
nana(X,Z):- parant(X,Y),parant(Y,Z),female(Y),male(X).
chacha(X,Z):- parant(F,Z),siblings(F,X),male(F),male(X).
fufu(X,Z):- parant(F,Z),siblings(F,X),male(F),female(X).
mama(X,Z):- parant(F,Z),siblings(F,X),female(F),male(X).
khala(X,Z):- parant(F,Z),siblings(F,X),female(F),female(X).
chachatobhai(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),male(M),male(N),male(X).
chachatobon(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),male(M),male(N),female(X).
fufatobhai(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),female(M),male(N),male(X).
fufatobon(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),female(M),male(N),female(X).
mamatobhai(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),male(M),female(N),male(X).
mamatobon(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),male(M),female(N),female(X).
khalatobhai(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),female(M),female(N),male(X).
khalatobon(X,Z):-parant(M,X),parant(N,Z),siblings(M,N),female(M),female(N),female(X).
