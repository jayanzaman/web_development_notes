All columns for all players from the New York Knicks (NYK).

All columns for all players from the Indiana Packers (IND) who are under 26 years old.
All columns for all players, ordered from least points scored to most points scored.
Name and Points per game (points/games), for the players with the top 20 points per game.
The average age for all players.
The average age for all players on the Oklahoma City Thunder (OKC).
The average age for all players who played more than 40 games.


nba-players=# SELECT name,(points/games) FROM players ORDER BY (points/games) DESC LIMIT 20;
nba-players=# SELECT AVG(age) FROM players;
nba-players=# SELECT AVG(age) FROM players WHERE team = 'OKC';
nba-players=# SELECT AVG(age) FROM players WHERE games > 40;
nba-players=# SELECT team,SUM(points) FROM players GROUP BY team ORDER BY sum(points) DESC;
nba-players=# SELECT age,AVG(points/games) FROM players GROUP BY age ORDER BY age DESC;
nba-players=# SELECT team,COUNT(name) AS numberofplayerscoringabove12points FROM players WHERE (points/games) > 12 GROUP BY team ORDER BY COUNT(name) DESC;












jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!]
$ createdb nba-players
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!]
$ psql
psql (9.5.5)
Type "help" for help.

jayanzaman=# \l
                                       List of databases
     Name      |   Owner    | Encoding |   Collate   |    Ctype    |     Access privileges
---------------+------------+----------+-------------+-------------+---------------------------
 jayanzaman    | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 jedi-table    | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 nba-players   | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres      | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0     | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/jayanzaman            +
               |            |          |             |             | jayanzaman=CTc/jayanzaman
 template1     | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/jayanzaman            +
               |            |          |             |             | jayanzaman=CTc/jayanzaman
 xfiles-voters | jayanzaman | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
(7 rows)

jayanzaman=# ^C
jayanzaman=# \q
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!]
$ psql -d nba-players -f nba_seeds.sql
psql:nba_seeds.sql:2: NOTICE:  table "players" does not exist, skipping
DROP TABLE
CREATE TABLE
COPY 478
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!]
$ psql
psql (9.5.5)
Type "help" for help.

jayanzaman=# \c nba-players
You are now connected to database "nba-players" as user "jayanzaman".
nba-players=# SELECT * FROM players
nba-players-# ;
 id  |        name         | age | team | games | points
