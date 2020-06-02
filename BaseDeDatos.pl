
%Determinantes
determinante(singular,masculino,tercera,["el"|S],S).
determinante(plural,masculino,tercera,["los"|S],S).
determinante(singular,femenino,tercera,["la"|S],S).
determinante(plural,femenino,tercera,["las"|S],S).
determinante(singular,masculino,tercera,["mi"|S],S).
determinante(singular,femenino,tercera,["mi"|S],S).
determinante(plural,femenino,tercera,["mis"|S],S).
determinante(plural,masculino,tercera,["mis"|S],S).
determinante(singular,femenino,tercera,["una"|S],S).


%Sujetos
sujeto(singular,femenino,primera,["yo"|S],S).
sujeto(singular,masculino,primera,["yo"|S],S).
sujeto(plural,masculino,primera,["nosotros"|S],S).
sujeto(plural,femenino,primera,["nosotras"|S],S).
sujeto(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,adjetivo,primera,["pelo", largo|S],S).
sujeto(plural,adjetivo,primera,["uï¿½as", pintadas|S],S).
sujeto(singular,masculino,tercera,["personaje"|S],S).
sujeto(singular,femenino,_,["mujer"|S],S).
sujeto(singular,masculino,_,["hombre"|S],S).
sujeto(singular,_,_,["personaje"|S],S).
sujeto(singular,masculino,_,["sujeto"|S],S).
pronombre(singular,masculino,tercera,["el"|S],S).



%Conjunciones
conjuncion(["y"|S],S).

%Negaciï¿½n
negacion(["no"|S],S).

%Disyuncion
disyuncion(["o"|S],S).


%Preposiciones
preposicion(["de"|S],S).
preposicion(["a"|S],S).
preposicion(["en"|S],S).



