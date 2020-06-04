
%Determinantes
determinante(singular,masculino,tercera,["el"|S],S).
determinante(plural,masculino,tercera,["los"|S],S).
determinante(singular,femenino,tercera,["la"|S],S).
determinante(plural,femenino,tercera,["las"|S],S).
determinante(singular,_,_,["mi"|S],S).


%Sujetos
pronombre(singular,masculino,tercera,["el"|S],S).
pronombre(singular,femenino,tercera,["ella"|S],S).
sujeto(singular,femenino,_,["mujer"|S],S).
sujeto(singular,masculino,_,["hombre"|S],S).
sujeto(singular,_,_,["personaje"|S],S).
sujeto(singular,masculino,_,["sujeto"|S],S).


%Conjunciones
conjuncion(["y"|S],S).

%Negaci�n
negacion(["no"|S],S).

%Disyuncion
disyuncion(["o"|S],S).


%Preposiciones
preposicion(["de"|S],S).


%Sustantivos
sustantivo(plural, femenino,["u�as"|S],S).
sustantivo(plural, masculino,["aretes"|S],S).
sustantivo(plural, masculino,["lentes"|S],S).
sustantivo(plural, masculino,["ojos"|S],S).
sustantivo(singular, femenino,["ropa"|S],S).
sustantivo(singular, masculino,["pelo"|S],S).
sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular,masculino,["personaje"|S],S).
sustantivo(singular, masuclino,["cabello"|S],S).
sustantivo(singular, femenino,["alta"|S],S).
sustantivo(singular, masculino,["alto"|S],S).
sustantivo(singular, _,["en"|S],S).
sustantivo(singular, _,["pelo"|S],S).

%Generos

sustantivo(singular, femenino,["mujer"|S],S).
sustantivo(singular, femenino,["Mujer"|S],S).
sustantivo(singular, femenino,["dama"|S],S).
sustantivo(singular, femenino,["femenina"|S],S).
sustantivo(singular, masculino,["hombre"|S],S).
sustantivo(singular, masculino,["Hombre"|S],S).
sustantivo(singular, masculino,["varon"|S],S).
sustantivo(singular, masculino,["Varon"|S],S).
sustantivo(singular, masculino,["masculino"|S],S).



%Profesiones______________________________

%Politicos
sustantivo(singular, masculino,["presidente"|S],S).
sustantivo(singular, masculino,["politico"|S],S).
sustantivo(singular, masculino,["diputado"|S],S).
sustantivo(singular, masculino,["ministro"|S],S).
sustantivo(singular, masculino,["rey"|S],S).
sustantivo(singular, masculino,["actor"|S],S).
sustantivo(singular, masculino,["politico"|S],S).

sustantivo(singular, _,["cantante"|S],S).
sustantivo(singular, _,["astronauta"|S],S).
sustantivo(singular, _,["estudiante"|S],S).
sustantivo(singular, _,["modelo"|S],S).

sustantivo(singular, femenino,["presidenta"|S],S).
sustantivo(singular, femenino,["actriz"|S],S).
sustantivo(singular, femenino,["politica"|S],S).
sustantivo(singular, femenino,["diputada"|S],S).
sustantivo(singular, femenino,["ministra"|S],S).
sustantivo(singular, femenino,["reina"|S],S).
sustantivo(singular, femenino,["politica"|S],S).

%Deportes
sustantivo(plural,masculino,["deportes"|S],S).
sustantivo(singular,masculino,["ministro"|S],S).
sustantivo(singular, masculino,["boxeador"|S],S).
sustantivo(singular, masculino,["futbolista"|S],S).
sustantivo(singular, masculino,["portero"|S],S).
sustantivo(singular, masculino,["defensa"|S],S).
sustantivo(singular, masculino,["medio"|S],S).
sustantivo(singular, masculino,["mediocampista"|S],S).
sustantivo(singular, masculino,["delantero"|S],S).
sustantivo(singular, masculino,["basketbolista"|S],S).
sustantivo(singular, masculino,["golfista"|S],S).
sustantivo(singular, femenino,["boxeadora"|S],S).
sustantivo(singular, femenino,["futbolista"|S],S).
sustantivo(singular, femenino,["portera"|S],S).
sustantivo(singular, femenino,["defensa"|S],S).
sustantivo(singular, femenino,["media"|S],S).
sustantivo(singular, femenino,["mediocampista"|S],S).
sustantivo(singular, femenino,["delantera"|S],S).
sustantivo(singular, femenino,["basketbolista"|S],S).
sustantivo(singular, femenino,["golfista"|S],S).