-----+---------------------+-----+------+-------+--------
   1 | Jeff Adrien         |  25 | HOU  |     8 |     21
   2 | Arron Afflalo       |  26 | DEN  |    62 |    943
   3 | Blake Ahearn        |  27 | UTA  |     4 |     10
   4 | Solomon Alabi       |  23 | TOR  |    14 |     33
   5 | Cole Aldrich        |  23 | OKC  |    26 |     57
   6 | LaMarcus Aldridge   |  26 | POR  |    55 |   1191
   7 | Lavoy Allen         |  22 | PHI  |    41 |    169
   8 | Ray Allen           |  36 | BOS  |    46 |    655
   9 | Tony Allen          |  30 | MEM  |    58 |    568
  10 | Morris Almond       |  26 | WAS  |     4 |     14
  11 | Al-Farouq Aminu     |  21 | NOH  |    66 |    399
  12 | Louis Amundson      |  29 | IND  |    60 |    213
  13 | Chris Andersen      |  33 | DEN  |    32 |    168
  14 | Alan Anderson       |  29 | TOR  |    17 |    163
  15 | James Anderson      |  22 | SAS  |    51 |    190
  16 | Ryan Anderson       |  23 | ORL  |    61 |    980
  17 | Carmelo Anthony     |  27 | NYK  |    55 |   1245
  18 | Joel Anthony        |  29 | MIA  |    64 |    219
  19 | Gilbert Arenas      |  30 | MEM  |    17 |     72
  20 | Trevor Ariza        |  26 | NOH  |    41 |    444
  21 | Omer Asik           |  25 | CHI  |    66 |    205
  22 | D.J. Augustin       |  24 | CHA  |    48 |    532
  23 | Gustavo Ayon        |  26 | NOH  |    54 |    319
  24 | Kelenna Azubuike    |  28 | DAL  |     3 |      7
  25 | Luke Babbitt        |  22 | POR  |    40 |    202
  26 | Renaldo Balkman     |  27 | NYK  |    14 |     42
  27 | Leandro Barbosa     |  29 | TOR  |    42 |    512
  28 | Jose Barea          |  27 | MIN  |    41 |    463
  29 | Andrea Bargnani     |  26 | TOR  |    31 |    603
  30 | Matt Barnes         |  31 | LAL  |    63 |    491
  31 | Earl Barron         |  30 | GSW  |     2 |      4
  32 | Brandon Bass        |  26 | BOS  |    59 |    738
  33 | Tony Battie         |  35 | PHI  |    27 |     42
  34 | Shane Battier       |  33 | MIA  |    65 |    311
  35 | Nicolas Batum       |  23 | POR  |    59 |    818
  36 | Jerryd Bayless      |  23 | TOR  |    31 |    353
  37 | Michael Beasley     |  23 | MIN  |    47 |    541
  38 | Rodrigue Beaubois   |  23 | DAL  |    53 |    472
  39 | Marco Belinelli     |  25 | NOH  |    66 |    780
  40 | Raja Bell           |  35 | UTA  |    34 |    217
  41 | Keith Benson        |  23 | GSW  |     3 |      0
  42 | Mike Bibby          |  33 | NYK  |    39 |    103
  43 | Andris Biedrins     |  25 | GSW  |    47 |     79
  44 | Chauncey Billups    |  35 | LAC  |    20 |    299
  45 | Bismack Biyombo     |  19 | CHA  |    63 |    327
  46 | DeJuan Blair        |  22 | SAS  |    64 |    611
  47 | Steve Blake         |  31 | LAL  |    53 |    276
  48 | Andray Blatche      |  25 | WAS  |    26 |    221
  49 | Eric Bledsoe        |  22 | LAC  |    40 |    132
  50 | Keith Bogans        |  31 | NJN  |     5 |     21
  51 | Andrew Bogut        |  27 | MIL  |    12 |    136
  52 | Matt Bonner         |  31 | SAS  |    65 |    429
  53 | Trevor Booker       |  24 | WAS  |    50 |    419
  54 | Carlos Boozer       |  30 | CHI  |    66 |    991
  55 | Chris Bosh          |  27 | MIA  |    57 |   1025
  56 | Earl Boykins        |  35 | HOU  |     8 |     39
  57 | Craig Brackins      |  24 | PHI  |    14 |     22
  58 | Avery Bradley       |  21 | BOS  |    64 |    484
  59 | Elton Brand         |  32 | PHI  |    60 |    659
  60 | Corey Brewer        |  25 | DEN  |    59 |    525
  61 | Ronnie Brewer       |  26 | CHI  |    66 |    455
  62 | Jon Brockman        |  24 | MIL  |    35 |     37
  63 | MarShon Brooks      |  23 | NJN  |    56 |    708
  64 | Derrick Brown       |  24 | CHA  |    65 |    524
  65 | Kwame Brown         |  29 | GSW  |     9 |     57
  66 | Shannon Brown       |  26 | PHO  |    59 |    650
  67 | Kobe Bryant         |  33 | LAL  |    58 |   1616
  68 | Chase Budinger      |  23 | HOU  |    58 |    558
  69 | Alec Burks          |  20 | UTA  |    59 |    425
  70 | Caron Butler        |  31 | LAC  |    63 |    753
  71 | Jimmy Butler        |  22 | CHI  |    42 |    109
  72 | Rasual Butler       |  32 | TOR  |    34 |    110
  73 | Derrick Byars       |  27 | SAS  |     2 |     10
  74 | Andrew Bynum        |  24 | LAL  |    60 |   1123
  75 | Will Bynum          |  29 | DET  |    36 |    204
  76 | Jose Calderon       |  30 | TOR  |    53 |    555
  77 | Marcus Camby        |  37 | POR  |    40 |    152
  78 | Brian Cardinal      |  34 | DAL  |    44 |     43
  79 | DeMarre Carroll     |  25 | DEN  |     4 |     12
  80 | Matt Carroll        |  31 | CHA  |    53 |    142
  81 | Anthony Carter      |  36 | TOR  |    24 |     47
  82 | Vince Carter        |  35 | DAL  |    61 |    615
  83 | Omri Casspi         |  23 | CLE  |    65 |    459
  84 | Mario Chalmers      |  25 | MIA  |    64 |    627
  85 | Tyson Chandler      |  29 | NYK  |    62 |    699
  86 | Wilson Chandler     |  24 | DEN  |     8 |     75
  87 | Josh Childress      |  28 | PHO  |    34 |    100
  88 | Earl Clark          |  24 | ORL  |    45 |    123
  89 | Norris Cole         |  23 | MIA  |    65 |    441
  90 | Jason Collins       |  33 | ATL  |    30 |     39
  91 | Darren Collison     |  24 | IND  |    60 |    621
  92 | Nick Collison       |  31 | OKC  |    63 |    284
  93 | Mike Conley         |  24 | MEM  |    62 |    788
  94 | Brian Cook          |  31 | LAC  |    16 |     31
  95 | Daequan Cook        |  24 | OKC  |    57 |    311
  96 | DeMarcus Cousins    |  21 | SAC  |    64 |   1160
  97 | Jamal Crawford      |  31 | POR  |    60 |    837
  98 | Jordan Crawford     |  23 | WAS  |    64 |    938
  99 | Dante Cunningham    |  24 | MEM  |    64 |    333
 100 | Eddy Curry          |  29 | MIA  |    14 |     30
 101 | Stephen Curry       |  23 | GSW  |    26 |    383
 102 | Samuel Dalembert    |  30 | HOU  |    65 |    490
 103 | Erick Dampier       |  36 | ATL  |    15 |      2
 104 | Marquis Daniels     |  31 | BOS  |    38 |    121
 105 | Baron Davis         |  32 | NYK  |    29 |    178
 106 | Ed Davis            |  22 | TOR  |    66 |    415
 107 | Glen Davis          |  26 | ORL  |    61 |    566
 108 | Josh Davis          |  31 | MEM  |    15 |     28
 109 | Eric Dawson         |  27 | SAS  |     4 |     15
 110 | Austin Daye         |  23 | DET  |    41 |    194
 111 | Carlos Delfino      |  29 | MIL  |    54 |    488
 112 | Luol Deng           |  26 | CHI  |    54 |    828
 113 | Justin Dentmon      |  26 | SAS  |     2 |      4
 114 | DeMar DeRozan       |  22 | TOR  |    63 |   1054
 115 | Boris Diaw          |  29 | CHA  |    37 |    272
 116 | Ike Diogu           |  28 | SAS  |     2 |      2
 117 | DeSagana Diop       |  30 | CHA  |    27 |     31
 118 | Keyon Dooling       |  31 | BOS  |    46 |    182
 119 | Toney Douglas       |  25 | NYK  |    38 |    237
 120 | Goran Dragic        |  25 | HOU  |    66 |    775
 121 | Jared Dudley        |  26 | PHO  |    65 |    823
 122 | Chris Duhon         |  29 | ORL  |    63 |    237
 123 | Tim Duncan          |  35 | SAS  |    58 |    895
 124 | Mike Dunleavy       |  31 | MIL  |    55 |    677
 125 | Kevin Durant        |  23 | OKC  |    66 |   1850
 126 | Jerome Dyson        |  24 | NOH  |     9 |     67
 127 | Devin Ebanks        |  22 | LAL  |    24 |     97
 128 | Wayne Ellington     |  24 | MIN  |    51 |    311
 129 | Monta Ellis         |  26 | GSW  |    37 |    811
 130 | Francisco Elson     |  35 | PHI  |     5 |      2
 131 | Andre Emmett        |  29 | NJN  |     6 |     13
 132 | Semih Erden         |  25 | CLE  |    28 |     99
 133 | Jeremy Evans        |  24 | UTA  |    29 |     62
 134 | Maurice Evans       |  33 | WAS  |    24 |    117
 135 | Reggie Evans        |  31 | LAC  |    56 |    104
 136 | Tyreke Evans        |  22 | SAC  |    63 |   1037
 137 | Christian Eyenga    |  22 | CLE  |     6 |      9
 138 | Kenneth Faried      |  22 | DEN  |    46 |    471
 139 | Jordan Farmar       |  25 | NJN  |    39 |    406
 140 | Derrick Favors      |  20 | UTA  |    65 |    570
 141 | Raymond Felton      |  27 | POR  |    60 |    684
 142 | Rudy Fernandez      |  26 | DEN  |    31 |    268
 143 | Kyrylo Fesenko      |  25 | IND  |     3 |      8
 144 | Landry Fields       |  23 | NYK  |    66 |    580
 145 | Derek Fisher        |  37 | LAL  |    43 |    252
 146 | Jonny Flynn         |  22 | HOU  |    11 |     37
 147 | Jeff Foote          |  24 | NOH  |     4 |      4
 148 | Gary Forbes         |  26 | TOR  |    48 |    319
 149 | T.J. Ford           |  28 | SAS  |    14 |     51
 150 | Courtney Fortson    |  23 | LAC  |     4 |     17
 151 | Jeff Foster         |  35 | IND  |    11 |     25
 152 | Randy Foye          |  28 | LAC  |    65 |    712
 153 | Jimmer Fredette     |  22 | SAC  |    61 |    462
 154 | Channing Frye       |  28 | PHO  |    64 |    674
 155 | Dan Gadzuric        |  33 | NYK  |     2 |      0
 156 | Sundiata Gaines     |  25 | NJN  |    57 |    291
 157 | Danilo Gallinari    |  23 | DEN  |    43 |    628
 158 | Francisco Garcia    |  30 | SAC  |    49 |    234
 159 | Kevin Garnett       |  35 | BOS  |    60 |    947
 160 | Marc Gasol          |  27 | MEM  |    65 |    952
 161 | Pau Gasol           |  31 | LAL  |    65 |   1129
 162 | Rudy Gay            |  25 | MEM  |    65 |   1232
 163 | Alonzo Gee          |  24 | CLE  |    63 |    665
 164 | Paul George         |  21 | IND  |    66 |    798
 165 | Daniel Gibson       |  25 | CLE  |    35 |    263
 166 | Taj Gibson          |  26 | CHI  |    63 |    484
 167 | Manu Ginobili       |  34 | SAS  |    34 |    440
 168 | Mickell Gladness    |  25 | MIA  |     8 |      2
 169 | Ryan Gomes          |  29 | LAC  |    32 |     74
 170 | Drew Gooden         |  30 | MIL  |    56 |    766
 171 | Ben Gordon          |  28 | DET  |    52 |    648
 172 | Eric Gordon         |  23 | NOH  |     9 |    185
 173 | Marcin Gortat       |  27 | PHO  |    66 |   1017
 174 | Andrew Goudelock    |  23 | LAL  |    40 |    175
 175 | Danny Granger       |  28 | IND  |    62 |   1159
 176 | Aaron Gray          |  27 | TOR  |    49 |    191
 177 | Danny Green         |  24 | SAS  |    66 |    603
 178 | Gerald Green        |  26 | NJN  |    31 |    400
 179 | Willie Green        |  30 | ATL  |    53 |    404
 180 | Donte Greene        |  23 | SAC  |    53 |    285
 181 | Blake Griffin       |  22 | LAC  |    66 |   1368
 182 | Hamed Haddadi       |  26 | MEM  |    35 |     70
 183 | Jordan Hamilton     |  21 | DEN  |    26 |    115
 184 | Richard Hamilton    |  33 | CHI  |    28 |    326
 185 | Tyler Hansbrough    |  26 | IND  |    66 |    614
 186 | Luke Harangody      |  24 | CLE  |    21 |     60
 187 | James Harden        |  22 | OKC  |    62 |   1044
 188 | Justin Harper       |  22 | ORL  |    14 |     20
 189 | Josh Harrellson     |  22 | NYK  |    37 |    162
 190 | Al Harrington       |  31 | DEN  |    64 |    910
 191 | Devin Harris        |  28 | UTA  |    63 |    715
 192 | Manny Harris        |  22 | CLE  |    26 |    173
 193 | Terrel Harris       |  24 | MIA  |    22 |     80
 194 | Tobias Harris       |  19 | MIL  |    42 |    208
 195 | Udonis Haslem       |  31 | MIA  |    64 |    385
 196 | Spencer Hawes       |  23 | PHI  |    37 |    355
 197 | Chuck Hayes         |  28 | SAC  |    54 |    172
 198 | Gordon Hayward      |  21 | UTA  |    66 |    782
 199 | Lazar Hayward       |  25 | OKC  |    26 |     37
 200 | Brendan Haywood     |  32 | DAL  |    54 |    281
 201 | Gerald Henderson    |  24 | CHA  |    55 |    830
 202 | Xavier Henry        |  20 | NOH  |    45 |    239
 203 | Roy Hibbert         |  25 | IND  |    65 |    834
 204 | J.J. Hickson        |  23 | SAC  |    35 |    165
 205 | Cory Higgins        |  22 | CHA  |    38 |    150
 206 | Nene Hilario        |  29 | DEN  |    28 |    376
 207 | George Hill         |  25 | IND  |    50 |    481
 208 | Grant Hill          |  39 | PHO  |    49 |    499
 209 | Jordan Hill         |  24 | HOU  |    32 |    161
 210 | Kirk Hinrich        |  31 | ATL  |    48 |    316
 211 | Darington Hobson    |  24 | MIL  |     5 |      4
 212 | Jrue Holiday        |  21 | PHI  |    65 |    879
 213 | Ryan Hollins        |  27 | CLE  |    24 |     89
 214 | Tyler Honeycutt     |  21 | SAC  |    15 |     20
 215 | Al Horford          |  25 | ATL  |    11 |    136
 216 | Dennis Horner       |  23 | NJN  |     8 |      5
 217 | Dwight Howard       |  26 | ORL  |    54 |   1113
 218 | Josh Howard         |  31 | UTA  |    43 |    372
 219 | Juwan Howard        |  38 | MIA  |    28 |     42
 220 | Lester Hudson       |  27 | CLE  |    13 |    165
 221 | Larry Hughes        |  33 | ORL  |     9 |     12
 222 | Kris Humphries      |  26 | NJN  |    62 |    855
 223 | Serge Ibaka         |  22 | OKC  |    66 |    603
 224 | Andre Iguodala      |  28 | PHI  |    62 |    771
 225 | Ersan Ilyasova      |  24 | MIL  |    60 |    782
 226 | Kyrie Irving        |  19 | CLE  |    51 |    944
 227 | Royal Ivey          |  30 | OKC  |    34 |     71
 228 | Jarrett Jack        |  28 | NOH  |    45 |    700
 229 | Reggie Jackson      |  21 | OKC  |    45 |    140
 230 | Stephen Jackson     |  33 | MIL  |    26 |    274
 231 | Damion James        |  24 | NJN  |     7 |     34
 232 | LeBron James        |  27 | MIA  |    62 |   1683
 233 | Mike James          |  36 | CHI  |    11 |     53
 234 | Antawn Jamison      |  35 | CLE  |    65 |   1118
 235 | Al Jefferson        |  27 | UTA  |    61 |   1170
 236 | Richard Jefferson   |  31 | SAS  |    41 |    379
 237 | Jared Jeffries      |  30 | NYK  |    39 |    170
 238 | Charles Jenkins     |  22 | GSW  |    51 |    297
 239 | Brandon Jennings    |  22 | MIL  |    66 |   1260
 240 | Jonas Jerebko       |  24 | DET  |    64 |    556
 241 | Yi Jianlian         |  24 | DAL  |    30 |     79
 242 | Amir Johnson        |  24 | TOR  |    64 |    452
 243 | Armon Johnson       |  22 | POR  |     1 |      2
 244 | Carldell Johnson    |  29 | NOH  |    15 |     27
 245 | Chris Johnson       |  26 | POR  |    20 |     32
 246 | Ivan Johnson        |  27 | ATL  |    56 |    356
 247 | JaJuan Johnson      |  22 | BOS  |    36 |    114
 248 | James Johnson       |  24 | TOR  |    62 |    566
 249 | Joe Johnson         |  30 | ATL  |    60 |   1129
 250 | Trey Johnson        |  27 | NOH  |    11 |     21
 251 | Wesley Johnson      |  24 | MIN  |    65 |    393
 252 | Dahntay Jones       |  31 | IND  |    65 |    346
 253 | Dominique Jones     |  23 | DAL  |    33 |     88
 254 | James Jones         |  31 | MIA  |    51 |    185
 255 | Solomon Jones       |  27 | LAC  |    10 |      6
 256 | DeAndre Jordan      |  23 | LAC  |    66 |    486
 257 | Jerome Jordan       |  25 | NYK  |    21 |     42
 258 | Cory Joseph         |  20 | SAS  |    29 |     58
 259 | Chris Kaman         |  29 | NOH  |    47 |    616
 260 | Enes Kanter         |  19 | UTA  |    66 |    304
 261 | Jason Kapono        |  30 | LAL  |    27 |     54
 262 | D.J. Kennedy        |  22 | CLE  |     2 |     12
 263 | Jason Kidd          |  38 | DAL  |    48 |    299
 264 | Linas Kleiza        |  27 | TOR  |    49 |    473
 265 | Brandon Knight      |  20 | DET  |    66 |    847
 266 | Kyle Korver         |  30 | CHI  |    65 |    529
 267 | Kosta Koufos        |  22 | DEN  |    48 |    263
 268 | Carl Landry         |  28 | NOH  |    41 |    511
 269 | Ty Lawson           |  24 | DEN  |    61 |    999
 270 | Courtney Lee        |  26 | HOU  |    58 |    660
 271 | David Lee           |  28 | GSW  |    57 |   1147
 272 | Malcolm Lee         |  21 | MIN  |    19 |     62
 273 | Kawhi Leonard       |  20 | SAS  |    64 |    507
 274 | Travis Leslie       |  21 | LAC  |    10 |     14
 275 | Jon Leuer           |  22 | MIL  |    46 |    218
 276 | Rashard Lewis       |  32 | WAS  |    28 |    217
 277 | DeAndre Liggins     |  23 | ORL  |    17 |     33
 278 | Jeremy Lin          |  23 | NYK  |    35 |    512
 279 | Shaun Livingston    |  26 | MIL  |    58 |    318
 280 | Brook Lopez         |  23 | NJN  |     5 |     96
 281 | Robin Lopez         |  23 | PHO  |    64 |    348
 282 | Kevin Love          |  23 | MIN  |    55 |   1432
 283 | Kyle Lowry          |  25 | HOU  |    47 |    670
 284 | John Lucas          |  29 | CHI  |    49 |    369
 285 | Shelvin Mack        |  22 | WAS  |    64 |    230
 286 | Vernon Macklin      |  25 | DET  |    23 |     46
 287 | Corey Maggette      |  32 | CHA  |    32 |    480
 288 | Jamaal Magloire     |  33 | TOR  |    34 |     41
 289 | Ian Mahinmi         |  25 | DAL  |    61 |    354
 290 | Shawn Marion        |  33 | DAL  |    63 |    670
 291 | Cartier Martin      |  27 | WAS  |    17 |    158
 292 | Kenyon Martin       |  34 | LAC  |    42 |    217
 293 | Kevin Martin        |  28 | HOU  |    40 |    682
 294 | Roger Mason         |  31 | WAS  |    52 |    286
 295 | Wesley Matthews     |  25 | POR  |    66 |    904
 296 | Jason Maxiell       |  28 | DET  |    65 |    424
 297 | Eric Maynor         |  24 | OKC  |     9 |     38
 298 | O.J. Mayo           |  24 | MEM  |    66 |    833
 299 | Luc Mbah a Moute    |  25 | MIL  |    43 |    333
 300 | JaVale McGee        |  24 | WAS  |    41 |    486
 301 | Tracy McGrady       |  32 | ATL  |    52 |    273
 302 | Dominic McGuire     |  26 | GSW  |    64 |    227
 303 | Josh McRoberts      |  24 | LAL  |    50 |    138
 304 | Jodie Meeks         |  24 | PHI  |    66 |    556
 305 | C.J. Miles          |  24 | UTA  |    56 |    508
 306 | Darko Milicic       |  26 | MIN  |    29 |    134
 307 | Andre Miller        |  35 | DEN  |    66 |    639
 308 | Brad Miller         |  35 | MIN  |    15 |     35
 309 | Mike Miller         |  31 | MIA  |    39 |    237
 310 | Patrick Mills       |  23 | SAS  |    16 |    165
 311 | Paul Millsap        |  26 | UTA  |    64 |   1061
 312 | Nazr Mohammed       |  34 | OKC  |    63 |    171
 313 | Greg Monroe         |  21 | DET  |    66 |   1015
 314 | Jamario Moon        |  31 | CHA  |     8 |     18
 315 | E'Twaun Moore       |  22 | BOS  |    38 |    110
 316 | Mikki Moore         |  36 | GSW  |     7 |     24
 317 | Darius Morris       |  21 | LAL  |    19 |     46
 318 | Marcus Morris       |  22 | HOU  |    17 |     40
 319 | Markieff Morris     |  22 | PHO  |    63 |    467
 320 | Anthony Morrow      |  26 | NJN  |    62 |    747
 321 | Timofey Mozgov      |  25 | DEN  |    44 |    239
 322 | Byron Mullens       |  22 | CHA  |    65 |    606
 323 | Troy Murphy         |  31 | LAL  |    59 |    188
 324 | Hamady N'Diaye      |  25 | WAS  |     3 |      0
 325 | Eduardo Najera      |  35 | CHA  |    22 |     58
 326 | Steve Nash          |  37 | PHO  |    62 |    772
 327 | Gary Neal           |  27 | SAS  |    56 |    557
 328 | Jameer Nelson       |  29 | ORL  |    57 |    676
 329 | Joakim Noah         |  26 | CHI  |    64 |    652
 330 | Andres Nocioni      |  32 | PHI  |    11 |     17
 331 | Steve Novak         |  28 | NYK  |    54 |    477
 332 | Dirk Nowitzki       |  33 | DAL  |    62 |   1342
 333 | Jermaine O'Neal     |  33 | BOS  |    25 |    125
 334 | Lamar Odom          |  32 | DAL  |    50 |    332
 335 | Emeka Okafor        |  29 | NOH  |    27 |    266
 336 | Mehmet Okur         |  32 | NJN  |    17 |    130
 337 | Daniel Orton        |  21 | ORL  |    16 |     45
 338 | Travis Outlaw       |  27 | SAC  |    39 |    167
 339 | Larry Owens         |  29 | NJN  |     7 |     13
 340 | Zaza Pachulia       |  27 | ATL  |    58 |    455
 341 | Jannero Pargo       |  32 | ATL  |    50 |    282
 342 | Jeremy Pargo        |  25 | MEM  |    44 |    126
 343 | Anthony Parker      |  36 | CLE  |    51 |    367
 344 | Tony Parker         |  29 | SAS  |    60 |   1095
 345 | Chandler Parsons    |  23 | HOU  |    63 |    599
 346 | Patrick Patterson   |  22 | HOU  |    64 |    490
 347 | Chris Paul          |  26 | LAC  |    60 |   1189
 348 | Sasha Pavlovic      |  28 | BOS  |    45 |    120
 349 | Nikola Pekovic      |  26 | MIN  |    47 |    651
 350 | Jeff Pendergraph    |  24 | IND  |    20 |     34
 351 | Kendrick Perkins    |  27 | OKC  |    65 |    329
 352 | Johan Petro         |  26 | NJN  |    59 |    250
 353 | Paul Pierce         |  34 | BOS  |    61 |   1181
 354 | Mickael Pietrus     |  29 | BOS  |    42 |    289
 355 | Dexter Pittman      |  23 | MIA  |    35 |    106
 356 | Quincy Pondexter    |  23 | MEM  |    64 |    271
 357 | A.J. Price          |  25 | IND  |    44 |    172
 358 | Ronnie Price        |  28 | PHO  |    36 |    131
 359 | Tayshaun Prince     |  31 | DET  |    63 |    798
 360 | Joel Przybilla      |  32 | POR  |    27 |     55
 361 | Vladimir Radmanovic |  31 | ATL  |    49 |    220
 362 | Anthony Randolph    |  22 | MIN  |    34 |    252
 363 | Zach Randolph       |  30 | MEM  |    28 |    324
 364 | Michael Redd        |  32 | PHO  |    51 |    418
 365 | J.J. Redick         |  27 | ORL  |    65 |    751
 366 | Ryan Reid           |  25 | OKC  |     5 |      8
 367 | Jason Richardson    |  31 | ORL  |    54 |    629
 368 | Quentin Richardson  |  31 | ORL  |    48 |    215
 369 | Luke Ridnour        |  30 | MIN  |    53 |    639
 370 | Nate Robinson       |  27 | GSW  |    51 |    570
 371 | Rajon Rondo         |  25 | BOS  |    53 |    630
 372 | Derrick Rose        |  23 | CHI  |    39 |    852
 373 | Ricky Rubio         |  21 | MIN  |    41 |    436
 374 | Brandon Rush        |  26 | GSW  |    65 |    634
 375 | Walker Russell      |  29 | DET  |    28 |     84
 376 | John Salmons        |  32 | SAC  |    46 |    344
 377 | Samardo Samuels     |  23 | CLE  |    54 |    292
 378 | Larry Sanders       |  23 | MIL  |    52 |    186
 379 | Brian Scalabrine    |  33 | CHI  |    28 |     32
 380 | Luis Scola          |  31 | HOU  |    66 |   1025
 381 | Thabo Sefolosha     |  27 | OKC  |    42 |    203
 382 | Josh Selby          |  20 | MEM  |    28 |     63
 383 | Kevin Seraphin      |  22 | WAS  |    57 |    453
 384 | Ramon Sessions      |  25 | CLE  |    41 |    430
 385 | Iman Shumpert       |  21 | NYK  |    59 |    563
 386 | Xavier Silas        |  24 | PHI  |     2 |     11
 387 | Bobby Simmons       |  31 | LAC  |    28 |     80
 388 | Chris Singleton     |  22 | WAS  |    66 |    306
 389 | James Singleton     |  30 | WAS  |    12 |     98
 390 | Brian Skinner       |  35 | MEM  |     1 |      0
 391 | Donald Sloan        |  24 | CLE  |    25 |    165
 392 | Craig Smith         |  28 | POR  |    47 |    156
 393 | Greg Smith          |  21 | HOU  |     8 |     14
 394 | Ishmael Smith       |  23 | GSW  |     6 |     27
 395 | J.R. Smith          |  26 | NYK  |    35 |    436
 396 | Jason Smith         |  25 | NOH  |    40 |    396
 397 | Jerry Smith         |  24 | NJN  |     5 |      7
 398 | Josh Smith          |  26 | ATL  |    66 |   1239
 399 | Nolan Smith         |  23 | POR  |    44 |    167
 400 | Marreese Speights   |  24 | MEM  |    60 |    526
 401 | Tiago Splitter      |  27 | SAS  |    59 |    549
 402 | Jerry Stackhouse    |  37 | ATL  |    30 |    108
 403 | Lance Stephenson    |  21 | IND  |    42 |    106
 404 | DeShawn Stevenson   |  30 | NJN  |    51 |    148
 405 | Greg Stiemsma       |  26 | BOS  |    55 |    161
 406 | Julyan Stone        |  23 | DEN  |    22 |     36
 407 | Amar'e Stoudemire   |  29 | NYK  |    47 |    823
 408 | Rodney Stuckey      |  25 | DET  |    55 |    812
 409 | DaJuan Summers      |  24 | NOH  |    15 |     68
 410 | Jeff Teague         |  23 | ATL  |    66 |    831
 411 | Sebastian Telfair   |  26 | PHO  |    60 |    368
 412 | Jason Terry         |  34 | DAL  |    63 |    950
 413 | Hasheem Thabeet     |  24 | HOU  |     5 |      6
 414 | Isaiah Thomas       |  22 | SAC  |    65 |    749
 415 | Kurt Thomas         |  39 | POR  |    53 |    160
 416 | Lance Thomas        |  23 | NOH  |    42 |    166
 417 | Malcolm Thomas      |  23 | SAS  |     3 |      1
 418 | Tyrus Thomas        |  25 | CHA  |    54 |    304
 419 | Trey Thompkins      |  21 | LAC  |    24 |     57
 420 | Jason Thompson      |  25 | SAC  |    64 |    583
 421 | Klay Thompson       |  21 | GSW  |    66 |    826
 422 | Mychel Thompson     |  23 | CLE  |     5 |     18
 423 | Tristan Thompson    |  20 | CLE  |    60 |    494
 424 | Marcus Thornton     |  24 | SAC  |    51 |    952
 425 | Jamaal Tinsley      |  33 | UTA  |    37 |    137
 426 | Anthony Tolliver    |  26 | MIN  |    51 |    208
 427 | Ronny Turiaf        |  29 | WAS  |     4 |      6
 428 | Hedo Turkoglu       |  32 | ORL  |    53 |    576
 429 | Evan Turner         |  23 | PHI  |    65 |    610
 430 | Jeremy Tyler        |  20 | GSW  |    42 |    205
 431 | Edwin Ubiles        |  25 | WAS  |     4 |     14
 432 | Ekpe Udoh           |  24 | GSW  |    38 |    210
 433 | Beno Udrih          |  29 | MIL  |    59 |    348
 434 | Ben Uzoh            |  23 | CLE  |     2 |      4
 435 | Anderson Varejao    |  29 | CLE  |    25 |    271
 436 | Greivis Vasquez     |  25 | NOH  |    66 |    589
 437 | Jan Vesely          |  21 | WAS  |    57 |    267
 438 | Charlie Villanueva  |  27 | DET  |    13 |     91
 439 | Nikola Vucevic      |  21 | PHI  |    51 |    283
 440 | Dwyane Wade         |  30 | MIA  |    49 |   1082
 441 | Von Wafer           |  26 | ORL  |    33 |    194
 442 | Bill Walker         |  24 | NYK  |    32 |    189
 443 | Kemba Walker        |  21 | CHA  |    66 |    799
 444 | John Wall           |  21 | WAS  |    66 |   1076
 445 | Ben Wallace         |  37 | DET  |    62 |     85
 446 | Gerald Wallace      |  29 | POR  |    42 |    557
 447 | Luke Walton         |  31 | LAL  |     9 |     12
 448 | Hakim Warrick       |  29 | PHO  |    35 |    225
 449 | Darryl Watkins      |  27 | NOH  |     5 |     23
 450 | C.J. Watson         |  27 | CHI  |    49 |    474
 451 | Earl Watson         |  32 | UTA  |    50 |    149
 452 | Martell Webster     |  25 | MIN  |    47 |    324
 453 | David West          |  31 | IND  |    66 |    842
 454 | Delonte West        |  28 | DAL  |    44 |    421
 455 | Russell Westbrook   |  23 | OKC  |    66 |   1558
 456 | D.J. White          |  25 | CHA  |    58 |    392
 457 | Hassan Whiteside    |  22 | SAC  |    18 |     29
 458 | Chris Wilcox        |  29 | BOS  |    28 |    152
 459 | Damien Wilkins      |  32 | DET  |    60 |    193
 460 | Deron Williams      |  27 | NJN  |    55 |   1154
 461 | Derrick Williams    |  20 | MIN  |    66 |    583
 462 | Elliot Williams     |  22 | POR  |    24 |     88
 463 | Jordan Williams     |  21 | NJN  |    43 |    197
 464 | Louis Williams      |  25 | PHI  |    64 |    956
 465 | Marvin Williams     |  25 | ATL  |    57 |    579
 466 | Mo Williams         |  29 | LAC  |    52 |    685
 467 | Reggie Williams     |  25 | CHA  |    33 |    274
 468 | Sean Williams       |  25 | DAL  |     8 |     29
 469 | Shawne Williams     |  25 | NJN  |    25 |    113
 470 | Shelden Williams    |  28 | NJN  |    58 |    268
 471 | Terrence Williams   |  24 | HOU  |    12 |     54
 472 | Metta World Peace   |  32 | LAL  |    64 |    493
 473 | Brandan Wright      |  24 | DAL  |    49 |    340
 474 | Chris Wright        |  23 | GSW  |    24 |     70
 475 | Dorell Wright       |  26 | GSW  |    61 |    629
 476 | Nick Young          |  26 | WAS  |    40 |    665
 477 | Sam Young           |  26 | MEM  |    21 |     74
 478 | Thaddeus Young      |  23 | PHI  |    63 |    808
