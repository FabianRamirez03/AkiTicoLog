:- [bnf].

res(R):- R=y,!,main.
res(R):- R=_,write("Fin de la conversacion."),nl.


main:-inicio,write("Deseas jugar de nuevo?"),nl,
         write("y para continuar o n para cerrar"),nl,
         read(X), res(X).


:-main.