%Ciencia
sustantivo(singular, masculino,["cientifico"|S],S).
sustantivo(singular, masculino,["astronauta"|S],S).

sustantivo(singular, femenino,["cientifica"|S],S).
sustantivo(singular, femenino,["astronauta"|S],S).


%Espectaculo
sustantivo(singular, femenino,["presentadora"|S],S).

sustantivo(singular, masculino,["presentador"|S],S).

%Numeros
sustantivo(singular, _,["0"|S],S).
sustantivo(singular, _,["1"|S],S).
sustantivo(singular, _,["2"|S],S).
sustantivo(singular, _,["3"|S],S).
sustantivo(singular, _,["4"|S],S).
sustantivo(singular, _,["5"|S],S).
sustantivo(singular, _,["6"|S],S).
sustantivo(singular, _,["7"|S],S).
sustantivo(singular, _,["8"|S],S).
sustantivo(singular, _,["9"|S],S).
sustantivo(singular, _,["10"|S],S).
sustantivo(singular, _,["11"|S],S).
sustantivo(singular, _,["12"|S],S).
sustantivo(singular, _,["13"|S],S).
sustantivo(singular, _,["14"|S],S).
sustantivo(singular, _,["15"|S],S).
sustantivo(singular, _,["16"|S],S).
sustantivo(singular, _,["17"|S],S).
sustantivo(singular, _,["18"|S],S).
sustantivo(singular, _,["19"|S],S).
sustantivo(singular, _,["20"|S],S).
sustantivo(singular, _,["21"|S],S).
sustantivo(singular, _,["22"|S],S).
sustantivo(singular, _,["23"|S],S).
sustantivo(singular, _,["24"|S],S).
sustantivo(singular, _,["25"|S],S).
sustantivo(singular, _,["26"|S],S).
sustantivo(singular, _,["27"|S],S).
sustantivo(singular, _,["28"|S],S).
sustantivo(singular, _,["29"|S],S).
sustantivo(singular, _,["30"|S],S).
sustantivo(singular, _,["31"|S],S).
sustantivo(singular, _,["32"|S],S).
sustantivo(singular, _,["33"|S],S).
sustantivo(singular, _,["34"|S],S).
sustantivo(singular, _,["35"|S],S).
sustantivo(singular, _,["36"|S],S).
sustantivo(singular, _,["37"|S],S).
sustantivo(singular, _,["38"|S],S).
sustantivo(singular, _,["39"|S],S).
sustantivo(singular, _,["40"|S],S).
sustantivo(singular, _,["41"|S],S).
sustantivo(singular, _,["42"|S],S).
sustantivo(singular, _,["43"|S],S).
sustantivo(singular, _,["44"|S],S).
sustantivo(singular, _,["45"|S],S).
sustantivo(singular, _,["46"|S],S).
sustantivo(singular, _,["47"|S],S).
sustantivo(singular, _,["48"|S],S).
sustantivo(singular, _,["49"|S],S).
sustantivo(singular, _,["50"|S],S).
sustantivo(singular, _,["51"|S],S).
sustantivo(singular, _,["52"|S],S).
sustantivo(singular, _,["53"|S],S).
sustantivo(singular, _,["54"|S],S).
sustantivo(singular, _,["55"|S],S).
sustantivo(singular, _,["56"|S],S).
sustantivo(singular, _,["57"|S],S).
sustantivo(singular, _,["58"|S],S).
sustantivo(singular, _,["59"|S],S).
sustantivo(singular, _,["60"|S],S).
sustantivo(singular, _,["61"|S],S).
sustantivo(singular, _,["62"|S],S).
sustantivo(singular, _,["63"|S],S).
sustantivo(singular, _,["64"|S],S).
sustantivo(singular, _,["65"|S],S).
sustantivo(singular, _,["66"|S],S).
sustantivo(singular, _,["67"|S],S).
sustantivo(singular, _,["68"|S],S).
sustantivo(singular, _,["69"|S],S).
sustantivo(singular, _,["70"|S],S).
sustantivo(singular, _,["71"|S],S).
sustantivo(singular, _,["72"|S],S).
sustantivo(singular, _,["73"|S],S).
sustantivo(singular, _,["74"|S],S).
sustantivo(singular, _,["75"|S],S).
sustantivo(singular, _,["76"|S],S).
sustantivo(singular, _,["77"|S],S).
sustantivo(singular, _,["78"|S],S).
sustantivo(singular, _,["79"|S],S).
sustantivo(singular, _,["80"|S],S).
sustantivo(singular, _,["81"|S],S).
sustantivo(singular, _,["82"|S],S).
sustantivo(singular, _,["83"|S],S).
sustantivo(singular, _,["84"|S],S).
sustantivo(singular, _,["85"|S],S).
sustantivo(singular, _,["86"|S],S).
sustantivo(singular, _,["87"|S],S).
sustantivo(singular, _,["88"|S],S).
sustantivo(singular, _,["89"|S],S).
sustantivo(singular, _,["90"|S],S).
sustantivo(singular, _,["91"|S],S).
sustantivo(singular, _,["92"|S],S).
sustantivo(singular, _,["93"|S],S).
sustantivo(singular, _,["94"|S],S).
sustantivo(singular, _,["95"|S],S).
sustantivo(singular, _,["96"|S],S).
sustantivo(singular, _,["97"|S],S).
sustantivo(singular, _,["98"|S],S).
sustantivo(singular, _,["99"|S],S).