(478 rows)

nba-players=# SELECT * FROM players WHERE team = 'NYK';
 id  |       name        | age | team | games | points
-----+-------------------+-----+------+-------+--------
  17 | Carmelo Anthony   |  27 | NYK  |    55 |   1245
  26 | Renaldo Balkman   |  27 | NYK  |    14 |     42
  42 | Mike Bibby        |  33 | NYK  |    39 |    103
  85 | Tyson Chandler    |  29 | NYK  |    62 |    699
 105 | Baron Davis       |  32 | NYK  |    29 |    178
 119 | Toney Douglas     |  25 | NYK  |    38 |    237
 144 | Landry Fields     |  23 | NYK  |    66 |    580
 155 | Dan Gadzuric      |  33 | NYK  |     2 |      0
 189 | Josh Harrellson   |  22 | NYK  |    37 |    162
 237 | Jared Jeffries    |  30 | NYK  |    39 |    170
 257 | Jerome Jordan     |  25 | NYK  |    21 |     42
 278 | Jeremy Lin        |  23 | NYK  |    35 |    512
 331 | Steve Novak       |  28 | NYK  |    54 |    477
 385 | Iman Shumpert     |  21 | NYK  |    59 |    563
 395 | J.R. Smith        |  26 | NYK  |    35 |    436
 407 | Amar'e Stoudemire |  29 | NYK  |    47 |    823
 442 | Bill Walker       |  24 | NYK  |    32 |    189