%Sustantivos
sustantivo(plural, femenino,["uï¿½as"|S],S).
sustantivo(plural, masculino,["aretes"|S],S).
sustantivo(plural, masculino,["lentes"|S],S).
sustantivo(plural, masculino,["ojos"|S],S).
sustantivo(singular, femenino,["ropa"|S],S).
sustantivo(singular, masculino,["pelo"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular,masculino,["personaje"|S],S).
sustantivo(plural,masculino,["deportes"|S],S).
sustantivo(singular, masculino,["presidente"|S],S).
sustantivo(singular, femenino,["presidenta"|S],S).
sustantivo(singular, masculino,["boxeador"|S],S).
sustantivo(singular, femenino,["boxeadora"|S],S).
sustantivo(singular, masculino,["cientifico"|S],S).
sustantivo(singular, femenino,["politica"|S],S).
sustantivo(singular, masculino,["politico"|S],S).
sustantivo(singular, masculino,["cientifica"|S],S).
sustantivo(singular, masuclino,["cabello"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular, femenino,["Mujer"|S],S).
sustantivo(singular, femenino,["dama"|S],S).
sustantivo(singular, femenino,["femenina"|S],S).
sustantivo(singular, masculino,["hombre"|S],S).
sustantivo(singular, masculino,["Hombre"|S],S).
sustantivo(singular, masculino,["varon"|S],S).
sustantivo(singular, masculino,["Varon"|S],S).
sustantivo(singular, masculino,["masculino"|S],S).
sustantivo(singular, femenino,["alta"|S],S).
sustantivo(singular, masculino,["alto"|S],S).
sustantivo(singular, femenino,["presentadora"|S],S).
sustantivo(singular, masculino,["presentador"|S],S).
sustantivo(singular, _,["40"|S],S).
sustantivo(singular, _,["59"|S],S).
sustantivo(singular, _,["72"|S],S).
sustantivo(singular, _,["36"|S],S).
sustantivo(singular, _,["en"|S],S).
sustantivo(singular, _,["pelo"|S],S).


%Adjetivos
adjetivo(plural,femenino,["pintadas"|S],S).
adjetivo(plural,_,["azules"|S],S).
adjetivo(plural,masculino,["oscuros"|S],S).
adjetivo(plural,_,["cafï¿½s"|S],S).
adjetivo(singular,_,["suave"|S],S).
adjetivo(singular,masculino,["largo"|S],S).
adjetivo(singular,masculino,["alta"|S],S).
adjetivo(singular,masculino,["negro"|S],S).
adjetivo(singular,_,["cafe"|S],S).
adjetivo(singular,masculino,["rubio"|S],S).
adjetivo(singular,masculino,["macho"|S],S).
adjetivo(singular,femenino,["rubia"|S],S).
adjetivo(singular,femenino,["macha"|S],S).
adjetivo(singular, masculino,["blanco"|S],S).

%Lugares
adjetivo(singular,_,["alajuela"|S],S).
adjetivo(singular,_,["Alajuela"|S],S).
adjetivo(singular,_,["Heredia"|S],S).
adjetivo(singular,_,["heredia"|S],S).
adjetivo(singular,_,["Cartago"|S],S).
adjetivo(singular,_,["cartago"|S],S).
adjetivo(singular,_,["Cartaguito"|S],S).
adjetivo(singular,_,["cartaguito"|S],S).
adjetivo(singular,_,["San Jose"|S],S).
adjetivo(singular,_,["san jose"|S],S).
adjetivo(singular,_,["San jose"|S],S).
adjetivo(singular,_,["san Jose"|S],S).
adjetivo(singular,_,["Chepe"|S],S).
adjetivo(singular,_,["chepe"|S],S).
adjetivo(singular,_,["Puntarenas"|S],S).
adjetivo(singular,_,["puntarenas"|S],S).
adjetivo(singular,_,["Guanacaste"|S],S).
adjetivo(singular,_,["guanacaste"|S],S).
adjetivo(singular,_,["Guana"|S],S).
adjetivo(singular,_,["guana"|S],S).
adjetivo(singular,_,["Limon"|S],S).
adjetivo(singular,_,["limon"|S],S).
%Años
adjetivo(singular,_,["1950"|S],S).
adjetivo(singular,_,["1951"|S],S).
adjetivo(singular,_,["1952"|S],S).
adjetivo(singular,_,["1953"|S],S).
adjetivo(singular,_,["1954"|S],S).
adjetivo(singular,_,["1955"|S],S).
adjetivo(singular,_,["1956"|S],S).
adjetivo(singular,_,["1957"|S],S).
adjetivo(singular,_,["1958"|S],S).
adjetivo(singular,_,["1959"|S],S).
adjetivo(singular,_,["1960"|S],S).
adjetivo(singular,_,["1961"|S],S).
adjetivo(singular,_,["1962"|S],S).
adjetivo(singular,_,["1963"|S],S).
adjetivo(singular,_,["1964"|S],S).
adjetivo(singular,_,["1965"|S],S).
adjetivo(singular,_,["1966"|S],S).
adjetivo(singular,_,["1967"|S],S).
adjetivo(singular,_,["1968"|S],S).
adjetivo(singular,_,["1969"|S],S).
adjetivo(singular,_,["1970"|S],S).
adjetivo(singular,_,["1971"|S],S).
adjetivo(singular,_,["1972"|S],S).
adjetivo(singular,_,["1973"|S],S).
adjetivo(singular,_,["1973"|S],S).
adjetivo(singular,_,["1975"|S],S).
adjetivo(singular,_,["1976"|S],S).
adjetivo(singular,_,["1977"|S],S).
adjetivo(singular,_,["1978"|S],S).
adjetivo(singular,_,["1979"|S],S).
adjetivo(singular,_,["1980"|S],S).
adjetivo(singular,_,["1981"|S],S).
adjetivo(singular,_,["1982"|S],S).
adjetivo(singular,_,["1983"|S],S).
adjetivo(singular,_,["19684"|S],S).
adjetivo(singular,_,["1985"|S],S).
adjetivo(singular,_,["1986"|S],S).
adjetivo(singular,_,["1987"|S],S).
adjetivo(singular,_,["1988"|S],S).
adjetivo(singular,_,["1989"|S],S).
adjetivo(singular,_,["1990"|S],S).
adjetivo(singular,_,["1991"|S],S).
adjetivo(singular,_,["1992"|S],S).
adjetivo(singular,_,["1993"|S],S).
adjetivo(singular,_,["1994"|S],S).
adjetivo(singular,_,["1995"|S],S).
adjetivo(singular,_,["1996"|S],S).
adjetivo(singular,_,["1997"|S],S).
adjetivo(singular,_,["1998"|S],S).
adjetivo(singular,_,["1999"|S],S).
adjetivo(singular,_,["2000"|S],S).
adjetivo(singular,_,["2001"|S],S).
adjetivo(singular,_,["2002"|S],S).
adjetivo(singular,_,["2003"|S],S).
adjetivo(singular,_,["2004"|S],S).
adjetivo(singular,_,["2005"|S],S).
adjetivo(singular,_,["2006"|S],S).
adjetivo(singular,_,["2007"|S],S).
adjetivo(singular,_,["2008"|S],S).
adjetivo(singular,_,["2009"|S],S).
adjetivo(singular,_,["2010"|S],S).
adjetivo(singular,_,["2011"|S],S).
adjetivo(singular,_,["2012"|S],S).
adjetivo(singular,_,["2013"|S],S).
adjetivo(singular,_,["2014"|S],S).
adjetivo(singular,_,["2015"|S],S).
adjetivo(singular,_,["2016"|S],S).
adjetivo(singular,_,["2017"|S],S).
adjetivo(singular,_,["2018"|S],S).
adjetivo(singular,_,["2019"|S],S).
adjetivo(singular,_,["2020"|S],S).


adjetivo(singular,_,["1.70"|S],S).



%Verbos
verbo(singular,tercera,["hace"|S],S).
verbo(singular,tercera,["hizo"|S],S).
verbo(singular,tercera,["tiene"|S],S).
verbo(plural,tercera ,["tienen"|S],S).
verbo(singular,primera,["tengo"|S],S).
verbo(plural,primera,["tenemos"|S],S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular, primera, ["uso"|S], S).
verbo(singular,tercera,["nacio"|S],S).
verbo(singular,tercera,["dedica"|S],S).
verbo(singular,tercera,["tuvo"|S],S).
verbo(singular,tercera,["es"|S],S).
verbo(singular,tercera,["fue"|S],S).
verbo(singular,tercera,["nacio"|S],S).
verbo(singular,tercera,["vive"|S],S).
verbo(singular,tercera,["vivio"|S],S).
verbo(singular,tercera,["juega"|S],S).
verbo(singular,tercera,["jugo"|S],S).
verbo(singular,tercera,["murio"|S],S).
verbo(singular,tercera,["mide"|S],S).
verbo(singular,tercera,["dedica"|S],S).


%Respuestas
respuesta(["Si"|S],S).
respuesta(["No"|S],S).

%Pronombres reflexivos
pronombre_reflexivo(["se"|S],S).


%famosos
famoso([[nombre, "Carlos Alvarado"], [pelo, "negro"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Oscar Arias"], [pelo, "blanco"], [categoria, "politico"], [profesion, "presidente"]]).
famoso([[nombre, "Edgar Silva"], [pelo, "negro"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso([[nombre, "Mauricio Hoffman"], [pelo, "macho"], [categoria, "espectaculo"], [profesion, "presentador"]]).
famoso("Carlos Alvarado").
famoso("Paquita",[alajuela,1960,mujer,deportes,rubio,1.7]).
famoso("Paquito",[alajuela,1960,hombre,deportes,rubio,1.7]).


politico("Carlos Alvarado").
presidente("Carlos Alvarado").


%Preguntas
pregunta("ï¿½Su Personaje Es Hombre o mujer?").
pregunta("ï¿½A quï¿½ se dedica su personaje?").
pregunta("ï¿½En cuï¿½l provincia naciï¿½ su personaje?").
pregunta("ï¿½Sabe alguna caracteristica extra que desee proporcionar?").


%Listas de posibles respuestas

listaPelo(["rubio","rubia","macho","macha"]).
listaPelo(["negro"]).
listaPelo(["cafe", "castaño"]).

listaLugares(["sanjose", "San Jose", "san jose", "Chepe", "chepe", "San jose", "san Jose"]).
listaLugares(["alajuela", "Alajuela"]).
listaLugares(["cartago", "cartago", "cartaguito", "Cartaguito"]).
listaLugares(["heredia", "Heredia"]).
listaLugares(["puntarenas", "Puntarenas"]).
listaLugares(["guanacaste", "Guanacaste"]).


listaAños(["1960"]).
listaAños(["1961"]).
listaAños(["1962"]).
listaAños(["1963"]).
listaAños(["1964"]).
listaAños(["1965"]).
listaAños(["1966"]).
listaAños(["1967"]).
listaAños(["1968"]).
listaAños(["1969"]).

listaGenero(["mujer","Mujer", "dama","Dama", "femenina"]).
listaGenero(["hombre","Hombre","varon", "Varon", "masculino"]).

listaOficio(["deportes"]).

listaAltura(["1.70"]).