%Adjetivos
adjetivo(plural,femenino,["pintadas"|S],S).
adjetivo(plural,_,["azules"|S],S).
adjetivo(plural,masculino,["oscuros"|S],S).
adjetivo(plural,_,["caf�s"|S],S).
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
adjetivo(singular, femenino,["blanca"|S],S).

%Lugares
adjetivo(singular,_,["alajuela"|S],S).
adjetivo(singular,_,["Alajuela"|S],S).
adjetivo(singular,_,["Heredia"|S],S).
adjetivo(singular,_,["heredia"|S],S).
adjetivo(singular,_,["Cartago"|S],S).
adjetivo(singular,_,["cartago"|S],S).
adjetivo(singular,_,["Cartaguito"|S],S).
adjetivo(singular,_,["cartaguito"|S],S).
adjetivo(singular,_,["SanJose"|S],S).
adjetivo(singular,_,["sanjose"|S],S).
adjetivo(singular,_,["Sanjose"|S],S).
adjetivo(singular,_,["San Jose"|S],S).
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

%A�os
adjetivo(singular,_,["1930"|S],S).
adjetivo(singular,_,["1931"|S],S).
adjetivo(singular,_,["1932"|S],S).
adjetivo(singular,_,["1933"|S],S).
adjetivo(singular,_,["1934"|S],S).
adjetivo(singular,_,["1935"|S],S).
adjetivo(singular,_,["1936"|S],S).
adjetivo(singular,_,["1937"|S],S).
adjetivo(singular,_,["1938"|S],S).
adjetivo(singular,_,["1939"|S],S).
adjetivo(singular,_,["1940"|S],S).
adjetivo(singular,_,["1941"|S],S).
adjetivo(singular,_,["1942"|S],S).
adjetivo(singular,_,["1943"|S],S).
adjetivo(singular,_,["1944"|S],S).
adjetivo(singular,_,["1945"|S],S).
adjetivo(singular,_,["1946"|S],S).
adjetivo(singular,_,["1947"|S],S).
adjetivo(singular,_,["1948"|S],S).
adjetivo(singular,_,["1949"|S],S).
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
adjetivo(singular,_,["1984"|S],S).
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