(17 rows)

nba-players=# SELECT * FROM players WHERE team = 'IND' AND age < 26;
 id  |       name       | age | team | games | points
-----+------------------+-----+------+-------+--------
  91 | Darren Collison  |  24 | IND  |    60 |    621
 143 | Kyrylo Fesenko   |  25 | IND  |     3 |      8
 164 | Paul George      |  21 | IND  |    66 |    798
 203 | Roy Hibbert      |  25 | IND  |    65 |    834
 207 | George Hill      |  25 | IND  |    50 |    481
 350 | Jeff Pendergraph |  24 | IND  |    20 |     34
 357 | A.J. Price       |  25 | IND  |    44 |    172
 403 | Lance Stephenson |  21 | IND  |    42 |    106
(8 rows)

nba-players=# SELECT * FROM players ORDER BY points ASC;
 id  |        name         | age | team | games | points
-----+---------------------+-----+------+-------+--------
 324 | Hamady N'Diaye      |  25 | WAS  |     3 |      0
 155 | Dan Gadzuric        |  33 | NYK  |     2 |      0
 390 | Brian Skinner       |  35 | MEM  |     1 |      0
  41 | Keith Benson        |  23 | GSW  |     3 |      0
 417 | Malcolm Thomas      |  23 | SAS  |     3 |      1
 168 | Mickell Gladness    |  25 | MIA  |     8 |      2
 103 | Erick Dampier       |  36 | ATL  |    15 |      2
 130 | Francisco Elson     |  35 | PHI  |     5 |      2
 243 | Armon Johnson       |  22 | POR  |     1 |      2
 116 | Ike Diogu           |  28 | SAS  |     2 |      2
 147 | Jeff Foote          |  24 | NOH  |     4 |      4
 113 | Justin Dentmon      |  26 | SAS  |     2 |      4
  31 | Earl Barron         |  30 | GSW  |     2 |      4
 434 | Ben Uzoh            |  23 | CLE  |     2 |      4
 211 | Darington Hobson    |  24 | MIL  |     5 |      4
 216 | Dennis Horner       |  23 | NJN  |     8 |      5
 413 | Hasheem Thabeet     |  24 | HOU  |     5 |      6
 255 | Solomon Jones       |  27 | LAC  |    10 |      6
 427 | Ronny Turiaf        |  29 | WAS  |     4 |      6
 397 | Jerry Smith         |  24 | NJN  |     5 |      7
  24 | Kelenna Azubuike    |  28 | DAL  |     3 |      7
 143 | Kyrylo Fesenko      |  25 | IND  |     3 |      8
 366 | Ryan Reid           |  25 | OKC  |     5 |      8
 137 | Christian Eyenga    |  22 | CLE  |     6 |      9
  73 | Derrick Byars       |  27 | SAS  |     2 |     10
   3 | Blake Ahearn        |  27 | UTA  |     4 |     10
 386 | Xavier Silas        |  24 | PHI  |     2 |     11
 447 | Luke Walton         |  31 | LAL  |     9 |     12
 221 | Larry Hughes        |  33 | ORL  |     9 |     12
 262 | D.J. Kennedy        |  22 | CLE  |     2 |     12
  79 | DeMarre Carroll     |  25 | DEN  |     4 |     12
 131 | Andre Emmett        |  29 | NJN  |     6 |     13
 339 | Larry Owens         |  29 | NJN  |     7 |     13
 393 | Greg Smith          |  21 | HOU  |     8 |     14
 274 | Travis Leslie       |  21 | LAC  |    10 |     14
  10 | Morris Almond       |  26 | WAS  |     4 |     14
 431 | Edwin Ubiles        |  25 | WAS  |     4 |     14
 109 | Eric Dawson         |  27 | SAS  |     4 |     15
 150 | Courtney Fortson    |  23 | LAC  |     4 |     17
 330 | Andres Nocioni      |  32 | PHI  |    11 |     17
 314 | Jamario Moon        |  31 | CHA  |     8 |     18
 422 | Mychel Thompson     |  23 | CLE  |     5 |     18
 214 | Tyler Honeycutt     |  21 | SAC  |    15 |     20
 188 | Justin Harper       |  22 | ORL  |    14 |     20
 250 | Trey Johnson        |  27 | NOH  |    11 |     21
  50 | Keith Bogans        |  31 | NJN  |     5 |     21
   1 | Jeff Adrien         |  25 | HOU  |     8 |     21
  57 | Craig Brackins      |  24 | PHI  |    14 |     22
 449 | Darryl Watkins      |  27 | NOH  |     5 |     23
 316 | Mikki Moore         |  36 | GSW  |     7 |     24
 151 | Jeff Foster         |  35 | IND  |    11 |     25
 394 | Ishmael Smith       |  23 | GSW  |     6 |     27
 244 | Carldell Johnson    |  29 | NOH  |    15 |     27
 108 | Josh Davis          |  31 | MEM  |    15 |     28
 468 | Sean Williams       |  25 | DAL  |     8 |     29
 457 | Hassan Whiteside    |  22 | SAC  |    18 |     29
 100 | Eddy Curry          |  29 | MIA  |    14 |     30
 117 | DeSagana Diop       |  30 | CHA  |    27 |     31
  94 | Brian Cook          |  31 | LAC  |    16 |     31
 245 | Chris Johnson       |  26 | POR  |    20 |     32
 379 | Brian Scalabrine    |  33 | CHI  |    28 |     32
   4 | Solomon Alabi       |  23 | TOR  |    14 |     33
 277 | DeAndre Liggins     |  23 | ORL  |    17 |     33
 350 | Jeff Pendergraph    |  24 | IND  |    20 |     34
 231 | Damion James        |  24 | NJN  |     7 |     34
 308 | Brad Miller         |  35 | MIN  |    15 |     35
 406 | Julyan Stone        |  23 | DEN  |    22 |     36
 199 | Lazar Hayward       |  25 | OKC  |    26 |     37
  62 | Jon Brockman        |  24 | MIL  |    35 |     37
 146 | Jonny Flynn         |  22 | HOU  |    11 |     37
 297 | Eric Maynor         |  24 | OKC  |     9 |     38
  56 | Earl Boykins        |  35 | HOU  |     8 |     39
  90 | Jason Collins       |  33 | ATL  |    30 |     39
 318 | Marcus Morris       |  22 | HOU  |    17 |     40
 288 | Jamaal Magloire     |  33 | TOR  |    34 |     41
 257 | Jerome Jordan       |  25 | NYK  |    21 |     42
  26 | Renaldo Balkman     |  27 | NYK  |    14 |     42
  33 | Tony Battie         |  35 | PHI  |    27 |     42
 219 | Juwan Howard        |  38 | MIA  |    28 |     42
  78 | Brian Cardinal      |  34 | DAL  |    44 |     43
 337 | Daniel Orton        |  21 | ORL  |    16 |     45
 317 | Darius Morris       |  21 | LAL  |    19 |     46
 286 | Vernon Macklin      |  25 | DET  |    23 |     46
  81 | Anthony Carter      |  36 | TOR  |    24 |     47
 149 | T.J. Ford           |  28 | SAS  |    14 |     51
 233 | Mike James          |  36 | CHI  |    11 |     53
 261 | Jason Kapono        |  30 | LAL  |    27 |     54
 471 | Terrence Williams   |  24 | HOU  |    12 |     54
 360 | Joel Przybilla      |  32 | POR  |    27 |     55
  65 | Kwame Brown         |  29 | GSW  |     9 |     57
   5 | Cole Aldrich        |  23 | OKC  |    26 |     57
 419 | Trey Thompkins      |  21 | LAC  |    24 |     57
 325 | Eduardo Najera      |  35 | CHA  |    22 |     58
 258 | Cory Joseph         |  20 | SAS  |    29 |     58
 186 | Luke Harangody      |  24 | CLE  |    21 |     60
 133 | Jeremy Evans        |  24 | UTA  |    29 |     62
 272 | Malcolm Lee         |  21 | MIN  |    19 |     62
 382 | Josh Selby          |  20 | MEM  |    28 |     63
 126 | Jerome Dyson        |  24 | NOH  |     9 |     67
 409 | DaJuan Summers      |  24 | NOH  |    15 |     68
 474 | Chris Wright        |  23 | GSW  |    24 |     70
 182 | Hamed Haddadi       |  26 | MEM  |    35 |     70
 227 | Royal Ivey          |  30 | OKC  |    34 |     71
  19 | Gilbert Arenas      |  30 | MEM  |    17 |     72
 169 | Ryan Gomes          |  29 | LAC  |    32 |     74
 477 | Sam Young           |  26 | MEM  |    21 |     74
  86 | Wilson Chandler     |  24 | DEN  |     8 |     75
 241 | Yi Jianlian         |  24 | DAL  |    30 |     79
  43 | Andris Biedrins     |  25 | GSW  |    47 |     79
 387 | Bobby Simmons       |  31 | LAC  |    28 |     80
 193 | Terrel Harris       |  24 | MIA  |    22 |     80
 375 | Walker Russell      |  29 | DET  |    28 |     84
 445 | Ben Wallace         |  37 | DET  |    62 |     85
 253 | Dominique Jones     |  23 | DAL  |    33 |     88
 462 | Elliot Williams     |  22 | POR  |    24 |     88
 213 | Ryan Hollins        |  27 | CLE  |    24 |     89
 438 | Charlie Villanueva  |  27 | DET  |    13 |     91
 280 | Brook Lopez         |  23 | NJN  |     5 |     96
 127 | Devin Ebanks        |  22 | LAL  |    24 |     97
 389 | James Singleton     |  30 | WAS  |    12 |     98
 132 | Semih Erden         |  25 | CLE  |    28 |     99
  87 | Josh Childress      |  28 | PHO  |    34 |    100
  42 | Mike Bibby          |  33 | NYK  |    39 |    103
 135 | Reggie Evans        |  31 | LAC  |    56 |    104
 355 | Dexter Pittman      |  23 | MIA  |    35 |    106
 403 | Lance Stephenson    |  21 | IND  |    42 |    106
 402 | Jerry Stackhouse    |  37 | ATL  |    30 |    108
  71 | Jimmy Butler        |  22 | CHI  |    42 |    109
 315 | E'Twaun Moore       |  22 | BOS  |    38 |    110
  72 | Rasual Butler       |  32 | TOR  |    34 |    110
 469 | Shawne Williams     |  25 | NJN  |    25 |    113
 247 | JaJuan Johnson      |  22 | BOS  |    36 |    114
 183 | Jordan Hamilton     |  21 | DEN  |    26 |    115
 134 | Maurice Evans       |  33 | WAS  |    24 |    117
 348 | Sasha Pavlovic      |  28 | BOS  |    45 |    120
 104 | Marquis Daniels     |  31 | BOS  |    38 |    121
  88 | Earl Clark          |  24 | ORL  |    45 |    123
 333 | Jermaine O'Neal     |  33 | BOS  |    25 |    125
 342 | Jeremy Pargo        |  25 | MEM  |    44 |    126
 336 | Mehmet Okur         |  32 | NJN  |    17 |    130
 358 | Ronnie Price        |  28 | PHO  |    36 |    131
  49 | Eric Bledsoe        |  22 | LAC  |    40 |    132
 306 | Darko Milicic       |  26 | MIN  |    29 |    134
 215 | Al Horford          |  25 | ATL  |    11 |    136
  51 | Andrew Bogut        |  27 | MIL  |    12 |    136
 425 | Jamaal Tinsley      |  33 | UTA  |    37 |    137
 303 | Josh McRoberts      |  24 | LAL  |    50 |    138
 229 | Reggie Jackson      |  21 | OKC  |    45 |    140
  80 | Matt Carroll        |  31 | CHA  |    53 |    142
 404 | DeShawn Stevenson   |  30 | NJN  |    51 |    148
 451 | Earl Watson         |  32 | UTA  |    50 |    149
 205 | Cory Higgins        |  22 | CHA  |    38 |    150
  77 | Marcus Camby        |  37 | POR  |    40 |    152
 458 | Chris Wilcox        |  29 | BOS  |    28 |    152
 392 | Craig Smith         |  28 | POR  |    47 |    156
 291 | Cartier Martin      |  27 | WAS  |    17 |    158
 415 | Kurt Thomas         |  39 | POR  |    53 |    160
 405 | Greg Stiemsma       |  26 | BOS  |    55 |    161
 209 | Jordan Hill         |  24 | HOU  |    32 |    161
 189 | Josh Harrellson     |  22 | NYK  |    37 |    162
  14 | Alan Anderson       |  29 | TOR  |    17 |    163
 204 | J.J. Hickson        |  23 | SAC  |    35 |    165
 310 | Patrick Mills       |  23 | SAS  |    16 |    165
 220 | Lester Hudson       |  27 | CLE  |    13 |    165
 391 | Donald Sloan        |  24 | CLE  |    25 |    165
 416 | Lance Thomas        |  23 | NOH  |    42 |    166
 399 | Nolan Smith         |  23 | POR  |    44 |    167
 338 | Travis Outlaw       |  27 | SAC  |    39 |    167
  13 | Chris Andersen      |  33 | DEN  |    32 |    168
   7 | Lavoy Allen         |  22 | PHI  |    41 |    169
 237 | Jared Jeffries      |  30 | NYK  |    39 |    170
 312 | Nazr Mohammed       |  34 | OKC  |    63 |    171
 357 | A.J. Price          |  25 | IND  |    44 |    172
 197 | Chuck Hayes         |  28 | SAC  |    54 |    172
 192 | Manny Harris        |  22 | CLE  |    26 |    173
 174 | Andrew Goudelock    |  23 | LAL  |    40 |    175
 105 | Baron Davis         |  32 | NYK  |    29 |    178
 118 | Keyon Dooling       |  31 | BOS  |    46 |    182
 254 | James Jones         |  31 | MIA  |    51 |    185
 172 | Eric Gordon         |  23 | NOH  |     9 |    185
 378 | Larry Sanders       |  23 | MIL  |    52 |    186
 323 | Troy Murphy         |  31 | LAL  |    59 |    188
 442 | Bill Walker         |  24 | NYK  |    32 |    189
  15 | James Anderson      |  22 | SAS  |    51 |    190
 176 | Aaron Gray          |  27 | TOR  |    49 |    191
 459 | Damien Wilkins      |  32 | DET  |    60 |    193
 441 | Von Wafer           |  26 | ORL  |    33 |    194
 110 | Austin Daye         |  23 | DET  |    41 |    194
 463 | Jordan Williams     |  21 | NJN  |    43 |    197
  25 | Luke Babbitt        |  22 | POR  |    40 |    202
 381 | Thabo Sefolosha     |  27 | OKC  |    42 |    203
  75 | Will Bynum          |  29 | DET  |    36 |    204
 430 | Jeremy Tyler        |  20 | GSW  |    42 |    205
  21 | Omer Asik           |  25 | CHI  |    66 |    205
 194 | Tobias Harris       |  19 | MIL  |    42 |    208
 426 | Anthony Tolliver    |  26 | MIN  |    51 |    208
 432 | Ekpe Udoh           |  24 | GSW  |    38 |    210
  12 | Louis Amundson      |  29 | IND  |    60 |    213
 368 | Quentin Richardson  |  31 | ORL  |    48 |    215
 292 | Kenyon Martin       |  34 | LAC  |    42 |    217
 276 | Rashard Lewis       |  32 | WAS  |    28 |    217
  40 | Raja Bell           |  35 | UTA  |    34 |    217
 275 | Jon Leuer           |  22 | MIL  |    46 |    218
  18 | Joel Anthony        |  29 | MIA  |    64 |    219
 361 | Vladimir Radmanovic |  31 | ATL  |    49 |    220
  48 | Andray Blatche      |  25 | WAS  |    26 |    221
 448 | Hakim Warrick       |  29 | PHO  |    35 |    225
 302 | Dominic McGuire     |  26 | GSW  |    64 |    227
 285 | Shelvin Mack        |  22 | WAS  |    64 |    230
 158 | Francisco Garcia    |  30 | SAC  |    49 |    234
 119 | Toney Douglas       |  25 | NYK  |    38 |    237
 122 | Chris Duhon         |  29 | ORL  |    63 |    237
 309 | Mike Miller         |  31 | MIA  |    39 |    237
 321 | Timofey Mozgov      |  25 | DEN  |    44 |    239
 202 | Xavier Henry        |  20 | NOH  |    45 |    239
 352 | Johan Petro         |  26 | NJN  |    59 |    250
 145 | Derek Fisher        |  37 | LAL  |    43 |    252
 362 | Anthony Randolph    |  22 | MIN  |    34 |    252
 165 | Daniel Gibson       |  25 | CLE  |    35 |    263
 267 | Kosta Koufos        |  22 | DEN  |    48 |    263
 335 | Emeka Okafor        |  29 | NOH  |    27 |    266
 437 | Jan Vesely          |  21 | WAS  |    57 |    267
 470 | Shelden Williams    |  28 | NJN  |    58 |    268
 142 | Rudy Fernandez      |  26 | DEN  |    31 |    268
 435 | Anderson Varejao    |  29 | CLE  |    25 |    271
 356 | Quincy Pondexter    |  23 | MEM  |    64 |    271
 115 | Boris Diaw          |  29 | CHA  |    37 |    272
 301 | Tracy McGrady       |  32 | ATL  |    52 |    273
 467 | Reggie Williams     |  25 | CHA  |    33 |    274
 230 | Stephen Jackson     |  33 | MIL  |    26 |    274
  47 | Steve Blake         |  31 | LAL  |    53 |    276
 200 | Brendan Haywood     |  32 | DAL  |    54 |    281
 341 | Jannero Pargo       |  32 | ATL  |    50 |    282
 439 | Nikola Vucevic      |  21 | PHI  |    51 |    283
  92 | Nick Collison       |  31 | OKC  |    63 |    284
 180 | Donte Greene        |  23 | SAC  |    53 |    285
 294 | Roger Mason         |  31 | WAS  |    52 |    286
 354 | Mickael Pietrus     |  29 | BOS  |    42 |    289
 156 | Sundiata Gaines     |  25 | NJN  |    57 |    291
 377 | Samardo Samuels     |  23 | CLE  |    54 |    292
 238 | Charles Jenkins     |  22 | GSW  |    51 |    297
 263 | Jason Kidd          |  38 | DAL  |    48 |    299
  44 | Chauncey Billups    |  35 | LAC  |    20 |    299
 418 | Tyrus Thomas        |  25 | CHA  |    54 |    304
 260 | Enes Kanter         |  19 | UTA  |    66 |    304
 388 | Chris Singleton     |  22 | WAS  |    66 |    306
  34 | Shane Battier       |  33 | MIA  |    65 |    311
 128 | Wayne Ellington     |  24 | MIN  |    51 |    311
  95 | Daequan Cook        |  24 | OKC  |    57 |    311
 210 | Kirk Hinrich        |  31 | ATL  |    48 |    316
 279 | Shaun Livingston    |  26 | MIL  |    58 |    318
 148 | Gary Forbes         |  26 | TOR  |    48 |    319
  23 | Gustavo Ayon        |  26 | NOH  |    54 |    319
 452 | Martell Webster     |  25 | MIN  |    47 |    324
 363 | Zach Randolph       |  30 | MEM  |    28 |    324
 184 | Richard Hamilton    |  33 | CHI  |    28 |    326
  45 | Bismack Biyombo     |  19 | CHA  |    63 |    327
 351 | Kendrick Perkins    |  27 | OKC  |    65 |    329
 334 | Lamar Odom          |  32 | DAL  |    50 |    332
  99 | Dante Cunningham    |  24 | MEM  |    64 |    333
 299 | Luc Mbah a Moute    |  25 | MIL  |    43 |    333
 473 | Brandan Wright      |  24 | DAL  |    49 |    340
 376 | John Salmons        |  32 | SAC  |    46 |    344
 252 | Dahntay Jones       |  31 | IND  |    65 |    346
 281 | Robin Lopez         |  23 | PHO  |    64 |    348
 433 | Beno Udrih          |  29 | MIL  |    59 |    348
  36 | Jerryd Bayless      |  23 | TOR  |    31 |    353
 289 | Ian Mahinmi         |  25 | DAL  |    61 |    354
 196 | Spencer Hawes       |  23 | PHI  |    37 |    355
 246 | Ivan Johnson        |  27 | ATL  |    56 |    356
 343 | Anthony Parker      |  36 | CLE  |    51 |    367
 411 | Sebastian Telfair   |  26 | PHO  |    60 |    368
 284 | John Lucas          |  29 | CHI  |    49 |    369
 218 | Josh Howard         |  31 | UTA  |    43 |    372
 206 | Nene Hilario        |  29 | DEN  |    28 |    376
 236 | Richard Jefferson   |  31 | SAS  |    41 |    379
 101 | Stephen Curry       |  23 | GSW  |    26 |    383
 195 | Udonis Haslem       |  31 | MIA  |    64 |    385
 456 | D.J. White          |  25 | CHA  |    58 |    392
 251 | Wesley Johnson      |  24 | MIN  |    65 |    393
 396 | Jason Smith         |  25 | NOH  |    40 |    396
  11 | Al-Farouq Aminu     |  21 | NOH  |    66 |    399
 178 | Gerald Green        |  26 | NJN  |    31 |    400
 179 | Willie Green        |  30 | ATL  |    53 |    404
 139 | Jordan Farmar       |  25 | NJN  |    39 |    406
 106 | Ed Davis            |  22 | TOR  |    66 |    415
 364 | Michael Redd        |  32 | PHO  |    51 |    418
  53 | Trevor Booker       |  24 | WAS  |    50 |    419
 454 | Delonte West        |  28 | DAL  |    44 |    421
 296 | Jason Maxiell       |  28 | DET  |    65 |    424
  69 | Alec Burks          |  20 | UTA  |    59 |    425
  52 | Matt Bonner         |  31 | SAS  |    65 |    429
 384 | Ramon Sessions      |  25 | CLE  |    41 |    430
 373 | Ricky Rubio         |  21 | MIN  |    41 |    436
 395 | J.R. Smith          |  26 | NYK  |    35 |    436
 167 | Manu Ginobili       |  34 | SAS  |    34 |    440
  89 | Norris Cole         |  23 | MIA  |    65 |    441
  20 | Trevor Ariza        |  26 | NOH  |    41 |    444
 242 | Amir Johnson        |  24 | TOR  |    64 |    452
 383 | Kevin Seraphin      |  22 | WAS  |    57 |    453
  61 | Ronnie Brewer       |  26 | CHI  |    66 |    455
 340 | Zaza Pachulia       |  27 | ATL  |    58 |    455
  83 | Omri Casspi         |  23 | CLE  |    65 |    459
 153 | Jimmer Fredette     |  22 | SAC  |    61 |    462
  28 | Jose Barea          |  27 | MIN  |    41 |    463
 319 | Markieff Morris     |  22 | PHO  |    63 |    467
 138 | Kenneth Faried      |  22 | DEN  |    46 |    471
  38 | Rodrigue Beaubois   |  23 | DAL  |    53 |    472
 264 | Linas Kleiza        |  27 | TOR  |    49 |    473
 450 | C.J. Watson         |  27 | CHI  |    49 |    474
 331 | Steve Novak         |  28 | NYK  |    54 |    477
 287 | Corey Maggette      |  32 | CHA  |    32 |    480
 207 | George Hill         |  25 | IND  |    50 |    481
 166 | Taj Gibson          |  26 | CHI  |    63 |    484
  58 | Avery Bradley       |  21 | BOS  |    64 |    484
 300 | JaVale McGee        |  24 | WAS  |    41 |    486
 256 | DeAndre Jordan      |  23 | LAC  |    66 |    486
 111 | Carlos Delfino      |  29 | MIL  |    54 |    488
 346 | Patrick Patterson   |  22 | HOU  |    64 |    490
 102 | Samuel Dalembert    |  30 | HOU  |    65 |    490
  30 | Matt Barnes         |  31 | LAL  |    63 |    491
 472 | Metta World Peace   |  32 | LAL  |    64 |    493
 423 | Tristan Thompson    |  20 | CLE  |    60 |    494
 208 | Grant Hill          |  39 | PHO  |    49 |    499
 273 | Kawhi Leonard       |  20 | SAS  |    64 |    507
 305 | C.J. Miles          |  24 | UTA  |    56 |    508
 268 | Carl Landry         |  28 | NOH  |    41 |    511
 278 | Jeremy Lin          |  23 | NYK  |    35 |    512
  27 | Leandro Barbosa     |  29 | TOR  |    42 |    512
  64 | Derrick Brown       |  24 | CHA  |    65 |    524
  60 | Corey Brewer        |  25 | DEN  |    59 |    525
 400 | Marreese Speights   |  24 | MEM  |    60 |    526
 266 | Kyle Korver         |  30 | CHI  |    65 |    529
  22 | D.J. Augustin       |  24 | CHA  |    48 |    532
  37 | Michael Beasley     |  23 | MIN  |    47 |    541
 401 | Tiago Splitter      |  27 | SAS  |    59 |    549
  76 | Jose Calderon       |  30 | TOR  |    53 |    555
 304 | Jodie Meeks         |  24 | PHI  |    66 |    556
 240 | Jonas Jerebko       |  24 | DET  |    64 |    556
 446 | Gerald Wallace      |  29 | POR  |    42 |    557
 327 | Gary Neal           |  27 | SAS  |    56 |    557
  68 | Chase Budinger      |  23 | HOU  |    58 |    558
 385 | Iman Shumpert       |  21 | NYK  |    59 |    563
 107 | Glen Davis          |  26 | ORL  |    61 |    566
 248 | James Johnson       |  24 | TOR  |    62 |    566
   9 | Tony Allen          |  30 | MEM  |    58 |    568
 140 | Derrick Favors      |  20 | UTA  |    65 |    570
 370 | Nate Robinson       |  27 | GSW  |    51 |    570
 428 | Hedo Turkoglu       |  32 | ORL  |    53 |    576
 465 | Marvin Williams     |  25 | ATL  |    57 |    579
 144 | Landry Fields       |  23 | NYK  |    66 |    580
 420 | Jason Thompson      |  25 | SAC  |    64 |    583
 461 | Derrick Williams    |  20 | MIN  |    66 |    583
 436 | Greivis Vasquez     |  25 | NOH  |    66 |    589
 345 | Chandler Parsons    |  23 | HOU  |    63 |    599
 177 | Danny Green         |  24 | SAS  |    66 |    603
  29 | Andrea Bargnani     |  26 | TOR  |    31 |    603
 223 | Serge Ibaka         |  22 | OKC  |    66 |    603
 322 | Byron Mullens       |  22 | CHA  |    65 |    606
 429 | Evan Turner         |  23 | PHI  |    65 |    610
  46 | DeJuan Blair        |  22 | SAS  |    64 |    611
 185 | Tyler Hansbrough    |  26 | IND  |    66 |    614
  82 | Vince Carter        |  35 | DAL  |    61 |    615
 259 | Chris Kaman         |  29 | NOH  |    47 |    616
  91 | Darren Collison     |  24 | IND  |    60 |    621
  84 | Mario Chalmers      |  25 | MIA  |    64 |    627
 157 | Danilo Gallinari    |  23 | DEN  |    43 |    628
 475 | Dorell Wright       |  26 | GSW  |    61 |    629
 367 | Jason Richardson    |  31 | ORL  |    54 |    629
 371 | Rajon Rondo         |  25 | BOS  |    53 |    630
 374 | Brandon Rush        |  26 | GSW  |    65 |    634
 307 | Andre Miller        |  35 | DEN  |    66 |    639
 369 | Luke Ridnour        |  30 | MIN  |    53 |    639
 171 | Ben Gordon          |  28 | DET  |    52 |    648
  66 | Shannon Brown       |  26 | PHO  |    59 |    650
 349 | Nikola Pekovic      |  26 | MIN  |    47 |    651
 329 | Joakim Noah         |  26 | CHI  |    64 |    652
   8 | Ray Allen           |  36 | BOS  |    46 |    655
  59 | Elton Brand         |  32 | PHI  |    60 |    659
 270 | Courtney Lee        |  26 | HOU  |    58 |    660
 476 | Nick Young          |  26 | WAS  |    40 |    665
 163 | Alonzo Gee          |  24 | CLE  |    63 |    665
 290 | Shawn Marion        |  33 | DAL  |    63 |    670
 283 | Kyle Lowry          |  25 | HOU  |    47 |    670
 154 | Channing Frye       |  28 | PHO  |    64 |    674
 328 | Jameer Nelson       |  29 | ORL  |    57 |    676
 124 | Mike Dunleavy       |  31 | MIL  |    55 |    677
 293 | Kevin Martin        |  28 | HOU  |    40 |    682
 141 | Raymond Felton      |  27 | POR  |    60 |    684
 466 | Mo Williams         |  29 | LAC  |    52 |    685
  85 | Tyson Chandler      |  29 | NYK  |    62 |    699
 228 | Jarrett Jack        |  28 | NOH  |    45 |    700
  63 | MarShon Brooks      |  23 | NJN  |    56 |    708
 152 | Randy Foye          |  28 | LAC  |    65 |    712
 191 | Devin Harris        |  28 | UTA  |    63 |    715
  32 | Brandon Bass        |  26 | BOS  |    59 |    738
 320 | Anthony Morrow      |  26 | NJN  |    62 |    747
 414 | Isaiah Thomas       |  22 | SAC  |    65 |    749
 365 | J.J. Redick         |  27 | ORL  |    65 |    751
  70 | Caron Butler        |  31 | LAC  |    63 |    753
 170 | Drew Gooden         |  30 | MIL  |    56 |    766
 224 | Andre Iguodala      |  28 | PHI  |    62 |    771
 326 | Steve Nash          |  37 | PHO  |    62 |    772
 120 | Goran Dragic        |  25 | HOU  |    66 |    775
  39 | Marco Belinelli     |  25 | NOH  |    66 |    780
 198 | Gordon Hayward      |  21 | UTA  |    66 |    782
 225 | Ersan Ilyasova      |  24 | MIL  |    60 |    782
  93 | Mike Conley         |  24 | MEM  |    62 |    788
 359 | Tayshaun Prince     |  31 | DET  |    63 |    798
 164 | Paul George         |  21 | IND  |    66 |    798
 443 | Kemba Walker        |  21 | CHA  |    66 |    799
 478 | Thaddeus Young      |  23 | PHI  |    63 |    808
 129 | Monta Ellis         |  26 | GSW  |    37 |    811
 408 | Rodney Stuckey      |  25 | DET  |    55 |    812
  35 | Nicolas Batum       |  23 | POR  |    59 |    818
 407 | Amar'e Stoudemire   |  29 | NYK  |    47 |    823
 121 | Jared Dudley        |  26 | PHO  |    65 |    823
 421 | Klay Thompson       |  21 | GSW  |    66 |    826
 112 | Luol Deng           |  26 | CHI  |    54 |    828
 201 | Gerald Henderson    |  24 | CHA  |    55 |    830
 410 | Jeff Teague         |  23 | ATL  |    66 |    831
 298 | O.J. Mayo           |  24 | MEM  |    66 |    833
 203 | Roy Hibbert         |  25 | IND  |    65 |    834
  97 | Jamal Crawford      |  31 | POR  |    60 |    837
 453 | David West          |  31 | IND  |    66 |    842
 265 | Brandon Knight      |  20 | DET  |    66 |    847
 372 | Derrick Rose        |  23 | CHI  |    39 |    852
 222 | Kris Humphries      |  26 | NJN  |    62 |    855
 212 | Jrue Holiday        |  21 | PHI  |    65 |    879
 123 | Tim Duncan          |  35 | SAS  |    58 |    895
 295 | Wesley Matthews     |  25 | POR  |    66 |    904
 190 | Al Harrington       |  31 | DEN  |    64 |    910
  98 | Jordan Crawford     |  23 | WAS  |    64 |    938
   2 | Arron Afflalo       |  26 | DEN  |    62 |    943
 226 | Kyrie Irving        |  19 | CLE  |    51 |    944
 159 | Kevin Garnett       |  35 | BOS  |    60 |    947
 412 | Jason Terry         |  34 | DAL  |    63 |    950
 160 | Marc Gasol          |  27 | MEM  |    65 |    952
 424 | Marcus Thornton     |  24 | SAC  |    51 |    952
 464 | Louis Williams      |  25 | PHI  |    64 |    956
  16 | Ryan Anderson       |  23 | ORL  |    61 |    980
  54 | Carlos Boozer       |  30 | CHI  |    66 |    991
 269 | Ty Lawson           |  24 | DEN  |    61 |    999
 313 | Greg Monroe         |  21 | DET  |    66 |   1015
 173 | Marcin Gortat       |  27 | PHO  |    66 |   1017
 380 | Luis Scola          |  31 | HOU  |    66 |   1025
  55 | Chris Bosh          |  27 | MIA  |    57 |   1025
 136 | Tyreke Evans        |  22 | SAC  |    63 |   1037
 187 | James Harden        |  22 | OKC  |    62 |   1044
 114 | DeMar DeRozan       |  22 | TOR  |    63 |   1054
 311 | Paul Millsap        |  26 | UTA  |    64 |   1061
 444 | John Wall           |  21 | WAS  |    66 |   1076
 440 | Dwyane Wade         |  30 | MIA  |    49 |   1082
 344 | Tony Parker         |  29 | SAS  |    60 |   1095
 217 | Dwight Howard       |  26 | ORL  |    54 |   1113
 234 | Antawn Jamison      |  35 | CLE  |    65 |   1118
  74 | Andrew Bynum        |  24 | LAL  |    60 |   1123
 161 | Pau Gasol           |  31 | LAL  |    65 |   1129
 249 | Joe Johnson         |  30 | ATL  |    60 |   1129
 271 | David Lee           |  28 | GSW  |    57 |   1147
 460 | Deron Williams      |  27 | NJN  |    55 |   1154
 175 | Danny Granger       |  28 | IND  |    62 |   1159
  96 | DeMarcus Cousins    |  21 | SAC  |    64 |   1160
 235 | Al Jefferson        |  27 | UTA  |    61 |   1170
 353 | Paul Pierce         |  34 | BOS  |    61 |   1181
 347 | Chris Paul          |  26 | LAC  |    60 |   1189
   6 | LaMarcus Aldridge   |  26 | POR  |    55 |   1191
 162 | Rudy Gay            |  25 | MEM  |    65 |   1232
 398 | Josh Smith          |  26 | ATL  |    66 |   1239
  17 | Carmelo Anthony     |  27 | NYK  |    55 |   1245
 239 | Brandon Jennings    |  22 | MIL  |    66 |   1260
 332 | Dirk Nowitzki       |  33 | DAL  |    62 |   1342
 181 | Blake Griffin       |  22 | LAC  |    66 |   1368
 282 | Kevin Love          |  23 | MIN  |    55 |   1432
 455 | Russell Westbrook   |  23 | OKC  |    66 |   1558
  67 | Kobe Bryant         |  33 | LAL  |    58 |   1616
 232 | LeBron James        |  27 | MIA  |    62 |   1683
 125 | Kevin Durant        |  23 | OKC  |    66 |   1850
(478 rows)

nba-players=#
nba-players=#
nba-players=#
nba-players=#
nba-players=#
nba-players=# SELECT name FROM players ORDER BY (points/games) DESC LIMIT 20;
       name
-------------------
 Kevin Durant
 Kobe Bryant
 LeBron James
 Kevin Love
 Russell Westbrook
 Dwyane Wade
 Carmelo Anthony
 Monta Ellis
 LaMarcus Aldridge
 Derrick Rose
 Dirk Nowitzki
 Blake Griffin
 Deron Williams
 Dwight Howard
 David Lee
 Eric Gordon
 Andrea Bargnani
 Al Jefferson
 Paul Pierce
 Chris Paul
(20 rows)

nba-players=# SELECT name,(points/games) FROM players ORDER BY (points/games) DESC LIMIT 20;
       name        | ?column?
-------------------+----------
 Kevin Durant      |       28
 Kobe Bryant       |       27
 LeBron James      |       27
 Kevin Love        |       26
 Russell Westbrook |       23
 Dwyane Wade       |       22
 Carmelo Anthony   |       22
 Monta Ellis       |       21
 LaMarcus Aldridge |       21
 Derrick Rose      |       21
 Dirk Nowitzki     |       21
 Blake Griffin     |       20
 Deron Williams    |       20
 Dwight Howard     |       20
 David Lee         |       20
 Eric Gordon       |       20
 Andrea Bargnani   |       19
 Al Jefferson      |       19
 Paul Pierce       |       19
 Chris Paul        |       19