%Alturas
adjetivo(singular,_,["1.70"|S],S).


%Verbos
verbo(singular,tercera,["hace"|S],S).
verbo(singular,tercera,["hizo"|S],S).
verbo(singular,tercera,["tiene"|S],S).
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


%Respuestas
respuesta(["Si"|S],S).
respuesta(["No"|S],S).
respuesta(["si"|S],S).
respuesta(["no"|S],S).


%Famosos_________________________________________


%Politicos
famoso("Carlos Alvarado",["hombre","negro","presidente","San Jose","40"]).
famoso("Otto guevara",["hombre","blanco","politico","San Jose","59"]).
famoso("Guillermo Solis",["hombre","negro","presidente","San Jose","62"]).
famoso("Laura Chinchilla",["mujer","cafe","presidente","San Jose","61"]).
famoso("Oscar Arias",["hombre","blanco","presidente","San Jose","79"]).


%Deportes
famoso("Keylor Navas", ["hombre", "negro", "futbolista","San Jose", "33"]).
famoso("Joel Campbell", ["hombre", "negro", "futbolista","San Jose", "27"]).
famoso("Shirley Cruz", ["mujer", "negro", "futbolista","San Jose", "34"]).

%Farandula
famoso("Maribel Guardia", ["mujer", "negro", "actriz", "San Jose", "61"]).
famoso("Bali Rodriguez", ["mujer", "cafe", "modelo", "San Jose", "35"]).
famoso("Harry Shum", ["hombre", "negro", "actor", "limon", "38"]).
famoso("Edgar Silva", ["hombre", "negro", "presentador", "guanacaste", "52"]).
famoso("Nancy Dobles", ["mujer", "negro", "presentador", "San Jose", "42"]).

%Otros
famoso("Franklin Chang", ["hombre", "negro", "astronauta", "San Jose", "70"]).
famoso("Devi Nova", ["mujer", "cafe", "cantante", "San Jose", "39"]).
famoso("Daniel Salas", ["hombre", "negro", "ministro", "San Jose", "43"]).

%Desarrolladores
famoso("Agustin",["hombre","negro","estudiante","puntarenas","19"]).
famoso("Fabian",["hombre","negro","estudiante","heredia","19"]).
famoso("Abigail",["mujer","negro","estudiante","alajuela","20"]).



%Listas de posibles respuestas, sinonimo


%Por genero
listaGenero(["mujer","Mujer", "dama","Dama", "femenina"]).
listaGenero(["hombre","Hombre","varon","Varon","masculino"]).

%Por color de pelo
listaPelo(["rubio","rubia","macho","macha"]).
listaPelo(["negro", "oscuro"]).
listaPelo(["blanco"]).
listaPelo(["cafe", "casta�o"]).

%Por oficio__________________________

%Politicas
listaOficio(["presidente", "presidenta"]).
listaOficio(["diputado","diputada","Diputado","Diputada"]).
listaOficio(["politico","Politico"]).
%Deportes
listaOficio(["futbolista", "portero", "delantero", "defensa", "medio", "mediocampista"]).

%Farandula
listaOficio(["presentador", "presentadora","Presentador","Presentadora"]).
listaOficio(["actriz","Actriz"]).
listaOficio(["actor","Actor"]).
listaOficio(["modelo","Modelo"]).
listaOficio(["estudiante","Estudiante"]).


%Otros
listaOficio(["astronauta","Astronauta"]).
listaOficio(["ministro","Ministro"]).
listaOficio(["cantante","Cantante"]).