(20 rows)

nba-players=# SELECT name,pointPerGame = (points/games) FROM players ORDER BY (points/games) DESC LIMIT 20;
ERROR:  column "pointpergame" does not exist
LINE 1: SELECT name,pointPerGame = (points/games) FROM players ORDER...
                    ^
nba-players=# SELECT name,(points/games) FROM players ORDER BY (points/games) DESC LIMIT 20;
       name        | ?column?
-------------------+----------
 Kevin Durant      |       28
 Kobe Bryant       |       27
 LeBron James      |       27
 Kevin Love        |       26
 Russell Westbrook |       23
 Dwyane Wade       |       22
 Carmelo Anthony   |       22
 Monta Ellis       |       21
 LaMarcus Aldridge |       21
 Derrick Rose      |       21
 Dirk Nowitzki     |       21
 Blake Griffin     |       20
 Deron Williams    |       20
 Dwight Howard     |       20
 David Lee         |       20
 Eric Gordon       |       20
 Andrea Bargnani   |       19
 Al Jefferson      |       19
 Paul Pierce       |       19
 Chris Paul        |       19
(20 rows)

nba-players=# SELECT AVG(age) FROM players;
         avg
---------------------
 26.6443514644351464
(1 row)

nba-players=# SELECT AVG(age) FROM players WHERE team = 'OKC';
         avg
---------------------
 25.4000000000000000
(1 row)

nba-players=# SELECT AVG(age) FROM players WHERE games > 40;
         avg
---------------------
 26.4561403508771930
(1 row)

nba-players=# \q
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!]
$ touch nba_queries.sql
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!?]
$ subl nba_queries.sql
jayanzaman ~/documents/generalassembly/wdi-xfiles-scully/u2/d05/homework on master[!?]
$
nba-players=# SELECT team,SUM(points) FROM players GROUP BY team ORDER BY sum(points) DESC;
 team | sum
------+------
 OKC  | 6704
 DEN  | 6667
 SAS  | 6561
 PHO  | 6492
 UTA  | 6482
 MIN  | 6464
 NYK  | 6458
 MIA  | 6455
 ATL  | 6369
 SAC  | 6359
 CHI  | 6359
 DAL  | 6322
 HOU  | 6321
 MEM  | 6260
 IND  | 6253
 LAC  | 6224
 GSW  | 6200
 ORL  | 6170
 PHI  | 6140
 CLE  | 6097
 LAL  | 6090
 MIL  | 6035
 BOS  | 6009
 POR  | 6005
 DET  | 5997
 WAS  | 5971
 TOR  | 5887
 NJN  | 5856
 NOH  | 5820
 CHA  | 5739