%Lista de lugares
listaLugares(["San Jose", "Jose", "jose","SanJose", "san jose", "Chepe", "chepe", "San jose", "san Jose"]).
listaLugares(["alajuela", "Alajuela"]).
listaLugares(["cartago", "cartago", "cartaguito", "Cartaguito"]).
listaLugares(["heredia", "Heredia"]).
listaLugares(["puntarenas", "Puntarenas"]).
listaLugares(["guanacaste", "Guanacaste", "guana", "Guana"]).
listaLugares(["limon", "Limon"]).






%Lista de edades.
%Asocia el a�o en que naci� con la edad actual

listaA�os(["90","1930"]).
listaA�os(["89","1931"]).
listaA�os(["88","1932"]).
listaA�os(["87","1933"]).
listaA�os(["86","1934"]).
listaA�os(["85","1935"]).
listaA�os(["84","1936"]).
listaA�os(["83","1937"]).
listaA�os(["82","1938"]).
listaA�os(["71","1939"]).
listaA�os(["80","1940"]).
listaA�os(["79","1941"]).
listaA�os(["78","1942"]).
listaA�os(["77","1943"]).
listaA�os(["76","1944"]).
listaA�os(["75","1945"]).
listaA�os(["74","1946"]).
listaA�os(["73","1947"]).
listaA�os(["72","1948"]).
listaA�os(["71","1949"]).
listaA�os(["70","1950"]).
listaA�os(["69","1951"]).
listaA�os(["68","1952"]).
listaA�os(["67","1953"]).
listaA�os(["66","1954"]).
listaA�os(["65","1955"]).
listaA�os(["64","1956"]).
listaA�os(["63","1957"]).
listaA�os(["62","1958"]).
listaA�os(["61","1959"]).
listaA�os(["60","1960"]).
listaA�os(["59","1961"]).
listaA�os(["58","1962"]).
listaA�os(["57","1963"]).
listaA�os(["56","1964"]).
listaA�os(["55","1965"]).
listaA�os(["54","1966"]).
listaA�os(["53","1967"]).
listaA�os(["52","1968"]).
listaA�os(["51","1969"]).
listaA�os(["50","1970"]).
listaA�os(["49","1971"]).
listaA�os(["48","1972"]).
listaA�os(["47","1973"]).
listaA�os(["46","1974"]).
listaA�os(["45","1975"]).
listaA�os(["44","1976"]).
listaA�os(["43","1977"]).
listaA�os(["42","1978"]).
listaA�os(["41","1979"]).
listaA�os(["40","1980"]).
listaA�os(["39","1981"]).
listaA�os(["38","1982"]).
listaA�os(["37","1983"]).
listaA�os(["36","1984"]).
listaA�os(["35","1985"]).
listaA�os(["34","1986"]).
listaA�os(["33","1987"]).
listaA�os(["32","1988"]).
listaA�os(["31","1989"]).
listaA�os(["30","1990"]).
listaA�os(["29","1991"]).
listaA�os(["28","1992"]).
listaA�os(["27","1993"]).
listaA�os(["26","1994"]).
listaA�os(["25","1995"]).
listaA�os(["24","1996"]).
listaA�os(["23","1997"]).
listaA�os(["22","1998"]).
listaA�os(["21","1999"]).
listaA�os(["20","2000"]).
listaA�os(["19","2001"]).
listaA�os(["18","2002"]).
listaA�os(["17","2003"]).
listaA�os(["16","2004"]).
listaA�os(["15","2005"]).
listaA�os(["14","2006"]).
listaA�os(["13","2007"]).
listaA�os(["12","2008"]).
listaA�os(["11","2009"]).
listaA�os(["10","2010"]).
listaA�os(["9","2011"]).
listaA�os(["8","2012"]).
listaA�os(["7","2013"]).
listaA�os(["6","2014"]).
listaA�os(["5","2015"]).
listaA�os(["4","2016"]).
listaA�os(["3","2017"]).
listaA�os(["2","2018"]).
listaA�os(["1","2019"]).
listaA�os(["0","2020"]).






