(30 rows)

nba-players=# SELECT age,AVG(points/games) FROM players GROUP BY age ORDER BY age DESC;
 age |        avg
-----+--------------------
  39 | 6.5000000000000000
  38 | 3.5000000000000000
  37 | 4.8000000000000000
  36 | 4.8333333333333333
  35 | 6.9285714285714286
  34 | 8.8333333333333333
  33 | 6.6250000000000000
  32 | 6.0555555555555556
  31 | 6.4117647058823529
  30 | 8.0500000000000000
  29 | 7.2903225806451613
  28 | 8.3181818181818182
  27 | 9.1818181818181818
  26 | 9.7906976744186047
  25 | 6.7021276595744681
  24 | 6.6326530612244898
  23 | 8.3921568627450980
  22 | 6.3750000000000000
  21 | 7.0000000000000000
  20 | 6.3000000000000000
  19 | 7.7500000000000000
(21 rows)

nba-players=# SELECT age AS colum1,AVG(points/games) FROM players GROUP BY age ORDER BY age DESC;
 colum1 |        avg
--------+--------------------
     39 | 6.5000000000000000
     38 | 3.5000000000000000
     37 | 4.8000000000000000
     36 | 4.8333333333333333
     35 | 6.9285714285714286
     34 | 8.8333333333333333
     33 | 6.6250000000000000
     32 | 6.0555555555555556
     31 | 6.4117647058823529
     30 | 8.0500000000000000
     29 | 7.2903225806451613
     28 | 8.3181818181818182
     27 | 9.1818181818181818
     26 | 9.7906976744186047
     25 | 6.7021276595744681
     24 | 6.6326530612244898
     23 | 8.3921568627450980
     22 | 6.3750000000000000
     21 | 7.0000000000000000
     20 | 6.3000000000000000
     19 | 7.7500000000000000
(21 rows)

nba-players=# SELECT age,AVG(points/games) AS avgPointsPerGame FROM players GROUP BY age ORDER BY age DESC;
 age |  avgpointspergame
-----+--------------------
  39 | 6.5000000000000000
  38 | 3.5000000000000000
  37 | 4.8000000000000000
  36 | 4.8333333333333333
  35 | 6.9285714285714286
  34 | 8.8333333333333333
  33 | 6.6250000000000000
  32 | 6.0555555555555556
  31 | 6.4117647058823529
  30 | 8.0500000000000000
  29 | 7.2903225806451613
  28 | 8.3181818181818182
  27 | 9.1818181818181818
  26 | 9.7906976744186047
  25 | 6.7021276595744681
  24 | 6.6326530612244898
  23 | 8.3921568627450980
  22 | 6.3750000000000000
  21 | 7.0000000000000000
  20 | 6.3000000000000000
  19 | 7.7500000000000000
(21 rows)

nba-players=# SELECT team,COUNT(name) FROM players WHERE (points/games) > 12 GROUP BY team ORDER BY COUNT(name) DESC;
 team | count
------+-------
 POR  |     5
 DEN  |     5
 LAC  |     4
 NJN  |     3
 LAL  |     3
 HOU  |     3
 MIL  |     3
 GSW  |     3
 OKC  |     3
 SAC  |     3
 MIA  |     3
 NOH  |     3
 CHI  |     3
 NYK  |     3
 BOS  |     3
 WAS  |     3
 TOR  |     2
 DAL  |     2
 CLE  |     2
 ORL  |     2
 PHI  |     2
 UTA  |     2
 DET  |     2
 CHA  |     2
 MIN  |     2
 MEM  |     2
 ATL  |     2
 SAS  |     2
 IND  |     1
 PHO  |     1
(30 rows)

nba-players=# SELECT team,COUNT(name) AS numberofplayerscoringabove12points FROM players WHERE (points/games) > 12 GROUP BY team ORDER BY COUNT(name) DESC;
 team | numberofplayerscoringabove12points
------+------------------------------------
 POR  |                                  5
 DEN  |                                  5
 LAC  |                                  4
 NJN  |                                  3
 LAL  |                                  3
 HOU  |                                  3
 MIL  |                                  3
 GSW  |                                  3
 OKC  |                                  3
 SAC  |                                  3
 MIA  |                                  3
 NOH  |                                  3
 CHI  |                                  3
 NYK  |                                  3
 BOS  |                                  3
 WAS  |                                  3
 TOR  |                                  2
 DAL  |                                  2
 CLE  |                                  2
 ORL  |                                  2
 PHI  |                                  2
 UTA  |                                  2
 DET  |                                  2
 CHA  |                                  2
 MIN  |                                  2
 MEM  |                                  2
 ATL  |                                  2
 SAS  |                                  2
 IND  |                                  1
 PHO  |                                  1
(30 rows)

