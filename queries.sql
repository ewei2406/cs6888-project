query I rowsort
SELECT ALL ( + 39 ) * 15 FROM tab1
----
585
585
585

onlyif mysql # DIV for integer division: 
query I rowsort label-1
SELECT DISTINCT 20 DIV - 97 FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-1
SELECT DISTINCT 20 / - 97 FROM tab0
----
0

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE - col2 + col1 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT ALL + col1 AS col0, col2 AS col2 FROM tab1
----
14
96
47
68
5
59

onlyif mysql # aggregate syntax: 
query II rowsort label-4
SELECT + + MIN( ALL - + 32 ) AS col0, + COUNT( * ) * + COUNT( * ) FROM ( tab0 AS cor0 CROSS JOIN tab0 cor1 )
----
-32
81

skipif mysql # not compatible
query II rowsort label-4
SELECT + + MIN ( ALL - + 32 ) AS col0, + COUNT ( * ) * + COUNT ( * ) FROM ( tab0 AS cor0 CROSS JOIN tab0 cor1 )
----
-32
81

query III rowsort
SELECT + + col0 AS col0, col2, - + col2 FROM tab2 AS cor0
----
9 values hashing to 07f4d5785b161b1fdf2cce5e95bba1fd

query II rowsort
SELECT - - col0, 37 + col2 AS col2 FROM tab2 AS cor0
----
46
60
64
77
75
95

onlyif mysql # DIV for integer division: 
query I rowsort label-7
SELECT DISTINCT - col2 DIV - 46 AS col1 FROM tab1 AS cor0
----
1
2

skipif mysql # not compatible
query I rowsort label-7
SELECT DISTINCT - col2 / - 46 AS col1 FROM tab1 AS cor0
----
1
2

query I rowsort
SELECT ALL - 98 AS col1 FROM tab1 cor0
----
-98
-98
-98

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT - 78 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-10
SELECT DISTINCT - CAST( NULL AS SIGNED ) / - 0 col0 FROM tab0 AS cor0 WHERE NOT ( - CAST( NULL AS SIGNED ) ) IS NOT NULL
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-10
SELECT DISTINCT - CAST ( NULL AS INTEGER ) / - 0 col0 FROM tab0 AS cor0 WHERE NOT ( - CAST ( NULL AS INTEGER ) ) IS NOT NULL
----
NULL

onlyif mysql # aggregate syntax: 
query II rowsort label-11
SELECT - COUNT( ALL + + col1 ) AS col2, COUNT( ALL - - col1 ) FROM tab1
----
-3
3

skipif mysql # not compatible
query II rowsort label-11
SELECT - COUNT ( ALL + + col1 ) AS col2, COUNT ( ALL - - col1 ) FROM tab1
----
-3
3

onlyif mysql # DIV for integer division: 
query I rowsort label-12
SELECT - col1 DIV + - col0 * - - 36 * + col2 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-12
SELECT - col1 / + - col0 * - - 36 * + col2 FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-13
SELECT - COUNT( * ) * - 31 AS col2 FROM tab0
----
93

skipif mysql # not compatible
query I rowsort label-13
SELECT - COUNT ( * ) * - 31 AS col2 FROM tab0
----
93

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-14
SELECT ALL 81 + + - CAST( + 31 AS SIGNED ) * + 73 + - 76 AS col0, + 77 * + ( COUNT( * ) ) col2 FROM tab0 cor0
----
-2258
231

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-14
SELECT ALL 81 + + - CAST ( + 31 AS INTEGER ) * + 73 + - 76 AS col0, + 77 * + ( COUNT ( * ) ) col2 FROM tab0 cor0
----
-2258
231

query I rowsort
SELECT ALL - - 41 + + - col2 FROM tab0 AS cor0
----
-58
-6
31

query I rowsort
SELECT ALL 4 AS col1 FROM tab2 AS cor0 WHERE NULL IS NULL
----
4
4
4

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE + 69 IS NULL
----

query II rowsort
SELECT 38 AS col2, - col0 AS col2 FROM tab2 WHERE + col2 IS NOT NULL
----
38
-46
38
-64
38
-75

query I rowsort
SELECT DISTINCT + 30 AS col0 FROM tab0, tab1 AS cor0
----
30

query I rowsort
SELECT - 30 + + 5 * - ( col1 ) FROM tab2 AS cor0
----
-285
-365
-415

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE 70 IS NULL
----

query I rowsort
SELECT ALL 16 + + col2 FROM tab0 AS cor0
----
115
26
63

query I rowsort
SELECT + 84 + + + 29 AS col1 FROM tab2 AS cor0
----
113
113
113

query I rowsort
SELECT ( - - 98 ) FROM tab2 AS cor0
----
98
98
98

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL NOT IN ( + col2, - col2 * - - 87 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - col0 * - 95 - - + col0 * + 45 + - + col1 col0 FROM tab0
----
12159
13579
2019

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 9 col2 FROM tab1
----
-9
-9
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-28
SELECT SUM( + + col0 ) FROM tab0
----
199

skipif mysql # not compatible
query I rowsort label-28
SELECT SUM ( + + col0 ) FROM tab0
----
199

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + col2 * - col0 + - col2 col2 FROM tab1 WHERE NULL > + - col0 + - 72
----

query II rowsort
SELECT - 42 - col0 AS col0, col2 AS col1 FROM tab0
----
-129
10
-139
99
-57
47

query I rowsort
SELECT ALL col0 - - col1 * col0 FROM tab2
----
2392
4992
5100

query II rowsort
SELECT ALL - col2 * col1 AS col1, - 8 FROM tab1
----
-1344
-8
-295
-8
-3196
-8

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-33
SELECT ALL - - CAST( + CAST( - col0 AS SIGNED ) AS SIGNED ) AS col2 FROM tab0 cor0
----
-15
-87
-97

skipif mysql # not compatible
query I rowsort label-33
SELECT ALL - - CAST ( + CAST ( - col0 AS INTEGER ) AS INTEGER ) AS col2 FROM tab0 cor0
----
-15
-87
-97

onlyif mysql # aggregate syntax: 
query I rowsort label-34
SELECT ALL SUM( - col0 ) FROM tab0 AS cor0
----
-199

skipif mysql # not compatible
query I rowsort label-34
SELECT ALL SUM ( - col0 ) FROM tab0 AS cor0
----
-199

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-35
SELECT 45 DIV - COUNT( * ) FROM tab2 AS cor0
----
-15

skipif mysql # not compatible
query I rowsort label-35
SELECT 45 / - COUNT ( * ) FROM tab2 AS cor0
----
-15

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-36
SELECT - COUNT( * ) + CAST( + 13 AS SIGNED ) col1 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
4

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-36
SELECT - COUNT ( * ) + CAST ( + 13 AS INTEGER ) col1 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
4

query I rowsort
SELECT ( col1 ) AS col0 FROM tab0 WHERE NOT ( - + col1 ) >= NULL
----

query I rowsort
SELECT DISTINCT + 39 * col1 AS col1 FROM tab1 cor0
----
1833
195
546

query I rowsort
SELECT DISTINCT 99 * - + col2 AS col1 FROM tab2 AS cor0
----
-2277
-3960
-5742

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL <= 43
----

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT NULL BETWEEN 66 AND + + col0
----

query I rowsort
SELECT ALL + col2 * col0 * + col0 AS col0 FROM tab1 AS cor0
----
249696
426275
563108

onlyif mysql # DIV for integer division: 
query I rowsort label-43
SELECT ALL + + col0 DIV + - col1 AS col1 FROM tab0 AS cor0
----
-4
-97
0

skipif mysql # not compatible
query I rowsort label-43
SELECT ALL + + col0 / + - col1 AS col1 FROM tab0 AS cor0
----
-4
-97
0

query II rowsort
SELECT DISTINCT + col2 * + 97 * - 54, - col2 AS col0 FROM tab1 cor0
----
-309042
-59
-356184
-68
-502848
-96

query I rowsort
SELECT 82 * + 4 AS col1 FROM tab2 AS cor0
----
328
328
328

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-46
SELECT MIN( DISTINCT col1 ) * - + AVG ( DISTINCT + ( - + CAST( NULL AS SIGNED ) ) ) AS col2, COUNT( ALL - col0 ) AS col2 FROM tab2 AS cor0
----
NULL
3

skipif mysql # not compatible
query II rowsort label-46
SELECT MIN ( DISTINCT col1 ) * - + AVG ( DISTINCT + ( - + CAST ( NULL AS INTEGER ) ) ) AS col2, COUNT ( ALL - col0 ) AS col2 FROM tab2 AS cor0
----
NULL
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - col0, + 85 + - col2 col1 FROM tab1 AS cor0
----
-51
-11
-85
26
-91
17

query II rowsort
SELECT - col1, col1 AS col0 FROM tab2
----
-51
51
-67
67
-77
77

onlyif mysql # aggregate syntax: 
query I rowsort label-49
SELECT ALL MIN( ALL - - 37 ) AS col2 FROM tab2
----
37

skipif mysql # not compatible
query I rowsort label-49
SELECT ALL MIN ( ALL - - 37 ) AS col2 FROM tab2
----
37

query I rowsort
SELECT ALL col1 * + 50 * col2 FROM tab1
----
14750
159800
67200

query I rowsort
SELECT ALL col0 * - + col2 AS col0 FROM tab1
----
-4896
-5015
-6188

onlyif mysql # aggregate syntax: 
query I rowsort label-52
SELECT - COUNT( * ) AS col1 FROM tab0, tab2 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-52
SELECT - COUNT ( * ) AS col1 FROM tab0, tab2 AS cor0
----
-9

query II rowsort
SELECT col2, col0 FROM tab1
----
59
85
68
91
96
51

query I rowsort
SELECT ALL + 23 + - 42 AS col0 FROM tab2
----
-19
-19
-19

onlyif mysql # aggregate syntax: 
query I rowsort label-55
SELECT DISTINCT - SUM( DISTINCT - + col2 ) + + - 98 AS col2 FROM tab1 AS cor0
----
125

skipif mysql # not compatible
query I rowsort label-55
SELECT DISTINCT - SUM ( DISTINCT - + col2 ) + + - 98 AS col2 FROM tab1 AS cor0
----
125

onlyif mysql # aggregate syntax: 
query I rowsort label-56
SELECT 41 + + MIN( + col0 ) + + COUNT( * ) * + - 48 FROM tab0 cor0
----
-88

skipif mysql # not compatible
query I rowsort label-56
SELECT 41 + + MIN ( + col0 ) + + COUNT ( * ) * + - 48 FROM tab0 cor0
----
-88

onlyif mysql # aggregate syntax: 
query I rowsort label-57
SELECT DISTINCT + COUNT( * ) * - 88 FROM tab1 AS cor0 WHERE NOT ( NULL ) IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-57
SELECT DISTINCT + COUNT ( * ) * - 88 FROM tab1 AS cor0 WHERE NOT ( NULL ) IS NULL
----
0

query I rowsort
SELECT ALL col1 FROM tab1 AS cor0 WHERE + 55 IS NOT NULL
----
14
47
5

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-59
SELECT + + 62 AS col0, CAST( NULL AS SIGNED ) * - COUNT( * ) FROM tab0 AS cor0 WHERE 62 IN ( col0 - - 10, col1, ( - 41 ) )
----
62
NULL

skipif mysql # not compatible
query II rowsort label-59
SELECT + + 62 AS col0, CAST ( NULL AS INTEGER ) * - COUNT ( * ) FROM tab0 AS cor0 WHERE 62 IN ( col0 - - 10, col1, ( - 41 ) )
----
62
NULL

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE ( NOT ( + col0 ) NOT BETWEEN ( NULL ) AND NULL )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 75 + - col0 col1 FROM tab2 AS cor0
----
0
11
29

query III rowsort
SELECT DISTINCT * FROM tab2 cor0 WHERE + col2 < - 92 * + 57 * - col0 + col2
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL + + col1 * + - col1 + - 70 + - 99 AS col1 FROM tab2 AS cor0
----
-2770
-4658
-6098

query I rowsort
SELECT 62 - col2 + 1 AS col1 FROM tab0 AS cor0
----
-36
16
53

onlyif mysql # DIV for integer division: 
query II rowsort label-65
SELECT DISTINCT col0 DIV - col2, col0 FROM tab2 AS cor0
----
-1
64
-1
75
-2
46

skipif mysql # not compatible
query II rowsort label-65
SELECT DISTINCT col0 / - col2, col0 FROM tab2 AS cor0
----
-1
64
-1
75
-2
46

query I rowsort
SELECT - + ( - + col0 ) * + - col1 - + - 64 AS col2 FROM tab2 cor0
----
-2282
-4864
-4961

query I rowsort
SELECT + 93 + + ( - - col2 ) FROM tab0 AS cor0
----
103
140
192

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) NOT IN ( col2 + col2, col0, + 62, - col0 + col2 + col1 )
----

onlyif mysql # aggregate syntax: 
query II rowsort label-69
SELECT DISTINCT 22 + - 77 * - COUNT( + col1 ), 81 AS col1 FROM tab0
----
253
81

skipif mysql # not compatible
query II rowsort label-69
SELECT DISTINCT 22 + - 77 * - COUNT ( + col1 ), 81 AS col1 FROM tab0
----
253
81

query I rowsort
SELECT ALL col0 - - - 29 FROM tab1
----
22
56
62

query I rowsort
SELECT - - col2 * - + col1 + col1 * - col1 FROM tab2 WHERE NULL <> NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query II rowsort label-72
SELECT DISTINCT - col1 AS col2, col2 AS col2 FROM tab1 WHERE - - CAST( + - col1 AS DECIMAL ) NOT BETWEEN - col0 AND NULL
----

skipif mysql # not compatible
query II rowsort label-72
SELECT DISTINCT - col1 AS col2, col2 AS col2 FROM tab1 WHERE - - CAST ( + - col1 AS REAL ) NOT BETWEEN - col0 AND NULL
----

query I rowsort
SELECT 50 + + + col0 FROM tab1
----
101
135
141

query II rowsort
SELECT DISTINCT col2, - col0 FROM tab2
----
23
-46
40
-64
58
-75

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-75
SELECT DISTINCT + CAST( ( + SUM( - 14 ) ) AS SIGNED ) AS col0 FROM tab1
----
-42

skipif mysql # not compatible
query I rowsort label-75
SELECT DISTINCT + CAST ( ( + SUM ( - 14 ) ) AS INTEGER ) AS col0 FROM tab1
----
-42

query I rowsort
SELECT - 27 * + 32 AS col1 FROM tab0
----
-864
-864
-864

query I rowsort
SELECT DISTINCT 91 AS col0 FROM tab1 AS cor0
----
91

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT 29 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-79
SELECT ALL col2 * + CAST( + col0 AS SIGNED ) FROM tab0 cor0
----
705
870
9603

skipif mysql # not compatible
query I rowsort label-79
SELECT ALL col2 * + CAST ( + col0 AS INTEGER ) FROM tab0 cor0
----
705
870
9603

onlyif mysql # DIV for integer division: 
query I rowsort label-80
SELECT + 34 DIV + - col1 + + + col2 FROM tab1 AS cor0
----
53
68
94

skipif mysql # not compatible
query I rowsort label-80
SELECT + 34 / + - col1 + + + col2 FROM tab1 AS cor0
----
53
68
94

query III rowsort
SELECT * FROM tab1 WHERE NOT 69 > NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-82
SELECT - + MAX( DISTINCT 7 ) * 53 FROM tab1 AS cor0
----
-371

skipif mysql # not compatible
query I rowsort label-82
SELECT - + MAX ( DISTINCT 7 ) * 53 FROM tab1 AS cor0
----
-371

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + - 80 col1 FROM tab1 AS cor0
----
-80
-80
-80

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-84
SELECT + CAST( + 47 AS SIGNED ) * SUM( + 28 ) + MIN( DISTINCT + CAST( NULL AS SIGNED ) ) + COUNT( * ) AS col2 FROM tab1 AS cor0 WHERE NOT - ( + 60 ) - + - col0 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-84
SELECT + CAST ( + 47 AS INTEGER ) * SUM ( + 28 ) + MIN ( DISTINCT + CAST ( NULL AS INTEGER ) ) + COUNT ( * ) AS col2 FROM tab1 AS cor0 WHERE NOT - ( + 60 ) - + - col0 IS NOT NULL
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-85
SELECT - 62 + col1 DIV - + col0 FROM tab1 AS cor0
----
-62
-62
-62

skipif mysql # not compatible
query I rowsort label-85
SELECT - 62 + col1 / - + col0 FROM tab1 AS cor0
----
-62
-62
-62

query II rowsort
SELECT DISTINCT - col0 * 26 AS col0, - col1 AS col0 FROM tab1 AS cor0
----
-1326
-14
-2210
-5
-2366
-47

query I rowsort
SELECT + col1 + + - col2 FROM tab2
----
28
37
9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-88
SELECT DISTINCT CAST( + COUNT( * ) AS SIGNED ) col1 FROM tab1 WHERE NOT ( 78 ) IS NULL
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-88
SELECT DISTINCT CAST ( + COUNT ( * ) AS INTEGER ) col1 FROM tab1 WHERE NOT ( 78 ) IS NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-89
SELECT DISTINCT + SUM( col1 ) * - - MIN( + - col1 ) AS col0 FROM tab1
----
-3102

skipif mysql # not compatible
query I rowsort label-89
SELECT DISTINCT + SUM ( col1 ) * - - MIN ( + - col1 ) AS col0 FROM tab1
----
-3102

onlyif mysql # DIV for integer division: 
query I rowsort label-90
SELECT + col2 DIV - 11 AS col0 FROM tab0
----
-4
-9
0

skipif mysql # not compatible
query I rowsort label-90
SELECT + col2 / - 11 AS col0 FROM tab0
----
-4
-9
0

query I rowsort
SELECT DISTINCT + 62 * + + col0 AS col2 FROM tab2
----
2852
3968
4650

query III rowsort
SELECT * FROM tab2 WHERE - + col1 * - 48 * - 97 + + col1 - - - 70 * - + col1 IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-93
SELECT ALL - col1 + - 9 DIV - col2 col0 FROM tab0 AS cor0
----
-1
-21
-81

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-93
SELECT ALL - col1 + - 9 / - col2 col0 FROM tab0 AS cor0
----
-1
-21
-81

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-94
SELECT ALL + 18 * - + col1 * + - CAST( + col2 AS SIGNED ) FROM tab1 AS cor0
----
24192
5310
57528

skipif mysql # not compatible
query I rowsort label-94
SELECT ALL + 18 * - + col1 * + - CAST ( + col2 AS INTEGER ) FROM tab1 AS cor0
----
24192
5310
57528

query I rowsort
SELECT DISTINCT col0 + + col2 - + - col1 AS col0 FROM tab2 cor0
----
120
181
200

onlyif mysql # aggregate syntax: 
query II rowsort label-96
SELECT DISTINCT - + MAX( + ( - + col2 ) ) + + - SUM( ALL + 0 ) AS col0, + COUNT( * ) AS col2 FROM tab2 AS cor0
----
23
3

skipif mysql # not compatible
query II rowsort label-96
SELECT DISTINCT - + MAX ( + ( - + col2 ) ) + + - SUM ( ALL + 0 ) AS col0, + COUNT ( * ) AS col2 FROM tab2 AS cor0
----
23
3

query I rowsort
SELECT ALL - col1 + - + col1 AS col1 FROM tab0 AS cor0
----
-162
-2
-42

query I rowsort
SELECT DISTINCT col0 * - - ( + - 72 ) * - + 38 + + 19 AS col0 FROM tab0
----
238051
265411
41059

query III rowsort
SELECT * FROM tab0 WHERE + - col2 = - col2
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-100
SELECT + COUNT( * ) * + - 48 AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1 WHERE - 6 <> + 93
----
-432

skipif mysql # not compatible
query I rowsort label-100
SELECT + COUNT ( * ) * + - 48 AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1 WHERE - 6 <> + 93
----
-432

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT ( - col2 + - 39 ) IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + col2 FROM tab0 AS cor0 WHERE col1 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-103
SELECT ALL + col0 AS col1, + CAST( NULL AS SIGNED ) + + col2 FROM tab0 AS cor0
----
15
NULL
87
NULL
97
NULL

skipif mysql # not compatible
query II rowsort label-103
SELECT ALL + col0 AS col1, + CAST ( NULL AS INTEGER ) + + col2 FROM tab0 AS cor0
----
15
NULL
87
NULL
97
NULL

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query I rowsort label-104
SELECT ALL + CAST( NULL AS DECIMAL ) / - 26 + + col0 FROM tab2 AS cor0 WHERE - col1 = - col0 * 11 + - col1 * + ( CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query I rowsort label-104
SELECT ALL + CAST ( NULL AS REAL ) / - 26 + + col0 FROM tab2 AS cor0 WHERE - col1 = - col0 * 11 + - col1 * + ( CAST ( NULL AS INTEGER ) )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-105
SELECT ALL - - ( + COUNT( * ) ) AS col2 FROM tab0 AS cor0 WHERE NOT + col0 BETWEEN + 11 AND NULL
----
0

skipif mysql # not compatible
query I rowsort label-105
SELECT ALL - - ( + COUNT ( * ) ) AS col2 FROM tab0 AS cor0 WHERE NOT + col0 BETWEEN + 11 AND NULL
----
0

query II rowsort
SELECT DISTINCT + + ( + + col1 ), + 49 FROM tab2 AS cor0
----
51
49
67
49
77
49

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-107
SELECT DISTINCT + + MIN( DISTINCT - col2 ) - - 39 + - 70 DIV + - MIN( ALL + col0 ) FROM tab1 AS cor0
----
-56

skipif mysql # not compatible
query I rowsort label-107
SELECT DISTINCT + + MIN ( DISTINCT - col2 ) - - 39 + - 70 / + - MIN ( ALL + col0 ) FROM tab1 AS cor0
----
-56

onlyif mysql # aggregate syntax: 
query I rowsort label-108
SELECT + + SUM( - ( col0 ) ) FROM tab2 AS cor0
----
-185

skipif mysql # not compatible
query I rowsort label-108
SELECT + + SUM ( - ( col0 ) ) FROM tab2 AS cor0
----
-185

query I rowsort
SELECT + 26 AS col1 FROM tab0 cor0
----
26
26
26

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( + 52 = NULL )
----

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL NOT IN ( + - col2, + col2, - + 19, + + 6 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 81 col2 FROM tab0
----
81
81
81

onlyif mysql # DIV for integer division: 
query I rowsort label-113
SELECT ALL + 29 DIV - - col0 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-113
SELECT ALL + 29 / - - col0 FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-114
SELECT DISTINCT - ( + + MIN( ALL + - 41 ) ) FROM tab0
----
41

skipif mysql # not compatible
query I rowsort label-114
SELECT DISTINCT - ( + + MIN ( ALL + - 41 ) ) FROM tab0
----
41

query I rowsort
SELECT ALL 87 AS col1 FROM tab2 cor0
----
87
87
87

onlyif mysql # aggregate syntax: 
query I rowsort label-116
SELECT DISTINCT + - MIN( DISTINCT ( 23 ) ) AS col2 FROM tab1 AS cor0
----
-23

skipif mysql # not compatible
query I rowsort label-116
SELECT DISTINCT + - MIN ( DISTINCT ( 23 ) ) AS col2 FROM tab1 AS cor0
----
-23

query I rowsort
SELECT ALL - + 11 * - col2 FROM tab0 AS cor0
----
1089
110
517

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE - 64 * - col1 + + 5 IN ( - - col1 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-119
SELECT ALL CAST( - - 76 AS SIGNED ) AS col1 FROM tab0 AS cor0
----
76
76
76

skipif mysql # not compatible
query I rowsort label-119
SELECT ALL CAST ( - - 76 AS INTEGER ) AS col1 FROM tab0 AS cor0
----
76
76
76

query I rowsort
SELECT DISTINCT + - col0 + - 43 * col1 + 93 FROM tab1 AS cor0
----
-2019
-207
-560

onlyif mysql # aggregate syntax: 
query I rowsort label-121
SELECT DISTINCT + - COUNT( * ) * COUNT( * ) FROM tab0 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-121
SELECT DISTINCT + - COUNT ( * ) * COUNT ( * ) FROM tab0 AS cor0
----
-9

query I rowsort
SELECT + 73 + col0 AS col2 FROM tab0 WHERE - 76 * - 43 < - + 53
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 60 col1 FROM tab2
----
60

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-124
SELECT COUNT( * ) DIV - 24 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-124
SELECT COUNT ( * ) / - 24 FROM tab2
----
0

query I rowsort
SELECT DISTINCT col0 * ( + 65 ) FROM tab0
----
5655
6305
975

query I rowsort
SELECT DISTINCT 96 * + - 53 * + + col2 AS col2 FROM tab0
----
-239136
-503712
-50880

query I rowsort
SELECT 15 + + - 11 FROM tab1
----
4
4
4

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-128
SELECT DISTINCT * FROM tab0 cor0 WHERE NOT 43 + CAST( + col1 AS SIGNED ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-128
SELECT DISTINCT * FROM tab0 cor0 WHERE NOT 43 + CAST ( + col1 AS INTEGER ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT - col1 + - ( - 8 ) + - col1 AS col0 FROM tab0 AS cor0
----
-154
-34
6

query I rowsort
SELECT - + col0 + - ( col1 ) FROM tab1 AS cor0
----
-138
-65
-90

onlyif mysql # aggregate syntax: 
query I rowsort label-131
SELECT - 74 * - COUNT( * ) AS col1 FROM tab2 AS cor0
----
222

skipif mysql # not compatible
query I rowsort label-131
SELECT - 74 * - COUNT ( * ) AS col1 FROM tab2 AS cor0
----
222

onlyif mysql # aggregate syntax: 
query I rowsort label-132
SELECT DISTINCT - COUNT( DISTINCT 74 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
-1

skipif mysql # not compatible
query I rowsort label-132
SELECT DISTINCT - COUNT ( DISTINCT 74 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
-1

onlyif mysql # aggregate syntax: 
query I rowsort label-133
SELECT ALL - + MAX( - + col0 ) - + 61 AS col1 FROM tab0 AS cor0
----
-46

skipif mysql # not compatible
query I rowsort label-133
SELECT ALL - + MAX ( - + col0 ) - + 61 AS col1 FROM tab0 AS cor0
----
-46

query II rowsort
SELECT ALL 39, 37 AS col2 FROM tab2 AS cor0
----
39
37
39
37
39
37

query I rowsort
SELECT ALL - 56 * + + col0 + - col1 - col1 FROM tab1 cor0 WHERE - col0 IS NOT NULL
----
-2884
-4770
-5190

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query I rowsort label-136
SELECT ALL + 85 + + CAST( + + ( - CAST( NULL AS SIGNED ) ) AS DECIMAL ) FROM tab1 AS cor0 WHERE NOT ( - + 8 ) IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-136
SELECT ALL + 85 + + CAST ( + + ( - CAST ( NULL AS INTEGER ) ) AS REAL ) FROM tab1 AS cor0 WHERE NOT ( - + 8 ) IS NOT NULL
----

query I rowsort
SELECT DISTINCT col0 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-138
SELECT ALL + 48 DIV - col1 FROM tab0 AS cor0
----
-2
-48
0

skipif mysql # not compatible
query I rowsort label-138
SELECT ALL + 48 / - col1 FROM tab0 AS cor0
----
-2
-48
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 5 col0 FROM tab0 cor0
----
-5

onlyif mysql # aggregate syntax: 
query I rowsort label-140
SELECT ALL + 95 * COUNT( * ) * COUNT( * ) * - + MAX( + - col1 ) AS col2 FROM tab2
----
43605

skipif mysql # not compatible
query I rowsort label-140
SELECT ALL + 95 * COUNT ( * ) * COUNT ( * ) * - + MAX ( + - col1 ) AS col2 FROM tab2
----
43605

query III rowsort
SELECT * FROM tab2 WHERE NOT - col0 * col0 + - - col0 BETWEEN NULL AND + 17
----

query III rowsort
SELECT * FROM tab0 WHERE NOT - + col1 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT ALL * FROM tab0 WHERE ( + + col2 * - col1 ) > - col1 * - - 54
----
15
81
47
87
21
10

onlyif mysql # aggregate syntax: 
query I rowsort label-144
SELECT DISTINCT + COUNT( * ) * - - COUNT( * ) FROM tab1
----
9

skipif mysql # not compatible
query I rowsort label-144
SELECT DISTINCT + COUNT ( * ) * - - COUNT ( * ) FROM tab1
----
9

query III rowsort
SELECT * FROM tab2 WHERE NOT ( - 90 - - col1 ) IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-146
SELECT DISTINCT - 69 / + CAST( NULL AS SIGNED ) FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-146
SELECT DISTINCT - 69 / + CAST ( NULL AS INTEGER ) FROM tab0
----
NULL

query II rowsort
SELECT 14 AS col1, + col0 + + col1 + - col2 AS col2 FROM tab1
----
14
-31
14
31
14
70

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-148
SELECT DISTINCT - col1, col1 FROM tab2 WHERE CAST( NULL AS SIGNED ) > NULL
----

skipif mysql # not compatible
query II rowsort label-148
SELECT DISTINCT - col1, col1 FROM tab2 WHERE CAST ( NULL AS INTEGER ) > NULL
----

query II rowsort
SELECT - 52 AS col2, 78 * - + 35 FROM tab1
----
-52
-2730
-52
-2730
-52
-2730

query III rowsort
SELECT * FROM tab2 WHERE NOT + col1 - + col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT - + col0 * + col1 AS col2 FROM tab2 AS cor0
----
-2346
-4928
-5025

onlyif mysql # aggregate syntax: 
query I rowsort label-152
SELECT ALL - MAX( DISTINCT - 47 ) * - - COUNT( * ) FROM tab1 AS cor0
----
141

skipif mysql # not compatible
query I rowsort label-152
SELECT ALL - MAX ( DISTINCT - 47 ) * - - COUNT ( * ) FROM tab1 AS cor0
----
141

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + col1 NOT IN ( col0, 22, + col1 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-154
SELECT ALL - SUM( ALL + - 85 ) AS col2 FROM tab1
----
255

skipif mysql # not compatible
query I rowsort label-154
SELECT ALL - SUM ( ALL + - 85 ) AS col2 FROM tab1
----
255

onlyif mysql # DIV for integer division: 
query II rowsort label-155
SELECT 52 DIV + col2, + col0 col1 FROM tab1
----
0
51
0
85
0
91

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-155
SELECT 52 / + col2, + col0 col1 FROM tab1
----
0
51
0
85
0
91

onlyif mysql # aggregate syntax: 
query I rowsort label-156
SELECT ALL - COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

skipif mysql # not compatible
query I rowsort label-156
SELECT ALL - COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-157
SELECT 13 * + CAST( NULL AS SIGNED ) + + ( - + MAX( + - col1 ) ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-157
SELECT 13 * + CAST ( NULL AS INTEGER ) + + ( - + MAX ( + - col1 ) ) FROM tab1 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT - 73 + - - col2 + - col2 + + col0 AS col0 FROM tab1 AS cor0
----
-22
12
18

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE + col0 = - 86
----

query I rowsort
SELECT ALL col2 + + - 72 FROM tab0 AS cor0
----
-25
-62
27

query I rowsort
SELECT ALL + col2 + + ( 87 ) - + + 98 + - col1 * col1 FROM tab0 AS cor0
----
-442
-6525
87

query I rowsort
SELECT DISTINCT + col0 * ( 65 ) AS col0 FROM tab2 AS cor0
----
2990
4160
4875

query I rowsort
SELECT 2 FROM tab0 cor0 WHERE col2 IN ( + col1 )
----

query I rowsort
SELECT + ( col1 ) * + col2 + - col0 FROM tab1 AS cor0
----
1293
210
3105

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-165
SELECT * FROM tab1 AS cor0 WHERE NULL BETWEEN NULL AND CAST( 90 AS DECIMAL )
----

skipif mysql # not compatible
query III rowsort label-165
SELECT * FROM tab1 AS cor0 WHERE NULL BETWEEN NULL AND CAST ( 90 AS REAL )
----

query I rowsort
SELECT ALL 5 + + 36 AS col2 FROM tab1
----
41
41
41

query I rowsort
SELECT col2 * + + 45 FROM tab1
----
2655
3060
4320

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-168
SELECT DISTINCT * FROM tab2 WHERE NOT ( - + col2 ) <= CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-168
SELECT DISTINCT * FROM tab2 WHERE NOT ( - + col2 ) <= CAST ( NULL AS INTEGER )
----

query I rowsort
SELECT - col1 * - - 82 AS col1 FROM tab2
----
-4182
-5494
-6314

onlyif mysql # DIV for integer division: 
query I rowsort label-170
SELECT 10 DIV 28 FROM tab0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-170
SELECT 10 / 28 FROM tab0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-171
SELECT ALL COUNT( * ) FROM tab1 WHERE NOT col2 = - col0
----
3

skipif mysql # not compatible
query I rowsort label-171
SELECT ALL COUNT ( * ) FROM tab1 WHERE NOT col2 = - col0
----
3

query I rowsort
SELECT 36 * + 38 FROM tab0
----
1368
1368
1368

query I rowsort
SELECT col0 * - 61 AS col2 FROM tab0 AS cor0
----
-5307
-5917
-915

onlyif mysql # aggregate syntax: 
query I rowsort label-174
SELECT - COUNT( * ) - 21 FROM tab2 AS cor0
----
-24

skipif mysql # not compatible
query I rowsort label-174
SELECT - COUNT ( * ) - 21 FROM tab2 AS cor0
----
-24

query I rowsort
SELECT DISTINCT - col0 * 71 + col0 FROM tab2 AS cor0
----
-3220
-4480
-5250

onlyif mysql # aggregate syntax: 
query I rowsort label-176
SELECT MAX( - 82 ) * + COUNT( * ) FROM tab2
----
-246

skipif mysql # not compatible
query I rowsort label-176
SELECT MAX ( - 82 ) * + COUNT ( * ) FROM tab2
----
-246

onlyif mysql # aggregate syntax: 
query I rowsort label-177
SELECT DISTINCT + COUNT( * ) FROM tab2 WHERE ( NULL ) IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-177
SELECT DISTINCT + COUNT ( * ) FROM tab2 WHERE ( NULL ) IS NOT NULL
----
0

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-178
SELECT DISTINCT - MAX( ALL col1 ) DIV COUNT( * ) AS col0 FROM tab1
----
-15

skipif mysql # not compatible
query I rowsort label-178
SELECT DISTINCT - MAX ( ALL col1 ) / COUNT ( * ) AS col0 FROM tab1
----
-15

query III rowsort
SELECT * FROM tab0 WHERE NOT ( col0 * 9 ) IS NOT NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-180
SELECT + 70 * CAST( MIN( DISTINCT 74 ) AS SIGNED ) AS col2 FROM tab1
----
5180

skipif mysql # not compatible
query I rowsort label-180
SELECT + 70 * CAST ( MIN ( DISTINCT 74 ) AS INTEGER ) AS col2 FROM tab1
----
5180

onlyif mysql # aggregate syntax: 
query I rowsort label-181
SELECT - COUNT( * ) * - SUM( col0 * + col0 ) AS col2 FROM tab0
----
51609

skipif mysql # not compatible
query I rowsort label-181
SELECT - COUNT ( * ) * - SUM ( col0 * + col0 ) AS col2 FROM tab0
----
51609

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - col2 * 72 - + 8 IN ( + col1 + + ( - col1 ) )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - 30 >= col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab2 WHERE col2 + ( col2 ) * + col0 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT 45 BETWEEN - col0 AND NULL
----

query I rowsort
SELECT + 18 * - col1 + - ( - col1 ) FROM tab0 WHERE NOT col0 <= col0
----

query I rowsort
SELECT ALL col0 * + 94 + + col2 * 49 FROM tab1
----
10881
11886
9498

query I rowsort
SELECT DISTINCT + col1 * ( 75 * - ( ( 92 ) ) ) + - col1 AS col2 FROM tab1
----
-324347
-34505
-96614

query I rowsort
SELECT DISTINCT - col1 - - col2 AS col0 FROM tab0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT 20 - + col0 * 94 FROM tab0
----
-1390
-8158
-9098

query I rowsort
SELECT + 9 + 94 AS col0 FROM tab0
----
103
103
103

query I rowsort
SELECT ( - 62 ) AS col2 FROM tab0
----
-62
-62
-62

query I rowsort
SELECT DISTINCT - col0 + + 68 AS col1 FROM tab2
----
-7
22
4

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col0 + + ( - 75 ) col1 FROM tab0
----
-60
12
22

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-195
SELECT * FROM tab1 WHERE NOT + col1 * CAST( NULL AS SIGNED ) NOT BETWEEN ( + col2 * + col1 ) AND ( NULL )
----

skipif mysql # not compatible
query III rowsort label-195
SELECT * FROM tab1 WHERE NOT + col1 * CAST ( NULL AS INTEGER ) NOT BETWEEN ( + col2 * + col1 ) AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-196
SELECT DISTINCT + MIN( col2 ) AS col0 FROM tab1 WHERE 17 * col2 + col0 BETWEEN NULL AND NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-196
SELECT DISTINCT + MIN ( col2 ) AS col0 FROM tab1 WHERE 17 * col2 + col0 BETWEEN NULL AND NULL
----
NULL

query I rowsort
SELECT + 99 + 9 FROM tab2
----
108
108
108

query I rowsort
SELECT ALL - ( 62 ) FROM tab0
----
-62
-62
-62

query I rowsort
SELECT - ( + ( 43 ) ) + - col0 FROM tab1 WHERE NOT ( NULL ) BETWEEN NULL AND + 39
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-200
SELECT * FROM tab2 WHERE NOT ( - col0 / CAST( - col0 * 39 AS SIGNED ) - + 6 ) < col0
----

skipif mysql # not compatible
query III rowsort label-200
SELECT * FROM tab2 WHERE NOT ( - col0 / CAST ( - col0 * 39 AS INTEGER ) - + 6 ) < col0
----

query III rowsort
SELECT * FROM tab2 WHERE ( + 72 * col2 ) <> NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-202
SELECT ( ( - COUNT( * ) ) ) AS col0 FROM tab1 cor0
----
-3

skipif mysql # not compatible
query I rowsort label-202
SELECT ( ( - COUNT ( * ) ) ) AS col0 FROM tab1 cor0
----
-3

onlyif mysql # DIV for integer division: 
query I rowsort label-203
SELECT DISTINCT - col0 DIV + 96 col2 FROM tab0 AS cor0
----
-1
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-203
SELECT DISTINCT - col0 / + 96 col2 FROM tab0 AS cor0
----
-1
0

query I rowsort
SELECT - col2 / + col0 - 6 * col1 FROM tab0 AS cor0 WHERE NOT col1 IS NOT NULL
----

query I rowsort
SELECT col2 * - 78 FROM tab0 AS cor0
----
-3666
-7722
-780

query I rowsort
SELECT DISTINCT col2 FROM tab0 AS cor0 WHERE ( NULL ) NOT IN ( + 18 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-207
SELECT DISTINCT - MIN( ALL + col2 ) AS col0 FROM tab2
----
-23

skipif mysql # not compatible
query I rowsort label-207
SELECT DISTINCT - MIN ( ALL + col2 ) AS col0 FROM tab2
----
-23

onlyif mysql # aggregate syntax: 
query I rowsort label-208
SELECT DISTINCT - 24 * - COUNT( * ) FROM tab2
----
72

skipif mysql # not compatible
query I rowsort label-208
SELECT DISTINCT - 24 * - COUNT ( * ) FROM tab2
----
72

query I rowsort
SELECT - col2 FROM tab1 AS cor0 WHERE + col1 > NULL
----

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE col1 NOT IN ( col0 + 82 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT + 87 + col2 FROM tab1 AS cor0
----
146
155
183

onlyif mysql # aggregate syntax: 
query I rowsort label-212
SELECT ALL - + COUNT( ALL + col0 ) + - 11 col2 FROM tab0 AS cor0
----
-14

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-212
SELECT ALL - + COUNT ( ALL + col0 ) + - 11 col2 FROM tab0 AS cor0
----
-14

query I rowsort
SELECT ALL - 36 AS col2 FROM tab1 AS cor0 WHERE ( - col0 ) >= + col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-214
SELECT ALL + + COUNT( * ) + 72 FROM tab0 AS cor0
----
75

skipif mysql # not compatible
query I rowsort label-214
SELECT ALL + + COUNT ( * ) + 72 FROM tab0 AS cor0
----
75

onlyif mysql # aggregate syntax: 
query I rowsort label-215
SELECT COUNT( ALL - col1 ) AS col0 FROM tab2 cor0
----
3

skipif mysql # not compatible
query I rowsort label-215
SELECT COUNT ( ALL - col1 ) AS col0 FROM tab2 cor0
----
3

query I rowsort
SELECT ALL - col1 FROM tab0 AS cor0 WHERE ( 49 / - 86 ) IS NOT NULL
----
-1
-21
-81

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 5 col0 FROM tab2 cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT ALL + 63 FROM tab1 WHERE NOT 44 NOT BETWEEN - col0 AND - col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-219
SELECT COUNT( * ) + 39 FROM tab1 WHERE NULL IS NOT NULL
----
39

skipif mysql # not compatible
query I rowsort label-219
SELECT COUNT ( * ) + 39 FROM tab1 WHERE NULL IS NOT NULL
----
39

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-220
SELECT DISTINCT CAST( - 66 AS SIGNED ) AS col2 FROM tab0
----
-66

skipif mysql # not compatible
query I rowsort label-220
SELECT DISTINCT CAST ( - 66 AS INTEGER ) AS col2 FROM tab0
----
-66

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-221
SELECT 87 * COUNT( DISTINCT - col2 ) + + CAST( NULL AS SIGNED ) AS col0 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-221
SELECT 87 * COUNT ( DISTINCT - col2 ) + + CAST ( NULL AS INTEGER ) AS col0 FROM tab1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-222
SELECT - COUNT( * ) + 30 FROM tab1
----
27

skipif mysql # not compatible
query I rowsort label-222
SELECT - COUNT ( * ) + 30 FROM tab1
----
27

query I rowsort
SELECT col2 + 66 FROM tab2
----
106
124
89

query I rowsort
SELECT DISTINCT + 68 AS col2 FROM tab1 WHERE NOT + col2 IN ( ( col0 ) )
----
68

query I rowsort
SELECT - 50 + - 90 + col1 AS col1 FROM tab1
----
-126
-135
-93

onlyif mysql # aggregate syntax: 
query I rowsort label-226
SELECT - 49 + + + ( COUNT( * ) ) FROM tab2 cor0
----
-46

skipif mysql # not compatible
query I rowsort label-226
SELECT - 49 + + + ( COUNT ( * ) ) FROM tab2 cor0
----
-46

query I rowsort
SELECT DISTINCT col0 * - 0 + - col1 * + col1 + 14 * + 13 FROM tab1 AS cor0
----
-14
-2027
157

onlyif mysql # aggregate syntax: 
query I rowsort label-228
SELECT + MAX( - 71 ) AS col0 FROM tab1 AS cor0 WHERE col0 IS NOT NULL
----
-71

skipif mysql # not compatible
query I rowsort label-228
SELECT + MAX ( - 71 ) AS col0 FROM tab1 AS cor0 WHERE col0 IS NOT NULL
----
-71

query I rowsort
SELECT ALL - col2 + + col1 + 89 * 53 AS col2 FROM tab2 AS cor0
----
4726
4745
4754

query II rowsort
SELECT DISTINCT col2, + col1 * + + ( 23 ) * + col0 FROM tab2
----
23
53958
40
113344
58
115575

onlyif mysql # aggregate syntax: 
query I rowsort label-231
SELECT - ( + COUNT( * ) ) col1 FROM tab1
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-231
SELECT - ( + COUNT ( * ) ) col1 FROM tab1
----
-3

onlyif mysql # DIV for integer division: 
query I rowsort label-232
SELECT ALL col0 * - 50 * col0 - - col2 DIV + col0 AS col1 FROM tab2 AS cor0
----
-105800
-204800
-281250

skipif mysql # not compatible
query I rowsort label-232
SELECT ALL col0 * - 50 * col0 - - col2 / + col0 AS col1 FROM tab2 AS cor0
----
-105800
-204800
-281250

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col1 * - 86 col0 FROM tab1 cor0 WHERE NOT NULL IS NOT NULL
----
-1204
-4042
-430

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT col2 > - 4
----

query I rowsort
SELECT - col2 * - - col2 + col2 FROM tab1 AS cor0
----
-3422
-4556
-9120

query I rowsort
SELECT DISTINCT - col2 AS col1 FROM tab2 AS cor0 WHERE NOT ( NULL ) NOT IN ( 75 )
----

query I rowsort
SELECT + 85 * col1 AS col1 FROM tab1 AS cor0
----
1190
3995
425

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 59 * + col2 col1 FROM tab0 AS cor0
----
2773
5841
590

query I rowsort
SELECT DISTINCT + col1 AS col2 FROM tab2 AS cor0 WHERE NOT NULL > - col0
----

query I rowsort
SELECT col2 AS col1 FROM tab1 AS cor0 WHERE NOT - 4 + col2 IS NOT NULL
----

query I rowsort
SELECT 40 * + 79 FROM tab1
----
3160
3160
3160

onlyif mysql # aggregate syntax: 
query I rowsort label-242
SELECT ALL COUNT( * ) * - 54 col0 FROM tab1
----
-162

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-242
SELECT ALL COUNT ( * ) * - 54 col0 FROM tab1
----
-162

query II rowsort
SELECT DISTINCT ( col0 ) AS col1, 20 FROM tab1
----
51
20
85
20
91
20

onlyif mysql # aggregate syntax: 
query I rowsort label-244
SELECT DISTINCT + COUNT( * ) * + COUNT( * ) AS col1 FROM tab0
----
9

skipif mysql # not compatible
query I rowsort label-244
SELECT DISTINCT + COUNT ( * ) * + COUNT ( * ) AS col1 FROM tab0
----
9

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN - - 76 + 20 AND + 97
----

query I rowsort
SELECT ( + - col1 ) AS col0 FROM tab1
----
-14
-47
-5

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE ( NULL NOT BETWEEN 78 * col2 AND 91 )
----

query I rowsort
SELECT DISTINCT - - 72 * + col1 * - - col0 FROM tab0 cor0
----
131544
6984
87480

onlyif mysql # aggregate syntax: 
query I rowsort label-249
SELECT + - COUNT( * ) AS col0 FROM tab1 cor0 WHERE NOT ( NULL ) IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-249
SELECT + - COUNT ( * ) AS col0 FROM tab1 cor0 WHERE NOT ( NULL ) IS NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-250
SELECT ALL 84 + COUNT( * ) FROM tab2 AS cor0 WHERE NOT - col1 * 35 + col0 IS NULL
----
87

skipif mysql # not compatible
query I rowsort label-250
SELECT ALL 84 + COUNT ( * ) FROM tab2 AS cor0 WHERE NOT - col1 * 35 + col0 IS NULL
----
87

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col0 * + 88 col2 FROM tab0
----
1320
7656
8536

onlyif mysql # aggregate syntax: 
query I rowsort label-252
SELECT + COUNT( * ) FROM tab2 cor0 CROSS JOIN tab2 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-252
SELECT + COUNT ( * ) FROM tab2 cor0 CROSS JOIN tab2 AS cor1
----
9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-253
SELECT COUNT( * ) + - - ( CAST( NULL AS SIGNED ) ) AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-253
SELECT COUNT ( * ) + - - ( CAST ( NULL AS INTEGER ) ) AS col0 FROM tab0
----
NULL

query I rowsort
SELECT ALL - col0 AS col0 FROM tab1 AS cor0 WHERE NOT ( + ( - col0 ) ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-255
SELECT DISTINCT + COUNT( * ) + AVG ( col0 ) AS col1 FROM tab2 AS cor0 WHERE + ( col0 ) = + col0 * - 68
----
NULL

skipif mysql # not compatible
query I rowsort label-255
SELECT DISTINCT + COUNT ( * ) + AVG ( col0 ) AS col1 FROM tab2 AS cor0 WHERE + ( col0 ) = + col0 * - 68
----
NULL

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( col0 * col0 ) IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-257
SELECT - - COUNT( * ) + - COUNT( * ) FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-257
SELECT - - COUNT ( * ) + - COUNT ( * ) FROM tab1 AS cor0
----
0

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( col0 ) NOT IN ( + col0, 70 )
----

query I rowsort
SELECT DISTINCT + col1 + + - 67 FROM tab2 AS cor0
----
-16
0
10

onlyif mysql # aggregate syntax: 
query I rowsort label-260
SELECT DISTINCT + COUNT( * ) * + 48 + + 52 AS col1 FROM tab1 AS cor0
----
196

skipif mysql # not compatible
query I rowsort label-260
SELECT DISTINCT + COUNT ( * ) * + 48 + + 52 AS col1 FROM tab1 AS cor0
----
196

onlyif mysql # aggregate syntax: 
query I rowsort label-261
SELECT DISTINCT 67 + + ( + MAX( - + col0 ) ) FROM tab1 AS cor0
----
16

skipif mysql # not compatible
query I rowsort label-261
SELECT DISTINCT 67 + + ( + MAX ( - + col0 ) ) FROM tab1 AS cor0
----
16

onlyif mysql # aggregate syntax: 
query I rowsort label-262
SELECT - MIN( - - 26 ) col1 FROM tab0 AS cor0
----
-26

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-262
SELECT - MIN ( - - 26 ) col1 FROM tab0 AS cor0
----
-26

query II rowsort
SELECT - 85, + col0 FROM tab1
----
-85
51
-85
85
-85
91

query III rowsort
SELECT ALL * FROM tab0 WHERE NULL NOT BETWEEN 65 AND - 74
----

onlyif mysql # aggregate syntax: 
query I rowsort label-265
SELECT - SUM( col2 ) AS col0 FROM tab1
----
-223

skipif mysql # not compatible
query I rowsort label-265
SELECT - SUM ( col2 ) AS col0 FROM tab1
----
-223

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NULL > ( - ( + - col1 ) / 25 + + 39 + + 1 / + col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-267
SELECT + COUNT( * ) * + 9 FROM tab1
----
27

skipif mysql # not compatible
query I rowsort label-267
SELECT + COUNT ( * ) * + 9 FROM tab1
----
27

query I rowsort
SELECT - col0 * 54 AS col2 FROM tab2
----
-2484
-3456
-4050

query III rowsort
SELECT ALL * FROM tab2 WHERE + ( + col1 ) + - ( - col2 ) IS NULL
----

query III rowsort
SELECT ALL * FROM tab1 WHERE - ( col1 ) / col2 / - ( + + ( + col0 ) ) - + 31 BETWEEN ( 1 ) AND col2
----

query I rowsort
SELECT DISTINCT + col0 FROM tab1 WHERE col1 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + - 77 col1 FROM tab1 AS cor0
----
-77
-77
-77

query III rowsort
SELECT ALL - ( + - col1 ) AS col0, + col1 * - col2 + col0, + - col1 AS col1 FROM tab2 cor0
----
9 values hashing to a83240d972f4da3888170f68a3e7b409

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 7 col2 FROM tab1 AS cor0
----
7

query II rowsort
SELECT + col1 * - col0, + col0 + + 61 + col0 AS col2 FROM tab0 cor0 WHERE NOT ( NOT NULL IS NOT NULL )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-276
SELECT - - MIN( DISTINCT ( + 54 ) ) * + - CAST( NULL AS SIGNED ) * CAST( NULL AS SIGNED ) + + MIN( DISTINCT ( + col1 ) ) FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-276
SELECT - - MIN ( DISTINCT ( + 54 ) ) * + - CAST ( NULL AS INTEGER ) * CAST ( NULL AS INTEGER ) + + MIN ( DISTINCT ( + col1 ) ) FROM tab2 AS cor0
----
NULL

query I rowsort
SELECT + + 38 AS col1 FROM tab0 cor0
----
38
38
38

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - + ( + 93 ) * + 54 * + 7 col2 FROM tab0 AS cor0
----
-35154
-35154
-35154

query I rowsort
SELECT + col0 AS col2 FROM tab0 cor0 WHERE NOT ( NOT - 76 IS NULL )
----

query I rowsort
SELECT DISTINCT - + 35 AS col2 FROM tab2 AS cor0
----
-35

query I rowsort
SELECT + + col2 * - 27 + + 39 FROM tab0 AS cor0
----
-1230
-231
-2634

query I rowsort
SELECT ALL - col1 * 23 AS col0 FROM tab2
----
-1173
-1541
-1771

query I rowsort
SELECT ALL 63 * col2 AS col0 FROM tab1
----
3717
4284
6048

query III rowsort
SELECT * FROM tab0 WHERE NOT + col2 * - col2 >= NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-285
SELECT ALL - CAST( NULL AS SIGNED ) * - - 78 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-285
SELECT ALL - CAST ( NULL AS INTEGER ) * - - 78 FROM tab1
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 37 * + - col1 col0 FROM tab2
----
-1887
-2479
-2849

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - col2 col0 FROM tab0 WHERE NOT + col1 + - ( - - 73 ) IS NULL
----
10
47
99

query I rowsort
SELECT ALL + 14 AS col2 FROM tab1 WHERE - ( + - 40 ) IS NOT NULL
----
14
14
14

onlyif mysql # aggregate syntax: 
query I rowsort label-289
SELECT - SUM( DISTINCT - - 71 ) AS col2 FROM tab2 cor0
----
-71

skipif mysql # not compatible
query I rowsort label-289
SELECT - SUM ( DISTINCT - - 71 ) AS col2 FROM tab2 cor0
----
-71

query I rowsort
SELECT ALL - - col1 AS col1 FROM tab1 AS cor0 WHERE ( col2 ) NOT IN ( + 90, + 68 )
----
14
5

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query II rowsort label-291
SELECT - 50 * - CAST( NULL AS DECIMAL ) + - COUNT( * ) AS col0, 68 + - 4 FROM tab2 AS cor0
----
NULL
64

skipif mysql # not compatible
query II rowsort label-291
SELECT - 50 * - CAST ( NULL AS REAL ) + - COUNT ( * ) AS col0, 68 + - 4 FROM tab2 AS cor0
----
NULL
64

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-292
SELECT - 4 * col2 + + CAST( - col0 AS SIGNED ) + + 38 * - col2 FROM tab2 AS cor0
----
-1012
-1744
-2511

skipif mysql # not compatible
query I rowsort label-292
SELECT - 4 * col2 + + CAST ( - col0 AS INTEGER ) + + 38 * - col2 FROM tab2 AS cor0
----
-1012
-1744
-2511

query II rowsort
SELECT DISTINCT + col1, col2 AS col0 FROM tab0 AS cor0 WHERE NOT 51 IS NOT NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-294
SELECT DISTINCT + CAST( NULL AS DECIMAL ) * + + 22 AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-294
SELECT DISTINCT + CAST ( NULL AS REAL ) * + + 22 AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

query I rowsort
SELECT col1 FROM tab2 WHERE ( ( NOT ( NULL BETWEEN NULL AND ( - col2 ) ) ) )
----

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NULL NOT BETWEEN ( - + col2 * - + 36 ) AND - col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-297
SELECT + MAX( DISTINCT ( - col0 ) ) FROM tab1 AS cor0
----
-51

skipif mysql # not compatible
query I rowsort label-297
SELECT + MAX ( DISTINCT ( - col0 ) ) FROM tab1 AS cor0
----
-51

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE + 44 * - col0 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL + 78 + + col0 FROM tab0 AS cor0
----
165
175
93

onlyif mysql # aggregate syntax: 
query I rowsort label-300
SELECT SUM( DISTINCT + col1 ) * - 22 - - ( - COUNT( * ) ) col0 FROM tab1 AS cor0
----
-1455

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-300
SELECT SUM ( DISTINCT + col1 ) * - 22 - - ( - COUNT ( * ) ) col0 FROM tab1 AS cor0
----
-1455

onlyif mysql # aggregate syntax: 
query I rowsort label-301
SELECT - - COUNT( * ) AS col1 FROM tab1 AS cor0 WHERE ( NULL ) <> NULL
----
0

skipif mysql # not compatible
query I rowsort label-301
SELECT - - COUNT ( * ) AS col1 FROM tab1 AS cor0 WHERE ( NULL ) <> NULL
----
0

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NULL = col1
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE ( - + col1 ) + - + col0 * - + col1 > + col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT DISTINCT + - 69 + + + ( - + col2 ) * + col2, col2 FROM tab2 AS cor0
----
-1669
40
-3433
58
-598
23

query I rowsort
SELECT ALL - col2 * + col2 - + - 51 * + - col1 * - col1 + + col2 FROM tab1 AS cor0
----
-2147
108103
876

query I rowsort
SELECT ALL - 69 + - col1 AS col1 FROM tab2 cor0
----
-120
-136
-146

onlyif mysql # aggregate syntax: 
query I rowsort label-307
SELECT DISTINCT COUNT( + col1 ) + SUM( DISTINCT + col2 ) AS col0 FROM tab1
----
226

skipif mysql # not compatible
query I rowsort label-307
SELECT DISTINCT COUNT ( + col1 ) + SUM ( DISTINCT + col2 ) AS col0 FROM tab1
----
226

onlyif mysql # aggregate syntax: 
query I rowsort label-308
SELECT COUNT( * ) FROM tab0 WHERE + col0 * - col2 + col1 * - - col1 + 24 NOT IN ( - col0 )
----
3

skipif mysql # not compatible
query I rowsort label-308
SELECT COUNT ( * ) FROM tab0 WHERE + col0 * - col2 + col1 * - - col1 + 24 NOT IN ( - col0 )
----
3

query I rowsort
SELECT ALL col0 - col0 * - 40 * - + 86 + + ( - col1 ) FROM tab0
----
-299214
-333584
-51666

onlyif mysql # aggregate syntax: 
query I rowsort label-310
SELECT DISTINCT + MAX( + col1 ) + - 89 AS col1 FROM tab0
----
-8

skipif mysql # not compatible
query I rowsort label-310
SELECT DISTINCT + MAX ( + col1 ) + - 89 AS col1 FROM tab0
----
-8

query II rowsort
SELECT DISTINCT + col1 * 13 * + col1 AS col2, col0 - + + 28 FROM tab2
----
33813
18
58357
47
77077
36

query I rowsort
SELECT ALL - - col0 + col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
102
170
182

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col0 - + col1 col1 FROM tab2
----
-13
-5
8

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-314
SELECT ALL 79 * 85 - - CAST( NULL AS DECIMAL ) AS col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-314
SELECT ALL 79 * 85 - - CAST ( NULL AS REAL ) AS col2 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-315
SELECT + 76 DIV - 19 FROM tab2
----
-4
-4
-4

skipif mysql # not compatible
query I rowsort label-315
SELECT + 76 / - 19 FROM tab2
----
-4
-4
-4

query I rowsort
SELECT 82 * - col2 * - col0 AS col0 FROM tab0
----
57810
71340
787446

onlyif mysql # aggregate syntax: 
query I rowsort label-317
SELECT - MAX( ALL - - 51 ) col0 FROM tab1
----
-51

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-317
SELECT - MAX ( ALL - - 51 ) col0 FROM tab1
----
-51

query I rowsort
SELECT DISTINCT col2 * - col1 AS col0 FROM tab0 AS cor0 WHERE NULL IS NULL
----
-210
-3807
-99

query I rowsort
SELECT - 90 * - col2 AS col0 FROM tab0 AS cor0
----
4230
8910
900

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( - 43 <= NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-321
SELECT - col0 + + CAST( NULL AS SIGNED ) AS col2 FROM tab0 AS cor0 WHERE NOT ( NOT + - CAST( NULL AS SIGNED ) NOT IN ( col0 / CAST( col2 AS SIGNED ) - + col1 ) )
----

skipif mysql # not compatible
query I rowsort label-321
SELECT - col0 + + CAST ( NULL AS INTEGER ) AS col2 FROM tab0 AS cor0 WHERE NOT ( NOT + - CAST ( NULL AS INTEGER ) NOT IN ( col0 / CAST ( col2 AS INTEGER ) - + col1 ) )
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT 75 NOT IN ( 66 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT 27 AS col2, + col1 * - + col2 * + 58 col1 FROM tab0
----
27
-12180
27
-220806
27
-5742

onlyif mysql # aggregate syntax: 
query I rowsort label-324
SELECT DISTINCT COUNT( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-324
SELECT DISTINCT COUNT ( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + col1 + - 91 col0 FROM tab1 cor0 WHERE ( col2 ) IS NULL
----

query I rowsort
SELECT + + ( 37 ) FROM tab0 AS cor0
----
37
37
37

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + col0 * - col0 IS NOT NULL
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT + col1 + - + 52 <> NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + + 30 * - + col2 col1 FROM tab2 AS cor0 WHERE NOT col2 IS NULL
----
-1200
-1740
-690

onlyif mysql # aggregate syntax: 
query I rowsort label-330
SELECT DISTINCT - - COUNT( + 10 ) FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-330
SELECT DISTINCT - - COUNT ( + 10 ) FROM tab0 AS cor0
----
3

query I rowsort
SELECT - 36 + + col1 AS col1 FROM tab0 AS cor0
----
-15
-35
45

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-332
SELECT * FROM tab2 WHERE NOT + col2 NOT IN ( - col0 * - - col2 - - CAST( + 20 AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-332
SELECT * FROM tab2 WHERE NOT + col2 NOT IN ( - col0 * - - col2 - - CAST ( + 20 AS INTEGER ) )
----

query I rowsort
SELECT ALL + 96 AS col2 FROM tab0
----
96
96
96

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + 37 col0 FROM tab2
----
37

query I rowsort
SELECT - 56 AS col0 FROM tab0 WHERE NOT + - 66 IS NOT NULL
----

query I rowsort
SELECT + ( - - col0 ) AS col1 FROM tab1
----
51
85
91

onlyif mysql # aggregate syntax: 
query I rowsort label-337
SELECT DISTINCT - MAX( col2 ) FROM tab0
----
-99

skipif mysql # not compatible
query I rowsort label-337
SELECT DISTINCT - MAX ( col2 ) FROM tab0
----
-99

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + col2 * - col0 AS col0, - col0 col1 FROM tab2
----
-1058
-46
-2560
-64
-4350
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-339
SELECT DISTINCT + MIN( - + col0 ) FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-339
SELECT DISTINCT + MIN ( - + col0 ) FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-340
SELECT ALL + CAST( NULL AS SIGNED ) * col2 + + - col0 + + col1 + col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-340
SELECT ALL + CAST ( NULL AS INTEGER ) * col2 + + - col0 + + col1 + col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE + 44 IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-342
SELECT - ( CAST( COUNT( * ) AS SIGNED ) ) FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-342
SELECT - ( CAST ( COUNT ( * ) AS INTEGER ) ) FROM tab0 AS cor0
----
-3

query I rowsort
SELECT ( + - ( + 95 ) ) AS col0 FROM tab1 AS cor0
----
-95
-95
-95

query I rowsort
SELECT DISTINCT col2 * 38 + - ( - col0 ) FROM tab2 cor0
----
1584
2279
920

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + col2 + + ( + + col0 ) col1 FROM tab0 AS cor0
----
196
62
97

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-346
SELECT DISTINCT + - 15 FROM tab2 AS cor0 WHERE NOT col2 + - CAST( NULL AS SIGNED ) IS NULL
----

skipif mysql # not compatible
query I rowsort label-346
SELECT DISTINCT + - 15 FROM tab2 AS cor0 WHERE NOT col2 + - CAST ( NULL AS INTEGER ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-347
SELECT ALL - COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NOT 10 / 61 IS NULL
----
-3

skipif mysql # not compatible
query I rowsort label-347
SELECT ALL - COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NOT 10 / 61 IS NULL
----
-3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + col1 col2, + 84 FROM tab0 AS cor0
----
1
84
21
84
81
84

onlyif mysql # DIV for integer division: 
query I rowsort label-349
SELECT DISTINCT col1 + - col2 DIV - + col2 FROM tab0 AS cor0
----
2
22
82

skipif mysql # not compatible
query I rowsort label-349
SELECT DISTINCT col1 + - col2 / - + col2 FROM tab0 AS cor0
----
2
22
82

query I rowsort
SELECT DISTINCT + col2 + 88 + - + col1 AS col2 FROM tab0 AS cor0
----
186
54
77

query I rowsort
SELECT DISTINCT 38 + ( - + col2 ) AS col0 FROM tab2
----
-2
-20
15

query III rowsort
SELECT ALL * FROM tab2 WHERE ( 43 ) BETWEEN col2 + - - 2 AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-353
SELECT + 86 - CAST( NULL AS SIGNED ) FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-353
SELECT + 86 - CAST ( NULL AS INTEGER ) FROM tab2
----
NULL
NULL
NULL

query II rowsort
SELECT col1 - - col2 AS col1, + 10 AS col1 FROM tab0
----
100
10
128
10
31
10

query I rowsort
SELECT ALL + ( col2 ) - + 57 FROM tab1
----
11
2
39

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-356
SELECT - 53 - - + CAST( + + col1 AS SIGNED ) - - col0 AS col2 FROM tab2
----
44
88
89

skipif mysql # not compatible
query I rowsort label-356
SELECT - 53 - - + CAST ( + + col1 AS INTEGER ) - - col0 AS col2 FROM tab2
----
44
88
89

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-357
SELECT ALL * FROM tab0 WHERE - - ( - CAST( NULL AS SIGNED ) ) / - - col2 >= NULL
----

skipif mysql # not compatible
query III rowsort label-357
SELECT ALL * FROM tab0 WHERE - - ( - CAST ( NULL AS INTEGER ) ) / - - col2 >= NULL
----

query I rowsort
SELECT - col1 AS col1 FROM tab1 WHERE 5 IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-359
SELECT ALL ( + CAST( + COUNT( * ) AS SIGNED ) ) AS col1 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-359
SELECT ALL ( + CAST ( + COUNT ( * ) AS INTEGER ) ) AS col1 FROM tab2
----
3

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT 31 * - - 88 BETWEEN - - 57 AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-361
SELECT DISTINCT COUNT( * ) * - 16 + + MAX( ALL - col2 ) AS col1 FROM tab2 AS cor0
----
-71

skipif mysql # not compatible
query I rowsort label-361
SELECT DISTINCT COUNT ( * ) * - 16 + + MAX ( ALL - col2 ) AS col1 FROM tab2 AS cor0
----
-71

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-362
SELECT - - CAST( - + COUNT( * ) AS SIGNED ) AS col2 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-362
SELECT - - CAST ( - + COUNT ( * ) AS INTEGER ) AS col2 FROM tab2 AS cor0
----
-3

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NULL ) > + col0
----

query I rowsort
SELECT - + ( + 5 ) FROM tab0 AS cor0
----
-5
-5
-5

query I rowsort
SELECT col0 * + - 94 AS col2 FROM tab0 AS cor0
----
-1410
-8178
-9118

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( 75 ) IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT ( ( col1 ) ) BETWEEN col1 * - col2 AND 49 / - - col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 94 * - 45 col0 FROM tab2 AS cor0
----
4230
4230
4230

query II rowsort
SELECT ALL + col0 AS col0, - col2 FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( 84 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-370
SELECT ALL + col0 DIV - col0 FROM tab2 AS cor0 WHERE ( NULL ) IS NULL
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-370
SELECT ALL + col0 / - col0 FROM tab2 AS cor0 WHERE ( NULL ) IS NULL
----
-1
-1
-1

onlyif mysql # aggregate syntax: 
query I rowsort label-371
SELECT ALL - MAX( + col0 ) FROM tab1 AS cor0
----
-91

skipif mysql # not compatible
query I rowsort label-371
SELECT ALL - MAX ( + col0 ) FROM tab1 AS cor0
----
-91

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-372
SELECT - - CAST( NULL AS SIGNED ) * + 59 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-372
SELECT - - CAST ( NULL AS INTEGER ) * + 59 FROM tab1 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE NOT NULL <> - col0
----

query II rowsort
SELECT ALL col0 AS col2, + col0 * 56 AS col0 FROM tab1
----
51
2856
85
4760
91
5096

query I rowsort
SELECT 42 + - + 51 * + col2 AS col1 FROM tab0
----
-2355
-468
-5007

query I rowsort
SELECT - col2 + - - col0 FROM tab1 cor0
----
-45
23
26

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT NULL <= 99
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + 19 + + + 48 col1 FROM tab2 WHERE ( NULL ) NOT BETWEEN + col1 AND - col2
----

query II rowsort
SELECT + 82 * - col1, col2 AS col1 FROM tab2
----
-4182
23
-5494
58
-6314
40

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL AND - col0 * - + 72 IS NULL
----

query I rowsort
SELECT ALL - col1 + col2 * col0 AS col0 FROM tab2 AS cor0
----
1007
2483
4283

onlyif mysql # aggregate syntax: 
query I rowsort label-382
SELECT COUNT( * ) AS col1 FROM tab0 AS cor0 WHERE + ( - - col0 ) IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-382
SELECT COUNT ( * ) AS col1 FROM tab0 AS cor0 WHERE + ( - - col0 ) IS NULL
----
0

query II rowsort
SELECT ALL - 20 + - - col2 AS col0, col1 AS col2 FROM tab1 AS cor0
----
39
5
48
47
76
14

query III rowsort
SELECT * FROM tab0 cor0 WHERE col0 NOT IN ( - col2 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT - ( - col1 ) * - + 66 FROM tab0
----
-1386
-5346
-66

onlyif mysql # aggregate syntax: 
query I rowsort label-386
SELECT DISTINCT SUM( DISTINCT + + 52 ) col2 FROM tab1
----
52

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-386
SELECT DISTINCT SUM ( DISTINCT + + 52 ) col2 FROM tab1
----
52

onlyif mysql # aggregate syntax: 
query II rowsort label-387
SELECT ALL COUNT( * ) AS col1, 83 * - 65 FROM tab0
----
3
-5395

skipif mysql # not compatible
query II rowsort label-387
SELECT ALL COUNT ( * ) AS col1, 83 * - 65 FROM tab0
----
3
-5395

query I rowsort
SELECT + - 18 * + 21 FROM tab1 AS cor0
----
-378
-378
-378

query II rowsort
SELECT DISTINCT col1, 13 * col1 FROM tab0 AS cor0
----
1
13
21
273
81
1053

query I rowsort
SELECT DISTINCT - + col0 FROM tab1 WHERE - col1 + + col0 < col2
----
-51
-91

query III rowsort
SELECT ALL * FROM tab2 WHERE - col1 BETWEEN ( - + 17 ) AND - 68
----

query I rowsort
SELECT ALL - - 72 AS col2 FROM tab0 AS cor0
----
72
72
72

onlyif mysql # aggregate syntax: 
query I rowsort label-393
SELECT DISTINCT + SUM( + col0 ) FROM tab2 cor0
----
185

skipif mysql # not compatible
query I rowsort label-393
SELECT DISTINCT + SUM ( + col0 ) FROM tab2 cor0
----
185

onlyif mysql # aggregate syntax: 
query I rowsort label-394
SELECT 62 + COUNT( + - col1 ) AS col2 FROM tab2 cor0 WHERE NOT ( 73 ) IS NULL
----
65

skipif mysql # not compatible
query I rowsort label-394
SELECT 62 + COUNT ( + - col1 ) AS col2 FROM tab2 cor0 WHERE NOT ( 73 ) IS NULL
----
65

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT - 97 IS NOT NULL
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( + 56 ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-397
SELECT + SUM( DISTINCT + + col2 ) AS col2 FROM tab2
----
121

skipif mysql # not compatible
query I rowsort label-397
SELECT + SUM ( DISTINCT + + col2 ) AS col2 FROM tab2
----
121

query II rowsort
SELECT ALL - 22 AS col2, col2 * 47 + + col0 + - + col2 * + - col1 FROM tab1
----
-22
3153
-22
5907
-22
6483

onlyif mysql # aggregate syntax: 
query I rowsort label-399
SELECT ALL + MIN( DISTINCT col1 ) FROM tab0
----
1

skipif mysql # not compatible
query I rowsort label-399
SELECT ALL + MIN ( DISTINCT col1 ) FROM tab0
----
1

query I rowsort
SELECT ALL 68 + col1 + + + 63 FROM tab2
----
182
198
208

query I rowsort
SELECT DISTINCT - col2 + + - col2 AS col0 FROM tab2 AS cor0 WHERE NOT col1 <= NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-402
SELECT ALL 21 * - col1 DIV + + col1 + + - col1 + - col2 FROM tab0 AS cor0
----
-121
-149
-52

skipif mysql # not compatible
query I rowsort label-402
SELECT ALL 21 * - col1 / + + col1 + + - col1 + - col2 FROM tab0 AS cor0
----
-121
-149
-52

query I rowsort
SELECT ALL + col0 + - - 55 AS col0 FROM tab2 AS cor0
----
101
119
130

query I rowsort
SELECT + 77 FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to 051bf10c50e061d74ad0a4d205a1c622

query I rowsort
SELECT col0 + + + col1 - - col2 FROM tab1 AS cor0 WHERE NULL IS NULL
----
149
161
206

onlyif mysql # DIV for integer division: 
query II rowsort label-406
SELECT ALL + col0, col2 DIV - - col1 AS col2 FROM tab0 cor0
----
15
0
87
0
97
99

skipif mysql # not compatible
query II rowsort label-406
SELECT ALL + col0, col2 / - - col1 AS col2 FROM tab0 cor0
----
15
0
87
0
97
99

onlyif mysql # aggregate syntax: 
query I rowsort label-407
SELECT - COUNT( + col1 ) FROM tab0 cor0
----
-3

skipif mysql # not compatible
query I rowsort label-407
SELECT - COUNT ( + col1 ) FROM tab0 cor0
----
-3

query I rowsort
SELECT ALL + col1 + - col0 + + - col1 + + col2 * + 84 - - 88 AS col1 FROM tab2 AS cor0 WHERE - col0 IS NOT NULL
----
1974
3384
4885

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT - ( + col1 ) IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query II rowsort
SELECT DISTINCT + col1, - col1 FROM tab2 AS cor0
----
51
-51
67
-67
77
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-411
SELECT DISTINCT MIN( DISTINCT + col2 ) FROM tab1
----
59

skipif mysql # not compatible
query I rowsort label-411
SELECT DISTINCT MIN ( DISTINCT + col2 ) FROM tab1
----
59

query III rowsort
SELECT ALL * FROM tab2 WHERE NULL BETWEEN ( + col0 + - 78 ) AND + col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-413
SELECT ALL COUNT( DISTINCT 76 ) AS col1 FROM tab0
----
1

skipif mysql # not compatible
query I rowsort label-413
SELECT ALL COUNT ( DISTINCT 76 ) AS col1 FROM tab0
----
1

query I rowsort
SELECT + ( + col2 ) FROM tab1 WHERE NOT NULL >= + col0
----

query I rowsort
SELECT DISTINCT - 84 AS col1 FROM tab1
----
-84

query I rowsort
SELECT DISTINCT + col2 * + col0 * - col0 AS col2 FROM tab0 AS cor0
----
-10575
-75690
-931491

query I rowsort
SELECT ALL + col1 FROM tab0 AS cor0 WHERE 66 <> NULL
----

query II rowsort
SELECT + col0, - 47 + - col2 FROM tab2 AS cor0 WHERE NOT col0 * - - col0 - - 57 BETWEEN NULL AND + - 18 - + 12
----
46
-70
64
-87
75
-105

query I rowsort
SELECT - + col2 * + ( - col1 ) AS col2 FROM tab2 AS cor0
----
1173
3080
3886

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-420
SELECT ALL col2 * + col2 * - CAST( NULL AS SIGNED ) * - 67 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-420
SELECT ALL col2 * + col2 * - CAST ( NULL AS INTEGER ) * - 67 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT 53 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----

query II rowsort
SELECT + - col0 + col1 AS col2, - col0 FROM tab2 WHERE NOT NULL <= NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-423
SELECT DISTINCT + CAST( NULL AS SIGNED ) * + col1 FROM tab2 WHERE NOT NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-423
SELECT DISTINCT + CAST ( NULL AS INTEGER ) * + col1 FROM tab2 WHERE NOT NULL IS NOT NULL
----
NULL

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE 29 * - 84 IS NULL
----

query II rowsort
SELECT + col1, + 94 * + 73 FROM tab0 AS cor0
----
1
6862
21
6862
81
6862

query I rowsort
SELECT ALL ( - col2 ) + - + col1 AS col2 FROM tab0 AS cor0
----
-100
-128
-31

query II rowsort
SELECT - 74, + col0 FROM tab2 cor0
----
-74
46
-74
64
-74
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-428
SELECT + CAST( + 82 AS SIGNED ) AS col1 FROM tab0 AS cor0
----
82
82
82

skipif mysql # not compatible
query I rowsort label-428
SELECT + CAST ( + 82 AS INTEGER ) AS col1 FROM tab0 AS cor0
----
82
82
82

query I rowsort
SELECT DISTINCT - col1 + - 10 FROM tab2 AS cor0
----
-61
-77
-87

onlyif mysql # aggregate syntax: 
query I rowsort label-430
SELECT DISTINCT + COUNT( * ) + - COUNT( * ) col0 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-430
SELECT DISTINCT + COUNT ( * ) + - COUNT ( * ) col0 FROM tab1 AS cor0
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-431
SELECT ALL - - ( + 16 ) * CAST( 90 AS SIGNED ) AS col0, 64 FROM tab0 AS cor0
----
1440
64
1440
64
1440
64

skipif mysql # not compatible
query II rowsort label-431
SELECT ALL - - ( + 16 ) * CAST ( 90 AS INTEGER ) AS col0, 64 FROM tab0 AS cor0
----
1440
64
1440
64
1440
64

query I rowsort
SELECT ( 85 ) AS col1 FROM tab1, tab2 AS cor0
----
9 values hashing to aafa8e5cfb9e02cea8717833e7581f7b

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - 54 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-434
SELECT DISTINCT ( - 20 ) * - CAST( + col2 AS SIGNED ) * - col0 + - col1 FROM tab2
----
-21211
-51277
-87067

skipif mysql # not compatible
query I rowsort label-434
SELECT DISTINCT ( - 20 ) * - CAST ( + col2 AS INTEGER ) * - col0 + - col1 FROM tab2
----
-21211
-51277
-87067

onlyif mysql # aggregate syntax: 
query I rowsort label-435
SELECT ALL + 25 * COUNT( * ) FROM tab1
----
75

skipif mysql # not compatible
query I rowsort label-435
SELECT ALL + 25 * COUNT ( * ) FROM tab1
----
75

query II rowsort
SELECT DISTINCT - ( - 13 ) * - col2 + + ( - col1 ) AS col0, 2 + + 25 AS col2 FROM tab0
----
-1288
27
-151
27
-692
27

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 + 59 * + - 92 - - col1 col0 FROM tab1
----
-5465
-5472
-5508

query I rowsort
SELECT - 45 FROM tab0 WHERE - col0 IS NOT NULL
----
-45
-45
-45

query I rowsort
SELECT ALL + col1 + - - 76 FROM tab2 AS cor0
----
127
143
153

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-440
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT CAST( NULL AS SIGNED ) IS NULL
----

skipif mysql # not compatible
query III rowsort label-440
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT CAST ( NULL AS INTEGER ) IS NULL
----

query I rowsort
SELECT ALL col2 * + ( 51 ) - + - 95 AS col0 FROM tab0
----
2492
5144
605

query I rowsort
SELECT 74 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to 2ccf8ef3f477e1a1a3e30c8b8154ff31

query I rowsort
SELECT + + 53 * + - col0 AS col2 FROM tab2 AS cor0
----
-2438
-3392
-3975

onlyif mysql # aggregate syntax: 
query I rowsort label-444
SELECT - MAX( DISTINCT + + 73 ) AS col2 FROM tab1 AS cor0
----
-73

skipif mysql # not compatible
query I rowsort label-444
SELECT - MAX ( DISTINCT + + 73 ) AS col2 FROM tab1 AS cor0
----
-73

query I rowsort
SELECT DISTINCT - 75 AS col0 FROM tab1 cor0 WHERE NOT + 68 * - col0 <> - 37
----

onlyif mysql # aggregate syntax: 
query I rowsort label-446
SELECT + - COUNT( - col2 ) AS col2 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-446
SELECT + - COUNT ( - col2 ) AS col2 FROM tab2 AS cor0
----
-3

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-447
SELECT DISTINCT + CAST( COUNT( * ) AS SIGNED ) FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-447
SELECT DISTINCT + CAST ( COUNT ( * ) AS INTEGER ) FROM tab1 AS cor0
----
3

query I rowsort
SELECT ALL ( - 64 ) FROM tab0 AS cor0
----
-64
-64
-64

onlyif mysql # aggregate syntax: 
query I rowsort label-449
SELECT ALL + MAX( ALL - - col2 ) AS col2 FROM tab0 AS cor0
----
99

skipif mysql # not compatible
query I rowsort label-449
SELECT ALL + MAX ( ALL - - col2 ) AS col2 FROM tab0 AS cor0
----
99

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-450
SELECT ALL + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-450
SELECT ALL + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT ALL + col0, col0 AS col1 FROM tab1
----
51
51
85
85
91
91

query II rowsort
SELECT DISTINCT - 71 AS col1, 62 AS col1 FROM tab0
----
-71
62

onlyif mysql # aggregate syntax: 
query II rowsort label-453
SELECT 78 AS col2, COUNT( * ) FROM tab2
----
78
3

skipif mysql # not compatible
query II rowsort label-453
SELECT 78 AS col2, COUNT ( * ) FROM tab2
----
78
3

onlyif mysql # aggregate syntax: 
query II rowsort label-454
SELECT + COUNT( * ) col0, + 98 + + COUNT( * ) FROM tab1
----
3
101

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-454
SELECT + COUNT ( * ) col0, + 98 + + COUNT ( * ) FROM tab1
----
3
101

query II rowsort
SELECT ALL - col0 AS col2, - 83 AS col0 FROM tab2
----
-46
-83
-64
-83
-75
-83

onlyif mysql # aggregate syntax: 
query I rowsort label-456
SELECT - - SUM( col1 ) col1 FROM tab0 cor0
----
103

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-456
SELECT - - SUM ( col1 ) col1 FROM tab0 cor0
----
103

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE ( NULL ) <= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-458
SELECT DISTINCT + + COUNT( ALL - col0 ) AS col0 FROM tab1 cor0
----
3

skipif mysql # not compatible
query I rowsort label-458
SELECT DISTINCT + + COUNT ( ALL - col0 ) AS col0 FROM tab1 cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-459
SELECT + + MAX( col0 ) AS col0 FROM tab2 AS cor0
----
75

skipif mysql # not compatible
query I rowsort label-459
SELECT + + MAX ( col0 ) AS col0 FROM tab2 AS cor0
----
75

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col0 * + 80 AS col0, + col1 col1 FROM tab1
----
-4080
14
-6800
5
-7280
47

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-461
SELECT ALL + CAST( NULL AS SIGNED ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

skipif mysql # not compatible
query I rowsort label-461
SELECT ALL + CAST ( NULL AS INTEGER ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

query I rowsort
SELECT ALL - 27 AS col1 FROM tab2 WHERE NOT - col1 IS NULL
----
-27
-27
-27

query I rowsort
SELECT ALL 9 * + - col2 AS col1 FROM tab2
----
-207
-360
-522

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-464
SELECT DISTINCT SUM( DISTINCT - 71 ) + + - CAST( + + COUNT( * ) AS SIGNED ) col2 FROM tab1 AS cor0 CROSS JOIN tab1 cor1
----
-80

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-464
SELECT DISTINCT SUM ( DISTINCT - 71 ) + + - CAST ( + + COUNT ( * ) AS INTEGER ) col2 FROM tab1 AS cor0 CROSS JOIN tab1 cor1
----
-80

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( + col1 IN ( 70, 18 ) )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-466
SELECT DISTINCT - + ( - 51 ) + + + COUNT( * ) col2 FROM tab1 AS cor0
----
54

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-466
SELECT DISTINCT - + ( - 51 ) + + + COUNT ( * ) col2 FROM tab1 AS cor0
----
54

onlyif mysql # aggregate syntax: 
query I rowsort label-467
SELECT DISTINCT - 91 * COUNT( * ) - - 52 + - MIN( ( col1 ) ) FROM tab1 cor0
----
-226

skipif mysql # not compatible
query I rowsort label-467
SELECT DISTINCT - 91 * COUNT ( * ) - - 52 + - MIN ( ( col1 ) ) FROM tab1 cor0
----
-226

query I rowsort
SELECT DISTINCT - - 78 + ( - + col1 ) AS col0 FROM tab0 AS cor0
----
-3
57
77

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 52 + + + col1 + + + col2 * - - col2 col2 FROM tab2 cor0
----
1625
3379
528

query I rowsort
SELECT ALL + col1 * 30 FROM tab0
----
2430
30
630

onlyif mysql # aggregate syntax: 
query I rowsort label-471
SELECT DISTINCT MAX( ALL + 82 ) * 3 col1 FROM tab0
----
246

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-471
SELECT DISTINCT MAX ( ALL + 82 ) * 3 col1 FROM tab0
----
246

query I rowsort
SELECT - col0 * 25 FROM tab1
----
-1275
-2125
-2275

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-473
SELECT DISTINCT - + COUNT( * ) DIV - 48 FROM tab1 WHERE NOT - col2 + - 89 NOT BETWEEN + 80 + + 28 AND + col0 * - col0
----
0

skipif mysql # not compatible
query I rowsort label-473
SELECT DISTINCT - + COUNT ( * ) / - 48 FROM tab1 WHERE NOT - col2 + - 89 NOT BETWEEN + 80 + + 28 AND + col0 * - col0
----
0

query I rowsort
SELECT ALL - 76 + col0 AS col1 FROM tab1
----
-25
15
9

query I rowsort
SELECT ( + col2 ) - 95 AS col0 FROM tab0
----
-48
-85
4

query I rowsort
SELECT ALL + ( ( + - col1 ) ) FROM tab0
----
-1
-21
-81

query I rowsort
SELECT DISTINCT 76 AS col0 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
76

query I rowsort
SELECT DISTINCT col1 FROM tab0 AS cor0 WHERE NOT + col2 + - 10 / col1 IS NULL
----
1
21
81

query I rowsort
SELECT col2 * 57 + + - col1 FROM tab1 AS cor0
----
3358
3829
5458

onlyif mysql # aggregate syntax: 
query I rowsort label-480
SELECT DISTINCT - + SUM( + - 79 ) FROM tab0 AS cor0
----
237

skipif mysql # not compatible
query I rowsort label-480
SELECT DISTINCT - + SUM ( + - 79 ) FROM tab0 AS cor0
----
237

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE NOT + 80 - 86 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT + 54 * + ( col2 ) AS col1 FROM tab1 AS cor0
----
3186
3672
5184

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-483
SELECT col0 * CAST( + col2 AS SIGNED ) AS col1 FROM tab2
----
1058
2560
4350

skipif mysql # not compatible
query I rowsort label-483
SELECT col0 * CAST ( + col2 AS INTEGER ) AS col1 FROM tab2
----
1058
2560
4350

query I rowsort
SELECT + + col2 * 30 FROM tab1 WHERE NOT + ( col0 ) IS NOT NULL
----

query III rowsort
SELECT * FROM tab0 WHERE NOT ( NULL <> NULL )
----

query I rowsort
SELECT + 45 AS col1 FROM tab2
----
45
45
45

query II rowsort
SELECT DISTINCT + - 47 + col1 - - col2, col0 * - col0 FROM tab1 cor0 WHERE NOT col0 IS NOT NULL
----

query I rowsort
SELECT DISTINCT col1 + 92 * ( - col1 ) FROM tab1 AS cor0
----
-1274
-4277
-455

onlyif mysql # aggregate syntax: 
query I rowsort label-489
SELECT + ( + 26 ) + COUNT( col0 ) * - - 34 AS col1 FROM tab2 cor0
----
128

skipif mysql # not compatible
query I rowsort label-489
SELECT + ( + 26 ) + COUNT ( col0 ) * - - 34 AS col1 FROM tab2 cor0
----
128

query I rowsort
SELECT - 92 AS col1 FROM ( tab1 AS cor0 CROSS JOIN tab2 AS cor1 )
----
9 values hashing to 1af709a79a3e56281ffdce4d931d5965

query III rowsort
SELECT * FROM tab2 WHERE NULL NOT BETWEEN + ( + col0 ) AND NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 91 * + col1 col1 FROM tab1
----
1274
4277
455

query I rowsort
SELECT ALL - col0 AS col0 FROM tab2 WHERE ( col2 ) <> 92 * col2
----
-46
-64
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-494
SELECT DISTINCT + COUNT( + col2 ) FROM tab0 WHERE NULL IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-494
SELECT DISTINCT + COUNT ( + col2 ) FROM tab0 WHERE NULL IS NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-495
SELECT + ( - COUNT( * ) ) col1 FROM tab0 cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-495
SELECT + ( - COUNT ( * ) ) col1 FROM tab0 cor0
----
-3

query I rowsort
SELECT + 5 * + ( + + 59 ) FROM tab1 cor0
----
295
295
295

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-497
SELECT + + col2 * - col1 + - CAST( NULL AS SIGNED ) AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-497
SELECT + + col2 * - col1 + - CAST ( NULL AS INTEGER ) AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-498
SELECT ALL - 44 DIV - COUNT( * ) + MAX( DISTINCT - col0 ) * MIN( - - 24 ) AS col2 FROM tab2 AS cor0
----
-1090

skipif mysql # not compatible
query I rowsort label-498
SELECT ALL - 44 / - COUNT ( * ) + MAX ( DISTINCT - col0 ) * MIN ( - - 24 ) AS col2 FROM tab2 AS cor0
----
-1090

query I rowsort
SELECT - + 19 - col0 FROM tab1 AS cor0
----
-104
-110
-70

query I rowsort
SELECT DISTINCT col2 FROM tab1 cor0 WHERE - col1 IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: DECIMAL type: 
query I rowsort label-501
SELECT ALL + 69 - + COUNT( * ) + + CAST( + 87 AS DECIMAL ) - + CAST( - CAST( NULL AS SIGNED ) AS SIGNED ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-501
SELECT ALL + 69 - + COUNT ( * ) + + CAST ( + 87 AS REAL ) - + CAST ( - CAST ( NULL AS INTEGER ) AS INTEGER ) FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT - col0 + - 17 * 76 * col0 AS col0 FROM tab0 cor0
----
-112491
-125421
-19395

query I rowsort
SELECT DISTINCT 96 + - col2 + - 99 FROM tab1 AS cor0
----
-62
-71
-99

query I rowsort
SELECT ALL 10 + 76 * 69 FROM tab0
----
5254
5254
5254

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-505
SELECT - + CAST( NULL AS SIGNED ) AS col1 FROM tab0 WHERE + col2 / + + 60 - + col2 + + col2 + - 84 + col1 * - col2 IS NOT NULL
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-505
SELECT - + CAST ( NULL AS INTEGER ) AS col1 FROM tab0 WHERE + col2 / + + 60 - + col2 + + col2 + - 84 + col1 * - col2 IS NOT NULL
----
NULL
NULL
NULL

query I rowsort
SELECT - ( + col1 ) + col0 * col2 AS col2 FROM tab2
----
1007
2483
4283

query I rowsort
SELECT ALL + 88 FROM tab1 WHERE col1 * - col1 > NULL
----

query III rowsort
SELECT ALL * FROM tab0 WHERE NULL IN ( - - 42, col2 / - col0, ( col0 ), + col2 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-509
SELECT DISTINCT col0 * CAST( - col1 AS SIGNED ) AS col0, + col2 AS col0 FROM tab2
----
-2346
23
-4928
40
-5025
58

skipif mysql # not compatible
query II rowsort label-509
SELECT DISTINCT col0 * CAST ( - col1 AS INTEGER ) AS col0, + col2 AS col0 FROM tab2
----
-2346
23
-4928
40
-5025
58

query II rowsort
SELECT - 52 * col2 + + col1, ( + + col0 ) FROM tab2 AS cor0
----
-1145
46
-2003
64
-2949
75

query I rowsort
SELECT DISTINCT + col0 FROM tab1 cor0 WHERE NOT col1 + 26 NOT BETWEEN + col1 + - col2 + - 97 AND NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-512
SELECT ALL ( CAST( NULL AS SIGNED ) ) * ( + ( COUNT( * ) ) ) + COUNT( * ) AS col0 FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-512
SELECT ALL ( CAST ( NULL AS INTEGER ) ) * ( + ( COUNT ( * ) ) ) + COUNT ( * ) AS col0 FROM tab2 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-513
SELECT ALL MAX( DISTINCT - + 94 ) AS col1 FROM tab0
----
-94

skipif mysql # not compatible
query I rowsort label-513
SELECT ALL MAX ( DISTINCT - + 94 ) AS col1 FROM tab0
----
-94

query I rowsort
SELECT - 10 * + col1 AS col0 FROM tab2
----
-510
-670
-770

query I rowsort
SELECT ALL + 43 AS col2 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to 199105619049271147956de52e7f5ed4

query II rowsort
SELECT - - col0 AS col1, ( + col2 ) FROM tab0 AS cor0
----
15
47
87
10
97
99

query II rowsort
SELECT ALL - + col1 AS col1, + col1 AS col0 FROM tab2 cor0
----
-51
51
-67
67
-77
77

onlyif mysql # DIV for integer division: 
query I rowsort label-518
SELECT DISTINCT col1 * - ( + col2 ) DIV - + col2 + + col1 col0 FROM tab0 AS cor0
----
162
2
42

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-518
SELECT DISTINCT col1 * - ( + col2 ) / - + col2 + + col1 col0 FROM tab0 AS cor0
----
162
2
42

query I rowsort
SELECT ALL - col1 AS col0 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN - col2 + + col2 AND + + col2
----

query I rowsort
SELECT DISTINCT - - col0 * - 27 FROM tab0 AS cor0
----
-2349
-2619
-405

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT col2, - col2 col2 FROM tab0 WHERE NOT 43 IS NULL
----
10
-10
47
-47
99
-99

query I rowsort
SELECT DISTINCT - 15 AS col0 FROM tab1
----
-15

onlyif mysql # aggregate syntax: 
query I rowsort label-523
SELECT COUNT( * ) + COUNT( * ) AS col0 FROM tab2 WHERE NOT NULL IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-523
SELECT COUNT ( * ) + COUNT ( * ) AS col0 FROM tab2 WHERE NOT NULL IS NULL
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-524
SELECT + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-524
SELECT + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT + 59 AS col1 FROM tab0
----
59
59
59

query III rowsort
SELECT * FROM tab2 WHERE NOT col1 = col1 - col1
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT + - col1 FROM tab1 WHERE - + ( - + col2 ) = + col2
----
-14
-47
-5

query I rowsort
SELECT ALL col2 + + 80 AS col1 FROM tab2 cor0
----
103
120
138

onlyif mysql # aggregate syntax: 
query I rowsort label-529
SELECT SUM( 29 ) * + 65 col1 FROM tab2 cor0
----
5655

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-529
SELECT SUM ( 29 ) * + 65 col1 FROM tab2 cor0
----
5655

onlyif mysql # aggregate syntax: 
query I rowsort label-530
SELECT - COUNT( * ) AS col0 FROM tab1 cor0 WHERE ( col1 * - 81 ) IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-530
SELECT - COUNT ( * ) AS col0 FROM tab1 cor0 WHERE ( col1 * - 81 ) IS NULL
----
0

query I rowsort
SELECT ALL col1 + + 1 FROM tab1 AS cor0
----
15
48
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-532
SELECT ALL - + CAST( NULL AS SIGNED ) + col1 AS col0 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-532
SELECT ALL - + CAST ( NULL AS INTEGER ) + col1 AS col0 FROM tab1 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT - col1 <= + col1
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-534
SELECT COUNT( * ) FROM tab0 AS cor0 WHERE NULL BETWEEN + CAST( col2 AS SIGNED ) - ( - - ( + 82 ) ) * 97 + + col1 AND NULL
----
0

skipif mysql # not compatible
query I rowsort label-534
SELECT COUNT ( * ) FROM tab0 AS cor0 WHERE NULL BETWEEN + CAST ( col2 AS INTEGER ) - ( - - ( + 82 ) ) * 97 + + col1 AND NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-535
SELECT DISTINCT MIN( ALL - + col1 ) FROM tab0 AS cor0
----
-81

skipif mysql # not compatible
query I rowsort label-535
SELECT DISTINCT MIN ( ALL - + col1 ) FROM tab0 AS cor0
----
-81

query I rowsort
SELECT ALL - col0 + - + ( - - ( + col0 ) ) FROM tab2 cor0
----
-128
-150
-92

query II rowsort
SELECT + col2, col0 * - col1 FROM tab2 AS cor0
----
23
-2346
40
-4928
58
-5025

onlyif mysql # DIV for integer division: 
query II rowsort label-538
SELECT DISTINCT + 12 - + col2 DIV + col1 AS col0, ( 42 ) FROM tab1 AS cor0
----
1
42
11
42
6
42

skipif mysql # not compatible
query II rowsort label-538
SELECT DISTINCT + 12 - + col2 / + col1 AS col0, ( 42 ) FROM tab1 AS cor0
----
1
42
11
42
6
42

onlyif mysql # aggregate syntax: 
query I rowsort label-539
SELECT MAX( + 82 ) FROM tab2
----
82

skipif mysql # not compatible
query I rowsort label-539
SELECT MAX ( + 82 ) FROM tab2
----
82

onlyif mysql # aggregate syntax: 
query I rowsort label-540
SELECT - COUNT( + col2 ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-540
SELECT - COUNT ( + col2 ) FROM tab2
----
-3

query I rowsort
SELECT ALL - 88 + + - col0 * - col0 FROM tab0
----
137
7481
9321

onlyif mysql # aggregate syntax: 
query I rowsort label-542
SELECT DISTINCT ( - SUM( col1 ) ) FROM tab2
----
-195

skipif mysql # not compatible
query I rowsort label-542
SELECT DISTINCT ( - SUM ( col1 ) ) FROM tab2
----
-195

query I rowsort
SELECT - 93 * 62 - - ( col1 ) FROM tab2
----
-5689
-5699
-5715

query II rowsort
SELECT ( - + col1 ) - ( col1 ) + + 85 * - - 55, - 55 * + ( + + col1 ) AS col2 FROM tab2
----
4521
-4235
4541
-3685
4573
-2805

query III rowsort
SELECT * FROM tab1 WHERE + col0 = - 31
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT col2 <> + - 30 * + + col2
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN ( + - 67 ) AND - ( - + col2 ) * - 25
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + col1 = 65 * + col0 * col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-549
SELECT + col0 + + col1, 61 AS col2 FROM tab0 AS cor0 WHERE NOT col1 * - CAST( + + col2 AS SIGNED ) IS NULL
----
108
61
96
61
98
61

skipif mysql # not compatible
query II rowsort label-549
SELECT + col0 + + col1, 61 AS col2 FROM tab0 AS cor0 WHERE NOT col1 * - CAST ( + + col2 AS INTEGER ) IS NULL
----
108
61
96
61
98
61

query I rowsort
SELECT ALL col1 * - col0 + col1 FROM tab2 AS cor0
----
-2295
-4851
-4958

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-551
SELECT + MAX( ALL + 35 ) DIV + 89 col0 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-551
SELECT + MAX ( ALL + 35 ) / + 89 col0 FROM tab1 AS cor0
----
0

query II rowsort
SELECT + col0, - col1 AS col2 FROM tab0 AS cor0
----
15
-81
87
-21
97
-1

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT ( ( NOT 87 <= - - ( + col1 ) ) )
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT col0 + - col1 * col1 BETWEEN NULL AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-555
SELECT ALL + CAST( ( + 99 ) AS SIGNED ) FROM tab2 AS cor0
----
99
99
99

skipif mysql # not compatible
query I rowsort label-555
SELECT ALL + CAST ( ( + 99 ) AS INTEGER ) FROM tab2 AS cor0
----
99
99
99

query I rowsort
SELECT + 56 * ( - 40 ) AS col2 FROM tab1 AS cor0
----
-2240
-2240
-2240

onlyif mysql # DIV for integer division: 
query I rowsort label-557
SELECT ALL + 39 DIV col0 FROM tab1 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-557
SELECT ALL + 39 / col0 FROM tab1 AS cor0
----
0
0
0

query I rowsort
SELECT - 63 * - ( + - 77 ) FROM tab2 AS cor0
----
-4851
-4851
-4851

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 47 col2 FROM tab2 cor0
----
47
47
47

onlyif mysql # DIV for integer division: 
query I rowsort label-560
SELECT + 68 DIV - - col1 FROM tab1 AS cor0
----
1
13
4

skipif mysql # not compatible
query I rowsort label-560
SELECT + 68 / - - col1 FROM tab1 AS cor0
----
1
13
4

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-561
SELECT 35 DIV + MAX( DISTINCT col2 ) AS col1 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-561
SELECT 35 / + MAX ( DISTINCT col2 ) AS col1 FROM tab1
----
0

query I rowsort
SELECT ALL col0 * + + 22 AS col0 FROM tab2
----
1012
1408
1650

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-563
SELECT AVG ( DISTINCT + CAST( NULL AS SIGNED ) ) / CAST( - + 77 AS SIGNED ) + - 47 AS col1 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-563
SELECT AVG ( DISTINCT + CAST ( NULL AS INTEGER ) ) / CAST ( - + 77 AS INTEGER ) + - 47 AS col1 FROM tab1
----
NULL

onlyif mysql # aggregate syntax: 
query II rowsort label-564
SELECT ALL + COUNT( * ) AS col2, 38 AS col0 FROM tab1
----
3
38

skipif mysql # not compatible
query II rowsort label-564
SELECT ALL + COUNT ( * ) AS col2, 38 AS col0 FROM tab1
----
3
38

query I rowsort
SELECT DISTINCT - 48 + - - col1 AS col0 FROM tab2
----
19
29
3

query I rowsort
SELECT + 16 + + + col1 * col1 + col0 FROM tab0 AS cor0
----
114
544
6592

query IIIIII rowsort
SELECT DISTINCT * FROM tab1, tab0 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
54 values hashing to 058438fde5fb838f23bcbdd39266ddcf

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 26 * col1 col0 FROM tab0
----
2106
26
546

onlyif mysql # aggregate syntax: 
query I rowsort label-569
SELECT DISTINCT MIN( DISTINCT - col0 ) FROM tab2
----
-75

skipif mysql # not compatible
query I rowsort label-569
SELECT DISTINCT MIN ( DISTINCT - col0 ) FROM tab2
----
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-570
SELECT - COUNT( * ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
-9

skipif mysql # not compatible
query I rowsort label-570
SELECT - COUNT ( * ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
-9

onlyif mysql # DIV for integer division: 
query I rowsort label-571
SELECT + col1 DIV + + 19 FROM tab1
----
0
0
2

skipif mysql # not compatible
query I rowsort label-571
SELECT + col1 / + + 19 FROM tab1
----
0
0
2

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT NULL < NULL
----

query I rowsort
SELECT ALL + col1 * - col0 + - 1 * + + col0 AS col0 FROM tab0 AS cor0
----
-1230
-1914
-194

onlyif mysql # aggregate syntax: 
query I rowsort label-574
SELECT COUNT( * ) + + 84 col2 FROM tab0 AS cor0
----
87

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-574
SELECT COUNT ( * ) + + 84 col2 FROM tab0 AS cor0
----
87

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 46 col2 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT col2 + + col2 * - + col2 FROM tab1 AS cor0
----
-3422
-4556
-9120

onlyif mysql # DIV for integer division: 
query I rowsort label-577
SELECT DISTINCT col0 * - 55 * - 51 + - col2 DIV col2 + - col0 col2 FROM tab0 AS cor0
----
243947
271987
42059

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-577
SELECT DISTINCT col0 * - 55 * - 51 + - col2 / col2 + - col0 col2 FROM tab0 AS cor0
----
243947
271987
42059

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-578
SELECT DISTINCT + col2, col0 - + col1 * + CAST( + + col2 AS SIGNED ) - - CAST( - - col2 AS SIGNED ) AS col1 FROM tab0
----
10
-113
47
-3745
99
97

skipif mysql # not compatible
query II rowsort label-578
SELECT DISTINCT + col2, col0 - + col1 * + CAST ( + + col2 AS INTEGER ) - - CAST ( - - col2 AS INTEGER ) AS col1 FROM tab0
----
10
-113
47
-3745
99
97

query II rowsort
SELECT ALL col1 AS col0, col2 FROM tab2
----
51
23
67
58
77
40

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE - ( - + col0 ) IS NULL
----

query I rowsort
SELECT DISTINCT - + 11 FROM tab2 cor0
----
-11

onlyif mysql # aggregate syntax: 
query I rowsort label-582
SELECT ALL COUNT( + 57 ) AS col1 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-582
SELECT ALL COUNT ( + 57 ) AS col1 FROM tab0
----
3

query II rowsort
SELECT ALL + 31, - 57 AS col2 FROM tab0 WHERE - col2 IS NOT NULL
----
31
-57
31
-57
31
-57

query I rowsort
SELECT ALL + - col1 FROM tab0 WHERE + ( + 65 ) * - col1 BETWEEN + 31 + col1 - 61 + - 69 * col1 AND NULL
----

query II rowsort
SELECT col1 AS col2, 10 + - col1 AS col1 FROM tab0 AS cor0
----
1
9
21
-11
81
-71

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-586
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL NOT IN ( col1, - CAST( NULL AS SIGNED ) * + + col0 * + 92, + col0 - - ( col1 ) + - + 9 + - 30, ( - 38 ) )
----

skipif mysql # not compatible
query III rowsort label-586
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL NOT IN ( col1, - CAST ( NULL AS INTEGER ) * + + col0 * + 92, + col0 - - ( col1 ) + - + 9 + - 30, ( - 38 ) )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-587
SELECT + CAST( - col0 AS SIGNED ) + + ( - col2 ) - - col1 FROM tab0 AS cor0
----
-195
-76
19

skipif mysql # not compatible
query I rowsort label-587
SELECT + CAST ( - col0 AS INTEGER ) + + ( - col2 ) - - col1 FROM tab0 AS cor0
----
-195
-76
19

query I rowsort
SELECT ALL + - 57 * - 90 * + col1 FROM tab1 AS cor0
----
241110
25650
71820

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col1 + 3 col0 FROM tab0 AS cor0
----
24
4
84

query I rowsort
SELECT DISTINCT - + col2 * - col2 * 26 + 3 - + + col2 FROM tab1 AS cor0
----
120159
239523
90450

onlyif mysql # aggregate syntax: 
query I rowsort label-591
SELECT - 37 * - - MAX( DISTINCT - col0 ) * + COUNT( * ) * - COUNT( ALL - col2 ) FROM tab0
----
-4995

skipif mysql # not compatible
query I rowsort label-591
SELECT - 37 * - - MAX ( DISTINCT - col0 ) * + COUNT ( * ) * - COUNT ( ALL - col2 ) FROM tab0
----
-4995

onlyif mysql # aggregate syntax: 
query I rowsort label-592
SELECT + MIN( DISTINCT - - col1 ) * + 71 col0 FROM tab1
----
355

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-592
SELECT + MIN ( DISTINCT - - col1 ) * + 71 col0 FROM tab1
----
355

query II rowsort
SELECT + col2 * - col1, col1 + + + col2 AS col2 FROM tab0
----
-210
31
-3807
128
-99
100

onlyif mysql # aggregate syntax: 
query I rowsort label-594
SELECT DISTINCT - COUNT( * ) * 58 FROM tab2
----
-174

skipif mysql # not compatible
query I rowsort label-594
SELECT DISTINCT - COUNT ( * ) * 58 FROM tab2
----
-174

query I rowsort
SELECT - col1 AS col2 FROM tab0 WHERE NULL >= + col1
----

query I rowsort
SELECT - 35 * + col0 AS col1 FROM tab1
----
-1785
-2975
-3185

onlyif mysql # aggregate syntax: 
query I rowsort label-597
SELECT DISTINCT 23 * - SUM( ALL 9 ) AS col2 FROM tab2
----
-621

skipif mysql # not compatible
query I rowsort label-597
SELECT DISTINCT 23 * - SUM ( ALL 9 ) AS col2 FROM tab2
----
-621

onlyif mysql # DIV for integer division: 
query I rowsort label-598
SELECT col1 DIV - 20 AS col0 FROM tab0
----
-1
-4
0

skipif mysql # not compatible
query I rowsort label-598
SELECT col1 / - 20 AS col0 FROM tab0
----
-1
-4
0

query I rowsort
SELECT col2 AS col1 FROM tab1 AS cor0 WHERE + col0 IS NULL
----

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE 38 * + col1 IS NULL
----

query I rowsort
SELECT - col0 + + col0 + - + col2 FROM tab0
----
-10
-47
-99

query I rowsort
SELECT DISTINCT + + ( 35 ) FROM tab1 AS cor0 CROSS JOIN tab2 cor1
----
35

onlyif mysql # DIV for integer division: 
query I rowsort label-603
SELECT - col2 DIV - col1 AS col1 FROM tab2 cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-603
SELECT - col2 / - col1 AS col1 FROM tab2 cor0
----
0
0
0

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE ( + col2 IS NOT NULL )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT - col0 * + col2 + - col2 * - col1 AS col1 FROM tab1 AS cor0
----
-2992
-3552
-4720

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL < col1 * + col2 - + col0
----

query I rowsort
SELECT ALL ( - 90 ) FROM tab0 AS cor0
----
-90
-90
-90

query II rowsort
SELECT ( + - col0 ) AS col0, col0 AS col0 FROM tab1
----
-51
51
-85
85
-91
91

query I rowsort
SELECT DISTINCT 31 + + col0 * + ( + col0 ) FROM tab2 WHERE + - col2 IS NOT NULL
----
2147
4127
5656

query III rowsort
SELECT * FROM tab0 WHERE NOT + col2 BETWEEN + + col1 AND NULL
----
15
81
47
87
21
10

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT ( - - col2 ) col2 FROM tab0
----
10
47
99

query I rowsort
SELECT col1 AS col1 FROM tab1 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-613
SELECT * FROM tab2 cor0 WHERE NOT + CAST( NULL AS SIGNED ) * + + 66 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-613
SELECT * FROM tab2 cor0 WHERE NOT + CAST ( NULL AS INTEGER ) * + + 66 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col1 * - 80 AS col1 FROM tab2
----
-4080
-5360
-6160

onlyif mysql # aggregate syntax: 
query I rowsort label-615
SELECT - COUNT( * ) + + 39 col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
30

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-615
SELECT - COUNT ( * ) + + 39 col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
30

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col1 col2, col2 FROM tab1 AS cor0
----
14
96
47
68
5
59

onlyif mysql # aggregate syntax: 
query I rowsort label-617
SELECT + COUNT( DISTINCT col0 ) AS col1 FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-617
SELECT + COUNT ( DISTINCT col0 ) AS col1 FROM tab1 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-618
SELECT + - ( - + ( - COUNT( * ) ) ) AS col2 FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-618
SELECT + - ( - + ( - COUNT ( * ) ) ) AS col2 FROM tab0 AS cor0
----
-3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-619
SELECT + + CAST( 96 AS SIGNED ) FROM tab1 cor0
----
96
96
96

skipif mysql # not compatible
query I rowsort label-619
SELECT + + CAST ( 96 AS INTEGER ) FROM tab1 cor0
----
96
96
96

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-620
SELECT ALL - 84 * - + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) - - 44 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-620
SELECT ALL - 84 * - + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) - - 44 FROM tab0 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT DISTINCT + col1, 17 FROM tab1 AS cor0 WHERE ( NULL ) IS NULL
----
14
17
47
17
5
17

onlyif mysql # aggregate syntax: 
query I rowsort label-622
SELECT DISTINCT + - 89 * - - COUNT( * ) FROM tab0 AS cor0
----
-267

skipif mysql # not compatible
query I rowsort label-622
SELECT DISTINCT + - 89 * - - COUNT ( * ) FROM tab0 AS cor0
----
-267

onlyif mysql # aggregate syntax: 
query I rowsort label-623
SELECT ALL SUM( - 56 ) AS col0 FROM tab2
----
-168

skipif mysql # not compatible
query I rowsort label-623
SELECT ALL SUM ( - 56 ) AS col0 FROM tab2
----
-168

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-624
SELECT + COUNT( * ) AS col1 FROM tab0 WHERE + + 20 - CAST( 65 AS SIGNED ) * ( + 4 ) > NULL
----
0

skipif mysql # not compatible
query I rowsort label-624
SELECT + COUNT ( * ) AS col1 FROM tab0 WHERE + + 20 - CAST ( 65 AS INTEGER ) * ( + 4 ) > NULL
----
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col2 * + 48 col0 FROM tab1
----
2832
3264
4608

query I rowsort
SELECT ALL col1 + - - ( - col1 ) AS col0 FROM tab1
----
0
0
0

query I rowsort
SELECT ALL + + 86 FROM tab1 AS cor0
----
86
86
86

query I rowsort
SELECT - - col2 + + - ( - ( - - col0 ) ) FROM tab1 AS cor0
----
144
147
159

onlyif mysql # aggregate syntax: 
query I rowsort label-629
SELECT ( + COUNT( * ) ) AS col0 FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-629
SELECT ( + COUNT ( * ) ) AS col0 FROM tab1 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-630
SELECT + COUNT( * ) FROM tab1 WHERE 36 IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-630
SELECT + COUNT ( * ) FROM tab1 WHERE 36 IS NULL
----
0

query I rowsort
SELECT 11 - + col0 + + col0 * - col1 * - col1 AS col0 FROM tab0
----
11
38291
98411

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-632
SELECT * FROM tab2 AS cor0 WHERE + CAST( NULL AS SIGNED ) + - - CAST( - 83 AS SIGNED ) + + col2 IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-632
SELECT * FROM tab2 AS cor0 WHERE + CAST ( NULL AS INTEGER ) + - - CAST ( - 83 AS INTEGER ) + + col2 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query II rowsort label-633
SELECT col0 DIV + col2 col1, - col2 AS col0 FROM tab2 AS cor0
----
1
-40
1
-58
2
-23

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-633
SELECT col0 / + col2 col1, - col2 AS col0 FROM tab2 AS cor0
----
1
-40
1
-58
2
-23

onlyif mysql # aggregate syntax: 
query II rowsort label-634
SELECT ALL + - 3 * + COUNT( * ), COUNT( col2 ) - - COUNT( * ) AS col0 FROM tab2 AS cor0
----
-9
6

skipif mysql # not compatible
query II rowsort label-634
SELECT ALL + - 3 * + COUNT ( * ), COUNT ( col2 ) - - COUNT ( * ) AS col0 FROM tab2 AS cor0
----
-9
6

query II rowsort
SELECT DISTINCT - 46 * 16 AS col0, 78 FROM tab1 AS cor0
----
-736
78

onlyif mysql # aggregate syntax: 
query I rowsort label-636
SELECT COUNT( DISTINCT col1 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-636
SELECT COUNT ( DISTINCT col1 ) FROM tab1
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - + 2 + + + 12 col0 FROM tab1 WHERE NULL IS NULL
----
10

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col0 col1, ( - col1 ) AS col2 FROM tab2
----
46
-51
64
-77
75
-67

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-639
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN NULL AND + ( - ( col2 ) ) + CAST( NULL AS SIGNED ) * + - 49
----

skipif mysql # not compatible
query III rowsort label-639
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN NULL AND + ( - ( col2 ) ) + CAST ( NULL AS INTEGER ) * + - 49
----

onlyif mysql # aggregate syntax: 
query I rowsort label-640
SELECT DISTINCT - SUM( col2 ) FROM tab2 AS cor0 WHERE NOT + 79 * + col0 / - 93 + - - 22 IS NULL
----
-121

skipif mysql # not compatible
query I rowsort label-640
SELECT DISTINCT - SUM ( col2 ) FROM tab2 AS cor0 WHERE NOT + 79 * + col0 / - 93 + - - 22 IS NULL
----
-121

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 57 * + - ( col2 ) col0 FROM tab2 AS cor0
----
-1311
-2280
-3306

query II rowsort
SELECT ALL col2, - col1 AS col1 FROM tab0 AS cor0
----
10
-21
47
-81
99
-1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-643
SELECT ALL ( - CAST( - 15 AS SIGNED ) ) FROM tab2
----
15
15
15

skipif mysql # not compatible
query I rowsort label-643
SELECT ALL ( - CAST ( - 15 AS INTEGER ) ) FROM tab2
----
15
15
15

query I rowsort
SELECT col0 - + col2 FROM tab1 WHERE NOT - 11 + + col1 > NULL
----

query I rowsort
SELECT + 50 AS col1 FROM tab1 WHERE NOT ( 7 ) <= 30
----

query I rowsort
SELECT ALL + col1 FROM tab2 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT DISTINCT col0 AS col2 FROM tab0 WHERE NOT 15 NOT BETWEEN 24 AND col0 * - 33 + 28
----

query I rowsort
SELECT + 47 + - col1 AS col1 FROM tab2
----
-20
-30
-4

query I rowsort
SELECT DISTINCT + col2 * col1 + + col0 FROM tab1
----
1395
3287
380

query III rowsort
SELECT * FROM tab1 WHERE - col2 >= + 16
----

query I rowsort
SELECT ALL - col2 + col0 * col2 AS col1 FROM tab2
----
1035
2520
4292

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-652
SELECT * FROM tab2 WHERE NOT NULL NOT BETWEEN CAST( NULL AS SIGNED ) AND NULL
----

skipif mysql # not compatible
query III rowsort label-652
SELECT * FROM tab2 WHERE NOT NULL NOT BETWEEN CAST ( NULL AS INTEGER ) AND NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-653
SELECT ALL + 66 - + col1 DIV 68 AS col0 FROM tab0
----
65
66
66

skipif mysql # not compatible
query I rowsort label-653
SELECT ALL + 66 - + col1 / 68 AS col0 FROM tab0
----
65
66
66

query III rowsort
SELECT * FROM tab0 WHERE NOT ( col0 * - 8 ) = NULL
----

query I rowsort
SELECT col0 + ( 68 ) FROM tab2
----
114
132
143

query I rowsort
SELECT 86 + col2 AS col0 FROM tab2
----
109
126
144

query I rowsort
SELECT 24 + - 61 FROM tab1
----
-37
-37
-37

query I rowsort
SELECT - col1 - - col0 * col0 AS col2 FROM tab0 WHERE - col2 * 13 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-659
SELECT DISTINCT * FROM tab1 WHERE ( CAST( NULL AS SIGNED ) ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-659
SELECT DISTINCT * FROM tab1 WHERE ( CAST ( NULL AS INTEGER ) ) IS NOT NULL
----

query I rowsort
SELECT ALL - 38 * + col1 FROM tab2
----
-1938
-2546
-2926

query I rowsort
SELECT col0 * - 28 AS col1 FROM tab2
----
-1288
-1792
-2100

query III rowsort
SELECT * FROM tab1 WHERE NOT + col1 + - col2 / 43 IN ( + col2 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab1 WHERE NOT ( + 8 + col2 ) IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab1 WHERE NOT - col0 + - 85 * + ( - col0 ) NOT BETWEEN + 21 AND - 73 + + col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-665
SELECT - MIN( ALL + ( + 23 ) ) FROM tab0
----
-23

skipif mysql # not compatible
query I rowsort label-665
SELECT - MIN ( ALL + ( + 23 ) ) FROM tab0
----
-23

query I rowsort
SELECT + ( + col0 ) + ( - col0 ) FROM tab1
----
0
0
0

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-667
SELECT - CAST( - COUNT( * ) AS SIGNED ) + COUNT( * ) AS col2 FROM tab2
----
6

skipif mysql # not compatible
query I rowsort label-667
SELECT - CAST ( - COUNT ( * ) AS INTEGER ) + COUNT ( * ) AS col2 FROM tab2
----
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-668
SELECT CAST( + col2 AS SIGNED ) AS col0 FROM tab0 WHERE ( + col0 ) IS NOT NULL
----
10
47
99

skipif mysql # not compatible
query I rowsort label-668
SELECT CAST ( + col2 AS INTEGER ) AS col0 FROM tab0 WHERE ( + col0 ) IS NOT NULL
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-669
SELECT DISTINCT - COUNT( * ) col0 FROM tab0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-669
SELECT DISTINCT - COUNT ( * ) col0 FROM tab0
----
-3

query I rowsort
SELECT DISTINCT - col2 * - 36 + + 47 AS col0 FROM tab2 cor0
----
1487
2135
875

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NULL BETWEEN ( NULL ) AND NULL
----

query III rowsort
SELECT * FROM tab1 cor0 WHERE ( + col0 ) NOT BETWEEN - col2 * col1 AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-673
SELECT ALL COUNT( DISTINCT - 8 ) AS col0 FROM tab1 cor0
----
1

skipif mysql # not compatible
query I rowsort label-673
SELECT ALL COUNT ( DISTINCT - 8 ) AS col0 FROM tab1 cor0
----
1

query I rowsort
SELECT DISTINCT col1 AS col0 FROM tab2 AS cor0 WHERE - ( ( 35 ) ) IS NOT NULL
----
51
67
77

query I rowsort
SELECT DISTINCT ( + 28 ) + + 70 AS col1 FROM tab0 AS cor0 WHERE NOT NULL NOT BETWEEN + col0 AND - col0 * col1
----

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE ( col0 ) IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL col1 - 89 FROM tab1
----
-42
-75
-84

query I rowsort
SELECT ALL + col2 AS col0 FROM tab0 WHERE col0 + col2 >= + col2 / ( col0 )
----
10
47
99

query I rowsort
SELECT ALL 16 + - 85 * - col2 FROM tab0
----
4011
8431
866

query I rowsort
SELECT + 46 FROM tab0 AS cor0 CROSS JOIN tab0
----
9 values hashing to 31818c9d4d325eb248735c97cb1dce39

query I rowsort
SELECT col0 AS col0 FROM tab2 AS cor0 WHERE NOT NULL >= + col1
----

query I rowsort
SELECT ALL col2 * ( - ( col0 ) ) AS col2 FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL
----
-705
-870
-9603

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT col0 NOT BETWEEN - 95 * - ( 40 ) AND - col0 * col0
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-684
SELECT ( - CAST( 16 AS SIGNED ) ) FROM tab2 AS cor0
----
-16
-16
-16

skipif mysql # not compatible
query I rowsort label-684
SELECT ( - CAST ( 16 AS INTEGER ) ) FROM tab2 AS cor0
----
-16
-16
-16

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-685
SELECT ALL + MAX( col0 ) * CAST( COUNT( * ) AS SIGNED ) FROM tab1 AS cor0
----
273

skipif mysql # not compatible
query I rowsort label-685
SELECT ALL + MAX ( col0 ) * CAST ( COUNT ( * ) AS INTEGER ) FROM tab1 AS cor0
----
273

query I rowsort
SELECT - ( - col2 ) * + col1 AS col1 FROM tab1 AS cor0
----
1344
295
3196

query I rowsort
SELECT + 61 * col2 AS col2 FROM tab1 AS cor0 WHERE NOT 76 NOT IN ( 54 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + 49 * col2 col0 FROM tab2 AS cor0
----
1127
1960
2842

onlyif mysql # DIV for integer division: 
query I rowsort label-689
SELECT DISTINCT - + col0 DIV - col0 col2 FROM tab0 AS cor0
----
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-689
SELECT DISTINCT - + col0 / - col0 col2 FROM tab0 AS cor0
----
1

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 - - col1 NOT BETWEEN - col2 * col0 AND + col1
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-691
SELECT DISTINCT - col2 / + col0 FROM tab0 WHERE 55 - - col2 NOT IN ( + CAST( NULL AS SIGNED ) + + col1 )
----

skipif mysql # not compatible
query I rowsort label-691
SELECT DISTINCT - col2 / + col0 FROM tab0 WHERE 55 - - col2 NOT IN ( + CAST ( NULL AS INTEGER ) + + col1 )
----

query I rowsort
SELECT DISTINCT - col1 FROM tab0 WHERE NULL < - col1
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-693
SELECT DISTINCT COUNT( - ( - CAST( NULL AS SIGNED ) ) ) FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-693
SELECT DISTINCT COUNT ( - ( - CAST ( NULL AS INTEGER ) ) ) FROM tab0
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-694
SELECT DISTINCT - 9 * COUNT( * ) AS col2 FROM tab2
----
-27

skipif mysql # not compatible
query I rowsort label-694
SELECT DISTINCT - 9 * COUNT ( * ) AS col2 FROM tab2
----
-27

query I rowsort
SELECT ALL ( + col1 ) * - col1 AS col0 FROM tab1
----
-196
-2209
-25

query I rowsort
SELECT DISTINCT col2 AS col1 FROM tab1 AS cor0 WHERE col1 * + col2 < + col2
----

onlyif mysql # DIV for integer division: 
query I rowsort label-697
SELECT ALL + col2 DIV + 27 AS col1 FROM tab2 AS cor0
----
0
1
2

skipif mysql # not compatible
query I rowsort label-697
SELECT ALL + col2 / + 27 AS col1 FROM tab2 AS cor0
----
0
1
2

query I rowsort
SELECT + col0 + 52 AS col2 FROM tab0 AS cor0
----
139
149
67

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-699
SELECT CAST( col1 AS SIGNED ) + col1 AS col1 FROM tab2 AS cor0
----
102
134
154

skipif mysql # not compatible
query I rowsort label-699
SELECT CAST ( col1 AS INTEGER ) + col1 AS col1 FROM tab2 AS cor0
----
102
134
154

query I rowsort
SELECT 81 + col2 FROM tab2 cor0
----
104
121
139

onlyif mysql # aggregate syntax: 
query I rowsort label-701
SELECT DISTINCT + COUNT( * ) + 52 * + 97 AS col0 FROM tab1
----
5047

skipif mysql # not compatible
query I rowsort label-701
SELECT DISTINCT + COUNT ( * ) + 52 * + 97 AS col0 FROM tab1
----
5047

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT + ( - 69 ) * col2 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT + 54 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
54

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-704
SELECT ALL - CAST( NULL AS SIGNED ) FROM tab2 cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

skipif mysql # not compatible
query I rowsort label-704
SELECT ALL - CAST ( NULL AS INTEGER ) FROM tab2 cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

query IIIIII rowsort
SELECT DISTINCT * FROM tab0, tab2 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
54 values hashing to eaa394f1627c8d5e53406d9ca3b09469

onlyif mysql # aggregate syntax: 
query I rowsort label-706
SELECT DISTINCT + - COUNT( * ) + COUNT( * ) FROM ( tab0 AS cor0 CROSS JOIN tab2 AS cor1 )
----
0

skipif mysql # not compatible
query I rowsort label-706
SELECT DISTINCT + - COUNT ( * ) + COUNT ( * ) FROM ( tab0 AS cor0 CROSS JOIN tab2 AS cor1 )
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-707
SELECT COUNT( * ) * COUNT( * ) FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
81

skipif mysql # not compatible
query I rowsort label-707
SELECT COUNT ( * ) * COUNT ( * ) FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
81

onlyif mysql # aggregate syntax: 
query I rowsort label-708
SELECT DISTINCT + COUNT( * ) AS col1 FROM tab0 WHERE 30 + + col1 = NULL
----
0

skipif mysql # not compatible
query I rowsort label-708
SELECT DISTINCT + COUNT ( * ) AS col1 FROM tab0 WHERE 30 + + col1 = NULL
----
0

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL NOT BETWEEN ( NULL ) AND + col2
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE 21 NOT IN ( - - col0 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT + 22 * 90 * + col1 + col2 FROM tab2 AS cor0
----
101003
132718
152500

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-712
SELECT ALL + col0 + + CAST( NULL AS SIGNED ) / + CAST( - CAST( + 65 AS SIGNED ) AS SIGNED ) AS col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-712
SELECT ALL + col0 + + CAST ( NULL AS INTEGER ) / + CAST ( - CAST ( + 65 AS INTEGER ) AS INTEGER ) AS col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT ( + col2 ) + 21 FROM tab0 AS cor0
----
120
31
68

query I rowsort
SELECT ALL + col2 + + - 74 AS col0 FROM tab0 AS cor0
----
-27
-64
25

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE ( + col1 ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ( col2 ) + + col2 * - col0 AS col2 FROM tab2 cor0 WHERE ( - col2 ) BETWEEN ( NULL ) AND ( NULL )
----

query I rowsort
SELECT DISTINCT col2 - col2 AS col1 FROM tab2 AS cor0 WHERE ( NULL ) IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-718
SELECT + col1 * CAST( NULL AS SIGNED ) + + 67 AS col2 FROM tab2 WHERE ( + + col2 ) <= ( 42 )
----
NULL
NULL

skipif mysql # not compatible
query I rowsort label-718
SELECT + col1 * CAST ( NULL AS INTEGER ) + + 67 AS col2 FROM tab2 WHERE ( + + col2 ) <= ( 42 )
----
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-719
SELECT ALL - MIN( + col1 ) FROM tab1
----
-5

skipif mysql # not compatible
query I rowsort label-719
SELECT ALL - MIN ( + col1 ) FROM tab1
----
-5

onlyif mysql # aggregate syntax: 
query I rowsort label-720
SELECT DISTINCT COUNT( - col0 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-720
SELECT DISTINCT COUNT ( - col0 ) FROM tab2
----
3

query I rowsort
SELECT ( col2 ) + + - col0 FROM tab1
----
-23
-26
45

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NULL >= + 97 * - 83
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-723
SELECT CAST( + 78 AS SIGNED ) FROM tab2 AS cor0
----
78
78
78

skipif mysql # not compatible
query I rowsort label-723
SELECT CAST ( + 78 AS INTEGER ) FROM tab2 AS cor0
----
78
78
78

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-724
SELECT ALL + + CAST( col2 AS SIGNED ) + + 13 DIV + col0 FROM tab0 AS cor0
----
10
47
99

skipif mysql # not compatible
query I rowsort label-724
SELECT ALL + + CAST ( col2 AS INTEGER ) + + 13 / + col0 FROM tab0 AS cor0
----
10
47
99

query III rowsort
SELECT * FROM tab2 cor0 WHERE + col1 <= + 78 * - - col2 + ( col0 + - col0 ) * + 94
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col1 * + col2 - col2 AS col2 FROM tab0 AS cor0
----
0
200
3760

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE col1 * + - col2 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # DIV for integer division: 
query I rowsort label-728
SELECT DISTINCT + col1 + - col0 DIV col1 AS col0 FROM tab1 AS cor0
----
-12
11
46

skipif mysql # not compatible
query I rowsort label-728
SELECT DISTINCT + col1 + - col0 / col1 AS col0 FROM tab1 AS cor0
----
-12
11
46

query I rowsort
SELECT DISTINCT + 95 * - 55 AS col0 FROM tab2 AS cor0
----
-5225

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE + 75 >= NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE 73 + + 19 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT + col0 * - col0 * + ( + col1 ) * + + col0 FROM tab2
----
-20185088
-28265625
-4964136

query I rowsort
SELECT ALL 45 * col0 * + + col0 AS col1 FROM tab1
----
117045
325125
372645

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-734
SELECT ALL - CAST( - - col1 AS SIGNED ) FROM tab1 AS cor0 WHERE NULL IN ( col2 )
----

skipif mysql # not compatible
query I rowsort label-734
SELECT ALL - CAST ( - - col1 AS INTEGER ) FROM tab1 AS cor0 WHERE NULL IN ( col2 )
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-735
SELECT ALL * FROM tab0 AS cor0 WHERE NOT ( - CAST( NULL AS DECIMAL ) ) - - - col0 IS NULL
----

skipif mysql # not compatible
query III rowsort label-735
SELECT ALL * FROM tab0 AS cor0 WHERE NOT ( - CAST ( NULL AS REAL ) ) - - - col0 IS NULL
----

query I rowsort
SELECT ALL 36 FROM tab0 AS cor0 WHERE NOT + col2 * - 20 IN ( + 55 + - col0 )
----
36
36
36

onlyif mysql # aggregate syntax: 
query I rowsort label-737
SELECT + 80 * COUNT( * ) FROM tab0 AS cor0
----
240

skipif mysql # not compatible
query I rowsort label-737
SELECT + 80 * COUNT ( * ) FROM tab0 AS cor0
----
240

onlyif mysql # DIV for integer division: 
query I rowsort label-738
SELECT + + 36 DIV + col0 col0 FROM tab1 AS cor0
----
0
0
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-738
SELECT + + 36 / + col0 col0 FROM tab1 AS cor0
----
0
0
0

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-739
SELECT ALL - + CAST( + SUM( DISTINCT + - 31 ) AS SIGNED ) AS col1, 59 AS col1 FROM tab1 AS cor0
----
31
59

skipif mysql # not compatible
query II rowsort label-739
SELECT ALL - + CAST ( + SUM ( DISTINCT + - 31 ) AS INTEGER ) AS col1, 59 AS col1 FROM tab1 AS cor0
----
31
59

query I rowsort
SELECT DISTINCT 56 + col2 AS col2 FROM tab0 WHERE NOT col1 + + col2 * + - ( + - 9 ) IS NULL
----
103
155
66

query II rowsort
SELECT + col1, 5 AS col0 FROM tab0
----
1
5
21
5
81
5

onlyif mysql # aggregate syntax: 
query I rowsort label-742
SELECT + SUM( ALL + col2 ) * 15 FROM tab0
----
2340

skipif mysql # not compatible
query I rowsort label-742
SELECT + SUM ( ALL + col2 ) * 15 FROM tab0
----
2340

query III rowsort
SELECT * FROM tab2 WHERE NOT ( - - ( + col2 ) * + col0 * - col1 + col0 ) < NULL
----

query I rowsort
SELECT ALL - - col0 FROM tab0 WHERE ( NULL ) < - 76
----

query II rowsort
SELECT ALL - col2 AS col2, col2 * + 30 FROM tab1
----
-59
1770
-68
2040
-96
2880

query I rowsort
SELECT DISTINCT - 30 + + - col2 AS col1 FROM tab2 AS cor0
----
-53
-70
-88

onlyif mysql # aggregate syntax: 
query I rowsort label-747
SELECT ALL 16 * - COUNT( * ) FROM tab0
----
-48

skipif mysql # not compatible
query I rowsort label-747
SELECT ALL 16 * - COUNT ( * ) FROM tab0
----
-48

query I rowsort
SELECT col0 + 12 + + col0 FROM tab2
----
104
140
162

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - 21 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT ( NULL >= NULL )
----

query I rowsort
SELECT ALL - col0 FROM tab2 AS cor0 WHERE col2 / col1 = NULL
----

onlyif mysql # DIV for integer division: 
query II rowsort label-752
SELECT DISTINCT - + col0 DIV + col2, 39 AS col0 FROM tab2 cor0
----
-1
39
-2
39

skipif mysql # not compatible
query II rowsort label-752
SELECT DISTINCT - + col0 / + col2, 39 AS col0 FROM tab2 cor0
----
-1
39
-2
39

onlyif mysql # aggregate syntax: 
query I rowsort label-753
SELECT DISTINCT + COUNT( * ) + - 32 FROM tab1 AS cor0
----
-29

skipif mysql # not compatible
query I rowsort label-753
SELECT DISTINCT + COUNT ( * ) + - 32 FROM tab1 AS cor0
----
-29

query I rowsort
SELECT - + 37 + + 60 AS col2 FROM tab2 AS cor0
----
23
23
23

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - 58 + col2 AS col0, - col2 col2 FROM tab2 AS cor0
----
-18
-40
-35
-23
0
-58

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE + 17 * + - 5 IS NULL
----

query I rowsort
SELECT ALL + ( + col0 ) FROM tab0 cor0 WHERE NULL IN ( 14, - ( - ( + + col0 ) ) )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 col1 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
-15
-87
-97

query III rowsort
SELECT ALL * FROM tab0 WHERE - col0 > NULL
----

query I rowsort
SELECT DISTINCT ( - - 58 ) FROM tab2
----
58

onlyif mysql # aggregate syntax: 
query I rowsort label-761
SELECT + 83 * + + COUNT( * ) FROM tab0
----
249

skipif mysql # not compatible
query I rowsort label-761
SELECT + 83 * + + COUNT ( * ) FROM tab0
----
249

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-762
SELECT CAST( + + SUM( - col1 ) AS SIGNED ) - 53 AS col0 FROM tab2
----
-248

skipif mysql # not compatible
query I rowsort label-762
SELECT CAST ( + + SUM ( - col1 ) AS INTEGER ) - 53 AS col0 FROM tab2
----
-248

onlyif mysql # aggregate syntax: 
query I rowsort label-763
SELECT DISTINCT SUM( ALL + - col2 ) AS col0 FROM tab2
----
-121

skipif mysql # not compatible
query I rowsort label-763
SELECT DISTINCT SUM ( ALL + - col2 ) AS col0 FROM tab2
----
-121

query I rowsort
SELECT DISTINCT + col2 AS col2 FROM tab0 AS cor0 WHERE NOT NULL IS NULL AND + col0 * + col0 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-765
SELECT DISTINCT MIN( ALL + + col1 ) AS col1 FROM tab2
----
51

skipif mysql # not compatible
query I rowsort label-765
SELECT DISTINCT MIN ( ALL + + col1 ) AS col1 FROM tab2
----
51

onlyif mysql # aggregate syntax: 
query I rowsort label-766
SELECT - MIN( col0 ) FROM tab1
----
-51

skipif mysql # not compatible
query I rowsort label-766
SELECT - MIN ( col0 ) FROM tab1
----
-51

query III rowsort
SELECT * FROM tab2 WHERE NOT NULL BETWEEN - col2 AND - col2
----

query I rowsort
SELECT col2 + col2 FROM tab0 WHERE NOT + col0 >= + + col1
----
94

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-769
SELECT * FROM tab2 WHERE NOT + + 81 = + col0 * + col1 * CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-769
SELECT * FROM tab2 WHERE NOT + + 81 = + col0 * + col1 * CAST ( NULL AS INTEGER )
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT col1 IN ( + col0 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT NULL NOT IN ( - col2 + - col1, col1 )
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE - col0 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - + 63 * col2 col0 FROM tab2 AS cor0
----
-1449
-2520
-3654

query I rowsort
SELECT + 49 * 19 AS col1 FROM tab1 AS cor0
----
931
931
931

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 59 col2 FROM tab0 AS cor0
----
59
59
59

query I rowsort
SELECT DISTINCT + col1 FROM tab0 cor0 WHERE 47 NOT BETWEEN - 91 AND NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - col1 * + - col1 col2, + 90 AS col0 FROM tab2 AS cor0
----
2601
90
4489
90
5929
90

query III rowsort
SELECT * FROM tab1 WHERE NOT col2 >= col2
----

query I rowsort
SELECT ALL col1 FROM tab2 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT - ( 71 ) * + col1 AS col0 FROM tab2
----
-3621
-4757
-5467

query I rowsort
SELECT DISTINCT - col0 * - 62 AS col2 FROM tab2
----
2852
3968
4650

onlyif mysql # aggregate syntax: 
query I rowsort label-782
SELECT DISTINCT 56 * COUNT( * ) FROM tab2
----
168

skipif mysql # not compatible
query I rowsort label-782
SELECT DISTINCT 56 * COUNT ( * ) FROM tab2
----
168

query II rowsort
SELECT - col0 AS col2, 89 + + 99 FROM tab0
----
-15
188
-87
188
-97
188

query I rowsort
SELECT + col1 + - 36 AS col1 FROM tab1
----
-22
-31
11

query I rowsort
SELECT - col0 + + + col1 FROM tab0 AS cor0
----
-66
-96
66

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-786
SELECT DISTINCT * FROM tab1 AS cor0 WHERE CAST( NULL AS SIGNED ) < col0 * col2
----

skipif mysql # not compatible
query III rowsort label-786
SELECT DISTINCT * FROM tab1 AS cor0 WHERE CAST ( NULL AS INTEGER ) < col0 * col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-787
SELECT + COUNT( DISTINCT col1 ) * - COUNT( * ) AS col0 FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-787
SELECT + COUNT ( DISTINCT col1 ) * - COUNT ( * ) AS col0 FROM tab1
----
-9

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( + 38 ) IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-789
SELECT DISTINCT - 9 DIV col2 AS col2 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-789
SELECT DISTINCT - 9 / col2 AS col2 FROM tab1 AS cor0
----
0

query I rowsort
SELECT col2 * 57 - + 91 FROM tab1 AS cor0
----
3272
3785
5381

onlyif mysql # aggregate syntax: 
query I rowsort label-791
SELECT ALL + - MAX( + 93 ) col1 FROM tab0 AS cor0
----
-93

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-791
SELECT ALL + - MAX ( + 93 ) col1 FROM tab0 AS cor0
----
-93

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL AND ( NOT ( NOT NULL NOT IN ( + 40 ) ) )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-793
SELECT ALL + - CAST( NULL AS SIGNED ) + + 6 + - COUNT( * ) AS col0 FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-793
SELECT ALL + - CAST ( NULL AS INTEGER ) + + 6 + - COUNT ( * ) AS col0 FROM tab2 AS cor0
----
NULL

query I rowsort
SELECT ALL - col2 * + col2 - + 12 AS col0 FROM tab0
----
-112
-2221
-9813

query III rowsort
SELECT * FROM tab1 WHERE ( NULL ) >= + 37
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-796
SELECT ALL CAST( NULL AS DECIMAL ) * + + COUNT( * ) + - 6 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-796
SELECT ALL CAST ( NULL AS REAL ) * + + COUNT ( * ) + - 6 FROM tab0
----
NULL

query I rowsort
SELECT + col1 + - 44 - 74 AS col0 FROM tab0
----
-117
-37
-97

onlyif mysql # aggregate syntax: 
query I rowsort label-798
SELECT ALL 86 - + COUNT( * ) FROM tab2
----
83

skipif mysql # not compatible
query I rowsort label-798
SELECT ALL 86 - + COUNT ( * ) FROM tab2
----
83

onlyif mysql # aggregate syntax: 
query I rowsort label-799
SELECT DISTINCT COUNT( * ) * MAX( + 46 ) FROM tab0 WHERE NOT + - col2 NOT BETWEEN NULL AND NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-799
SELECT DISTINCT COUNT ( * ) * MAX ( + 46 ) FROM tab0 WHERE NOT + - col2 NOT BETWEEN NULL AND NULL
----
NULL

query I rowsort
SELECT + ( + + col0 ) AS col1 FROM tab1 AS cor0
----
51
85
91

onlyif mysql # aggregate syntax: 
query I rowsort label-801
SELECT ALL - COUNT( - 21 ) AS col0 FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-801
SELECT ALL - COUNT ( - 21 ) AS col0 FROM tab0
----
-3

query IIIIII rowsort
SELECT * FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1 WHERE ( NULL ) <> NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-803
SELECT DISTINCT + COUNT( DISTINCT - col2 ) FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-803
SELECT DISTINCT + COUNT ( DISTINCT - col2 ) FROM tab1 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query II rowsort label-804
SELECT ALL + 85, COUNT( * ) AS col1 FROM tab0 cor0
----
85
3

skipif mysql # not compatible
query II rowsort label-804
SELECT ALL + 85, COUNT ( * ) AS col1 FROM tab0 cor0
----
85
3

query I rowsort
SELECT ALL + 56 AS col2 FROM tab1 cor0
----
56
56
56

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT + col1 <= - - 48 * + col1 * col0
----

query I rowsort
SELECT col2 * col1 * - + col2 FROM tab2
----
-123200
-225388
-26979

query III rowsort
SELECT * FROM tab2 WHERE NOT 59 NOT IN ( col2, 9 * - + col2 / - col2 )
----

query I rowsort
SELECT col2 * + col2 * - col1 AS col1 FROM tab0
----
-178929
-2100
-9801

onlyif mysql # aggregate syntax: 
query I rowsort label-810
SELECT + AVG ( ALL col0 ) + COUNT( * ) AS col2 FROM tab1 WHERE NOT ( NULL ) IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-810
SELECT + AVG ( ALL col0 ) + COUNT ( * ) AS col2 FROM tab1 WHERE NOT ( NULL ) IS NULL
----
NULL

query I rowsort
SELECT ALL + col0 * + col1 * + 7 FROM tab1
----
2975
29939
4998

query I rowsort
SELECT ALL col2 * + col1 * + 9 * ( + 84 ) AS col0 FROM tab1
----
1016064
223020
2416176

query II rowsort
SELECT col0 * + col0 AS col2, + col1 FROM tab0
----
225
81
7569
21
9409
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-814
SELECT DISTINCT + CAST( NULL AS SIGNED ) * + col0 * + + 32 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-814
SELECT DISTINCT + CAST ( NULL AS INTEGER ) * + col0 * + + 32 FROM tab0
----
NULL

query I rowsort
SELECT DISTINCT + 6 + col1 AS col2 FROM tab2
----
57
73
83

query III rowsort
SELECT * FROM tab2 WHERE + 38 IS NULL
----

query I rowsort
SELECT + 50 * + - 55 - + col2 AS col0 FROM tab2 WHERE col1 + col1 BETWEEN + - col0 AND NULL
----

query III rowsort
SELECT * FROM tab0 WHERE - col0 - - + 61 * - - col2 * - 94 IS NULL
----

query I rowsort
SELECT DISTINCT - col0 AS col2 FROM tab2 AS cor0 WHERE - col1 + - + col2 * col0 BETWEEN NULL AND - - 15 + + col1
----

query II rowsort
SELECT ALL + 73 * + - 35 + ( - - 46 ), + col1 FROM tab1 AS cor0
----
-2509
14
-2509
47
-2509
5

onlyif mysql # aggregate syntax: 
query I rowsort label-821
SELECT COUNT( ALL - 24 ) + - 65 AS col1 FROM tab0
----
-62

skipif mysql # not compatible
query I rowsort label-821
SELECT COUNT ( ALL - 24 ) + - 65 AS col1 FROM tab0
----
-62

query I rowsort
SELECT col1 + + ( - 95 ) FROM tab0
----
-14
-74
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-823
SELECT COUNT( * ) + MAX( - ( col1 ) ) + - COUNT( * ) col2 FROM tab1
----
-5

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-823
SELECT COUNT ( * ) + MAX ( - ( col1 ) ) + - COUNT ( * ) col2 FROM tab1
----
-5

query I rowsort
SELECT DISTINCT - 15 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
-15

query I rowsort
SELECT ALL + - 0 AS col0 FROM tab0 cor0
----
0
0
0

onlyif mysql # DIV for integer division: 
query II rowsort label-826
SELECT DISTINCT + ( - + col1 ) + col0 AS col2, - 58 DIV + 25 AS col2 FROM tab2 AS cor0
----
-13
-2
-5
-2
8
-2

skipif mysql # not compatible
query II rowsort label-826
SELECT DISTINCT + ( - + col1 ) + col0 AS col2, - 58 / + 25 AS col2 FROM tab2 AS cor0
----
-13
-2
-5
-2
8
-2

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 79 + - col1 col1 FROM tab0 AS cor0
----
-100
-160
-80

query I rowsort
SELECT ALL - col0 + - + 69 AS col2 FROM tab0 AS cor0
----
-156
-166
-84

query I rowsort
SELECT ALL + col0 * + + 5 - - - col2 - + col2 FROM tab2 cor0
----
184
240
259

onlyif mysql # aggregate syntax: 
query I rowsort label-830
SELECT MAX( DISTINCT - col0 ) FROM tab0 AS cor0
----
-15

skipif mysql # not compatible
query I rowsort label-830
SELECT MAX ( DISTINCT - col0 ) FROM tab0 AS cor0
----
-15

query I rowsort
SELECT AVG ( + col1 ) FROM tab2 AS cor0 WHERE NULL > NULL
----
NULL

query I rowsort
SELECT ALL col1 FROM tab1 WHERE NULL NOT BETWEEN NULL AND ( col1 ) AND NULL IS NULL
----

query I rowsort
SELECT - col1 - + 53 - - col1 * + 88 FROM tab2
----
4384
5776
6646

query I rowsort
SELECT ALL + col2 + 49 FROM tab1
----
108
117
145

onlyif mysql # aggregate syntax: 
query II rowsort label-835
SELECT 24 AS col0, COUNT( * ) - + COUNT( * ) FROM tab2
----
24
0

skipif mysql # not compatible
query II rowsort label-835
SELECT 24 AS col0, COUNT ( * ) - + COUNT ( * ) FROM tab2
----
24
0

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + col1 + + col0 + - col0 <> NULL
----

query I rowsort
SELECT - 65 * - 15 AS col0 FROM tab2 AS cor0
----
975
975
975

query I rowsort
SELECT DISTINCT + + col0 * 18 AS col2 FROM tab1 AS cor0
----
1530
1638
918

query I rowsort
SELECT + - 65 * - + col1 + col2 FROM tab0 AS cor0
----
1375
164
5312

onlyif mysql # aggregate syntax: 
query I rowsort label-840
SELECT MAX( + col2 ) FROM tab2 AS cor0
----
58

skipif mysql # not compatible
query I rowsort label-840
SELECT MAX ( + col2 ) FROM tab2 AS cor0
----
58

query II rowsort
SELECT DISTINCT + col1 AS col0, 82 FROM tab0 AS cor0
----
1
82
21
82
81
82

query I rowsort
SELECT DISTINCT + + AVG ( ALL + col2 ) FROM tab1 AS cor0 WHERE + col2 IS NULL
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-843
SELECT + - CAST( - ( 53 ) AS SIGNED ) FROM tab2 cor0
----
53
53
53

skipif mysql # not compatible
query I rowsort label-843
SELECT + - CAST ( - ( 53 ) AS INTEGER ) FROM tab2 cor0
----
53
53
53

query I rowsort
SELECT ALL col0 + 71 * + + 75 + - col1 - - + col0 + + + col1 FROM tab2 AS cor0
----
5417
5453
5475

onlyif mysql # aggregate syntax: 
query I rowsort label-845
SELECT + - COUNT( * ) * 24 * COUNT( * ) FROM tab1 AS cor0
----
-216

skipif mysql # not compatible
query I rowsort label-845
SELECT + - COUNT ( * ) * 24 * COUNT ( * ) FROM tab1 AS cor0
----
-216

query I rowsort
SELECT ALL - 18 AS col0 FROM tab0
----
-18
-18
-18

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-847
SELECT DISTINCT + col0 FROM tab1 WHERE NOT NULL NOT IN ( col0 - + CAST( NULL AS SIGNED ), - col2 - - + col2 )
----

skipif mysql # not compatible
query I rowsort label-847
SELECT DISTINCT + col0 FROM tab1 WHERE NOT NULL NOT IN ( col0 - + CAST ( NULL AS INTEGER ), - col2 - - + col2 )
----

query I rowsort
SELECT DISTINCT - 46 FROM tab0, tab0 cor0
----
-46

query I rowsort
SELECT + ( + 12 ) - - col2 FROM tab1 AS cor0 WHERE + col2 + - - 31 > ( col2 ) + - ( col0 )
----
108
71
80

query I rowsort
SELECT - - 60 + ( + col0 ) FROM tab0 AS cor0
----
147
157
75

query I rowsort
SELECT 63 + + - 38 AS col1 FROM tab2 AS cor0
----
25
25
25

query I rowsort
SELECT DISTINCT 15 + - col2 FROM tab2 AS cor0
----
-25
-43
-8

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - + 67 * col0 col2 FROM tab0 AS cor0
----
-1005
-5829
-6499

query I rowsort
SELECT ALL - col2 * + + 61 + - col2 + - col0 AS col1 FROM tab2 AS cor0
----
-1472
-2544
-3671

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE NOT + ( col2 ) < - 63 + col2
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-856
SELECT DISTINCT + + col1 - + col2 FROM tab2 AS cor0 WHERE NOT CAST( NULL AS SIGNED ) = NULL
----

skipif mysql # not compatible
query I rowsort label-856
SELECT DISTINCT + + col1 - + col2 FROM tab2 AS cor0 WHERE NOT CAST ( NULL AS INTEGER ) = NULL
----

query II rowsort
SELECT + - col1 + + - 85 - - col1 * + - col1, col1 FROM tab1 AS cor0
----
-115
5
-2341
47
-295
14

onlyif mysql # aggregate syntax: 
query I rowsort label-858
SELECT ALL - COUNT( + col1 ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-858
SELECT ALL - COUNT ( + col1 ) FROM tab2
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-859
SELECT + ( + - COUNT( * ) ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-859
SELECT + ( + - COUNT ( * ) ) FROM tab2
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-860
SELECT DISTINCT - MAX( 89 ) AS col2 FROM tab1
----
-89

skipif mysql # not compatible
query I rowsort label-860
SELECT DISTINCT - MAX ( 89 ) AS col2 FROM tab1
----
-89

query III rowsort
SELECT * FROM tab1 WHERE NOT col0 + + col2 < + 11
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query II rowsort
SELECT col1, + col2 AS col2 FROM tab0
----
1
99
21
10
81
47

query II rowsort
SELECT DISTINCT - col0 AS col1, - col0 AS col0 FROM tab2 cor0 WHERE col1 / - - ( - col0 ) > NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-864
SELECT DISTINCT + 22 DIV col1 col2 FROM tab0 AS cor0
----
0
1
22

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-864
SELECT DISTINCT + 22 / col1 col2 FROM tab0 AS cor0
----
0
1
22

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( col1 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: DECIMAL type: 
query II rowsort label-866
SELECT DISTINCT - CAST( NULL AS DECIMAL ) AS col1, col2 AS col2 FROM tab1 cor0
----
NULL
59
NULL
68
NULL
96

skipif mysql # not compatible
query II rowsort label-866
SELECT DISTINCT - CAST ( NULL AS REAL ) AS col1, col2 AS col2 FROM tab1 cor0
----
NULL
59
NULL
68
NULL
96

query I rowsort
SELECT DISTINCT + 28 * - - ( + + col0 ) FROM tab2 cor0
----
1288
1792
2100

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 72 * + 95 - + col0 - - + col2 + col1 col1 FROM tab2 AS cor0
----
6868
6890
6893

query I rowsort
SELECT DISTINCT + ( + 72 ) FROM tab1 AS cor0
----
72

onlyif mysql # aggregate syntax: 
query I rowsort label-870
SELECT ALL COUNT( * ) - - + COUNT( * ) FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
18

skipif mysql # not compatible
query I rowsort label-870
SELECT ALL COUNT ( * ) - - + COUNT ( * ) FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
18

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query II rowsort label-871
SELECT + col2 col1, col0 + - col2 - - + CAST( + col1 AS SIGNED ) DIV + 65 + - 34 FROM tab0
----
10
43
47
-65
99
-36

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-871
SELECT + col2 col1, col0 + - col2 - - + CAST ( + col1 AS INTEGER ) / + 65 + - 34 FROM tab0
----
10
43
47
-65
99
-36

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - col1 col1, - 15 * 10 FROM tab2
----
-51
-150
-67
-150
-77
-150

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-873
SELECT - MAX( DISTINCT CAST( NULL AS SIGNED ) ) AS col0, + ( + SUM( DISTINCT + - 43 ) ) FROM tab1 WHERE NOT ( NULL BETWEEN col2 AND NULL )
----
NULL
NULL

skipif mysql # not compatible
query II rowsort label-873
SELECT - MAX ( DISTINCT CAST ( NULL AS INTEGER ) ) AS col0, + ( + SUM ( DISTINCT + - 43 ) ) FROM tab1 WHERE NOT ( NULL BETWEEN col2 AND NULL )
----
NULL
NULL

query I rowsort
SELECT ALL col0 * 36 * 84 * - col1 FROM tab1
----
-1285200
-12933648
-2159136

query I rowsort
SELECT ALL + col0 + + 32 AS col0 FROM tab1 WHERE NOT NULL IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-876
SELECT DISTINCT SUM( - + 72 ) FROM tab1
----
-216

skipif mysql # not compatible
query I rowsort label-876
SELECT DISTINCT SUM ( - + 72 ) FROM tab1
----
-216

onlyif mysql # aggregate syntax: 
query I rowsort label-877
SELECT - 67 + + COUNT( * ) AS col2 FROM tab1 AS cor0
----
-64

skipif mysql # not compatible
query I rowsort label-877
SELECT - 67 + + COUNT ( * ) AS col2 FROM tab1 AS cor0
----
-64

onlyif mysql # aggregate syntax: 
query I rowsort label-878
SELECT ALL + 57 * - + COUNT( * ) AS col1 FROM tab0 cor0
----
-171

skipif mysql # not compatible
query I rowsort label-878
SELECT ALL + 57 * - + COUNT ( * ) AS col1 FROM tab0 cor0
----
-171

query I rowsort
SELECT ALL col1 * col0 * - col0 AS col2 FROM tab2 AS cor0
----
-107916
-315392
-376875

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT - 73 * + col2 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - - 58 col1, col1 AS col1 FROM tab0 AS cor0
----
58
1
58
21
58
81

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-882
SELECT * FROM tab2 AS cor0 WHERE - col2 - + col1 + - - 26 * 10 * + - ( col2 ) * col1 * - 88 + - + CAST( NULL AS SIGNED ) + + - 21 / - col0 * + col2 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-882
SELECT * FROM tab2 AS cor0 WHERE - col2 - + col1 + - - 26 * 10 * + - ( col2 ) * col1 * - 88 + - + CAST ( NULL AS INTEGER ) + + - 21 / - col0 * + col2 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-883
SELECT * FROM tab1 WHERE + CAST( col2 AS SIGNED ) IS NULL
----

skipif mysql # not compatible
query III rowsort label-883
SELECT * FROM tab1 WHERE + CAST ( col2 AS INTEGER ) IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 45 + - + 67 col1 FROM tab2
----
-22

query I rowsort
SELECT ALL 46 * col0 AS col2 FROM tab0
----
4002
4462
690

onlyif mysql # aggregate syntax: 
query I rowsort label-886
SELECT - COUNT( * ) * + COUNT( * ) FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-886
SELECT - COUNT ( * ) * + COUNT ( * ) FROM tab1
----
-9

query I rowsort
SELECT DISTINCT - - col1 + col1 AS col0 FROM tab0 WHERE NOT NULL IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-888
SELECT 69 DIV - 73 AS col1 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-888
SELECT 69 / - 73 AS col1 FROM tab2
----
0
0
0

query I rowsort
SELECT ALL col0 * - + col2 * + col0 AS col0 FROM tab0
----
-10575
-75690
-931491

query II rowsort
SELECT + col2 * - 0, - col0 AS col2 FROM tab1
----
0
-51
0
-85
0
-91

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-891
SELECT ALL CAST( - 26 AS SIGNED ) FROM tab0
----
-26
-26
-26

skipif mysql # not compatible
query I rowsort label-891
SELECT ALL CAST ( - 26 AS INTEGER ) FROM tab0
----
-26
-26
-26

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-892
SELECT DISTINCT + SUM( DISTINCT - CAST( + 97 AS SIGNED ) ) FROM tab0 cor0
----
-97

skipif mysql # not compatible
query I rowsort label-892
SELECT DISTINCT + SUM ( DISTINCT - CAST ( + 97 AS INTEGER ) ) FROM tab0 cor0
----
-97

query I rowsort
SELECT DISTINCT - + col1 + 29 FROM tab1 AS cor0
----
-18
15
24

query I rowsort
SELECT - + col1 AS col0 FROM tab2 AS cor0 WHERE ( NOT NULL IS NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-895
SELECT + + SUM( - 40 ) + + - ( - + COUNT( * ) ) FROM tab2 AS cor0
----
-117

skipif mysql # not compatible
query I rowsort label-895
SELECT + + SUM ( - 40 ) + + - ( - + COUNT ( * ) ) FROM tab2 AS cor0
----
-117

query I rowsort
SELECT ALL + 15 + + col0 * + col0 * col0 AS col1 FROM tab1 AS cor0
----
132666
614140
753586

onlyif mysql # aggregate syntax: 
query I rowsort label-897
SELECT DISTINCT + 89 + + MAX( DISTINCT - col0 ) AS col0 FROM tab0
----
74

skipif mysql # not compatible
query I rowsort label-897
SELECT DISTINCT + 89 + + MAX ( DISTINCT - col0 ) AS col0 FROM tab0
----
74

query I rowsort
SELECT col1 + + 64 + + col0 AS col2 FROM tab1
----
129
154
202

query I rowsort
SELECT - col0 FROM tab2 cor0 WHERE + 53 * - - col2 * - ( + col0 ) IN ( - 51 )
----

query II rowsort
SELECT - 58 + 6, col1 * + + 59 + col1 FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN NULL AND + col1
----

query I rowsort
SELECT DISTINCT - ( - - col1 ) AS col2 FROM tab1 AS cor0
----
-14
-47
-5

query II rowsort
SELECT - - col0, col0 * - col1 AS col2 FROM tab1 AS cor0 WHERE NOT + col1 IS NOT NULL
----

query I rowsort
SELECT ALL + 63 * + + 97 AS col2 FROM tab0 cor0 WHERE NOT ( NULL ) <> - 33
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-904
SELECT - 8 AS col0 FROM tab2 AS cor0 WHERE NOT 90 IS NULL AND CAST( + 52 AS SIGNED ) + + col0 + col2 / - + 16 * - - col1 IS NULL
----

skipif mysql # not compatible
query I rowsort label-904
SELECT - 8 AS col0 FROM tab2 AS cor0 WHERE NOT 90 IS NULL AND CAST ( + 52 AS INTEGER ) + + col0 + col2 / - + 16 * - - col1 IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-905
SELECT + + COUNT( + CAST( NULL AS DECIMAL ) ) FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-905
SELECT + + COUNT ( + CAST ( NULL AS REAL ) ) FROM tab1 AS cor0
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-906
SELECT DISTINCT + 54 AS col0, + CAST( NULL AS SIGNED ) + - - 95 AS col2 FROM tab2 AS cor0
----
54
NULL

skipif mysql # not compatible
query II rowsort label-906
SELECT DISTINCT + 54 AS col0, + CAST ( NULL AS INTEGER ) + - - 95 AS col2 FROM tab2 AS cor0
----
54
NULL

query I rowsort
SELECT ALL col0 * + ( col2 ) AS col2 FROM tab2 AS cor0
----
1058
2560
4350

query I rowsort
SELECT ALL + col2 * - 85 FROM tab0
----
-3995
-8415
-850

onlyif mysql # aggregate syntax: 
query I rowsort label-909
SELECT ALL MIN( DISTINCT + + col1 ) AS col1 FROM tab1
----
5

skipif mysql # not compatible
query I rowsort label-909
SELECT ALL MIN ( DISTINCT + + col1 ) AS col1 FROM tab1
----
5

onlyif mysql # aggregate syntax: 
query I rowsort label-910
SELECT DISTINCT - COUNT( DISTINCT 42 ) FROM tab1
----
-1

skipif mysql # not compatible
query I rowsort label-910
SELECT DISTINCT - COUNT ( DISTINCT 42 ) FROM tab1
----
-1

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + col0 NOT BETWEEN - col2 / col2 + - 32 AND NULL
----

query I rowsort
SELECT DISTINCT + - 89 AS col1 FROM tab2 AS cor0
----
-89

query I rowsort
SELECT - 13 FROM ( tab2 cor0 CROSS JOIN tab2 AS cor1 )
----
9 values hashing to e95f5f4bd0f480397cced5f5e8a23792

onlyif mysql # DIV for integer division: 
query I rowsort label-914
SELECT ALL col0 DIV - ( + - 83 ) AS col2 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-914
SELECT ALL col0 / - ( + - 83 ) AS col2 FROM tab2
----
0
0
0

query I rowsort
SELECT ALL - - col0 * + col0 + - + col2 FROM tab0 AS cor0
----
178
7559
9310

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-916
SELECT ALL * FROM tab1 AS cor0 WHERE + col0 * CAST( NULL AS SIGNED ) BETWEEN + 48 AND col2
----

skipif mysql # not compatible
query III rowsort label-916
SELECT ALL * FROM tab1 AS cor0 WHERE + col0 * CAST ( NULL AS INTEGER ) BETWEEN + 48 AND col2
----

onlyif mysql # DIV for integer division: 
query I rowsort label-917
SELECT + + col0 DIV col2 AS col1 FROM tab1 cor0
----
0
1
1

skipif mysql # not compatible
query I rowsort label-917
SELECT + + col0 / col2 AS col1 FROM tab1 cor0
----
0
1
1

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + ( - 89 ) col2 FROM tab0 cor0
----
-89
-89
-89

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-919
SELECT ( col1 ) * + col2 + CAST( NULL AS DECIMAL ) + 95 * + + 65 AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-919
SELECT ( col1 ) * + col2 + CAST ( NULL AS REAL ) + 95 * + + 65 AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-920
SELECT - MIN( DISTINCT + + col1 ) FROM tab1 AS cor0
----
-5

skipif mysql # not compatible
query I rowsort label-920
SELECT - MIN ( DISTINCT + + col1 ) FROM tab1 AS cor0
----
-5

query I rowsort
SELECT ALL 26 FROM tab1 AS cor0 WHERE NULL IS NULL
----
26
26
26

query I rowsort
SELECT DISTINCT col1 + - 79 + - + 26 FROM tab1 AS cor0
----
-100
-58
-91

query I rowsort
SELECT - - col1 AS col0 FROM tab2 AS cor0 WHERE - col0 - col1 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col1 + + 30 + + - 70 col0 FROM tab0 cor0
----
-19
-39
41

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-925
SELECT DISTINCT + col1 + + CAST( + col2 AS SIGNED ) DIV col1 + + - 88 col0 FROM tab0
----
-67
-7
12

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-925
SELECT DISTINCT + col1 + + CAST ( + col2 AS INTEGER ) / col1 + + - 88 col0 FROM tab0
----
-67
-7
12

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT + col1 * + col0 * - ( - - 5 ) IS NOT NULL
----

query I rowsort
SELECT DISTINCT - col0 * - col0 * - col1 + + col0 FROM tab2
----
-107870
-315328
-376800

query I rowsort
SELECT DISTINCT 95 * + 28 * - col1 AS col2 FROM tab1
----
-125020
-13300
-37240

query I rowsort
SELECT DISTINCT + col2 * + col1 * + + 41 FROM tab1
----
12095
131036
55104

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col1 * + + 66 col2 FROM tab1
----
3102
330
924

query I rowsort
SELECT DISTINCT + col1 * - ( - 69 ) AS col0 FROM tab1
----
3243
345
966

query II rowsort
SELECT DISTINCT - col0, col2 FROM tab1
----
-51
96
-85
59
-91
68

query II rowsort
SELECT ALL col2 AS col0, col2 AS col0 FROM tab0
----
10
10
47
47
99
99

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT + col2 <> NULL
----

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( NULL ) IN ( col2, col0 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-936
SELECT + COUNT( DISTINCT CAST( NULL AS SIGNED ) ) FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
0

skipif mysql # not compatible
query I rowsort label-936
SELECT + COUNT ( DISTINCT CAST ( NULL AS INTEGER ) ) FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
0

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-937
SELECT - COUNT( * ) * CAST( NULL AS SIGNED ) AS col0, - MIN( col1 ) + - + CAST( NULL AS SIGNED ) AS col1 FROM tab1 AS cor0
----
NULL
NULL

skipif mysql # not compatible
query II rowsort label-937
SELECT - COUNT ( * ) * CAST ( NULL AS INTEGER ) AS col0, - MIN ( col1 ) + - + CAST ( NULL AS INTEGER ) AS col1 FROM tab1 AS cor0
----
NULL
NULL

query I rowsort
SELECT + + col1 * + col2 + + 58 FROM tab2 AS cor0
----
1231
3138
3944

query I rowsort
SELECT DISTINCT + col0 * - - col2 + + + 76 FROM tab2 AS cor0 WHERE NOT NULL > NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-940
SELECT DISTINCT + - COUNT( * ) col0 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-940
SELECT DISTINCT + - COUNT ( * ) col0 FROM tab2 AS cor0
----
-3

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT 16 BETWEEN NULL AND col2
----

onlyif mysql # aggregate syntax: 
query II rowsort label-942
SELECT ALL 83 AS col0, MIN( - - 45 ) * - 28 + + COUNT( * ) FROM tab2
----
83
-1257

skipif mysql # not compatible
query II rowsort label-942
SELECT ALL 83 AS col0, MIN ( - - 45 ) * - 28 + + COUNT ( * ) FROM tab2
----
83
-1257

query III rowsort
SELECT * FROM tab2 WHERE NOT - col2 <> + 61 * - - col0 * - col0 * - col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-944
SELECT DISTINCT + 67 * - - COUNT( * ) col0 FROM tab2
----
201

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-944
SELECT DISTINCT + 67 * - - COUNT ( * ) col0 FROM tab2
----
201

onlyif mysql # aggregate syntax: 
query II rowsort label-945
SELECT 42 AS col0, COUNT( * ) * COUNT( - 68 ) FROM tab2
----
42
9

skipif mysql # not compatible
query II rowsort label-945
SELECT 42 AS col0, COUNT ( * ) * COUNT ( - 68 ) FROM tab2
----
42
9

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE col1 + - - 69 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 33 * + - ( 66 ) >= - col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT - col2 * 41 <= NULL
----

query I rowsort
SELECT ALL - 2 + - col0 FROM tab2 AS cor0
----
-48
-66
-77

query I rowsort
SELECT DISTINCT - + col1 + + ( col0 ) AS col1 FROM tab1 cor0
----
37
44
80

query II rowsort
SELECT - 24 * 82 AS col2, + col1 AS col0 FROM tab1 AS cor0
----
-1968
14
-1968
47
-1968
5

onlyif mysql # aggregate syntax: 
query I rowsort label-952
SELECT DISTINCT + COUNT( ALL 21 ) + + - COUNT( * ) FROM tab2 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-952
SELECT DISTINCT + COUNT ( ALL 21 ) + + - COUNT ( * ) FROM tab2 AS cor0
----
0

query I rowsort
SELECT ALL 0 * - col1 * - col0 FROM tab1 AS cor0
----
0
0
0

query III rowsort
SELECT * FROM tab1 cor0 WHERE ( NULL ) >= - col2 + - 96
----

onlyif mysql # aggregate syntax: 
query I rowsort label-955
SELECT 21 * COUNT( * ) * + + MAX( + 79 ) col0 FROM tab2
----
4977

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-955
SELECT 21 * COUNT ( * ) * + + MAX ( + 79 ) col0 FROM tab2
----
4977

onlyif mysql # aggregate syntax: 
query I rowsort label-956
SELECT ALL COUNT( - col1 ) + + + ( - COUNT( * ) ) AS col0 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-956
SELECT ALL COUNT ( - col1 ) + + + ( - COUNT ( * ) ) AS col0 FROM tab1
----
0

query I rowsort
SELECT ALL + col1 * 32 AS col2 FROM tab0
----
2592
32
672

onlyif mysql # DIV for integer division: 
query I rowsort label-958
SELECT 62 * col1 DIV - ( + col0 ) FROM tab2
----
-55
-68
-74

skipif mysql # not compatible
query I rowsort label-958
SELECT 62 * col1 / - ( + col0 ) FROM tab2
----
-55
-68
-74

onlyif mysql # DIV for integer division: 
query I rowsort label-959
SELECT ALL col1 DIV - 52 FROM tab2
----
-1
-1
0

skipif mysql # not compatible
query I rowsort label-959
SELECT ALL col1 / - 52 FROM tab2
----
-1
-1
0

query I rowsort
SELECT + 84 - + - col1 * col1 * + 33 AS col0 FROM tab1
----
6552
72981
909

query I rowsort
SELECT ALL 50 * col1 AS col1 FROM tab1 WHERE NOT ( NOT - col2 IS NULL )
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NULL NOT BETWEEN ( NULL ) AND + - 89
----

onlyif mysql # aggregate syntax: 
query I rowsort label-963
SELECT + COUNT( * ) + + 19 FROM tab2 cor0
----
22

skipif mysql # not compatible
query I rowsort label-963
SELECT + COUNT ( * ) + + 19 FROM tab2 cor0
----
22

query I rowsort
SELECT - 96 FROM tab2 AS cor0 WHERE ( NOT NULL IS NULL ) OR NOT ( NULL ) NOT BETWEEN 74 * - - ( + col0 ) / + col1 * + col0 AND NULL
----

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE 96 > NULL
----

query I rowsort
SELECT 58 AS col2 FROM tab0 cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to ef6e63aeed2581a168f07646d258f666

onlyif mysql # aggregate syntax: 
query II rowsort label-967
SELECT ALL 43 AS col1, + COUNT( ALL - - col0 ) FROM tab1
----
43
3

skipif mysql # not compatible
query II rowsort label-967
SELECT ALL 43 AS col1, + COUNT ( ALL - - col0 ) FROM tab1
----
43
3

query II rowsort
SELECT DISTINCT 21 AS col2, col2 AS col1 FROM tab1 AS cor0
----
21
59
21
68
21
96

query I rowsort
SELECT + col0 AS col2 FROM tab1 cor0 WHERE NOT NULL IS NOT NULL
----
51
85
91

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NOT ( + col2 IS NOT NULL ) )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col1 * + col0 col2 FROM tab2 AS cor0
----
-2346
-4928
-5025

onlyif mysql # DIV for integer division: 
query II rowsort label-972
SELECT - + 55 DIV - 65 col1, ( + col0 ) + + + col2 FROM tab0 AS cor0
----
0
196
0
62
0
97

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-972
SELECT - + 55 / - 65 col1, ( + col0 ) + + + col2 FROM tab0 AS cor0
----
0
196
0
62
0
97

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-973
SELECT ALL - 5 / - col0 * - - col1 * + CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-973
SELECT ALL - 5 / - col0 * - - col1 * + CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-974
SELECT 13 DIV + 40 * + + col1 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-974
SELECT 13 / + 40 * + + col1 FROM tab2 AS cor0
----
0
0
0

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NULL >= + col0 )
----

query II rowsort
SELECT + ( + col2 ), - ( - + col2 ) AS col1 FROM tab2 AS cor0
----
23
23
40
40
58
58

query I rowsort
SELECT ALL + + 1 FROM tab1 AS cor0
----
1
1
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-978
SELECT - CAST( NULL AS SIGNED ) * + 15 col1 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-978
SELECT - CAST ( NULL AS INTEGER ) * + 15 col1 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-979
SELECT ALL + COUNT( col2 ) AS col0 FROM tab0 WHERE NULL IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-979
SELECT ALL + COUNT ( col2 ) AS col0 FROM tab0 WHERE NULL IS NULL
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-980
SELECT ALL CAST( col2 AS SIGNED ) * - col1 + - col1 AS col2 FROM tab1
----
-1358
-300
-3243

skipif mysql # not compatible
query I rowsort label-980
SELECT ALL CAST ( col2 AS INTEGER ) * - col1 + - col1 AS col2 FROM tab1
----
-1358
-300
-3243

query III rowsort
SELECT * FROM tab2 WHERE NOT - 23 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT col1 + + 81 FROM tab2
----
132
148
158

query I rowsort
SELECT DISTINCT + 65 + + 76 FROM tab2 AS cor0
----
141

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN ( NULL ) AND 1
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 38 col0 FROM tab0
----
38

query III rowsort
SELECT ALL * FROM tab1 WHERE ( - col1 ) IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - col2 + col0 * 25 * col2 col0 FROM tab1
----
122304
125316
154632

query I rowsort
SELECT ALL - 84 * + + col2 AS col1 FROM tab2
----
-1932
-3360
-4872

onlyif mysql # aggregate syntax: 
query I rowsort label-989
SELECT DISTINCT 24 * COUNT( * ) + + 4 FROM tab0
----
76

skipif mysql # not compatible
query I rowsort label-989
SELECT DISTINCT 24 * COUNT ( * ) + + 4 FROM tab0
----
76

query I rowsort
SELECT DISTINCT + col1 + col0 * + + col0 FROM tab0 cor0
----
306
7590
9410

query I rowsort
SELECT DISTINCT ( - AVG ( DISTINCT + 59 ) ) AS col0 FROM tab0 AS cor0 WHERE 56 BETWEEN + - col1 * col2 * col1 + - col0 + - col1 * - - 13 + - col2 + - col1 + + 97 AND NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-992
SELECT DISTINCT + MIN( DISTINCT col0 ) col0 FROM tab0 AS cor0
----
15

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-992
SELECT DISTINCT + MIN ( DISTINCT col0 ) col0 FROM tab0 AS cor0
----
15

query I rowsort
SELECT DISTINCT col0 + - ( + col0 ) AS col1 FROM tab2 AS cor0
----
0

query I rowsort
SELECT - 92 + - col2 FROM tab1 cor0
----
-151
-160
-188

onlyif mysql # aggregate syntax: 
query I rowsort label-995
SELECT + COUNT( * ) + + + 7 AS col0 FROM tab1 AS cor0
----
10

skipif mysql # not compatible
query I rowsort label-995
SELECT + COUNT ( * ) + + + 7 AS col0 FROM tab1 AS cor0
----
10

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-996
SELECT DISTINCT CAST( NULL AS SIGNED ) + + col2 - + col0 + - + col1 * 92 + - - col1 + + 82 * - col0 + + col0 FROM tab0 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-996
SELECT DISTINCT CAST ( NULL AS INTEGER ) + + col2 - + col0 + - + col1 * 92 + - - col1 + + 82 * - col0 + + col0 FROM tab0 cor0
----
NULL

query I rowsort
SELECT - col1 FROM tab1 WHERE + col2 = + + 81 + col0
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - col2 >= - col1
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-999
SELECT ALL 70 - - + CAST( + 27 AS SIGNED ) col2 FROM tab1 WHERE NULL IS NOT NULL
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-999
SELECT ALL 70 - - + CAST ( + 27 AS INTEGER ) col2 FROM tab1 WHERE NULL IS NOT NULL
----

query II rowsort
SELECT DISTINCT col0 - - - col1, ( 72 ) * col1 * + 92 AS col2 FROM tab1
----
37
92736
44
311328
80
33120

query II rowsort
SELECT - 2 * col0 AS col0, + 90 FROM tab1
----
-102
90
-170
90
-182
90

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT NULL NOT BETWEEN - col2 * + col0 AND - ( col1 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1003
SELECT - ( COUNT( DISTINCT CAST( NULL AS SIGNED ) ) ) AS col0 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-1003
SELECT - ( COUNT ( DISTINCT CAST ( NULL AS INTEGER ) ) ) AS col0 FROM tab2
----
0

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT col2 * col0 + + col2 + + 85 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # DIV for integer division: 
query I rowsort label-1005
SELECT + - col0 DIV 4 * 58 AS col0 FROM tab1 AS cor0
----
-1218
-1276
-696

skipif mysql # not compatible
query I rowsort label-1005
SELECT + - col0 / 4 * 58 AS col0 FROM tab1 AS cor0
----
-1218
-1276
-696

query I rowsort
SELECT ALL 23 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to d94fadcc1c8cc4fc51b78b83e04795f2

onlyif mysql # aggregate syntax: 
query I rowsort label-1007
SELECT ALL MIN( DISTINCT + + col0 ) FROM tab1 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-1007
SELECT ALL MIN ( DISTINCT + + col0 ) FROM tab1 AS cor0
----
51

query I rowsort
SELECT ALL - col0 * + 10 + + 43 FROM tab1 AS cor0
----
-467
-807
-867

onlyif mysql # DIV for integer division: 
query I rowsort label-1009
SELECT - 82 * - col0 DIV + ( - col0 ) FROM tab2 AS cor0
----
-82
-82
-82

skipif mysql # not compatible
query I rowsort label-1009
SELECT - 82 * - col0 / + ( - col0 ) FROM tab2 AS cor0
----
-82
-82
-82

onlyif mysql # aggregate syntax: 
query I rowsort label-1010
SELECT ALL - - 79 * - - 35 * - COUNT( * ) FROM tab1 cor0
----
-8295

skipif mysql # not compatible
query I rowsort label-1010
SELECT ALL - - 79 * - - 35 * - COUNT ( * ) FROM tab1 cor0
----
-8295

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN 55 - + 53 - + - col0 / + col1 AND NULL
----

query I rowsort
SELECT ALL col2 + - col0 + + + col2 AS col1 FROM tab2 AS cor0 WHERE NOT col2 * + col0 * + - 64 NOT BETWEEN + - col1 * - col0 + - col0 AND ( NULL )
----

query II rowsort
SELECT - col0 AS col2, - col1 AS col1 FROM tab0 AS cor0
----
-15
-81
-87
-21
-97
-1

query I rowsort
SELECT col2 AS col1 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1015
SELECT - CAST( col1 AS SIGNED ), - col2 - col0 AS col1 FROM tab0
----
-1
-196
-21
-97
-81
-62

skipif mysql # not compatible
query II rowsort label-1015
SELECT - CAST ( col1 AS INTEGER ), - col2 - col0 AS col1 FROM tab0
----
-1
-196
-21
-97
-81
-62

query II rowsort
SELECT col2 AS col2, col1 + + 19 FROM tab1
----
59
24
68
66
96
33

query I rowsort
SELECT ALL + 72 * + 97 FROM tab1
----
6984
6984
6984

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1018
SELECT DISTINCT + CAST( NULL AS SIGNED ) + + col0, + col1 AS col2 FROM tab0
----
NULL
1
NULL
21
NULL
81

skipif mysql # not compatible
query II rowsort label-1018
SELECT DISTINCT + CAST ( NULL AS INTEGER ) + + col0, + col1 AS col2 FROM tab0
----
NULL
1
NULL
21
NULL
81

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-1019
SELECT - COUNT( * ) AS col1, + CAST( - 92 AS SIGNED ) FROM tab2
----
-3
-92

skipif mysql # not compatible
query II rowsort label-1019
SELECT - COUNT ( * ) AS col1, + CAST ( - 92 AS INTEGER ) FROM tab2
----
-3
-92

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT NULL < + col0
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1021
SELECT DISTINCT + 50 + + - CAST( NULL AS SIGNED ) + + col0 * - col0 * 71 * col1 * col0 / - col0 + - col2 AS col2 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-1021
SELECT DISTINCT + 50 + + - CAST ( NULL AS INTEGER ) + + col0 * - col0 * 71 * col1 * col0 / - col0 + - col2 AS col2 FROM tab0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-1022
SELECT 16 + + CAST( + col2 AS SIGNED ) + - + col1 DIV + col0 * - + col0 FROM tab1
----
112
75
84

skipif mysql # not compatible
query I rowsort label-1022
SELECT 16 + + CAST ( + col2 AS INTEGER ) + - + col1 / + col0 * - + col0 FROM tab1
----
112
75
84

query I rowsort
SELECT DISTINCT - + col0 FROM tab1 AS cor0 WHERE NOT NULL NOT IN ( - col2, col1 )
----

query I rowsort
SELECT DISTINCT col0 + - + col0 * - col1 AS col0 FROM tab0 cor0
----
1230
1914
194

query I rowsort
SELECT DISTINCT 42 * + - col0 + col1 - - col1 FROM tab1 cor0
----
-2114
-3560
-3728

onlyif mysql # aggregate syntax: 
query I rowsort label-1026
SELECT ALL + COUNT( * ) col0 FROM tab1 AS cor0 WHERE NULL <> ( - 8 ) * ( - col0 )
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1026
SELECT ALL + COUNT ( * ) col0 FROM tab1 AS cor0 WHERE NULL <> ( - 8 ) * ( - col0 )
----
0

query I rowsort
SELECT 83 * + col0 AS col0 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT + + 33 * + col0 - + - col0 + 91 * - 99 FROM tab1 AS cor0
----
-5915
-6119
-7275

query I rowsort
SELECT - 26 - + col0 FROM tab0
----
-113
-123
-41

onlyif mysql # DIV for integer division: 
query II rowsort label-1030
SELECT DISTINCT - col0 - col2 + + 86, + col0 DIV + 23 col2 FROM tab0
----
-11
3
-110
4
24
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1030
SELECT DISTINCT - col0 - col2 + + 86, + col0 / + 23 col2 FROM tab0
----
-11
3
-110
4
24
0

query I rowsort
SELECT col1 * - - 70 FROM tab2 WHERE + - col0 IS NOT NULL
----
3570
4690
5390

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col2 * + 0 - - col2 + 34 col1 FROM tab2
----
57
74
92

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1033
SELECT + ( ( - COUNT( * ) ) ) + CAST( NULL AS SIGNED ) AS col2 FROM tab1 WHERE + 98 IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1033
SELECT + ( ( - COUNT ( * ) ) ) + CAST ( NULL AS INTEGER ) AS col2 FROM tab1 WHERE + 98 IS NULL
----
NULL

query I rowsort
SELECT + col2 - col0 * - + col1 FROM tab0
----
1262
1837
196

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1035
SELECT col0 * + - col1 - - col1 + + CAST( NULL AS SIGNED ) AS col0 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1035
SELECT col0 * + - col1 - - col1 + + CAST ( NULL AS INTEGER ) AS col0 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1036
SELECT DISTINCT COUNT( * ) - + 45 FROM tab1
----
-42

skipif mysql # not compatible
query I rowsort label-1036
SELECT DISTINCT COUNT ( * ) - + 45 FROM tab1
----
-42

query I rowsort
SELECT DISTINCT 82 AS col1 FROM tab2
----
82

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT + 82 * col2 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # DIV for integer division: 
query I rowsort label-1039
SELECT DISTINCT - 15 DIV + 73 FROM tab0 cor0
----
0

skipif mysql # not compatible
query I rowsort label-1039
SELECT DISTINCT - 15 / + 73 FROM tab0 cor0
----
0

query I rowsort
SELECT DISTINCT col0 AS col0 FROM tab0 WHERE NULL IN ( - col2 )
----

query I rowsort
SELECT DISTINCT + col1 * - col2 AS col2 FROM tab2 WHERE + col2 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1042
SELECT ALL * FROM tab0 AS cor0 WHERE NULL IN ( ( - - col1 ) / - - col2 * + - col1 * - CAST( NULL AS SIGNED ) - + col1 )
----

skipif mysql # not compatible
query III rowsort label-1042
SELECT ALL * FROM tab0 AS cor0 WHERE NULL IN ( ( - - col1 ) / - - col2 * + - col1 * - CAST ( NULL AS INTEGER ) - + col1 )
----

query I rowsort
SELECT ALL + col2 * - + 67 + col2 FROM tab2 AS cor0
----
-1518
-2640
-3828

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1044
SELECT + COUNT( * ) * + MIN( - col0 ) * COUNT( * ) - + + 53 DIV - - 85 + 75 + 9 * - 49 FROM tab2 AS cor0
----
-1041

skipif mysql # not compatible
query I rowsort label-1044
SELECT + COUNT ( * ) * + MIN ( - col0 ) * COUNT ( * ) - + + 53 / - - 85 + 75 + 9 * - 49 FROM tab2 AS cor0
----
-1041

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT - col2 <= - 56
----
46
51
23
64
77
40

onlyif mysql # aggregate syntax: 
query I rowsort label-1046
SELECT - MAX( DISTINCT col0 ) FROM tab2 AS cor0
----
-75

skipif mysql # not compatible
query I rowsort label-1046
SELECT - MAX ( DISTINCT col0 ) FROM tab2 AS cor0
----
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-1047
SELECT ALL ( - ( + - ( + COUNT( * ) ) ) ) AS col0 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-1047
SELECT ALL ( - ( + - ( + COUNT ( * ) ) ) ) AS col0 FROM tab0 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1048
SELECT - SUM( + + ( + 79 ) ) AS col0 FROM tab1 AS cor0
----
-237

skipif mysql # not compatible
query I rowsort label-1048
SELECT - SUM ( + + ( + 79 ) ) AS col0 FROM tab1 AS cor0
----
-237

query II rowsort
SELECT DISTINCT col1, 95 FROM tab2
----
51
95
67
95
77
95

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1050
SELECT * FROM tab1 WHERE NOT col1 + - col1 * + - CAST( 73 AS SIGNED ) + col2 IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-1050
SELECT * FROM tab1 WHERE NOT col1 + - col1 * + - CAST ( 73 AS INTEGER ) + col2 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1051
SELECT DISTINCT SUM( + - col1 ) AS col0 FROM tab1
----
-66

skipif mysql # not compatible
query I rowsort label-1051
SELECT DISTINCT SUM ( + - col1 ) AS col0 FROM tab1
----
-66

query I rowsort
SELECT DISTINCT + + ( col0 ) + - + col2 * + 83 + + - col0 FROM tab0 WHERE NULL IS NULL
----
-3901
-8217
-830

onlyif mysql # DIV for integer division: 
query I rowsort label-1053
SELECT + col2 DIV + - ( - + col1 ) AS col1 FROM tab1
----
1
11
6

skipif mysql # not compatible
query I rowsort label-1053
SELECT + col2 / + - ( - + col1 ) AS col1 FROM tab1
----
1
11
6

onlyif mysql # aggregate syntax: 
query I rowsort label-1054
SELECT DISTINCT COUNT( * ) * + - 42 AS col1 FROM tab0
----
-126

skipif mysql # not compatible
query I rowsort label-1054
SELECT DISTINCT COUNT ( * ) * + - 42 AS col1 FROM tab0
----
-126

query I rowsort
SELECT DISTINCT col0 FROM tab0 WHERE NOT NULL = - col0
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-1056
SELECT ALL COUNT( + CAST( - + 63 AS DECIMAL ) ) * + 71 AS col1 FROM tab2 WHERE NOT - col1 IS NULL
----
213

skipif mysql # not compatible
query I rowsort label-1056
SELECT ALL COUNT ( + CAST ( - + 63 AS REAL ) ) * + 71 AS col1 FROM tab2 WHERE NOT - col1 IS NULL
----
213

query III rowsort
SELECT * FROM tab0 WHERE - col2 > - col0
----
87
21
10

query I rowsort
SELECT 13 + col1 + - + col0 FROM tab0 AS cor0
----
-53
-83
79

onlyif mysql # aggregate syntax: 
query I rowsort label-1059
SELECT + + COUNT( * ) + COUNT( * ) AS col1 FROM tab1 AS cor0
----
6

skipif mysql # not compatible
query I rowsort label-1059
SELECT + + COUNT ( * ) + COUNT ( * ) AS col1 FROM tab1 AS cor0
----
6

onlyif mysql # aggregate syntax: 
query I rowsort label-1060
SELECT + 32 + + 69 * - COUNT( * ) FROM tab2 AS cor0 WHERE ( - col0 + - col2 + - 2 * + col1 * + col1 ) IS NULL
----
32

skipif mysql # not compatible
query I rowsort label-1060
SELECT + 32 + + 69 * - COUNT ( * ) FROM tab2 AS cor0 WHERE ( - col0 + - col2 + - 2 * + col1 * + col1 ) IS NULL
----
32

query I rowsort
SELECT DISTINCT + ( - 82 ) * + col0 + - - col0 FROM tab2 AS cor0
----
-3726
-5184
-6075

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE 28 * - + col1 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1063
SELECT + - MIN( ALL - col1 ) AS col1 FROM tab1 AS cor0
----
47

skipif mysql # not compatible
query I rowsort label-1063
SELECT + - MIN ( ALL - col1 ) AS col1 FROM tab1 AS cor0
----
47

query III rowsort
SELECT * FROM tab1 WHERE col2 * col0 >= + 41
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT - 65 AS col2 FROM tab0 WHERE + 22 + - col0 IS NOT NULL
----
-65

onlyif mysql # aggregate syntax: 
query I rowsort label-1066
SELECT ALL ( - + MIN( ALL col2 ) ) AS col0 FROM tab1
----
-59

skipif mysql # not compatible
query I rowsort label-1066
SELECT ALL ( - + MIN ( ALL col2 ) ) AS col0 FROM tab1
----
-59

onlyif mysql # aggregate syntax: 
query I rowsort label-1067
SELECT COUNT( * ) - - - 43 - - + 39 FROM tab2 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-1067
SELECT COUNT ( * ) - - - 43 - - + 39 FROM tab2 AS cor0
----
-1

onlyif mysql # DIV for integer division: 
query I rowsort label-1068
SELECT col1 + + - col0 DIV - + col0 FROM tab0 cor0
----
2
22
82

skipif mysql # not compatible
query I rowsort label-1068
SELECT col1 + + - col0 / - + col0 FROM tab0 cor0
----
2
22
82

query I rowsort
SELECT ALL 47 + + col2 AS col2 FROM tab1 AS cor0
----
106
115
143

query I rowsort
SELECT col0 + - col0 + - col1 FROM tab0 cor0
----
-1
-21
-81

onlyif mysql # aggregate syntax: 
query I rowsort label-1071
SELECT ALL + - MAX( DISTINCT + - 2 ) + - 66 FROM tab0 cor0
----
-64

skipif mysql # not compatible
query I rowsort label-1071
SELECT ALL + - MAX ( DISTINCT + - 2 ) + - 66 FROM tab0 cor0
----
-64

query I rowsort
SELECT 28 * - col1 AS col1 FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT col1 + - - 94 + col2 - ( 92 ) * - col2 * col0 AS col1 FROM tab1
----
450636
461538
569505

query I rowsort
SELECT DISTINCT ( + - col1 ) FROM tab0
----
-1
-21
-81

query I rowsort
SELECT ALL + col1 + + 0 FROM tab2 WHERE NULL IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1076
SELECT ALL + COUNT( * ) * - SUM( - col0 ) AS col2, - 54 * - + COUNT( * ) col1 FROM tab1
----
681
162

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1076
SELECT ALL + COUNT ( * ) * - SUM ( - col0 ) AS col2, - 54 * - + COUNT ( * ) col1 FROM tab1
----
681
162

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 76 * col1 * + + ( - - col2 ) col2 FROM tab2
----
234080
295336
89148

onlyif mysql # aggregate syntax: 
query I rowsort label-1078
SELECT DISTINCT - COUNT( * ) * - 10 col1 FROM tab1
----
30

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1078
SELECT DISTINCT - COUNT ( * ) * - 10 col1 FROM tab1
----
30

onlyif mysql # aggregate syntax: 
query I rowsort label-1079
SELECT COUNT( + - col2 ) AS col0 FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-1079
SELECT COUNT ( + - col2 ) AS col0 FROM tab1
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col0 * + 89 * - - col1 * + + 16 col2 FROM tab2
----
3340704
7017472
7155600

query III rowsort
SELECT ALL * FROM tab2 WHERE + + col1 + col1 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT - 38 * - 3 * + 30 FROM tab1 AS cor0
----
3420
3420
3420

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE 97 < + 21
----

query I rowsort
SELECT + + ( col1 ) + + 39 * col1 AS col2 FROM tab2 AS cor0
----
2040
2680
3080

onlyif mysql # aggregate syntax: 
query I rowsort label-1085
SELECT ALL - COUNT( * ) * + ( + + MIN( DISTINCT col0 ) ) FROM tab1 AS cor0
----
-153

skipif mysql # not compatible
query I rowsort label-1085
SELECT ALL - COUNT ( * ) * + ( + + MIN ( DISTINCT col0 ) ) FROM tab1 AS cor0
----
-153

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1086
SELECT * FROM tab1 AS cor0 WHERE NOT + 41 IN ( - 9 * + CAST( NULL AS SIGNED ) * col2 / - 2 + + CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-1086
SELECT * FROM tab1 AS cor0 WHERE NOT + 41 IN ( - 9 * + CAST ( NULL AS INTEGER ) * col2 / - 2 + + CAST ( NULL AS INTEGER ) )
----

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE col2 <> - col0
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-1088
SELECT DISTINCT + - MAX( ALL + col2 ) FROM tab0 AS cor0
----
-99

skipif mysql # not compatible
query I rowsort label-1088
SELECT DISTINCT + - MAX ( ALL + col2 ) FROM tab0 AS cor0
----
-99

query I rowsort
SELECT DISTINCT + 45 * col0 AS col0 FROM tab2
----
2070
2880
3375

query III rowsort
SELECT * FROM tab1 WHERE NULL >= - + col0 + + - col1
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col0 * - col1 col1 FROM tab2
----
-2346
-4928
-5025

query II rowsort
SELECT ALL col0 * - 5, col0 FROM tab2
----
-230
46
-320
64
-375
75

query I rowsort
SELECT DISTINCT 33 * - 15 AS col2 FROM tab1
----
-495

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1094
SELECT ALL col1 * - CAST( + col2 AS SIGNED ) AS col2 FROM tab1
----
-1344
-295
-3196

skipif mysql # not compatible
query I rowsort label-1094
SELECT ALL col1 * - CAST ( + col2 AS INTEGER ) AS col2 FROM tab1
----
-1344
-295
-3196

query II rowsort
SELECT ALL - col1 + col1 AS col2, col0 * + - 35 FROM tab0
----
0
-3045
0
-3395
0
-525

onlyif mysql # DIV for integer division: 
query I rowsort label-1096
SELECT + 81 DIV + col0 FROM tab1
----
0
0
1

skipif mysql # not compatible
query I rowsort label-1096
SELECT + 81 / + col0 FROM tab1
----
0
0
1

onlyif mysql # aggregate syntax: 
query I rowsort label-1097
SELECT 1 * + 58 * COUNT( * ) AS col2 FROM tab1
----
174

skipif mysql # not compatible
query I rowsort label-1097
SELECT 1 * + 58 * COUNT ( * ) AS col2 FROM tab1
----
174

onlyif mysql # aggregate syntax: 
query I rowsort label-1098
SELECT ALL + COUNT( * ) FROM tab2 AS cor0 WHERE NULL = + col2
----
0

skipif mysql # not compatible
query I rowsort label-1098
SELECT ALL + COUNT ( * ) FROM tab2 AS cor0 WHERE NULL = + col2
----
0

query I rowsort
SELECT - + 24 FROM tab2 AS cor0 WHERE + col1 * + col1 + col0 + - col1 IS NULL
----

query I rowsort
SELECT ALL + + 77 + col0 * col2 AS col1 FROM tab2 AS cor0
----
1135
2637
4427

query I rowsort
SELECT + col2 + + - 82 AS col0 FROM tab0 AS cor0
----
-35
-72
17

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1102
SELECT DISTINCT CAST( NULL AS SIGNED ) + - - col2 + ( col1 ) AS col2 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1102
SELECT DISTINCT CAST ( NULL AS INTEGER ) + - - col2 + ( col1 ) AS col2 FROM tab1
----
NULL

query II rowsort
SELECT ALL - 24, col0 * + col2 + + 11 AS col0 FROM tab0 AS cor0
----
-24
716
-24
881
-24
9614

query II rowsort
SELECT - 23 AS col1, 13 AS col2 FROM tab2 AS cor0
----
-23
13
-23
13
-23
13

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + col2 AS col0, + 70 col1 FROM tab2 AS cor0 WHERE NOT NULL > col0
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1106
SELECT 1, - ( - COUNT( * ) ) AS col0 FROM tab1
----
1
3

skipif mysql # not compatible
query II rowsort label-1106
SELECT 1, - ( - COUNT ( * ) ) AS col0 FROM tab1
----
1
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1107
SELECT DISTINCT + ( - - COUNT( * ) ) AS col1 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-1107
SELECT DISTINCT + ( - - COUNT ( * ) ) AS col1 FROM tab0
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col0 + - col2 col2 FROM tab2 WHERE NOT - col0 * col0 * + 22 = 70
----
17
23
24

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1109
SELECT - CAST( ( - + CAST( NULL AS SIGNED ) ) AS SIGNED ) AS col0 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1109
SELECT - CAST ( ( - + CAST ( NULL AS INTEGER ) ) AS INTEGER ) AS col0 FROM tab2
----
NULL
NULL
NULL

query I rowsort
SELECT ALL + col0 * - col0 FROM tab1 WHERE + + 33 * + 25 IS NULL
----

query II rowsort
SELECT col2, 60 AS col0 FROM tab0
----
10
60
47
60
99
60

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + col0 + - 84 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-1113
SELECT - MAX( DISTINCT + col2 ) AS col2 FROM tab0 AS cor0
----
-99

skipif mysql # not compatible
query I rowsort label-1113
SELECT - MAX ( DISTINCT + col2 ) AS col2 FROM tab0 AS cor0
----
-99

query I rowsort
SELECT - - col2 * - - 65 * - + 81 FROM tab2 AS cor0
----
-121095
-210600
-305370

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col2 * - - col2 col2, - col2 AS col0 FROM tab1
----
-3481
-59
-4624
-68
-9216
-96

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1116
SELECT DISTINCT CAST( NULL AS SIGNED ) * + col1 AS col1 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1116
SELECT DISTINCT CAST ( NULL AS INTEGER ) * + col1 AS col1 FROM tab1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1117
SELECT + COUNT( + + 58 ) AS col0 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-1117
SELECT + COUNT ( + + 58 ) AS col0 FROM tab2 AS cor0
----
3

onlyif mysql # DIV for integer division: 
query I rowsort label-1118
SELECT DISTINCT - col2 DIV - col1 + + col0 + 21 FROM tab2 AS cor0
----
67
85
96

skipif mysql # not compatible
query I rowsort label-1118
SELECT DISTINCT - col2 / - col1 + + col0 + 21 FROM tab2 AS cor0
----
67
85
96

query I rowsort
SELECT ALL col0 + 3 FROM tab1 AS cor0
----
54
88
94

query I rowsort
SELECT DISTINCT - col0 + col1 + 85 FROM tab0 AS cor0
----
-11
151
19

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + ( + col2 ) col0 FROM tab0 cor0
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-1122
SELECT ALL - + 15 + + - COUNT( * ) + SUM( DISTINCT + 83 ) FROM tab2 AS cor0
----
65

skipif mysql # not compatible
query I rowsort label-1122
SELECT ALL - + 15 + + - COUNT ( * ) + SUM ( DISTINCT + 83 ) FROM tab2 AS cor0
----
65

onlyif mysql # aggregate syntax: 
query I rowsort label-1123
SELECT DISTINCT + COUNT( * ) + + SUM( ALL col0 ) AS col0 FROM tab2
----
188

skipif mysql # not compatible
query I rowsort label-1123
SELECT DISTINCT + COUNT ( * ) + + SUM ( ALL col0 ) AS col0 FROM tab2
----
188

onlyif mysql # DIV for integer division: 
query I rowsort label-1124
SELECT ALL col2 + 69 + + col1 - 2 * - + 73 DIV 22 FROM tab1
----
139
185
190

skipif mysql # not compatible
query I rowsort label-1124
SELECT ALL col2 + 69 + + col1 - 2 * - + 73 / 22 FROM tab1
----
139
185
190

query I rowsort
SELECT ALL col2 FROM tab0 WHERE NOT ( NOT NULL IS NULL )
----
10
47
99

query I rowsort
SELECT DISTINCT + col1 + + 79 FROM tab1
----
126
84
93

query I rowsort
SELECT col1 + + 97 AS col2 FROM tab0
----
118
178
98

onlyif mysql # DIV for integer division: 
query I rowsort label-1128
SELECT 53 DIV + 82 FROM tab2 cor0 WHERE NULL IS NULL
----
0
0
0

skipif mysql # not compatible
query I rowsort label-1128
SELECT 53 / + 82 FROM tab2 cor0 WHERE NULL IS NULL
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1129
SELECT ALL COUNT( * ) - COUNT( * ) FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-1129
SELECT ALL COUNT ( * ) - COUNT ( * ) FROM tab0 AS cor0
----
0

query I rowsort
SELECT 26 + - 5 AS col1 FROM tab1
----
21
21
21

onlyif mysql # aggregate syntax: 
query I rowsort label-1131
SELECT ALL - 62 * - MIN( ALL col1 ) AS col0 FROM tab0
----
62

skipif mysql # not compatible
query I rowsort label-1131
SELECT ALL - 62 * - MIN ( ALL col1 ) AS col0 FROM tab0
----
62

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT ( NULL ) <= - ( - col2 )
----

query I rowsort
SELECT col2 AS col1 FROM tab2 WHERE ( + col0 ) <= 45 * col1 - col1
----
23
40
58

onlyif mysql # aggregate syntax: 
query I rowsort label-1134
SELECT + COUNT( * ) AS col1 FROM tab2 WHERE NOT NULL >= col1
----
0

skipif mysql # not compatible
query I rowsort label-1134
SELECT + COUNT ( * ) AS col1 FROM tab2 WHERE NOT NULL >= col1
----
0

query III rowsort
SELECT * FROM tab0 WHERE NOT 30 = ( NULL )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1136
SELECT ( 33 ) DIV + 25 FROM tab1
----
1
1
1

skipif mysql # not compatible
query I rowsort label-1136
SELECT ( 33 ) / + 25 FROM tab1
----
1
1
1

onlyif mysql # DIV for integer division: 
query I rowsort label-1137
SELECT ( + col2 ) DIV - 28 FROM tab2
----
-1
-2
0

skipif mysql # not compatible
query I rowsort label-1137
SELECT ( + col2 ) / - 28 FROM tab2
----
-1
-2
0

query I rowsort
SELECT + ( col2 ) FROM tab1 WHERE NULL IS NULL
----
59
68
96

onlyif mysql # DIV for integer division: 
query I rowsort label-1139
SELECT 44 DIV col2 FROM tab0
----
0
0
4

skipif mysql # not compatible
query I rowsort label-1139
SELECT 44 / col2 FROM tab0
----
0
0
4

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1140
SELECT * FROM tab0 WHERE NOT - col0 - + CAST( NULL AS SIGNED ) / + col2 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-1140
SELECT * FROM tab0 WHERE NOT - col0 - + CAST ( NULL AS INTEGER ) / + col2 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT - col2 AS col2 FROM tab0 WHERE + 37 * col0 NOT IN ( + col1 )
----
-10
-47
-99

query I rowsort
SELECT + ( + col1 ) + col0 FROM tab1
----
138
65
90

query I rowsort
SELECT + 18 + col1 AS col1 FROM tab2
----
69
85
95

onlyif mysql # DIV for integer division: 
query I rowsort label-1144
SELECT + col1 DIV 41 col2 FROM tab2
----
1
1
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1144
SELECT + col1 / 41 col2 FROM tab2
----
1
1
1

onlyif mysql # aggregate syntax: 
query I rowsort label-1145
SELECT ALL + MIN( ALL col2 ) FROM tab2 WHERE + col1 IS NOT NULL
----
23

skipif mysql # not compatible
query I rowsort label-1145
SELECT ALL + MIN ( ALL col2 ) FROM tab2 WHERE + col1 IS NOT NULL
----
23

query III rowsort
SELECT ALL * FROM tab1 WHERE - col0 * - col1 <> ( - col1 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab2 WHERE NOT ( - 63 * - col2 ) IS NOT NULL
----

query III rowsort
SELECT * FROM tab0 WHERE ( 63 + - col0 ) IS NULL
----

query I rowsort
SELECT 4 + + 45 FROM tab2
----
49
49
49

onlyif mysql # aggregate syntax: 
query I rowsort label-1150
SELECT DISTINCT MIN( ( + col0 ) ) AS col0 FROM tab2
----
46

skipif mysql # not compatible
query I rowsort label-1150
SELECT DISTINCT MIN ( ( + col0 ) ) AS col0 FROM tab2
----
46

query I rowsort
SELECT col2 + ( col2 ) * 18 AS col0 FROM tab2
----
1102
437
760

query I rowsort
SELECT col0 * 98 + col1 AS col1 FROM tab2
----
4559
6349
7417

query I rowsort
SELECT - 83 - + 82 FROM tab1
----
-165
-165
-165

onlyif mysql # aggregate syntax: 
query I rowsort label-1154
SELECT DISTINCT + COUNT( * ) FROM tab0 WHERE NOT ( 75 * + ( - ( 80 ) ) - + col0 ) IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-1154
SELECT DISTINCT + COUNT ( * ) FROM tab0 WHERE NOT ( 75 * + ( - ( 80 ) ) - + col0 ) IS NULL
----
3

query I rowsort
SELECT + col0 * + col2 AS col0 FROM tab0 WHERE NOT NULL > NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1156
SELECT + COUNT( * ) + + 85 AS col2 FROM tab2
----
88

skipif mysql # not compatible
query I rowsort label-1156
SELECT + COUNT ( * ) + + 85 AS col2 FROM tab2
----
88

query I rowsort
SELECT DISTINCT - col2 + 59 FROM tab1
----
-37
-9
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1158
SELECT MAX( ALL col1 ) AS col0 FROM tab2
----
77

skipif mysql # not compatible
query I rowsort label-1158
SELECT MAX ( ALL col1 ) AS col0 FROM tab2
----
77

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - col1 * ( 25 ) + + col2 IN ( col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1160
SELECT MIN( DISTINCT + 58 ) FROM tab0
----
58

skipif mysql # not compatible
query I rowsort label-1160
SELECT MIN ( DISTINCT + 58 ) FROM tab0
----
58

onlyif mysql # aggregate syntax: 
query I rowsort label-1161
SELECT ALL SUM( + col1 ) + 22 AS col2 FROM tab0
----
125

skipif mysql # not compatible
query I rowsort label-1161
SELECT ALL SUM ( + col1 ) + 22 AS col2 FROM tab0
----
125

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col2 * col1 col2 FROM tab0 AS cor0 WHERE NOT - 51 <> NULL
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT ( 68 + + col0 * col0 ) NOT BETWEEN col0 * col1 + - col2 * - col1 AND col2
----

query I rowsort
SELECT DISTINCT 98 + - col0 FROM tab1 WHERE NOT ( - col0 ) NOT IN ( + col0 )
----

query I rowsort
SELECT 11 FROM tab0 AS cor0 CROSS JOIN tab2
----
9 values hashing to f4d199584b44732f1a897e6691b4ea00

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1166
SELECT COUNT( * ) - MAX( ALL CAST( NULL AS SIGNED ) ) * - COUNT( * ) AS col2 FROM tab0 WHERE col2 + - 39 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1166
SELECT COUNT ( * ) - MAX ( ALL CAST ( NULL AS INTEGER ) ) * - COUNT ( * ) AS col2 FROM tab0 WHERE col2 + - 39 IS NOT NULL
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1167
SELECT DISTINCT CAST( NULL AS SIGNED ) * CAST( NULL AS SIGNED ) FROM tab1 AS cor0 CROSS JOIN tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1167
SELECT DISTINCT CAST ( NULL AS INTEGER ) * CAST ( NULL AS INTEGER ) FROM tab1 AS cor0 CROSS JOIN tab1
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1168
SELECT + CAST( NULL AS SIGNED ) * + 38 + col1 AS col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1168
SELECT + CAST ( NULL AS INTEGER ) * + 38 + col1 AS col2 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1169
SELECT DISTINCT COUNT( * ) + - 60 * 34 col2 FROM tab0
----
-2037

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1169
SELECT DISTINCT COUNT ( * ) + - 60 * 34 col2 FROM tab0
----
-2037

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1170
SELECT ( 55 ) DIV - MAX( DISTINCT ( ( + col2 ) ) ) + - COUNT( * ) FROM tab1 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-1170
SELECT ( 55 ) / - MAX ( DISTINCT ( ( + col2 ) ) ) + - COUNT ( * ) FROM tab1 AS cor0
----
-3

query I rowsort
SELECT ALL 93 FROM tab0 cor0 WHERE ( - 57 ) IS NULL
----

query I rowsort
SELECT - 7 + + col1 AS col2 FROM tab2 AS cor0
----
44
60
70

query I rowsort
SELECT DISTINCT + 54 + + col1 AS col1 FROM tab2 AS cor0
----
105
121
131

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE col0 <= col1
----
15
81
47

query I rowsort
SELECT DISTINCT + 85 + 66 AS col0 FROM tab2 AS cor0
----
151

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 71 col2 FROM tab2 AS cor0 WHERE col2 > NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE - col1 NOT BETWEEN ( NULL ) AND NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-1178
SELECT * FROM tab1 AS cor0 WHERE - 20 BETWEEN NULL AND ( + CAST( NULL AS DECIMAL ) )
----

skipif mysql # not compatible
query III rowsort label-1178
SELECT * FROM tab1 AS cor0 WHERE - 20 BETWEEN NULL AND ( + CAST ( NULL AS REAL ) )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1179
SELECT 23 + col1 * 31 AS col0 FROM tab1 AS cor0 WHERE ( NULL ) IN ( CAST( col1 AS SIGNED ) )
----

skipif mysql # not compatible
query I rowsort label-1179
SELECT 23 + col1 * 31 AS col0 FROM tab1 AS cor0 WHERE ( NULL ) IN ( CAST ( col1 AS INTEGER ) )
----

query I rowsort
SELECT ALL 82 FROM tab2 WHERE ( + 53 ) IS NOT NULL OR NOT 79 + - col2 NOT BETWEEN + col2 * - col0 AND ( - 47 * col1 )
----
82
82
82

query I rowsort
SELECT - col1 * + + col1 FROM tab0
----
-1
-441
-6561

onlyif mysql # aggregate syntax: 
query I rowsort label-1182
SELECT - MIN( 6 ) * - 45 AS col1 FROM tab2
----
270

skipif mysql # not compatible
query I rowsort label-1182
SELECT - MIN ( 6 ) * - 45 AS col1 FROM tab2
----
270

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT col0 + col0 IS NOT NULL
----

query I rowsort
SELECT 1 - - - col1 + - col0 AS col0 FROM tab2
----
-140
-141
-96

query I rowsort
SELECT ALL + col0 + + col1 - + col2 AS col0 FROM tab0 AS cor0
----
-1
49
98

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1186
SELECT - - col1 + + - CAST( NULL AS SIGNED ) FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1186
SELECT - - col1 + + - CAST ( NULL AS INTEGER ) FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1187
SELECT ALL + 71 * COUNT( * ) + + COUNT( * ) FROM tab0 AS cor0
----
216

skipif mysql # not compatible
query I rowsort label-1187
SELECT ALL + 71 * COUNT ( * ) + + COUNT ( * ) FROM tab0 AS cor0
----
216

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 * ( col1 * col2 ) col2 FROM tab2 WHERE + col2 + 55 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - ( 76 ) col1 FROM tab2
----
-76
-76
-76

query IIIIII rowsort
SELECT * FROM tab1 AS cor0 CROSS JOIN tab0 cor1 WHERE ( NULL ) IS NULL
----
54 values hashing to 058438fde5fb838f23bcbdd39266ddcf

query I rowsort
SELECT ALL + 53 AS col0 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to fede6033dee346dbd272085c05724fda

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1192
SELECT + col2 AS col0, col2 + CAST( NULL AS SIGNED ) FROM tab1
----
59
NULL
68
NULL
96
NULL

skipif mysql # not compatible
query II rowsort label-1192
SELECT + col2 AS col0, col2 + CAST ( NULL AS INTEGER ) FROM tab1
----
59
NULL
68
NULL
96
NULL

query I rowsort
SELECT DISTINCT + + 28 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
28

query IIIIII rowsort
SELECT * FROM tab0 cor0 JOIN tab0 AS cor1 ON NULL IS NULL
----
54 values hashing to 42daa03e48aa6755defd0a3206e51d8e

query II rowsort
SELECT - col0 AS col1, - 19 FROM tab1
----
-51
-19
-85
-19
-91
-19

query I rowsort
SELECT DISTINCT col2 FROM tab2 AS cor0 WHERE NOT col0 IS NULL
----
23
40
58

onlyif mysql # aggregate syntax: 
query I rowsort label-1197
SELECT DISTINCT - + COUNT( * ) col2 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1197
SELECT DISTINCT - + COUNT ( * ) col2 FROM tab2 AS cor0
----
-3

query I rowsort
SELECT DISTINCT - ( - col1 ) + 4 AS col0 FROM tab1 AS cor0 WHERE NOT + col2 + 50 IS NULL
----
18
51
9

onlyif mysql # DIV for integer division: 
query I rowsort label-1199
SELECT - col2 * col0 DIV + col2 - - col0 * 48 AS col1 FROM tab2 AS cor0
----
2162
3008
3525

skipif mysql # not compatible
query I rowsort label-1199
SELECT - col2 * col0 / + col2 - - col0 * 48 AS col1 FROM tab2 AS cor0
----
2162
3008
3525

onlyif mysql # aggregate syntax: 
query I rowsort label-1200
SELECT DISTINCT MIN( ALL + col1 ) * ( - 77 ) AS col2 FROM tab1 AS cor0
----
-385

skipif mysql # not compatible
query I rowsort label-1200
SELECT DISTINCT MIN ( ALL + col1 ) * ( - 77 ) AS col2 FROM tab1 AS cor0
----
-385

query I rowsort
SELECT DISTINCT + col2 * - - ( - ( col0 ) ) FROM tab0 cor0
----
-705
-870
-9603

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1202
SELECT + 63 + CAST( NULL AS SIGNED ) * 46 FROM tab0 AS cor0 WHERE NOT NULL BETWEEN NULL AND 19
----

skipif mysql # not compatible
query I rowsort label-1202
SELECT + 63 + CAST ( NULL AS INTEGER ) * 46 FROM tab0 AS cor0 WHERE NOT NULL BETWEEN NULL AND 19
----

query I rowsort
SELECT ALL - col0 * - - 11 FROM tab1 cor0
----
-1001
-561
-935

onlyif mysql # aggregate syntax: 
query I rowsort label-1204
SELECT - COUNT( * ) * + 94 + + 7 FROM tab0 AS cor0
----
-275

skipif mysql # not compatible
query I rowsort label-1204
SELECT - COUNT ( * ) * + 94 + + 7 FROM tab0 AS cor0
----
-275

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1205
SELECT ALL - + 76 + col1 AS col1 FROM tab0 AS cor0 WHERE NOT - CAST( NULL AS SIGNED ) IS NOT NULL
----
-55
-75
5

skipif mysql # not compatible
query I rowsort label-1205
SELECT ALL - + 76 + col1 AS col1 FROM tab0 AS cor0 WHERE NOT - CAST ( NULL AS INTEGER ) IS NOT NULL
----
-55
-75
5

query I rowsort
SELECT + col0 * + 95 + - col1 AS col2 FROM tab2 AS cor0
----
4319
6003
7058

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( + 59 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # DIV for integer division: 
query I rowsort label-1208
SELECT 67 DIV 22 FROM tab2 cor0
----
3
3
3

skipif mysql # not compatible
query I rowsort label-1208
SELECT 67 / 22 FROM tab2 cor0
----
3
3
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1209
SELECT ALL - SUM( DISTINCT - 15 ) AS col1 FROM tab1
----
15

skipif mysql # not compatible
query I rowsort label-1209
SELECT ALL - SUM ( DISTINCT - 15 ) AS col1 FROM tab1
----
15

onlyif mysql # aggregate syntax: 
query I rowsort label-1210
SELECT - COUNT( * ) FROM tab2 WHERE NOT + col0 + - col2 IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-1210
SELECT - COUNT ( * ) FROM tab2 WHERE NOT + col0 + - col2 IS NOT NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1211
SELECT + MIN( DISTINCT - col2 ) FROM tab2 WHERE NOT col1 + col1 BETWEEN ( col1 ) AND NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1211
SELECT + MIN ( DISTINCT - col2 ) FROM tab2 WHERE NOT col1 + col1 BETWEEN ( col1 ) AND NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1212
SELECT SUM( DISTINCT 12 ) AS col0 FROM tab0
----
12

skipif mysql # not compatible
query I rowsort label-1212
SELECT SUM ( DISTINCT 12 ) AS col0 FROM tab0
----
12

query III rowsort
SELECT * FROM tab2 WHERE NOT ( + + ( - col2 ) ) IS NOT NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE ( + - col2 / + col1 ) <= - col0
----
97
1
99

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE col1 < - - ( + col1 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1216
SELECT DISTINCT + MAX( + + col1 ) * - CAST( NULL AS SIGNED ) FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1216
SELECT DISTINCT + MAX ( + + col1 ) * - CAST ( NULL AS INTEGER ) FROM tab1
----
NULL

query I rowsort
SELECT ALL + - col1 FROM tab0 AS cor0 WHERE 15 IS NOT NULL
----
-1
-21
-81

query I rowsort
SELECT col0 + - + 85 AS col1 FROM tab2 AS cor0
----
-10
-21
-39

onlyif mysql # DIV for integer division: 
query I rowsort label-1219
SELECT - - col2 + col0 DIV col0 col0 FROM tab0 AS cor0
----
100
11
48

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1219
SELECT - - col2 + col0 / col0 col0 FROM tab0 AS cor0
----
100
11
48

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 61 col0 FROM tab2 AS cor0 WHERE NOT col1 NOT BETWEEN NULL AND ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1221
SELECT DISTINCT CAST( - 94 AS SIGNED ) col0 FROM tab0 AS cor0
----
-94

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1221
SELECT DISTINCT CAST ( - 94 AS INTEGER ) col0 FROM tab0 AS cor0
----
-94

query I rowsort
SELECT ALL col0 AS col2 FROM tab0 AS cor0 WHERE NOT ( + col0 ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1223
SELECT DISTINCT - COUNT( - 0 ) FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-1223
SELECT DISTINCT - COUNT ( - 0 ) FROM tab0
----
-3

query I rowsort
SELECT ALL - col1 * col1 - col0 + + ( - 66 ) FROM tab1 cor0
----
-176
-2366
-313

query I rowsort
SELECT + ( - 80 ) FROM tab0 AS cor0 WHERE ( 51 ) IS NULL
----

query I rowsort
SELECT ALL + + 53 + 67 FROM tab2 AS cor0
----
120
120
120

query I rowsort
SELECT ALL + col0 + + col1 + 15 * 93 * + col0 AS col1 FROM tab0 AS cor0
----
121473
135413
21021

query I rowsort
SELECT + col2 + + 44 + + - 13 * - - 17 FROM tab2 AS cor0
----
-119
-137
-154

query I rowsort
SELECT DISTINCT 9 AS col1 FROM tab0, tab2 AS cor0
----
9

query I rowsort
SELECT ALL 63 + + - col2 AS col1 FROM tab1
----
-33
-5
4

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1231
SELECT + MIN( - 82 ) AS col0 FROM tab2 WHERE - + 5 * + col1 / - CAST( NULL AS SIGNED ) IS NULL
----
-82

skipif mysql # not compatible
query I rowsort label-1231
SELECT + MIN ( - 82 ) AS col0 FROM tab2 WHERE - + 5 * + col1 / - CAST ( NULL AS INTEGER ) IS NULL
----
-82

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1232
SELECT ( - 65 ) / CAST( NULL AS DECIMAL ) + 42 col0 FROM tab1 WHERE ( NOT col0 + + 29 >= - 27 * col0 )
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1232
SELECT ( - 65 ) / CAST ( NULL AS REAL ) + 42 col0 FROM tab1 WHERE ( NOT col0 + + 29 >= - 27 * col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1233
SELECT - 18 * + - COUNT( * ) FROM tab0
----
54

skipif mysql # not compatible
query I rowsort label-1233
SELECT - 18 * + - COUNT ( * ) FROM tab0
----
54

onlyif mysql # DIV for integer division: 
query I rowsort label-1234
SELECT - 36 DIV - - col2 FROM tab2
----
-1
0
0

skipif mysql # not compatible
query I rowsort label-1234
SELECT - 36 / - - col2 FROM tab2
----
-1
0
0

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE col2 * 46 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT + ( + + 62 ) AS col1 FROM tab2 AS cor0
----
62
62
62

onlyif mysql # aggregate syntax: 
query I rowsort label-1237
SELECT ALL + + ( - COUNT( * ) ) AS col2 FROM tab1 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-1237
SELECT ALL + + ( - COUNT ( * ) ) AS col2 FROM tab1 AS cor0
----
-3

query III rowsort
SELECT * FROM tab1 cor0 WHERE - col1 NOT BETWEEN - col0 AND + + 5
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 44 col2 FROM tab2
----
44
44
44

query I rowsort
SELECT ALL - col1 * + ( col2 ) FROM tab2
----
-1173
-3080
-3886

query I rowsort
SELECT DISTINCT + 85 AS col0 FROM tab1
----
85

query I rowsort
SELECT + ( - col2 ) * + + col2 AS col2 FROM tab0 cor0
----
-100
-2209
-9801

query I rowsort
SELECT - + col1 * 72 FROM tab2 cor0
----
-3672
-4824
-5544

onlyif mysql # aggregate syntax: 
query I rowsort label-1244
SELECT - - SUM( ALL + col1 ) FROM tab1 cor0 WHERE NOT - col2 BETWEEN - 91 AND NULL
----
14

skipif mysql # not compatible
query I rowsort label-1244
SELECT - - SUM ( ALL + col1 ) FROM tab1 cor0 WHERE NOT - col2 BETWEEN - 91 AND NULL
----
14

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE 31 * - + col2 <= ( + + col0 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT - ( + - 88 ) FROM tab0 AS cor0 WHERE NOT ( ( NULL <= - 51 ) )
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT col1 > - col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1248
SELECT DISTINCT SUM( + col0 ) AS col1 FROM tab0 AS cor0 WHERE NOT col1 IS NULL
----
199

skipif mysql # not compatible
query I rowsort label-1248
SELECT DISTINCT SUM ( + col0 ) AS col1 FROM tab0 AS cor0 WHERE NOT col1 IS NULL
----
199

onlyif mysql # aggregate syntax: 
query I rowsort label-1249
SELECT ALL 36 * + ( COUNT( * ) ) col0 FROM tab0
----
108

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1249
SELECT ALL 36 * + ( COUNT ( * ) ) col0 FROM tab0
----
108

query I rowsort
SELECT + 75 * - + 32 AS col2 FROM tab1
----
-2400
-2400
-2400

query I rowsort
SELECT + col1 * - 14 * - col0 FROM tab1
----
5950
59878
9996

query III rowsort
SELECT * FROM tab0 WHERE NOT + - ( 24 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query II rowsort
SELECT - col1 AS col1, 81 AS col2 FROM tab0
----
-1
81
-21
81
-81
81

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL < + 1
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + 85 col1, - col1 FROM tab2
----
85
-51
85
-67
85
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-1256
SELECT ALL + SUM( + + col1 ) AS col2 FROM tab0
----
103

skipif mysql # not compatible
query I rowsort label-1256
SELECT ALL + SUM ( + + col1 ) AS col2 FROM tab0
----
103

query I rowsort
SELECT + col1 * 33 FROM tab0
----
2673
33
693

query II rowsort
SELECT 5 AS col1, col2 AS col2 FROM tab0
----
5
10
5
47
5
99

query I rowsort
SELECT DISTINCT + 60 AS col0 FROM tab0 AS cor0
----
60

query I rowsort
SELECT DISTINCT 99 + - col0 * - 21 AS col0 FROM tab1 AS cor0
----
1170
1884
2010

onlyif mysql # aggregate syntax: 
query I rowsort label-1261
SELECT + COUNT( * ) col1 FROM tab2 AS cor0 CROSS JOIN tab2 cor1
----
9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1261
SELECT + COUNT ( * ) col1 FROM tab2 AS cor0 CROSS JOIN tab2 cor1
----
9

query I rowsort
SELECT - col0 + - 99 FROM tab0
----
-114
-186
-196

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - 27 col1 FROM tab0 AS cor0
----
-27
-27
-27

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1264
SELECT DISTINCT - CAST( - COUNT( * ) AS SIGNED ) FROM tab2 cor0
----
3

skipif mysql # not compatible
query I rowsort label-1264
SELECT DISTINCT - CAST ( - COUNT ( * ) AS INTEGER ) FROM tab2 cor0
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1265
SELECT ALL + CAST( - col1 AS SIGNED ) col2 FROM tab1 AS cor0 WHERE - 38 * 39 > - - 18 - - - col0
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1265
SELECT ALL + CAST ( - col1 AS INTEGER ) col2 FROM tab1 AS cor0 WHERE - 38 * 39 > - - 18 - - - col0
----

query I rowsort
SELECT DISTINCT + + col2 + 58 FROM tab0 AS cor0
----
105
157
68

query I rowsort
SELECT DISTINCT col1 - + - 63 FROM tab2
----
114
130
140

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1268
SELECT - col0 FROM tab2 WHERE ( + - col2 ) <> CAST( + col0 AS SIGNED )
----
-46
-64
-75

skipif mysql # not compatible
query I rowsort label-1268
SELECT - col0 FROM tab2 WHERE ( + - col2 ) <> CAST ( + col0 AS INTEGER )
----
-46
-64
-75

query I rowsort
SELECT 91 * - - col0 - + col1 AS col2 FROM tab1
----
4627
7730
8234

query I rowsort
SELECT + 15 AS col1 FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
15
15
15

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1271
SELECT + CAST( col1 AS SIGNED ) * col1 FROM tab0 AS cor0
----
1
441
6561

skipif mysql # not compatible
query I rowsort label-1271
SELECT + CAST ( col1 AS INTEGER ) * col1 FROM tab0 AS cor0
----
1
441
6561

query II rowsort
SELECT DISTINCT + ( 75 ) * - + 20 * + + col1 AS col1, + col0 AS col1 FROM tab1
----
-21000
51
-70500
91
-7500
85

query I rowsort
SELECT DISTINCT - - 26 * col2 + + 25 AS col2 FROM tab2 AS cor0
----
1065
1533
623

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT - 66 / + 25 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1275
SELECT + CAST( + 90 AS SIGNED ) / col1 FROM tab2 AS cor0 WHERE NOT ( + col1 ) + + - 6 IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-1275
SELECT + CAST ( + 90 AS INTEGER ) / col1 FROM tab2 AS cor0 WHERE NOT ( + col1 ) + + - 6 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + col0 * col2 col0 FROM tab0 cor0
----
705
870
9603

onlyif mysql # aggregate syntax: 
query I rowsort label-1277
SELECT ALL + COUNT( * ) AS col2 FROM tab2 AS cor0 WHERE NOT col0 + + + 70 IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-1277
SELECT ALL + COUNT ( * ) AS col2 FROM tab2 AS cor0 WHERE NOT col0 + + + 70 IS NOT NULL
----
0

query I rowsort
SELECT - - 67 * 99 * - col1 FROM tab1 AS cor0
----
-311751
-33165
-92862

onlyif mysql # aggregate syntax: 
query II rowsort label-1279
SELECT + COUNT( * ) AS col2, + 56 AS col1 FROM tab0 AS cor0
----
3
56

skipif mysql # not compatible
query II rowsort label-1279
SELECT + COUNT ( * ) AS col2, + 56 AS col1 FROM tab0 AS cor0
----
3
56

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT ( NULL ) > col2 * + ( + ( + + col0 ) ) * - 60
----

query I rowsort
SELECT + col1 * 57 AS col0 FROM tab0 AS cor0
----
1197
4617
57

onlyif mysql # aggregate syntax: 
query I rowsort label-1282
SELECT DISTINCT MIN( DISTINCT + col1 ) col2 FROM tab1
----
5

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1282
SELECT DISTINCT MIN ( DISTINCT + col1 ) col2 FROM tab1
----
5

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( - 9 * + col1 ) IS NOT NULL
----

query I rowsort
SELECT DISTINCT col1 * + ( - - col2 ) AS col0 FROM tab2
----
1173
3080
3886

onlyif mysql # aggregate syntax: 
query I rowsort label-1285
SELECT ALL - COUNT( * ) AS col2 FROM tab1 WHERE - - col2 IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-1285
SELECT ALL - COUNT ( * ) AS col2 FROM tab1 WHERE - - col2 IS NULL
----
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col0 * + 95 col0 FROM tab1
----
4845
8075
8645

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1287
SELECT - + 87 * - 14 + 13 + - - CAST( 42 AS SIGNED ) FROM tab1 AS cor0
----
1273
1273
1273

skipif mysql # not compatible
query I rowsort label-1287
SELECT - + 87 * - 14 + 13 + - - CAST ( 42 AS INTEGER ) FROM tab1 AS cor0
----
1273
1273
1273

query I rowsort
SELECT 77 + - + col1 + col0 * - - 94 FROM tab2 AS cor0
----
4350
6016
7060

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col2 * ( col2 ) col2, + 35 AS col2 FROM tab2 AS cor0
----
1600
35
3364
35
529
35

onlyif mysql # DIV for integer division: 
query I rowsort label-1290
SELECT DISTINCT - col2 DIV - 29 AS col1 FROM tab1
----
2
3

skipif mysql # not compatible
query I rowsort label-1290
SELECT DISTINCT - col2 / - 29 AS col1 FROM tab1
----
2
3

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( NOT + col1 + + col1 - col0 IS NULL )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL + col2 + 19 + - col0 * + 78 * + 61 FROM tab0 AS cor0
----
-413917
-461408
-71304

onlyif mysql # DIV for integer division: 
query I rowsort label-1293
SELECT DISTINCT col2 DIV - + col1 + col1 + - col1 * - - 95 * + + col2 FROM tab2 AS cor0
----
-111384
-292523
-369103

skipif mysql # not compatible
query I rowsort label-1293
SELECT DISTINCT col2 / - + col1 + col1 + - col1 * - - 95 * + + col2 FROM tab2 AS cor0
----
-111384
-292523
-369103

onlyif mysql # aggregate syntax: 
query I rowsort label-1294
SELECT DISTINCT - - SUM( + 82 ) AS col1 FROM tab0 AS cor0 WHERE NOT + col2 >= - col2 + - col0
----
NULL

skipif mysql # not compatible
query I rowsort label-1294
SELECT DISTINCT - - SUM ( + 82 ) AS col1 FROM tab0 AS cor0 WHERE NOT + col2 >= - col2 + - col0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1295
SELECT DISTINCT + + COUNT( * ) * + 46 + - COUNT( * ) + 64 FROM tab2 AS cor0
----
199

skipif mysql # not compatible
query I rowsort label-1295
SELECT DISTINCT + + COUNT ( * ) * + 46 + - COUNT ( * ) + 64 FROM tab2 AS cor0
----
199

query I rowsort
SELECT ALL + 59 + + + col2 AS col1 FROM tab1 AS cor0
----
118
127
155

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1297
SELECT DISTINCT - CAST( NULL AS SIGNED ) + - + col1 + + ( + col1 ) * + 74 FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1297
SELECT DISTINCT - CAST ( NULL AS INTEGER ) + - + col1 + + ( + col1 ) * + 74 FROM tab2 AS cor0
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-1298
SELECT + 60 DIV - col0 + col2 - - col2 * 46 FROM tab0 cor0
----
2205
4653
470

skipif mysql # not compatible
query I rowsort label-1298
SELECT + 60 / - col0 + col2 - - col2 * 46 FROM tab0 cor0
----
2205
4653
470

query I rowsort
SELECT ALL + - col1 + + 98 + + ( - col1 ) FROM tab1 AS cor0
----
4
70
88

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1300
SELECT + col0 + + ( CAST( NULL AS SIGNED ) ) / - col1 * col1 + + + col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1300
SELECT + col0 + + ( CAST ( NULL AS INTEGER ) ) / - col1 * col1 + + + col2 FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT ALL col2 - + - 82 FROM tab0
----
129
181
92

query I rowsort
SELECT DISTINCT - col2 - + ( + col2 ) FROM tab1
----
-118
-136
-192

onlyif mysql # DIV for integer division: 
query I rowsort label-1303
SELECT DISTINCT col0 DIV + 22 FROM tab0
----
0
3
4

skipif mysql # not compatible
query I rowsort label-1303
SELECT DISTINCT col0 / + 22 FROM tab0
----
0
3
4

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1304
SELECT - + col2 FROM tab1 WHERE NOT - + col0 + CAST( NULL AS SIGNED ) IS NOT NULL
----
-59
-68
-96

skipif mysql # not compatible
query I rowsort label-1304
SELECT - + col2 FROM tab1 WHERE NOT - + col0 + CAST ( NULL AS INTEGER ) IS NOT NULL
----
-59
-68
-96

query I rowsort
SELECT + col1 * - + col0 FROM tab2 AS cor0
----
-2346
-4928
-5025

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1306
SELECT CAST( NULL AS SIGNED ) * - + 19 * - + col0 - + CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1306
SELECT CAST ( NULL AS INTEGER ) * - + 19 * - + col0 - + CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT + ( - - 41 ) * + - 74 + + 51 + 48, col0 AS col0 FROM tab2 AS cor0
----
-2935
46
-2935
64
-2935
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1308
SELECT DISTINCT - CAST( - col2 AS SIGNED ) AS col1 FROM tab0 AS cor0 WHERE NOT col0 IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-1308
SELECT DISTINCT - CAST ( - col2 AS INTEGER ) AS col1 FROM tab0 AS cor0 WHERE NOT col0 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - 44 col2 FROM tab0 cor0
----
-44
-44
-44

skipif postgresql # PostgreSQL requires AS when renaming output columns
query III rowsort
SELECT + + 36, 6 col1, - ( + col0 ) AS col1 FROM tab2 cor0 WHERE NOT - col1 NOT BETWEEN ( NULL ) AND col1
----

query I rowsort
SELECT - col0 + + col1 FROM tab0 WHERE NOT NULL IS NOT NULL
----
-66
-96
66

onlyif mysql # aggregate syntax: 
query I rowsort label-1312
SELECT MAX( DISTINCT col2 ) FROM tab1
----
96

skipif mysql # not compatible
query I rowsort label-1312
SELECT MAX ( DISTINCT col2 ) FROM tab1
----
96

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1313
SELECT * FROM tab2 cor0 WHERE NOT - CAST( NULL AS SIGNED ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-1313
SELECT * FROM tab2 cor0 WHERE NOT - CAST ( NULL AS INTEGER ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT 26 * col2 AS col2 FROM tab1 AS cor0
----
1534
1768
2496

onlyif mysql # aggregate syntax: 
query I rowsort label-1315
SELECT ALL MIN( - + col1 ) col2 FROM tab0 AS cor0
----
-81

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1315
SELECT ALL MIN ( - + col1 ) col2 FROM tab0 AS cor0
----
-81

query I rowsort
SELECT DISTINCT 5 FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
5

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( - 65 ) > + col2 + col2 * + 87 + + ( col1 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL 14 * - col2 * col0 * + - col2 FROM tab0 AS cor0 WHERE NOT ( NULL ) <= + - col1 * - + 11 / - col0
----

query I rowsort
SELECT - col0 * - - col0 + 66 AS col0 FROM tab1 AS cor0
----
-2535
-7159
-8215

query I rowsort
SELECT - col2 * - - 40 * + col1 AS col1 FROM tab1
----
-11800
-127840
-53760

query I rowsort
SELECT ( + + 57 ) * - 34 FROM tab2
----
-1938
-1938
-1938

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1322
SELECT + COUNT( * ) DIV + - 22 AS col2 FROM tab2 WHERE NULL <= NULL
----
0

skipif mysql # not compatible
query I rowsort label-1322
SELECT + COUNT ( * ) / + - 22 AS col2 FROM tab2 WHERE NULL <= NULL
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1323
SELECT ALL - CAST( NULL AS SIGNED ) * 97 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1323
SELECT ALL - CAST ( NULL AS INTEGER ) * 97 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT - + col0 FROM tab0 WHERE NULL IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1325
SELECT + col2 DIV - 67 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-1325
SELECT + col2 / - 67 FROM tab2
----
0
0
0

query II rowsort
SELECT col1, - ( ( + col1 ) ) FROM tab2
----
51
-51
67
-67
77
-77

query I rowsort
SELECT + col1 FROM tab2 WHERE 12 IS NOT NULL
----
51
67
77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1328
SELECT DISTINCT + + CAST( NULL AS SIGNED ) FROM tab1 WHERE NULL NOT BETWEEN - col1 AND col0 - + col1
----

skipif mysql # not compatible
query I rowsort label-1328
SELECT DISTINCT + + CAST ( NULL AS INTEGER ) FROM tab1 WHERE NULL NOT BETWEEN - col1 AND col0 - + col1
----

query I rowsort
SELECT DISTINCT - col2 * - ( + col0 ) + + col0 FROM tab2 cor0
----
1104
2624
4425

query I rowsort
SELECT ALL col1 AS col1 FROM tab1 WHERE NOT + 76 + + + 8 > - col1
----

query I rowsort
SELECT + col2 + + 89 + ( - - 64 ) * + 92 * + col1 AS col0 FROM tab2
----
300400
394643
453505

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - ( + 76 ) - + + 89 col2 FROM tab2
----
-165
-165
-165

onlyif mysql # aggregate syntax: 
query II rowsort label-1333
SELECT DISTINCT + COUNT( * ) * + COUNT( * ) col0, - COUNT( * ) FROM tab1
----
9
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1333
SELECT DISTINCT + COUNT ( * ) * + COUNT ( * ) col0, - COUNT ( * ) FROM tab1
----
9
-3

onlyif mysql # DIV for integer division: 
query I rowsort label-1334
SELECT - col1 + + col0 DIV - - col0 FROM tab2
----
-50
-66
-76

skipif mysql # not compatible
query I rowsort label-1334
SELECT - col1 + + col0 / - - col0 FROM tab2
----
-50
-66
-76

query II rowsort
SELECT 80 * - - 85 + - + 14, + col0 AS col0 FROM tab1
----
6786
51
6786
85
6786
91

onlyif mysql # aggregate syntax: 
query I rowsort label-1336
SELECT + COUNT( * ) + + 20 AS col2 FROM tab1
----
23

skipif mysql # not compatible
query I rowsort label-1336
SELECT + COUNT ( * ) + + 20 AS col2 FROM tab1
----
23

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE 62 IS NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1338
SELECT DISTINCT - CAST( NULL AS DECIMAL ) + + + col0 * + 2 FROM tab1 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1338
SELECT DISTINCT - CAST ( NULL AS REAL ) + + + col0 * + 2 FROM tab1 cor0
----
NULL

query I rowsort
SELECT DISTINCT + + 86 - - + 96 FROM tab1 AS cor0
----
182

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1340
SELECT ALL - + 89 + + col1 + CAST( NULL AS SIGNED ) FROM tab2 cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1340
SELECT ALL - + 89 + + col1 + CAST ( NULL AS INTEGER ) FROM tab2 cor0
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 54 - + + col0 col1 FROM tab1
----
-31
-37
3

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + 1 IS NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1343
SELECT 53 AS col0, + COUNT( * ) FROM tab0
----
53
3

skipif mysql # not compatible
query II rowsort label-1343
SELECT 53 AS col0, + COUNT ( * ) FROM tab0
----
53
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1344
SELECT ALL - COUNT( * ) FROM tab0 WHERE 69 <= ( col2 )
----
-1

skipif mysql # not compatible
query I rowsort label-1344
SELECT ALL - COUNT ( * ) FROM tab0 WHERE 69 <= ( col2 )
----
-1

query II rowsort
SELECT + 25, 63 AS col1 FROM tab1
----
25
63
25
63
25
63

query II rowsort
SELECT ALL col2, + 40 * - 7 * col0 FROM tab1
----
59
-23800
68
-25480
96
-14280

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( - col2 ) IN ( col0 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + 5 - col0 + col1 * + col0 IS NOT NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE + 91 > NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1350
SELECT ALL + COUNT( DISTINCT - + 67 ) FROM tab0 cor0
----
1

skipif mysql # not compatible
query I rowsort label-1350
SELECT ALL + COUNT ( DISTINCT - + 67 ) FROM tab0 cor0
----
1

query I rowsort
SELECT - 31 * - col0 + - col1 FROM tab2 AS cor0
----
1375
1907
2258

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT 32 BETWEEN NULL AND - 53
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT col1 AS col1, col2 FROM tab0 AS cor0
----
1
99
21
10
81
47

query I rowsort
SELECT ALL + col0 FROM tab0 AS cor0 WHERE NOT ( - - col2 ) >= + col0
----
87

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1355
SELECT ALL CAST( NULL AS DECIMAL ) * + - col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1355
SELECT ALL CAST ( NULL AS REAL ) * + - col2 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-1356
SELECT DISTINCT 40 DIV - col0 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-1356
SELECT DISTINCT 40 / - col0 FROM tab2
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1357
SELECT DISTINCT - - SUM( - - 81 ) AS col1 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
729

skipif mysql # not compatible
query I rowsort label-1357
SELECT DISTINCT - - SUM ( - - 81 ) AS col1 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
729

onlyif mysql # DIV for integer division: 
query I rowsort label-1358
SELECT DISTINCT - 7 DIV + + ( 84 ) * - + 20 + + 43 - col0 FROM tab1 AS cor0
----
-42
-48
-8

skipif mysql # not compatible
query I rowsort label-1358
SELECT DISTINCT - 7 / + + ( 84 ) * - + 20 + + 43 - col0 FROM tab1 AS cor0
----
-42
-48
-8

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 = + col0 * col0 + + + col2
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col1 * - - 43 FROM tab0
----
3483
43
903

query I rowsort
SELECT ( - 96 ) FROM tab1 WHERE + + col1 NOT IN ( - - col2 + col2, col0, col1, + 68 + col1, - + col0 / + 14 * - col1 + + col1 * + + col1 * - ( ( + 54 ) ) )
----

query III rowsort
SELECT * FROM tab1 WHERE + - 45 IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1363
SELECT COUNT( * ) * - CAST( NULL AS SIGNED ) + 16 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-1363
SELECT COUNT ( * ) * - CAST ( NULL AS INTEGER ) + 16 FROM tab2
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1364
SELECT + col2 col1 FROM tab2 AS cor0 WHERE NULL < CAST( + 9 AS SIGNED ) + - col1 / col2 * - 23
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1364
SELECT + col2 col1 FROM tab2 AS cor0 WHERE NULL < CAST ( + 9 AS INTEGER ) + - col1 / col2 * - 23
----

query I rowsort
SELECT - - 8 * - col0 + - col0 + + 0 FROM tab1 AS cor0
----
-459
-765
-819

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN - 96 AND - + ( - + col1 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1367
SELECT DISTINCT + CAST( NULL AS SIGNED ) * + 34 * - col2 + 30 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1367
SELECT DISTINCT + CAST ( NULL AS INTEGER ) * + 34 * - col2 + 30 FROM tab0 AS cor0
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT ( 44 ) col1 FROM tab1 AS cor0 WHERE col1 IS NULL
----

query I rowsort
SELECT col0 + + - col0 + + col2 FROM tab0 WHERE NULL IS NULL
----
10
47
99

query I rowsort
SELECT ALL - col1 + - 12 + - - 65 + - + 39 * + 18 + - col0 AS col2 FROM tab1 WHERE ( NULL NOT BETWEEN NULL AND col1 * - - col2 )
----

query I rowsort
SELECT DISTINCT + - 74 AS col0 FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
-74

query II rowsort
SELECT + 68 + 83 * - col2 * + col2 + + - 6 - col1 AS col2, ( - col0 ) FROM tab1 AS cor0
----
-288866
-85
-383777
-91
-764880
-51

onlyif mysql # aggregate syntax: 
query I rowsort label-1373
SELECT ALL MAX( - col2 ) AS col2 FROM tab0 AS cor0
----
-10

skipif mysql # not compatible
query I rowsort label-1373
SELECT ALL MAX ( - col2 ) AS col2 FROM tab0 AS cor0
----
-10

query II rowsort
SELECT ALL + col0, col1 AS col1 FROM tab0 cor0
----
15
81
87
21
97
1

query I rowsort
SELECT 30 + - 16 + 49 FROM tab0 AS cor0
----
63
63
63

query I rowsort
SELECT DISTINCT col2 * - + 17 AS col1 FROM tab1 AS cor0
----
-1003
-1156
-1632

query I rowsort
SELECT DISTINCT 58 * - col0 FROM tab0 AS cor0
----
-5046
-5626
-870

onlyif mysql # aggregate syntax: 
query II rowsort label-1378
SELECT 46, COUNT( - + col1 ) col2 FROM tab0 AS cor0
----
46
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1378
SELECT 46, COUNT ( - + col1 ) col2 FROM tab0 AS cor0
----
46
3

query I rowsort
SELECT 29 FROM tab2 AS cor0 WHERE NOT - col0 IS NULL
----
29
29
29

onlyif mysql # aggregate syntax: 
query I rowsort label-1380
SELECT SUM( ALL - + col0 ) * - COUNT( 16 ) + - + COUNT( * ) FROM tab2 WHERE NOT NULL IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1380
SELECT SUM ( ALL - + col0 ) * - COUNT ( 16 ) + - + COUNT ( * ) FROM tab2 WHERE NOT NULL IS NULL
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1381
SELECT ALL ( - + CAST( NULL AS SIGNED ) ) AS col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1381
SELECT ALL ( - + CAST ( NULL AS INTEGER ) ) AS col2 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1382
SELECT - MIN( + + 63 ) FROM tab0
----
-63

skipif mysql # not compatible
query I rowsort label-1382
SELECT - MIN ( + + 63 ) FROM tab0
----
-63

query I rowsort
SELECT ALL - col2 * + 22 * - 58 * + col1 FROM tab2
----
1496748
3930080
4958536

query I rowsort
SELECT DISTINCT col2 FROM tab2 WHERE 78 >= NULL
----

query I rowsort
SELECT + 64 * col1 * + col0 AS col2 FROM tab0
----
116928
6208
77760

onlyif mysql # DIV for integer division: 
query I rowsort label-1386
SELECT 15 DIV + col2 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-1386
SELECT 15 / + col2 FROM tab2
----
0
0
0

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1387
SELECT DISTINCT - CAST( NULL AS SIGNED ) + + COUNT( * ) FROM tab0 cor0 CROSS JOIN tab1 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-1387
SELECT DISTINCT - CAST ( NULL AS INTEGER ) + + COUNT ( * ) FROM tab0 cor0 CROSS JOIN tab1 AS cor1
----
NULL

query I rowsort
SELECT 41 * + - col2 AS col1 FROM tab2
----
-1640
-2378
-943

query II rowsort
SELECT - col1 AS col2, 93 + - 51 FROM tab1
----
-14
42
-47
42
-5
42

query I rowsort
SELECT ALL + - 37 AS col0 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to ed4644af7729c2425ea6cc3d84c6504f

query I rowsort
SELECT ALL col2 AS col1 FROM tab0 WHERE NULL IS NOT NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1392
SELECT COUNT( col2 ) DIV COUNT( * ) + 92 FROM tab0 AS cor0
----
93

skipif mysql # not compatible
query I rowsort label-1392
SELECT COUNT ( col2 ) / COUNT ( * ) + 92 FROM tab0 AS cor0
----
93

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 49 + col0 col2 FROM tab1 AS cor0
----
100
134
140

query I rowsort
SELECT ALL 9 FROM tab0 cor0
----
9
9
9

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NULL < col1 * + + col2 * + - col1
----

query I rowsort
SELECT 1 - AVG ( ALL - col2 ) FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----
NULL

onlyif mysql # DIV for integer division: 
query II rowsort label-1397
SELECT ALL + - col1 + + col1 + + col0 AS col1, 81 DIV ( col1 ) * - col1 AS col2 FROM tab0 cor0
----
15
-81
87
-63
97
-81

skipif mysql # not compatible
query II rowsort label-1397
SELECT ALL + - col1 + + col1 + + col0 AS col1, 81 / ( col1 ) * - col1 AS col2 FROM tab0 cor0
----
15
-81
87
-63
97
-81

query I rowsort
SELECT - ( - ( - + col1 ) ) FROM tab2 cor0
----
-51
-67
-77

query II rowsort
SELECT - col2, col2 AS col1 FROM tab2 AS cor0 WHERE + col0 * - col2 IS NOT NULL
----
-23
23
-40
40
-58
58

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 38 col0 FROM tab2 AS cor0
----
-38

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - col2 col1, - col0 AS col0 FROM tab2 AS cor0
----
-23
-46
-40
-64
-58
-75

query I rowsort
SELECT DISTINCT + col0 + - ( - col0 ) * + 46 * col2 AS col0 FROM tab2 AS cor0
----
117824
200175
48714

query I rowsort
SELECT ALL + col0 * - col0 + + - col2 * col1 AS col1 FROM tab1
----
-11477
-3945
-7520

query I rowsort
SELECT - ( - 77 ) FROM tab0
----
77
77
77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1405
SELECT 86 * + CAST( - col1 AS SIGNED ) FROM tab1
----
-1204
-4042
-430

skipif mysql # not compatible
query I rowsort label-1405
SELECT 86 * + CAST ( - col1 AS INTEGER ) FROM tab1
----
-1204
-4042
-430

query I rowsort
SELECT + col1 AS col0 FROM tab0 WHERE ( NOT 73 / + - 94 IS NULL )
----
1
21
81

onlyif mysql # aggregate syntax: 
query II rowsort label-1407
SELECT - ( + 22 ) AS col0, - ( + - COUNT( * ) ) AS col2 FROM tab0
----
-22
3

skipif mysql # not compatible
query II rowsort label-1407
SELECT - ( + 22 ) AS col0, - ( + - COUNT ( * ) ) AS col2 FROM tab0
----
-22
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1408
SELECT ALL col0 AS col0 FROM tab0 cor0 WHERE NOT + CAST( NULL AS SIGNED ) - - + col1 <= ( col0 )
----

skipif mysql # not compatible
query I rowsort label-1408
SELECT ALL col0 AS col0 FROM tab0 cor0 WHERE NOT + CAST ( NULL AS INTEGER ) - - + col1 <= ( col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1409
SELECT + + 77 + COUNT( * ) FROM tab2 AS cor0
----
80

skipif mysql # not compatible
query I rowsort label-1409
SELECT + + 77 + COUNT ( * ) FROM tab2 AS cor0
----
80

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( - col1 ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT + col0 * 95 - + - col1 + - col0 FROM tab2 AS cor0
----
4375
6093
7117

query I rowsort
SELECT 77 FROM tab0 WHERE - 38 IS NOT NULL
----
77
77
77

onlyif mysql # aggregate syntax: 
query I rowsort label-1413
SELECT DISTINCT COUNT( * ) * + COUNT( * ) AS col0 FROM tab0 cor0
----
9

skipif mysql # not compatible
query I rowsort label-1413
SELECT DISTINCT COUNT ( * ) * + COUNT ( * ) AS col0 FROM tab0 cor0
----
9

query I rowsort
SELECT ALL - 87 * + col1 FROM tab0 AS cor0
----
-1827
-7047
-87

query I rowsort
SELECT DISTINCT + - 24 * - - col1 FROM tab0 AS cor0
----
-1944
-24
-504

query I rowsort
SELECT + col1 + - 5 AS col2 FROM tab1 AS cor0 WHERE NOT + col2 * col1 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1417
SELECT + - 18 * + CAST( NULL AS SIGNED ) FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1417
SELECT + - 18 * + CAST ( NULL AS INTEGER ) FROM tab0 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT + - ( 39 ) FROM tab1 AS cor0
----
-39
-39
-39

onlyif mysql # aggregate syntax: 
query I rowsort label-1419
SELECT + MAX( 22 ) FROM tab0 AS cor0
----
22

skipif mysql # not compatible
query I rowsort label-1419
SELECT + MAX ( 22 ) FROM tab0 AS cor0
----
22

onlyif mysql # aggregate syntax: 
query II rowsort label-1420
SELECT DISTINCT 68 AS col0, COUNT( DISTINCT 33 ) - + ( + - 15 ) FROM tab0
----
68
16

skipif mysql # not compatible
query II rowsort label-1420
SELECT DISTINCT 68 AS col0, COUNT ( DISTINCT 33 ) - + ( + - 15 ) FROM tab0
----
68
16

query I rowsort
SELECT + 10 * col0 + + col2 AS col0 FROM tab2 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-1422
SELECT + COUNT( * ) AS col2, + COUNT( * ) - - COUNT( * ) + - CAST( + + 28 AS SIGNED ) AS col1 FROM tab2
----
3
-22

skipif mysql # not compatible
query II rowsort label-1422
SELECT + COUNT ( * ) AS col2, + COUNT ( * ) - - COUNT ( * ) + - CAST ( + + 28 AS INTEGER ) AS col1 FROM tab2
----
3
-22

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE 98 * col1 = col2 * + - col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1424
SELECT ALL - 14 * + COUNT( * ) FROM tab0
----
-42

skipif mysql # not compatible
query I rowsort label-1424
SELECT ALL - 14 * + COUNT ( * ) FROM tab0
----
-42

query II rowsort
SELECT col0, + 3 AS col1 FROM tab0 AS cor0
----
15
3
87
3
97
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1426
SELECT DISTINCT - col0 * + - CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1426
SELECT DISTINCT - col0 * + - CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL

query III rowsort
SELECT * FROM tab1 WHERE NOT ( NOT - 75 - col0 / + col0 NOT BETWEEN NULL AND NULL )
----

query IIIIII rowsort
SELECT * FROM ( tab2 AS cor0 CROSS JOIN tab1 AS cor1 ) WHERE NOT NULL IS NULL
----

query I rowsort
SELECT DISTINCT - - 84 + 53 AS col2 FROM tab2 AS cor0
----
137

onlyif mysql # aggregate syntax: 
query I rowsort label-1430
SELECT ALL + COUNT( + col2 ) FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-1430
SELECT ALL + COUNT ( + col2 ) FROM tab1 AS cor0
----
3

query I rowsort
SELECT - ( ( + col0 ) ) AS col0 FROM tab1 AS cor0
----
-51
-85
-91

query II rowsort
SELECT ALL - 73 + + 21 AS col2, + ( - col0 ) + + col0 * col1 AS col1 FROM tab2 AS cor0
----
-52
2300
-52
4864
-52
4950

query I rowsort
SELECT DISTINCT + ( - 93 ) + - 16 FROM tab0 AS cor0
----
-109

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1434
SELECT DISTINCT - 54 * + - col2 * 40 - + - col2 - CAST( col2 AS SIGNED ) FROM tab2
----
125280
49680
86400

skipif mysql # not compatible
query I rowsort label-1434
SELECT DISTINCT - 54 * + - col2 * 40 - + - col2 - CAST ( col2 AS INTEGER ) FROM tab2
----
125280
49680
86400

query III rowsort
SELECT * FROM tab1 WHERE 93 = 34
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1436
SELECT ALL col0 * + col1 * + col1 - - CAST( NULL AS DECIMAL ) * + + col2 * col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1436
SELECT ALL col0 * + col1 * + col1 - - CAST ( NULL AS REAL ) * + + col2 * col2 FROM tab1
----
NULL
NULL
NULL

query II rowsort
SELECT ALL 77, col2 AS col2 FROM tab0
----
77
10
77
47
77
99

query I rowsort
SELECT + + 16 FROM tab0 cor0 WHERE ( NULL ) IS NULL
----
16
16
16

onlyif mysql # DIV for integer division: 
query I rowsort label-1439
SELECT - col0 DIV - - col0 AS col0 FROM tab0 AS cor0
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-1439
SELECT - col0 / - - col0 AS col0 FROM tab0 AS cor0
----
-1
-1
-1

query I rowsort
SELECT DISTINCT + + 15 * 48 + col0 FROM tab2 AS cor0
----
766
784
795

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1441
SELECT ALL - - col1 + + CAST( NULL AS SIGNED ) AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1441
SELECT ALL - - col1 + + CAST ( NULL AS INTEGER ) AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT - col0 + - ( - col0 ) FROM tab2 AS cor0
----
0

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE 91 * + col0 IS NULL
----

query I rowsort
SELECT DISTINCT - - 95 / - - col0 FROM tab0 WHERE NULL BETWEEN - - col1 AND - col1 * - col1 + + col1 + - col0 + + col1 + - 56 * + col1 * - col2
----

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT col2 <= + 36
----
15
81
47
97
1
99

query I rowsort
SELECT ( + + 2 ) AS col0 FROM tab2
----
2
2
2

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE - col1 * + 81 NOT BETWEEN NULL AND - col1 * + 35 * - col1 * + col2
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1448
SELECT + 5 * + - CAST( NULL AS SIGNED ) / + col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1448
SELECT + 5 * + - CAST ( NULL AS INTEGER ) / + col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT - - ( + + 94 ) AS col0 FROM tab1 AS cor0
----
94
94
94

onlyif mysql # aggregate syntax: 
query I rowsort label-1450
SELECT ALL - + COUNT( * ) * + 36 FROM tab1 AS cor0
----
-108

skipif mysql # not compatible
query I rowsort label-1450
SELECT ALL - + COUNT ( * ) * + 36 FROM tab1 AS cor0
----
-108

onlyif mysql # aggregate syntax: 
query I rowsort label-1451
SELECT + COUNT( * ) AS col2 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-1451
SELECT + COUNT ( * ) AS col2 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1452
SELECT ALL + COUNT( * ) AS col0 FROM tab0 AS cor0 WHERE NOT 30 >= NULL
----
0

skipif mysql # not compatible
query I rowsort label-1452
SELECT ALL + COUNT ( * ) AS col0 FROM tab0 AS cor0 WHERE NOT 30 >= NULL
----
0

query I rowsort
SELECT DISTINCT + + 2 AS col2 FROM tab2 AS cor0
----
2

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + col0 > NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1455
SELECT - 91 DIV - - 6 FROM tab0
----
-15
-15
-15

skipif mysql # not compatible
query I rowsort label-1455
SELECT - 91 / - - 6 FROM tab0
----
-15
-15
-15

query II rowsort
SELECT 28 AS col1, 35 * + col2 FROM tab1
----
28
2065
28
2380
28
3360

onlyif mysql # aggregate syntax: 
query I rowsort label-1457
SELECT MAX( DISTINCT col1 ) FROM tab0
----
81

skipif mysql # not compatible
query I rowsort label-1457
SELECT MAX ( DISTINCT col1 ) FROM tab0
----
81

query I rowsort
SELECT ALL 37 * - 10 FROM tab2
----
-370
-370
-370

query I rowsort
SELECT + col2 AS col0 FROM tab1 WHERE NOT NULL BETWEEN - col1 + + 71 - + col2 AND + col2
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1460
SELECT SUM( - + CAST( + 45 AS SIGNED ) ) FROM tab1
----
-135

skipif mysql # not compatible
query I rowsort label-1460
SELECT SUM ( - + CAST ( + 45 AS INTEGER ) ) FROM tab1
----
-135

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 43 col1 FROM tab1 AS cor0
----
-43

query I rowsort
SELECT ALL + 45 * - + col0 FROM tab0 AS cor0
----
-3915
-4365
-675

onlyif mysql # aggregate syntax: 
query I rowsort label-1463
SELECT - MAX( + + col2 ) AS col0 FROM tab1 AS cor0
----
-96

skipif mysql # not compatible
query I rowsort label-1463
SELECT - MAX ( + + col2 ) AS col0 FROM tab1 AS cor0
----
-96

onlyif mysql # aggregate syntax: 
query I rowsort label-1464
SELECT DISTINCT COUNT( * ) * - - COUNT( * ) FROM tab2 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-1464
SELECT DISTINCT COUNT ( * ) * - - COUNT ( * ) FROM tab2 AS cor0
----
9

query I rowsort
SELECT ( col1 ) * - col1 + col2 + + + col0 FROM tab1 AS cor0
----
-2050
-49
119

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT col0 + + + 15 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - 0 col0, + col2 * + 60 AS col0 FROM tab1
----
0
3540
0
4080
0
5760

onlyif mysql # DIV for integer division: 
query I rowsort label-1468
SELECT ALL col1 DIV 57 - + 71 FROM tab2 cor0
----
-70
-70
-71

skipif mysql # not compatible
query I rowsort label-1468
SELECT ALL col1 / 57 - + 71 FROM tab2 cor0
----
-70
-70
-71

query I rowsort
SELECT - + col0 + col1 * col0 FROM tab0 AS cor0
----
0
1200
1740

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NULL >= 61
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - - col2 - - + col1 col1 FROM tab0 AS cor0
----
100
128
31

query I rowsort
SELECT + 96 * - - col1 * + 88 AS col0 FROM tab0
----
177408
684288
8448

onlyif mysql # DIV for integer division: 
query I rowsort label-1473
SELECT ALL col1 DIV ( + col2 ) FROM tab2
----
1
1
2

skipif mysql # not compatible
query I rowsort label-1473
SELECT ALL col1 / ( + col2 ) FROM tab2
----
1
1
2

query I rowsort
SELECT DISTINCT - 98 - + - col2 * col2 FROM tab0
----
2
2111
9703

query I rowsort
SELECT + 51 * - col1 * 84 - - col0 AS col1 FROM tab0
----
-346989
-4187
-89877

query I rowsort
SELECT DISTINCT 42 * + ( + col0 ) AS col0 FROM tab1
----
2142
3570
3822

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT 66 / col0 + + col2 / - 77 * - ( ( + - col2 ) ) * - - col0 + + col0 * 47 * - + col0 IS NOT NULL
----

query I rowsort
SELECT 44 * col0 - col2 - 90 + 66 FROM tab0
----
3794
4145
589

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1479
SELECT col1 + + + CAST( NULL AS SIGNED ) - col2 * + col1 AS col0 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1479
SELECT col1 + + + CAST ( NULL AS INTEGER ) - col2 * + col1 AS col0 FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT + 4 FROM tab0 AS cor0 WHERE + col0 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 35 col1 FROM tab0 AS cor0
----
35
35
35

query I rowsort
SELECT ALL + 24 * + 29 FROM tab1 AS cor0 WHERE ( NULL ) = NULL
----

query II rowsort
SELECT + col0 AS col1, col0 FROM tab0
----
15
15
87
87
97
97

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1484
SELECT - - CAST( - 69 AS SIGNED ) + - - 62 col2 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to ba940cd66e21e94e95aada5f28e1faf5

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1484
SELECT - - CAST ( - 69 AS INTEGER ) + - - 62 col2 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to ba940cd66e21e94e95aada5f28e1faf5

onlyif mysql # aggregate syntax: 
query I rowsort label-1485
SELECT DISTINCT - COUNT( * ) AS col0 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
-9

skipif mysql # not compatible
query I rowsort label-1485
SELECT DISTINCT - COUNT ( * ) AS col0 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
-9

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT 43 * - + col0 * - - col0 + + col1 + + col1 NOT IN ( col0 )
----

query I rowsort
SELECT - - 40 AS col1 FROM tab2 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
40
40
40

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1488
SELECT + - ( + - CAST( NULL AS SIGNED ) ) * AVG ( + - col0 ) AS col0 FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1488
SELECT + - ( + - CAST ( NULL AS INTEGER ) ) * AVG ( + - col0 ) AS col0 FROM tab1 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1489
SELECT ALL SUM( DISTINCT + + col0 ) AS col1 FROM tab2 AS cor0
----
185

skipif mysql # not compatible
query I rowsort label-1489
SELECT ALL SUM ( DISTINCT + + col0 ) AS col1 FROM tab2 AS cor0
----
185

query I rowsort
SELECT + col0 AS col0 FROM tab2 AS cor0 WHERE NOT NULL <= 79 * + 23 * + 41
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1491
SELECT - - 93 * + + COUNT( * ) FROM tab2 AS cor0
----
279

skipif mysql # not compatible
query I rowsort label-1491
SELECT - - 93 * + + COUNT ( * ) FROM tab2 AS cor0
----
279

onlyif mysql # aggregate syntax: 
query I rowsort label-1492
SELECT ALL - SUM( - 35 ) col0 FROM tab1 cor0
----
105

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1492
SELECT ALL - SUM ( - 35 ) col0 FROM tab1 cor0
----
105

query III rowsort
SELECT * FROM tab2 WHERE NOT - 85 BETWEEN NULL AND NULL
----

query I rowsort
SELECT 1 * + ( col0 ) AS col0 FROM tab2
----
46
64
75

onlyif mysql # aggregate syntax: 
query I rowsort label-1495
SELECT SUM( + col0 ) AS col2 FROM tab1
----
227

skipif mysql # not compatible
query I rowsort label-1495
SELECT SUM ( + col0 ) AS col2 FROM tab1
----
227

onlyif mysql # DIV for integer division: 
query I rowsort label-1496
SELECT - 49 DIV + col2 FROM tab2
----
-1
-2
0

skipif mysql # not compatible
query I rowsort label-1496
SELECT - 49 / + col2 FROM tab2
----
-1
-2
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1497
SELECT + MIN( - 85 ) FROM tab2
----
-85

skipif mysql # not compatible
query I rowsort label-1497
SELECT + MIN ( - 85 ) FROM tab2
----
-85

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE - + col2 + - col0 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT - + col1 AS col0 FROM tab0 WHERE - 52 - - 78 + col1 NOT BETWEEN - - 81 * - col2 AND + ( + 54 )
----
-81

query I rowsort
SELECT ALL - ( - 63 ) FROM tab0 AS cor0
----
63
63
63

query I rowsort
SELECT ALL + col1 + - 61 + col1 AS col1 FROM tab0 AS cor0
----
-19
-59
101

onlyif mysql # aggregate syntax: 
query I rowsort label-1502
SELECT + - 17 * - + ( - + 13 ) + - MAX( 68 ) AS col2 FROM tab0 AS cor0
----
-289

skipif mysql # not compatible
query I rowsort label-1502
SELECT + - 17 * - + ( - + 13 ) + - MAX ( 68 ) AS col2 FROM tab0 AS cor0
----
-289

query I rowsort
SELECT DISTINCT + 29 * col1 + 76 FROM tab2 AS cor0
----
1555
2019
2309

query I rowsort
SELECT + 85 * - + 73 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to 56d89b2d116368142a62af0a9f548070

onlyif mysql # aggregate syntax: 
query I rowsort label-1505
SELECT DISTINCT + 9 * + COUNT( * ) FROM tab1
----
27

skipif mysql # not compatible
query I rowsort label-1505
SELECT DISTINCT + 9 * + COUNT ( * ) FROM tab1
----
27

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT NULL >= + 5 + - col2
----

query II rowsort
SELECT ALL + col2, col1 AS col1 FROM tab0 AS cor0
----
10
21
47
81
99
1

query I rowsort
SELECT 37 + - - ( col2 ) * - + col2 AS col1 FROM tab2 cor0
----
-1563
-3327
-492

query I rowsort
SELECT - - ( + 25 ) + + 54 FROM tab0 AS cor0
----
79
79
79

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1510
SELECT - CAST( + + col0 AS SIGNED ) + col2 col1 FROM tab1 AS cor0
----
-23
-26
45

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1510
SELECT - CAST ( + + col0 AS INTEGER ) + col2 col1 FROM tab1 AS cor0
----
-23
-26
45

onlyif mysql # aggregate syntax: 
query I rowsort label-1511
SELECT + COUNT( * ) + + 85 AS col1 FROM tab2 AS cor0
----
88

skipif mysql # not compatible
query I rowsort label-1511
SELECT + COUNT ( * ) + + 85 AS col1 FROM tab2 AS cor0
----
88

query I rowsort
SELECT - 24 AS col1 FROM tab1, tab1 AS cor0
----
9 values hashing to 797d0f7c145f8ac623924448c714bbcc

query III rowsort
SELECT ALL * FROM tab0 WHERE NULL > + col2 * + col1
----

query I rowsort
SELECT col1 * + + col0 AS col2 FROM tab2
----
2346
4928
5025

onlyif mysql # DIV for integer division: 
query II rowsort label-1515
SELECT ALL - col2 col1, 44 DIV - 51 AS col2 FROM tab1
----
-59
0
-68
0
-96
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1515
SELECT ALL - col2 col1, 44 / - 51 AS col2 FROM tab1
----
-59
0
-68
0
-96
0

query I rowsort
SELECT ALL col0 + col0 * - - col1 AS col0 FROM tab0
----
1230
1914
194

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( col1 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-1518
SELECT + ( - SUM( DISTINCT - col1 ) ) AS col2 FROM tab0 AS cor0
----
103

skipif mysql # not compatible
query I rowsort label-1518
SELECT + ( - SUM ( DISTINCT - col1 ) ) AS col2 FROM tab0 AS cor0
----
103

onlyif mysql # aggregate syntax: 
query I rowsort label-1519
SELECT DISTINCT + MAX( DISTINCT + col0 ) FROM tab2 cor0
----
75

skipif mysql # not compatible
query I rowsort label-1519
SELECT DISTINCT + MAX ( DISTINCT + col0 ) FROM tab2 cor0
----
75

onlyif mysql # aggregate syntax: 
query I rowsort label-1520
SELECT + MAX( ALL + + col2 ) FROM tab1
----
96

skipif mysql # not compatible
query I rowsort label-1520
SELECT + MAX ( ALL + + col2 ) FROM tab1
----
96

onlyif mysql # DIV for integer division: 
query I rowsort label-1521
SELECT DISTINCT - 76 DIV + 5 AS col0 FROM tab2 WHERE NOT - col1 IS NULL
----
-15

skipif mysql # not compatible
query I rowsort label-1521
SELECT DISTINCT - 76 / + 5 AS col0 FROM tab2 WHERE NOT - col1 IS NULL
----
-15

onlyif mysql # aggregate syntax: 
query I rowsort label-1522
SELECT ALL + SUM( ALL col0 ) FROM tab1 AS cor0 WHERE NOT - 98 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1522
SELECT ALL + SUM ( ALL col0 ) FROM tab1 AS cor0 WHERE NOT - 98 IS NOT NULL
----
NULL

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT col2 + - 60 IS NOT NULL
----

query I rowsort
SELECT ALL + ( - 36 ) FROM tab0 AS cor0
----
-36
-36
-36

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 29 + - + col1 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - col2, - 23 + col1 col2 FROM tab2
----
-23
28
-40
54
-58
44

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 77 * + col2 col1 FROM tab1
----
4543
5236
7392

query I rowsort
SELECT col1 * + 60 * + - 82 AS col1 FROM tab1
----
-231240
-24600
-68880

query II rowsort
SELECT + col2 AS col1, + ( - + col0 ) * 55 FROM tab0
----
10
-4785
47
-825
99
-5335

onlyif mysql # aggregate syntax: 
query I rowsort label-1530
SELECT DISTINCT - 52 * - COUNT( * ) + + COUNT( * ) * + - COUNT( * ) AS col2 FROM tab0
----
147

skipif mysql # not compatible
query I rowsort label-1530
SELECT DISTINCT - 52 * - COUNT ( * ) + + COUNT ( * ) * + - COUNT ( * ) AS col2 FROM tab0
----
147

onlyif mysql # aggregate syntax: 
query II rowsort label-1531
SELECT + COUNT( * ), COUNT( * ) AS col1 FROM tab2
----
3
3

skipif mysql # not compatible
query II rowsort label-1531
SELECT + COUNT ( * ), COUNT ( * ) AS col1 FROM tab2
----
3
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1532
SELECT - SUM( - col0 ) FROM tab0
----
199

skipif mysql # not compatible
query I rowsort label-1532
SELECT - SUM ( - col0 ) FROM tab0
----
199

onlyif mysql # aggregate syntax: 
query I rowsort label-1533
SELECT ALL - + COUNT( * ) + - 22 AS col0 FROM tab2 AS cor0
----
-25

skipif mysql # not compatible
query I rowsort label-1533
SELECT ALL - + COUNT ( * ) + - 22 AS col0 FROM tab2 AS cor0
----
-25

query I rowsort
SELECT ALL - col0 + - ( - col1 ) AS col2 FROM tab0 AS cor0
----
-66
-96
66

query I rowsort
SELECT ALL - 48 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to 31c94943c073954e4ca20b170ab61f8c

query I rowsort
SELECT col1 + + - col0 AS col0 FROM tab1
----
-37
-44
-80

query I rowsort
SELECT col2 * - 65 FROM tab2
----
-1495
-2600
-3770

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( NULL ) BETWEEN NULL AND - col0
----

query I rowsort
SELECT + 56 * - 25 * + + col0 FROM tab1 AS cor0
----
-119000
-127400
-71400

onlyif mysql # aggregate syntax: 
query I rowsort label-1540
SELECT DISTINCT - 28 - - ( + COUNT( * ) ) + 68 AS col2 FROM tab0 AS cor0
----
43

skipif mysql # not compatible
query I rowsort label-1540
SELECT DISTINCT - 28 - - ( + COUNT ( * ) ) + 68 AS col2 FROM tab0 AS cor0
----
43

onlyif mysql # aggregate syntax: 
query I rowsort label-1541
SELECT DISTINCT - 78 + + COUNT( * ) AS col1 FROM tab1 AS cor0
----
-75

skipif mysql # not compatible
query I rowsort label-1541
SELECT DISTINCT - 78 + + COUNT ( * ) AS col1 FROM tab1 AS cor0
----
-75

query I rowsort
SELECT DISTINCT col1 - + + col0 AS col1 FROM tab1
----
-37
-44
-80

query I rowsort
SELECT col0 * + 43 - + - col0 * + col2 FROM tab2
----
3036
5312
7575

onlyif mysql # aggregate syntax: 
query I rowsort label-1544
SELECT ALL + MIN( ALL - col1 ) FROM tab1
----
-47

skipif mysql # not compatible
query I rowsort label-1544
SELECT ALL + MIN ( ALL - col1 ) FROM tab1
----
-47

query III rowsort
SELECT * FROM tab2 WHERE + col1 + + + col2 * + col2 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1546
SELECT + MIN( ALL col2 ) - - COUNT( * ) FROM tab0
----
13

skipif mysql # not compatible
query I rowsort label-1546
SELECT + MIN ( ALL col2 ) - - COUNT ( * ) FROM tab0
----
13

query III rowsort
SELECT * FROM tab1 WHERE NOT + ( 51 ) > ( NULL )
----

query I rowsort
SELECT DISTINCT 70 AS col0 FROM tab2
----
70

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT 52 / + 11 IS NOT NULL
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT ( + col2 IS NOT NULL )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1551
SELECT - + 37 DIV 99 - - - col1 AS col1 FROM tab0 cor0
----
-1
-21
-81

skipif mysql # not compatible
query I rowsort label-1551
SELECT - + 37 / 99 - - - col1 AS col1 FROM tab0 cor0
----
-1
-21
-81

onlyif mysql # aggregate syntax: 
query I rowsort label-1552
SELECT MIN( col1 ) FROM tab0 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-1552
SELECT MIN ( col1 ) FROM tab0 AS cor0
----
1

query I rowsort
SELECT + - col1 * - + ( col1 ) AS col1 FROM tab2 AS cor0
----
2601
4489
5929

onlyif mysql # aggregate syntax: 
query I rowsort label-1554
SELECT ALL MIN( ALL 53 ) FROM tab1 cor0
----
53

skipif mysql # not compatible
query I rowsort label-1554
SELECT ALL MIN ( ALL 53 ) FROM tab1 cor0
----
53

query I rowsort
SELECT DISTINCT - col1 * - - 78 AS col1 FROM tab2 AS cor0
----
-3978
-5226
-6006

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1556
SELECT - - CAST( CAST( NULL AS SIGNED ) AS SIGNED ) * - - col0 AS col0, - col0 FROM tab2 AS cor0
----
NULL
-46
NULL
-64
NULL
-75

skipif mysql # not compatible
query II rowsort label-1556
SELECT - - CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) * - - col0 AS col0, - col0 FROM tab2 AS cor0
----
NULL
-46
NULL
-64
NULL
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-1557
SELECT + SUM( ALL - col2 ) AS col2 FROM tab1 AS cor0
----
-223

skipif mysql # not compatible
query I rowsort label-1557
SELECT + SUM ( ALL - col2 ) AS col2 FROM tab1 AS cor0
----
-223

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1558
SELECT DISTINCT + 19, + ( + ( - + 34 ) ) + - - 39 + CAST( NULL AS SIGNED ) + col1 AS col0 FROM tab1
----
19
NULL

skipif mysql # not compatible
query II rowsort label-1558
SELECT DISTINCT + 19, + ( + ( - + 34 ) ) + - - 39 + CAST ( NULL AS INTEGER ) + col1 AS col0 FROM tab1
----
19
NULL

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE col1 > ( - - 91 )
----

query I rowsort
SELECT + col2 AS col0 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN NULL AND col2
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1561
SELECT ALL + - 67 DIV - col1 AS col1 FROM tab1 AS cor0
----
1
13
4

skipif mysql # not compatible
query I rowsort label-1561
SELECT ALL + - 67 / - col1 AS col1 FROM tab1 AS cor0
----
1
13
4

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-1562
SELECT DISTINCT - + CAST( - 33 AS SIGNED ) * - COUNT( - col2 ) AS col1, 91 AS col2 FROM tab2 AS cor0
----
-99
91

skipif mysql # not compatible
query II rowsort label-1562
SELECT DISTINCT - + CAST ( - 33 AS INTEGER ) * - COUNT ( - col2 ) AS col1, 91 AS col2 FROM tab2 AS cor0
----
-99
91

onlyif mysql # aggregate syntax: 
query I rowsort label-1563
SELECT DISTINCT + SUM( + - col0 ) + - + 98 * - COUNT( * ) FROM tab1 AS cor0
----
67

skipif mysql # not compatible
query I rowsort label-1563
SELECT DISTINCT + SUM ( + - col0 ) + - + 98 * - COUNT ( * ) FROM tab1 AS cor0
----
67

query II rowsort
SELECT col2, + 12 FROM tab2 AS cor0
----
23
12
40
12
58
12

onlyif mysql # aggregate syntax: 
query I rowsort label-1565
SELECT + MAX( + 9 ) AS col2 FROM tab0 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-1565
SELECT + MAX ( + 9 ) AS col2 FROM tab0 AS cor0
----
9

query I rowsort
SELECT DISTINCT - - 8 FROM tab2 AS cor0
----
8

query III rowsort
SELECT ALL * FROM tab0 WHERE + col0 < + col0 * + col0
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT ALL * FROM tab0 WHERE - 39 + col0 IS NULL
----

query III rowsort
SELECT * FROM tab2 WHERE - col2 * + + col1 < NULL
----

query I rowsort
SELECT col1 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT col1 + 39 AS col2 FROM tab0
----
120
40
60

query I rowsort
SELECT + col2 + - - 37 AS col1 FROM tab0 AS cor0
----
136
47
84

onlyif mysql # aggregate syntax: 
query I rowsort label-1573
SELECT COUNT( * ) + - - 16 FROM tab2 AS cor0
----
19

skipif mysql # not compatible
query I rowsort label-1573
SELECT COUNT ( * ) + - - 16 FROM tab2 AS cor0
----
19

onlyif mysql # aggregate syntax: 
query I rowsort label-1574
SELECT - COUNT( - 59 ) + - 70 * COUNT( * ) + + 31 FROM tab2 AS cor0
----
-182

skipif mysql # not compatible
query I rowsort label-1574
SELECT - COUNT ( - 59 ) + - 70 * COUNT ( * ) + + 31 FROM tab2 AS cor0
----
-182

onlyif mysql # aggregate syntax: 
query I rowsort label-1575
SELECT DISTINCT - COUNT( * ) + - - ( - 35 ) * 14 col0 FROM tab0 AS cor0
----
-493

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1575
SELECT DISTINCT - COUNT ( * ) + - - ( - 35 ) * 14 col0 FROM tab0 AS cor0
----
-493

onlyif mysql # aggregate syntax: 
query I rowsort label-1576
SELECT ALL + + MAX( col0 ) - - COUNT( * ) FROM tab2 AS cor0
----
78

skipif mysql # not compatible
query I rowsort label-1576
SELECT ALL + + MAX ( col0 ) - - COUNT ( * ) FROM tab2 AS cor0
----
78

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1577
SELECT 96 * + ( CAST( 87 AS SIGNED ) ) + + COUNT( * ) FROM tab2 AS cor0
----
8355

skipif mysql # not compatible
query I rowsort label-1577
SELECT 96 * + ( CAST ( 87 AS INTEGER ) ) + + COUNT ( * ) FROM tab2 AS cor0
----
8355

query I rowsort
SELECT ALL col0 - - + col1 + + - col2 * - col1 FROM tab0
----
197
318
3903

onlyif mysql # aggregate syntax: 
query I rowsort label-1579
SELECT DISTINCT ( - SUM( col1 ) ) AS col0 FROM tab1
----
-66

skipif mysql # not compatible
query I rowsort label-1579
SELECT DISTINCT ( - SUM ( col1 ) ) AS col0 FROM tab1
----
-66

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1580
SELECT DISTINCT - ( ( + 78 ) ) * - - CAST( NULL AS SIGNED ) col2 FROM tab1
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1580
SELECT DISTINCT - ( ( + 78 ) ) * - - CAST ( NULL AS INTEGER ) col2 FROM tab1
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1581
SELECT col2 * col1 col1, 75 * - + CAST( NULL AS SIGNED ) FROM tab2
----
1173
NULL
3080
NULL
3886
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1581
SELECT col2 * col1 col1, 75 * - + CAST ( NULL AS INTEGER ) FROM tab2
----
1173
NULL
3080
NULL
3886
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1582
SELECT ALL SUM( DISTINCT + col0 ) AS col0 FROM tab1
----
227

skipif mysql # not compatible
query I rowsort label-1582
SELECT ALL SUM ( DISTINCT + col0 ) AS col0 FROM tab1
----
227

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1583
SELECT - CAST( NULL AS SIGNED ) * - + ( - col2 ) * - - col0 - - + 64 + - + 63 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1583
SELECT - CAST ( NULL AS INTEGER ) * - + ( - col2 ) * - - col0 - - + 64 + - + 63 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT + 2 + 79 AS col0 FROM tab2 AS cor0
----
81

query I rowsort
SELECT DISTINCT ( - col1 ) * - 12 AS col2 FROM tab2
----
612
804
924

onlyif mysql # aggregate syntax: 
query II rowsort label-1586
SELECT ALL - 80, MAX( DISTINCT + col0 ) AS col2 FROM tab0
----
-80
97

skipif mysql # not compatible
query II rowsort label-1586
SELECT ALL - 80, MAX ( DISTINCT + col0 ) AS col2 FROM tab0
----
-80
97

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT ( 47 ) * 94 col1 FROM tab2
----
4418

query I rowsort
SELECT + col2 * + 17 * - - col1 FROM tab1
----
22848
5015
54332

onlyif mysql # aggregate syntax: 
query I rowsort label-1589
SELECT ALL ( + - ( - - MAX( + 1 ) ) ) AS col2 FROM tab0
----
-1

skipif mysql # not compatible
query I rowsort label-1589
SELECT ALL ( + - ( - - MAX ( + 1 ) ) ) AS col2 FROM tab0
----
-1

onlyif mysql # DIV for integer division: 
query I rowsort label-1590
SELECT + 71 DIV col2 FROM tab0
----
0
1
7

skipif mysql # not compatible
query I rowsort label-1590
SELECT + 71 / col2 FROM tab0
----
0
1
7

query II rowsort
SELECT col2, + col1 FROM tab2
----
23
51
40
77
58
67

query II rowsort
SELECT ALL + col0 - + col2 AS col2, col2 AS col2 FROM tab0
----
-2
99
-32
47
77
10

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 44 + - col2 col0 FROM tab2
----
-14
21
4

query I rowsort
SELECT + + 73 * + + 47 FROM tab2 cor0
----
3431
3431
3431

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1595
SELECT - MIN( col0 ) + - + COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NOT + ( CAST( NULL AS SIGNED ) ) = + col0 / + - col1 + - col2 / + 25
----
NULL

skipif mysql # not compatible
query I rowsort label-1595
SELECT - MIN ( col0 ) + - + COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NOT + ( CAST ( NULL AS INTEGER ) ) = + col0 / + - col1 + - col2 / + 25
----
NULL

query II rowsort
SELECT - 1 * + col1, + col2 FROM tab1 AS cor0
----
-14
96
-47
68
-5
59

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1597
SELECT + + CAST( + 37 AS SIGNED ) FROM tab0 AS cor0
----
37
37
37

skipif mysql # not compatible
query I rowsort label-1597
SELECT + + CAST ( + 37 AS INTEGER ) FROM tab0 AS cor0
----
37
37
37

query II rowsort
SELECT - 7 AS col0, col1 AS col2 FROM tab2
----
-7
51
-7
67
-7
77

onlyif mysql # aggregate syntax: 
query I rowsort label-1599
SELECT ALL - COUNT( DISTINCT 86 ) AS col0 FROM tab2
----
-1

skipif mysql # not compatible
query I rowsort label-1599
SELECT ALL - COUNT ( DISTINCT 86 ) AS col0 FROM tab2
----
-1

query II rowsort
SELECT - 97, col0 AS col0 FROM tab2
----
-97
46
-97
64
-97
75

query I rowsort
SELECT ALL - col0 * + - col2 AS col2 FROM tab2
----
1058
2560
4350

query III rowsort
SELECT * FROM tab1 WHERE NOT 85 <> - col0
----

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( NOT NULL IS NULL )
----

query I rowsort
SELECT DISTINCT col1 AS col0 FROM tab0 AS cor0 WHERE NOT + col2 + - 80 IS NULL
----
1
21
81

query I rowsort
SELECT col2 * - 42 FROM tab2 AS cor0
----
-1680
-2436
-966

query I rowsort
SELECT - col0 + 78 AS col2 FROM tab0
----
-19
-9
63

query I rowsort
SELECT DISTINCT + 11 * - col1 FROM tab2
----
-561
-737
-847

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 11 + + col0 col2 FROM tab2
----
57
75
86

onlyif mysql # aggregate syntax: 
query I rowsort label-1609
SELECT MIN( col0 ) FROM tab2
----
46

skipif mysql # not compatible
query I rowsort label-1609
SELECT MIN ( col0 ) FROM tab2
----
46

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1610
SELECT DISTINCT CAST( NULL AS SIGNED ) * - 80 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1610
SELECT DISTINCT CAST ( NULL AS INTEGER ) * - 80 FROM tab1
----
NULL

query I rowsort
SELECT col2 + col1 * - 43 FROM tab0
----
-3436
-893
56

query III rowsort
SELECT * FROM tab0 WHERE NOT ( + 59 ) BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1613
SELECT ALL + COUNT( * ) * - COUNT( * ) AS col1 FROM tab0
----
-9

skipif mysql # not compatible
query I rowsort label-1613
SELECT ALL + COUNT ( * ) * - COUNT ( * ) AS col1 FROM tab0
----
-9

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1614
SELECT CAST( + 24 AS SIGNED ) + col2 * + 77 FROM tab1
----
4567
5260
7416

skipif mysql # not compatible
query I rowsort label-1614
SELECT CAST ( + 24 AS INTEGER ) + col2 * + 77 FROM tab1
----
4567
5260
7416

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT + 76 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT - 35 * ( col0 * + col0 ) FROM tab2
----
-143360
-196875
-74060

query I rowsort
SELECT - 62 * + col0 AS col1 FROM tab2 WHERE NOT NULL IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - ( + col1 ) + - col2 * + ( - col1 ) col2 FROM tab0
----
189
3726
98

onlyif mysql # aggregate syntax: 
query I rowsort label-1619
SELECT ALL 70 * - COUNT( * ) AS col2 FROM tab1
----
-210

skipif mysql # not compatible
query I rowsort label-1619
SELECT ALL 70 * - COUNT ( * ) AS col2 FROM tab1
----
-210

onlyif mysql # DIV for integer division: 
query I rowsort label-1620
SELECT DISTINCT - col1 DIV - col1 + col1 FROM tab2
----
52
68
78

skipif mysql # not compatible
query I rowsort label-1620
SELECT DISTINCT - col1 / - col1 + col1 FROM tab2
----
52
68
78

onlyif mysql # aggregate syntax: 
query I rowsort label-1621
SELECT ( COUNT( * ) ) * + 42 FROM tab0
----
126

skipif mysql # not compatible
query I rowsort label-1621
SELECT ( COUNT ( * ) ) * + 42 FROM tab0
----
126

query III rowsort
SELECT * FROM tab2 WHERE 65 IN ( - 96 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1623
SELECT ( 24 ) + - CAST( NULL AS SIGNED ) AS col1 FROM tab0 WHERE NOT 43 >= - col0
----

skipif mysql # not compatible
query I rowsort label-1623
SELECT ( 24 ) + - CAST ( NULL AS INTEGER ) AS col1 FROM tab0 WHERE NOT 43 >= - col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1624
SELECT DISTINCT MAX( DISTINCT col1 ) + 41 AS col2 FROM tab0
----
122

skipif mysql # not compatible
query I rowsort label-1624
SELECT DISTINCT MAX ( DISTINCT col1 ) + 41 AS col2 FROM tab0
----
122

onlyif mysql # aggregate syntax: 
query I rowsort label-1625
SELECT DISTINCT - COUNT( DISTINCT col1 ) + + 46 FROM tab2 AS cor0
----
43

skipif mysql # not compatible
query I rowsort label-1625
SELECT DISTINCT - COUNT ( DISTINCT col1 ) + + 46 FROM tab2 AS cor0
----
43

query I rowsort
SELECT DISTINCT 34 + 24 AS col1 FROM tab2 AS cor0
----
58

query I rowsort
SELECT ALL - 83 * - 0 - col1 AS col0 FROM tab1
----
-14
-47
-5

onlyif mysql # DIV for integer division: 
query I rowsort label-1628
SELECT + 54 - col0 DIV + 98 FROM tab0
----
54
54
54

skipif mysql # not compatible
query I rowsort label-1628
SELECT + 54 - col0 / + 98 FROM tab0
----
54
54
54

onlyif mysql # aggregate syntax: 
query I rowsort label-1629
SELECT - - MAX( ALL col0 ) * - COUNT( * ) FROM tab2 AS cor0
----
-225

skipif mysql # not compatible
query I rowsort label-1629
SELECT - - MAX ( ALL col0 ) * - COUNT ( * ) FROM tab2 AS cor0
----
-225

query I rowsort
SELECT - 28 AS col0 FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
-28
-28
-28

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 9 col2 FROM tab0 AS cor0
----
9
9
9

onlyif mysql # DIV for integer division: 
query I rowsort label-1632
SELECT + 79 DIV - col2 AS col1 FROM tab1 AS cor0
----
-1
-1
0

skipif mysql # not compatible
query I rowsort label-1632
SELECT + 79 / - col2 AS col1 FROM tab1 AS cor0
----
-1
-1
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1633
SELECT DISTINCT + COUNT( * ) + SUM( DISTINCT ( col0 ) ) FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
188

skipif mysql # not compatible
query I rowsort label-1633
SELECT DISTINCT + COUNT ( * ) + SUM ( DISTINCT ( col0 ) ) FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
188

onlyif mysql # aggregate syntax: 
query I rowsort label-1634
SELECT DISTINCT + 61 * SUM( 53 ) AS col0 FROM tab2 AS cor0
----
9699

skipif mysql # not compatible
query I rowsort label-1634
SELECT DISTINCT + 61 * SUM ( 53 ) AS col0 FROM tab2 AS cor0
----
9699

query I rowsort
SELECT - - col2 * - 73 AS col2 FROM tab0 AS cor0
----
-3431
-7227
-730

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT NULL = 35
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT NULL BETWEEN ( col0 * - col1 ) AND + col0
----

query III rowsort
SELECT * FROM tab0 WHERE NOT + col1 >= ( + 56 )
----
87
21
10
97
1
99

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1639
SELECT DISTINCT * FROM tab2 WHERE ( + col0 ) <> - 95 / + CAST( 54 AS SIGNED )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-1639
SELECT DISTINCT * FROM tab2 WHERE ( + col0 ) <> - 95 / + CAST ( 54 AS INTEGER )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1640
SELECT ALL + CAST( NULL AS SIGNED ) FROM tab1 WHERE - col1 IS NULL
----

skipif mysql # not compatible
query I rowsort label-1640
SELECT ALL + CAST ( NULL AS INTEGER ) FROM tab1 WHERE - col1 IS NULL
----

query I rowsort
SELECT col2 * - col1 FROM tab0 WHERE NOT col0 NOT IN ( col0 * - col1 + + 46 * col0 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 78 col1 FROM tab0
----
78
78
78

onlyif mysql # aggregate syntax: 
query I rowsort label-1643
SELECT ALL - SUM( DISTINCT - ( - col1 ) ) AS col1 FROM tab0
----
-103

skipif mysql # not compatible
query I rowsort label-1643
SELECT ALL - SUM ( DISTINCT - ( - col1 ) ) AS col1 FROM tab0
----
-103

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + 36 col1 FROM tab2 AS cor0 WHERE - col2 IS NOT NULL
----
36

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( - 85 ) <= - col0
----
87
21
10
97
1
99

onlyif mysql # aggregate syntax: 
query I rowsort label-1646
SELECT - MAX( ALL 94 ) AS col1 FROM tab0
----
-94

skipif mysql # not compatible
query I rowsort label-1646
SELECT - MAX ( ALL 94 ) AS col1 FROM tab0
----
-94

query I rowsort
SELECT DISTINCT 62 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1 WHERE NOT NULL IS NOT NULL
----
62

onlyif mysql # aggregate syntax: 
query I rowsort label-1648
SELECT - 39 + + - SUM( ALL - - col2 ) col2 FROM tab0
----
-195

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1648
SELECT - 39 + + - SUM ( ALL - - col2 ) col2 FROM tab0
----
-195

query III rowsort
SELECT DISTINCT * FROM tab0 cor0 WHERE ( 37 ) + 44 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1650
SELECT + 70 + + 81 + - + CAST( + col2 AS SIGNED ) FROM tab2 AS cor0
----
111
128
93

skipif mysql # not compatible
query I rowsort label-1650
SELECT + 70 + + 81 + - + CAST ( + col2 AS INTEGER ) FROM tab2 AS cor0
----
111
128
93

onlyif mysql # aggregate syntax: 
query I rowsort label-1651
SELECT DISTINCT - MIN( + ( + + col2 ) ) AS col2 FROM tab0 AS cor0
----
-10

skipif mysql # not compatible
query I rowsort label-1651
SELECT DISTINCT - MIN ( + ( + + col2 ) ) AS col2 FROM tab0 AS cor0
----
-10

query I rowsort
SELECT ALL 1 FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1653
SELECT DISTINCT COUNT( ALL col2 ) + MIN( col2 ) AS col2 FROM tab1 AS cor0 WHERE ( NULL ) IS NULL
----
62

skipif mysql # not compatible
query I rowsort label-1653
SELECT DISTINCT COUNT ( ALL col2 ) + MIN ( col2 ) AS col2 FROM tab1 AS cor0 WHERE ( NULL ) IS NULL
----
62

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL <= col2 * + col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1655
SELECT - MIN( 10 ) FROM tab0 cor0
----
-10

skipif mysql # not compatible
query I rowsort label-1655
SELECT - MIN ( 10 ) FROM tab0 cor0
----
-10

query I rowsort
SELECT DISTINCT + col1 FROM tab1 AS cor0 WHERE col1 NOT BETWEEN - - col1 AND NULL
----

query I rowsort
SELECT DISTINCT col2 FROM tab0 AS cor0 WHERE NOT - col2 IN ( + 49 + + col0 )
----
10
47
99

onlyif mysql # DIV for integer division: 
query I rowsort label-1658
SELECT ALL - 88 DIV + col1 AS col2 FROM tab2 AS cor0
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-1658
SELECT ALL - 88 / + col1 AS col2 FROM tab2 AS cor0
----
-1
-1
-1

query III rowsort
SELECT * FROM tab1 WHERE col0 > + - col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-1660
SELECT 3 * + - MIN( - col2 ) FROM tab0
----
297

skipif mysql # not compatible
query I rowsort label-1660
SELECT 3 * + - MIN ( - col2 ) FROM tab0
----
297

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT - + col0 * - col1 * + 7 >= ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1662
SELECT * FROM tab0 WHERE NULL BETWEEN col1 * + CAST( NULL AS SIGNED ) + 29 / - col0 AND NULL
----

skipif mysql # not compatible
query III rowsort label-1662
SELECT * FROM tab0 WHERE NULL BETWEEN col1 * + CAST ( NULL AS INTEGER ) + 29 / - col0 AND NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1663
SELECT DISTINCT - SUM( ALL + - 39 ), + COUNT( DISTINCT - 25 ) AS col2 FROM tab0
----
117
1

skipif mysql # not compatible
query II rowsort label-1663
SELECT DISTINCT - SUM ( ALL + - 39 ), + COUNT ( DISTINCT - 25 ) AS col2 FROM tab0
----
117
1

query I rowsort
SELECT col1 FROM tab2 WHERE ( + 92 ) IS NOT NULL
----
51
67
77

query I rowsort
SELECT ALL col0 - + ( + col1 ) FROM tab1
----
37
44
80

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col0 / col0 col2 FROM tab0 cor0 WHERE + col1 * + col2 IS NULL
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE ( - 71 ) IS NULL
----

query I rowsort
SELECT DISTINCT - 53 + - ( + 59 ) FROM tab0 cor0
----
-112

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1669
SELECT DISTINCT * FROM tab2 AS cor0 WHERE + CAST( NULL AS SIGNED ) + - + col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-1669
SELECT DISTINCT * FROM tab2 AS cor0 WHERE + CAST ( NULL AS INTEGER ) + - + col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-1670
SELECT DISTINCT + - COUNT( ALL + col0 ) FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-1670
SELECT DISTINCT + - COUNT ( ALL + col0 ) FROM tab2 AS cor0
----
-3

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( + col2 ) IS NOT NULL
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE ( NULL ) NOT IN ( + col0 + + + col1 )
----

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE - 1 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 + col2 + + col2 * + ( col1 ) * 79 col0 FROM tab0 AS cor0
----
16513
300785
7823

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1675
SELECT - 90 AS col1, col2 * + CAST( - col1 AS SIGNED ) col1 FROM tab0
----
-90
-210
-90
-3807
-90
-99

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1675
SELECT - 90 AS col1, col2 * + CAST ( - col1 AS INTEGER ) col1 FROM tab0
----
-90
-210
-90
-3807
-90
-99

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT - 82 NOT BETWEEN - col0 AND ( NULL )
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col2 * + - col1 BETWEEN NULL AND col1 - + + 27 + 36
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1678
SELECT DISTINCT - col0 * + 59 + - + CAST( NULL AS SIGNED ) AS col2 FROM tab0 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1678
SELECT DISTINCT - col0 * + 59 + - + CAST ( NULL AS INTEGER ) AS col2 FROM tab0 cor0
----
NULL

query I rowsort
SELECT + ( - ( 87 ) ) * - - 11 - ( 95 ) + col1 * 4 * col2 FROM tab0 AS cor0
----
-212
-656
14176

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1680
SELECT ALL - col0 col1 FROM tab1 AS cor0 WHERE NOT ( 51 * - CAST( NULL AS SIGNED ) * + ( 41 ) + col1 ) > NULL
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1680
SELECT ALL - col0 col1 FROM tab1 AS cor0 WHERE NOT ( 51 * - CAST ( NULL AS INTEGER ) * + ( 41 ) + col1 ) > NULL
----

query II rowsort
SELECT ALL - col0 AS col0, 28 FROM tab0 AS cor0
----
-15
28
-87
28
-97
28

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col1 * - + 4 col0 FROM tab2 AS cor0
----
204
268
308

query I rowsort
SELECT col0 AS col0 FROM tab2 AS cor0 WHERE NOT - ( - col2 ) * - + 4 - - col1 IS NOT NULL
----

query II rowsort
SELECT + col2, - col0 AS col0 FROM tab1
----
59
-85
68
-91
96
-51

query IIIIII rowsort
SELECT * FROM tab2, tab1 AS cor0 WHERE ( 7 ) > NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col2, + col0 col0 FROM tab0
----
10
87
47
15
99
97

onlyif mysql # DIV for integer division: 
query I rowsort label-1687
SELECT ALL - 31 DIV col2 AS col0 FROM tab0
----
-3
0
0

skipif mysql # not compatible
query I rowsort label-1687
SELECT ALL - 31 / col2 AS col0 FROM tab0
----
-3
0
0

query III rowsort
SELECT ALL * FROM tab0 WHERE col0 IN ( - + 46 * + 58 )
----

query II rowsort
SELECT - col1, + col0 * - col1 + + ( + - col1 ) AS col2 FROM tab0
----
-1
-98
-21
-1848
-81
-1296

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1690
SELECT ALL - col1 * + CAST( NULL AS SIGNED ) AS col1 FROM tab1 WHERE ( ( + col0 ) ) <= col0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1690
SELECT ALL - col1 * + CAST ( NULL AS INTEGER ) AS col1 FROM tab1 WHERE ( ( + col0 ) ) <= col0
----
NULL
NULL
NULL

query II rowsort
SELECT DISTINCT col1 AS col2, - col0 FROM tab1
----
14
-51
47
-91
5
-85

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN NULL AND + - col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1693
SELECT + + COUNT( * ) * - MIN( + col2 ) FROM tab1 AS cor0
----
-177

skipif mysql # not compatible
query I rowsort label-1693
SELECT + + COUNT ( * ) * - MIN ( + col2 ) FROM tab1 AS cor0
----
-177

onlyif mysql # aggregate syntax: 
query I rowsort label-1694
SELECT MAX( + 66 ) FROM tab1 cor0
----
66

skipif mysql # not compatible
query I rowsort label-1694
SELECT MAX ( + 66 ) FROM tab1 cor0
----
66

onlyif mysql # aggregate syntax: 
query I rowsort label-1695
SELECT - MAX( DISTINCT + - col1 ) AS col2 FROM tab0 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-1695
SELECT - MAX ( DISTINCT + - col1 ) AS col2 FROM tab0 AS cor0
----
1

onlyif mysql # aggregate syntax: 
query I rowsort label-1696
SELECT DISTINCT - COUNT( * ) + - COUNT( * ) AS col0 FROM tab1 AS cor0
----
-6

skipif mysql # not compatible
query I rowsort label-1696
SELECT DISTINCT - COUNT ( * ) + - COUNT ( * ) AS col0 FROM tab1 AS cor0
----
-6

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( NULL ) BETWEEN col0 AND ( NULL )
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-1698
SELECT ALL + + CAST( NULL AS DECIMAL ) + COUNT( * ) * - + 78 * AVG ( DISTINCT + 97 ) AS col0 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1698
SELECT ALL + + CAST ( NULL AS REAL ) + COUNT ( * ) * - + 78 * AVG ( DISTINCT + 97 ) AS col0 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT ALL 26 + + col2 FROM tab1 AS cor0 WHERE NOT NULL = NULL
----

query I rowsort
SELECT DISTINCT ( + - col0 ) AS col0 FROM tab1 AS cor0
----
-51
-85
-91

query I rowsort
SELECT DISTINCT - 80 + + 19 + - + col0 FROM tab0 AS cor0
----
-148
-158
-76

query I rowsort
SELECT col0 FROM tab0 AS cor0 WHERE col0 * col0 NOT BETWEEN NULL AND + 15
----
15
87
97

onlyif mysql # aggregate syntax: 
query I rowsort label-1703
SELECT ALL COUNT( * ) + - COUNT( * ) AS col0 FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-1703
SELECT ALL COUNT ( * ) + - COUNT ( * ) AS col0 FROM tab0 AS cor0
----
0

query I rowsort
SELECT ALL + col0 * + + 77 + col0 AS col2 FROM tab2 AS cor0
----
3588
4992
5850

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE - 99 * + col1 IN ( - - col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1706
SELECT 58 + - SUM( + + col1 ) + + - COUNT( * ) col1 FROM tab1 AS cor0
----
-11

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1706
SELECT 58 + - SUM ( + + col1 ) + + - COUNT ( * ) col1 FROM tab1 AS cor0
----
-11

query I rowsort
SELECT col1 + - ( 81 ) FROM tab1 cor0
----
-34
-67
-76

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE 79 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT ALL col2 + + col1 + - col2 AS col1, col0 FROM tab1 AS cor0
----
14
51
47
91
5
85

query III rowsort
SELECT * FROM tab0 WHERE + - col0 + col2 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1711
SELECT DISTINCT MAX( - col0 ) col0 FROM tab2
----
-46

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1711
SELECT DISTINCT MAX ( - col0 ) col0 FROM tab2
----
-46

query II rowsort
SELECT col2 AS col1, + col2 * + 21 + - - 85 * - col2 FROM tab0
----
10
-640
47
-3008
99
-6336

query II rowsort
SELECT DISTINCT + col1 AS col2, 69 AS col2 FROM tab0 AS cor0
----
1
69
21
69
81
69

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - + ( + ( + ( + col2 ) ) ) / - ( 74 ) * - col2 + - col2 col1 FROM tab0 AS cor0 WHERE ( NULL ) = NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1715
SELECT SUM( ALL + 43 ) FROM tab1 AS cor0
----
129

skipif mysql # not compatible
query I rowsort label-1715
SELECT SUM ( ALL + 43 ) FROM tab1 AS cor0
----
129

query I rowsort
SELECT DISTINCT - 75 * - - col0 FROM tab0 AS cor0
----
-1125
-6525
-7275

onlyif mysql # aggregate syntax: 
query I rowsort label-1717
SELECT ALL - - 72 * + ( COUNT( DISTINCT - col0 ) ) col2 FROM tab0 AS cor0
----
216

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1717
SELECT ALL - - 72 * + ( COUNT ( DISTINCT - col0 ) ) col2 FROM tab0 AS cor0
----
216

onlyif mysql # DIV for integer division: 
query I rowsort label-1718
SELECT ALL - - 76 DIV col1 + 17 + col1 + + 10 col0 FROM tab2 cor0
----
104
79
95

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1718
SELECT ALL - - 76 / col1 + 17 + col1 + + 10 col0 FROM tab2 cor0
----
104
79
95

query I rowsort
SELECT 31 FROM tab2 AS cor0 WHERE NOT + col0 = ( col2 )
----
31
31
31

onlyif mysql # aggregate syntax: 
query I rowsort label-1720
SELECT - 3 + COUNT( * ) FROM tab1 AS cor0 WHERE NOT + col2 NOT BETWEEN ( - - col1 * - col1 + col2 - col1 * - col2 ) AND - col2 * col2 / col0
----
-3

skipif mysql # not compatible
query I rowsort label-1720
SELECT - 3 + COUNT ( * ) FROM tab1 AS cor0 WHERE NOT + col2 NOT BETWEEN ( - - col1 * - col1 + col2 - col1 * - col2 ) AND - col2 * col2 / col0
----
-3

query I rowsort
SELECT ALL 67 AS col0 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1722
SELECT ALL COUNT( DISTINCT col0 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-1722
SELECT ALL COUNT ( DISTINCT col0 ) FROM tab2
----
3

query III rowsort
SELECT * FROM tab2 WHERE NOT col2 + + 53 IN ( 78 ) AND NOT ( col2 + + 10 IS NULL )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT 4 * + col1 AS col1 FROM tab0
----
324
4
84

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT ( - + 13 * 36 + - col1 / - col2 * 98 + col0 * - col2 ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1726
SELECT + 67 * + MAX( ALL + - col2 ) FROM tab0
----
-670

skipif mysql # not compatible
query I rowsort label-1726
SELECT + 67 * + MAX ( ALL + - col2 ) FROM tab0
----
-670

onlyif mysql # aggregate syntax: 
query I rowsort label-1727
SELECT ALL MIN( + + col0 ) col1 FROM tab2
----
46

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1727
SELECT ALL MIN ( + + col0 ) col1 FROM tab2
----
46

query I rowsort
SELECT DISTINCT 34 + - col0 * - - ( - col0 ) FROM tab1
----
2635
7259
8315

query II rowsort
SELECT col2 + - + 87 AS col2, - col0 FROM tab1
----
-19
-91
-28
-85
9
-51

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 88 + + col1 col1 FROM tab2
----
139
155
165

query I rowsort
SELECT ALL + col1 * - - col1 FROM tab0
----
1
441
6561

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 + + col2 - - col0 * + 75 col1 FROM tab1
----
4017
6493
6961

query I rowsort
SELECT ALL - 62 + - - col1 FROM tab2 cor0
----
-11
15
5

onlyif mysql # aggregate syntax: 
query I rowsort label-1734
SELECT ALL - + COUNT( + + 71 ) col1 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1734
SELECT ALL - + COUNT ( + + 71 ) col1 FROM tab2 AS cor0
----
-3

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-1735
SELECT + CAST( + ( + COUNT( * ) ) AS SIGNED ) + - MIN( ALL + 52 ) FROM tab0 cor0 WHERE - 14 IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1735
SELECT + CAST ( + ( + COUNT ( * ) ) AS INTEGER ) + - MIN ( ALL + 52 ) FROM tab0 cor0 WHERE - 14 IS NULL
----
NULL

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: DECIMAL type: 
query I rowsort label-1736
SELECT DISTINCT + + MAX( DISTINCT - - col2 ) - + - CAST( - COUNT( * ) AS SIGNED ) * + CAST( NULL AS DECIMAL ) FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-1736
SELECT DISTINCT + + MAX ( DISTINCT - - col2 ) - + - CAST ( - COUNT ( * ) AS INTEGER ) * + CAST ( NULL AS REAL ) FROM tab2 AS cor0
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col2 + + 27 col1 FROM tab0 AS cor0
----
126
37
74

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT + col0 + + - col2 col2, col1 FROM tab2 AS cor0
----
17
67
23
51
24
77

query I rowsort
SELECT col1 FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1740
SELECT ALL + COUNT( 67 ), COUNT( * ) FROM tab1
----
3
3

skipif mysql # not compatible
query II rowsort label-1740
SELECT ALL + COUNT ( 67 ), COUNT ( * ) FROM tab1
----
3
3

onlyif mysql # DIV for integer division: 
query I rowsort label-1741
SELECT DISTINCT 60 DIV 19 - - col0 FROM tab1
----
54
88
94

skipif mysql # not compatible
query I rowsort label-1741
SELECT DISTINCT 60 / 19 - - col0 FROM tab1
----
54
88
94

query III rowsort
SELECT * FROM tab1 WHERE ( col2 ) * + col0 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1743
SELECT DISTINCT 85 * - MAX( ALL + + col0 ) - - 76 FROM tab0
----
-8169

skipif mysql # not compatible
query I rowsort label-1743
SELECT DISTINCT 85 * - MAX ( ALL + + col0 ) - - 76 FROM tab0
----
-8169

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1744
SELECT + 11 * CAST( NULL AS SIGNED ) AS col2 FROM tab2, tab0 AS cor0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

skipif mysql # not compatible
query I rowsort label-1744
SELECT + 11 * CAST ( NULL AS INTEGER ) AS col2 FROM tab2, tab0 AS cor0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1745
SELECT - col1 - CAST( + 8 AS SIGNED ) - + col0 * - col1 AS col2 FROM tab1
----
412
4222
692

skipif mysql # not compatible
query I rowsort label-1745
SELECT - col1 - CAST ( + 8 AS INTEGER ) - + col0 * - col1 AS col2 FROM tab1
----
412
4222
692

onlyif mysql # DIV for integer division: 
query I rowsort label-1746
SELECT 83 DIV col2 - - - 2 * + - col2 FROM tab1
----
119
137
192

skipif mysql # not compatible
query I rowsort label-1746
SELECT 83 / col2 - - - 2 * + - col2 FROM tab1
----
119
137
192

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - ( + 26 ) + + + col1 + + 28 * - col2 col1 FROM tab0
----
-1261
-2797
-285

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( 60 >= - 57 )
----

query I rowsort
SELECT + 26 - + ( - col0 ) AS col2 FROM tab2 cor0 WHERE NOT col0 IS NULL
----
101
72
90

onlyif mysql # aggregate syntax: 
query I rowsort label-1750
SELECT DISTINCT COUNT( DISTINCT + col0 ) FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-1750
SELECT DISTINCT COUNT ( DISTINCT + col0 ) FROM tab0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-1751
SELECT DISTINCT + COUNT( * ) FROM ( tab2 AS cor0 CROSS JOIN tab1 AS cor1 )
----
9

skipif mysql # not compatible
query I rowsort label-1751
SELECT DISTINCT + COUNT ( * ) FROM ( tab2 AS cor0 CROSS JOIN tab1 AS cor1 )
----
9

query IIIIII rowsort
SELECT DISTINCT * FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1 WHERE NOT ( NULL ) IS NULL
----

query I rowsort
SELECT DISTINCT col1 * + - 38 + - col2 AS col2 FROM tab1 AS cor0
----
-1854
-249
-628

onlyif mysql # aggregate syntax: 
query I rowsort label-1754
SELECT ALL - - MAX( DISTINCT col1 ) FROM tab0 cor0
----
81

skipif mysql # not compatible
query I rowsort label-1754
SELECT ALL - - MAX ( DISTINCT col1 ) FROM tab0 cor0
----
81

query I rowsort
SELECT - 21 * + 1 FROM tab1 cor0
----
-21
-21
-21

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1756
SELECT + 65 + CAST( NULL AS SIGNED ) + + 56 FROM tab1 AS cor0 WHERE NOT ( - col1 * + col1 * + - ( - 5 ) IS NULL )
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1756
SELECT + 65 + CAST ( NULL AS INTEGER ) + + 56 FROM tab1 AS cor0 WHERE NOT ( - col1 * + col1 * + - ( - 5 ) IS NULL )
----
NULL
NULL
NULL

query I rowsort
SELECT col1 * + - 31 * + 21 * + col2 * + col0 + col0 AS col1 FROM tab1 AS cor0
----
-16323740
-189334145
-44622093

query II rowsort
SELECT ALL col0, 17 FROM tab2 AS cor0
----
46
17
64
17
75
17

onlyif mysql # aggregate syntax: 
query I rowsort label-1759
SELECT DISTINCT + ( + - COUNT( col2 ) ) * + + COUNT( * ) AS col0 FROM tab2 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-1759
SELECT DISTINCT + ( + - COUNT ( col2 ) ) * + + COUNT ( * ) AS col0 FROM tab2 AS cor0
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-1760
SELECT DISTINCT + + SUM( DISTINCT - + col2 ) AS col1 FROM tab1 AS cor0
----
-223

skipif mysql # not compatible
query I rowsort label-1760
SELECT DISTINCT + + SUM ( DISTINCT - + col2 ) AS col1 FROM tab1 AS cor0
----
-223

onlyif mysql # aggregate syntax: 
query I rowsort label-1761
SELECT DISTINCT - SUM( + col0 ) AS col0 FROM tab0 AS cor0
----
-199

skipif mysql # not compatible
query I rowsort label-1761
SELECT DISTINCT - SUM ( + col0 ) AS col0 FROM tab0 AS cor0
----
-199

query I rowsort
SELECT + col2 * - - 37 FROM tab2
----
1480
2146
851

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL NOT BETWEEN + - col1 AND - col0 * col1 + 81 + col0 / - col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1764
SELECT DISTINCT 57 * + - COUNT( * ) AS col1 FROM tab2
----
-171

skipif mysql # not compatible
query I rowsort label-1764
SELECT DISTINCT 57 * + - COUNT ( * ) AS col1 FROM tab2
----
-171

query I rowsort
SELECT + col1 AS col0 FROM tab2 WHERE NOT - 97 / + + col2 - + col1 > NULL
----

query I rowsort
SELECT ALL - - col0 FROM tab1 WHERE NOT NULL BETWEEN - 3 * - col0 + - - ( - + 93 ) AND - + col0
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + col1 / + col2 * col0 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col0 col0 FROM tab0 cor0 WHERE + 3 - ( 85 ) IS NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( - 35 IS NOT NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1770
SELECT + - COUNT( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
-9

skipif mysql # not compatible
query I rowsort label-1770
SELECT + - COUNT ( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
-9

query IIIIII rowsort
SELECT DISTINCT * FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1 WHERE NOT 89 IS NULL
----
54 values hashing to c419dc2a653bccd84f7a2da103315187

onlyif mysql # aggregate syntax: 
query I rowsort label-1772
SELECT + MAX( ALL 94 ) FROM tab1 cor0 CROSS JOIN tab2 AS cor1
----
94

skipif mysql # not compatible
query I rowsort label-1772
SELECT + MAX ( ALL 94 ) FROM tab1 cor0 CROSS JOIN tab2 AS cor1
----
94

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 67 - - - col1 col2 FROM tab2
----
-10
0
16

onlyif mysql # aggregate syntax: 
query I rowsort label-1774
SELECT COUNT( * ) FROM tab0 AS cor0 CROSS JOIN tab2 cor1
----
9

skipif mysql # not compatible
query I rowsort label-1774
SELECT COUNT ( * ) FROM tab0 AS cor0 CROSS JOIN tab2 cor1
----
9

query II rowsort
SELECT ALL - col1 AS col1, 39 FROM tab2
----
-51
39
-67
39
-77
39

onlyif mysql # DIV for integer division: 
query I rowsort label-1776
SELECT col1 + - + col0 * col1 DIV + col2 col2 FROM tab0 cor0
----
-161
1
56

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1776
SELECT col1 + - + col0 * col1 / + col2 col2 FROM tab0 cor0
----
-161
1
56

onlyif mysql # DIV for integer division: 
query I rowsort label-1777
SELECT ALL + col0 DIV 6 AS col0 FROM tab0 AS cor0
----
14
16
2

skipif mysql # not compatible
query I rowsort label-1777
SELECT ALL + col0 / 6 AS col0 FROM tab0 AS cor0
----
14
16
2

query I rowsort
SELECT - + 40 + - + 76 AS col2 FROM tab2 AS cor0
----
-116
-116
-116

query I rowsort
SELECT 80 + 65 FROM tab1 AS cor0
----
145
145
145

onlyif mysql # aggregate syntax: 
query I rowsort label-1780
SELECT - 88 + + + COUNT( * ) FROM tab2 AS cor0
----
-85

skipif mysql # not compatible
query I rowsort label-1780
SELECT - 88 + + + COUNT ( * ) FROM tab2 AS cor0
----
-85

onlyif mysql # DIV for integer division: 
query I rowsort label-1781
SELECT DISTINCT + 65 DIV + col1 + + col1 AS col2 FROM tab1 AS cor0
----
18
48

skipif mysql # not compatible
query I rowsort label-1781
SELECT DISTINCT + 65 / + col1 + + col1 AS col2 FROM tab1 AS cor0
----
18
48

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE - col2 = - ( - - col1 )
----

query I rowsort
SELECT ALL - 61 + col2 AS col1 FROM tab2
----
-21
-3
-38

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1784
SELECT DISTINCT + CAST( NULL AS SIGNED ) - col1 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1784
SELECT DISTINCT + CAST ( NULL AS INTEGER ) - col1 FROM tab1
----
NULL

query I rowsort
SELECT + col1 * + 49 AS col1 FROM tab1
----
2303
245
686

query I rowsort
SELECT + 68 * - 66 * - - col2 AS col0 FROM tab0
----
-210936
-444312
-44880

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1787
SELECT - CAST( NULL AS DECIMAL ) * 83 AS col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1787
SELECT - CAST ( NULL AS REAL ) * 83 AS col2 FROM tab1
----
NULL
NULL
NULL

query II rowsort
SELECT DISTINCT 94, + col2 FROM tab0
----
94
10
94
47
94
99

query I rowsort
SELECT ALL + 22 FROM tab0 WHERE - + col0 IS NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( ( NOT NULL IS NOT NULL ) )
----

query II rowsort
SELECT - + 18 AS col0, - col1 AS col0 FROM tab1 AS cor0
----
-18
-14
-18
-47
-18
-5

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE col0 = 84
----

query II rowsort
SELECT - col0 AS col0, 81 * + + col0 AS col0 FROM tab1 AS cor0
----
-51
4131
-85
6885
-91
7371

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1794
SELECT * FROM tab2 AS cor0 WHERE NOT + col1 > + - col0 + CAST( NULL AS SIGNED ) + - - 34 + + col2 + - 60
----

skipif mysql # not compatible
query III rowsort label-1794
SELECT * FROM tab2 AS cor0 WHERE NOT + col1 > + - col0 + CAST ( NULL AS INTEGER ) + - - 34 + + col2 + - 60
----

query II rowsort
SELECT col1, col0 FROM tab1 AS cor0
----
14
51
47
91
5
85

onlyif mysql # aggregate syntax: 
query I rowsort label-1796
SELECT ALL + MIN( col0 ) AS col0 FROM tab1 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-1796
SELECT ALL + MIN ( col0 ) AS col0 FROM tab1 AS cor0
----
51

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1797
SELECT DISTINCT * FROM tab0 WHERE - - 82 + + col1 + - col1 + + col0 * + + col0 NOT IN ( - col0 / 49, CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-1797
SELECT DISTINCT * FROM tab0 WHERE - - 82 + + col1 + - col1 + + col0 * + + col0 NOT IN ( - col0 / 49, CAST ( NULL AS INTEGER ) )
----

query I rowsort
SELECT - + 71 AS col2 FROM ( tab1 AS cor0 CROSS JOIN tab2 AS cor1 )
----
9 values hashing to e72f95c346714d3065a96d67a6fd5062

query III rowsort
SELECT * FROM tab1 WHERE NOT + ( + ( - - col0 ) ) BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-1800
SELECT + MIN( ALL col1 ) AS col2, 89 AS col0 FROM tab2
----
51
89

skipif mysql # not compatible
query II rowsort label-1800
SELECT + MIN ( ALL col1 ) AS col2, 89 AS col0 FROM tab2
----
51
89

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1801
SELECT - - ( - - 41 ) * - CAST( col1 AS SIGNED ) col0 FROM tab1 WHERE NOT + - col2 IS NOT NULL
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1801
SELECT - - ( - - 41 ) * - CAST ( col1 AS INTEGER ) col0 FROM tab1 WHERE NOT + - col2 IS NOT NULL
----

query I rowsort
SELECT - col1 + + - col1 FROM tab0 AS cor0
----
-162
-2
-42

query I rowsort
SELECT col0 * + 45 * col1 + - col1 FROM tab2 AS cor0
----
105519
221683
226058

query I rowsort
SELECT DISTINCT ( - 84 ) + col0 FROM tab1 AS cor0
----
-33
1
7

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1805
SELECT DISTINCT * FROM tab0 cor0 WHERE NOT - CAST( - - col2 AS SIGNED ) <= NULL
----

skipif mysql # not compatible
query III rowsort label-1805
SELECT DISTINCT * FROM tab0 cor0 WHERE NOT - CAST ( - - col2 AS INTEGER ) <= NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1806
SELECT * FROM tab2 AS cor0 WHERE NOT + CAST( - col0 AS SIGNED ) = NULL
----

skipif mysql # not compatible
query III rowsort label-1806
SELECT * FROM tab2 AS cor0 WHERE NOT + CAST ( - col0 AS INTEGER ) = NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-1807
SELECT CAST( NULL AS DECIMAL ) * - - col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1807
SELECT CAST ( NULL AS REAL ) * - - col2 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1808
SELECT MIN( DISTINCT + col2 ) AS col0 FROM tab1
----
59

skipif mysql # not compatible
query I rowsort label-1808
SELECT MIN ( DISTINCT + col2 ) AS col0 FROM tab1
----
59

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col1, - col0 col2 FROM tab0
----
1
-97
21
-87
81
-15

onlyif mysql # aggregate syntax: 
query I rowsort label-1810
SELECT 11 * + MIN( - col0 ) FROM tab0
----
-1067

skipif mysql # not compatible
query I rowsort label-1810
SELECT 11 * + MIN ( - col0 ) FROM tab0
----
-1067

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1811
SELECT ALL - CAST( NULL AS SIGNED ) * - 28 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-1811
SELECT ALL - CAST ( NULL AS INTEGER ) * - 28 FROM tab2
----
NULL
NULL
NULL

query I rowsort
SELECT ALL - 21 + - 85 AS col0 FROM tab1
----
-106
-106
-106

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1813
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) BETWEEN - 48 / col0 + - - col2 AND col0 - + - CAST( + CAST( + 73 AS SIGNED ) AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-1813
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) BETWEEN - 48 / col0 + - - col2 AND col0 - + - CAST ( + CAST ( + 73 AS INTEGER ) AS INTEGER )
----

query I rowsort
SELECT ALL 2 + + + col0 * - - col0 FROM tab2 AS cor0
----
2118
4098
5627

onlyif mysql # aggregate syntax: 
query I rowsort label-1815
SELECT DISTINCT 21 * - + SUM( DISTINCT + col0 ) * - 35 FROM tab0 AS cor0
----
146265

skipif mysql # not compatible
query I rowsort label-1815
SELECT DISTINCT 21 * - + SUM ( DISTINCT + col0 ) * - 35 FROM tab0 AS cor0
----
146265

query I rowsort
SELECT DISTINCT - 54 * - 28 - 14 * - - col0 * col1 * - + col0 FROM tab2 AS cor0
----
1512336
4417000
5277762

query I rowsort
SELECT ALL ( + 70 ) AS col0 FROM tab1 AS cor0 WHERE NOT + 50 * + + col0 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1818
SELECT + col1 DIV + + col1 - - + col1 * 26 DIV + col2 AS col2 FROM tab2 AS cor0
----
31
51
58

skipif mysql # not compatible
query I rowsort label-1818
SELECT + col1 / + + col1 - - + col1 * 26 / + col2 AS col2 FROM tab2 AS cor0
----
31
51
58

query I rowsort
SELECT DISTINCT - + col1 + - - col0 FROM tab2 AS cor0
----
-13
-5
8

query II rowsort
SELECT ALL - col1 - - col0 + + + 74 + + - col1 AS col1, ( + col2 ) AS col1 FROM tab1 AS cor0
----
149
59
71
68
97
96

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT NULL IN ( - 17 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1822
SELECT DISTINCT + ( - col0 ) col0, col2 - CAST( NULL AS SIGNED ) AS col2 FROM tab1 AS cor0
----
-51
NULL
-85
NULL
-91
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-1822
SELECT DISTINCT + ( - col0 ) col0, col2 - CAST ( NULL AS INTEGER ) AS col2 FROM tab1 AS cor0
----
-51
NULL
-85
NULL
-91
NULL

query I rowsort
SELECT col1 AS col2 FROM tab1 WHERE NOT NULL IS NOT NULL
----
14
47
5

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1824
SELECT ALL + CAST( NULL AS SIGNED ) * + AVG ( - - 33 ) FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-1824
SELECT ALL + CAST ( NULL AS INTEGER ) * + AVG ( - - 33 ) FROM tab0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1825
SELECT DISTINCT CAST( NULL AS SIGNED ) * col2 AS col0 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-1825
SELECT DISTINCT CAST ( NULL AS INTEGER ) * col2 AS col0 FROM tab1
----
NULL

query I rowsort
SELECT ALL ( + - col1 ) * - col2 AS col1 FROM tab0
----
210
3807
99

query I rowsort
SELECT ALL + col0 AS col1 FROM tab2 WHERE NULL <= NULL
----

query I rowsort
SELECT - 68 AS col2 FROM tab2 WHERE NOT + + col0 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col2 col1 FROM tab1 WHERE - 21 < NULL
----

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT NULL BETWEEN - ( - 16 ) AND 85
----

query I rowsort
SELECT DISTINCT - + ( - ( + 56 ) ) FROM tab0 cor0
----
56

query I rowsort
SELECT DISTINCT - 7 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

query II rowsort
SELECT col0 AS col0, - 1 FROM tab2
----
46
-1
64
-1
75
-1

onlyif mysql # aggregate syntax: 
query I rowsort label-1834
SELECT DISTINCT - COUNT( DISTINCT - ( - col2 ) ) col0 FROM tab0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1834
SELECT DISTINCT - COUNT ( DISTINCT - ( - col2 ) ) col0 FROM tab0
----
-3

query I rowsort
SELECT - - col2 FROM tab0 WHERE NOT ( NOT col0 IS NOT NULL )
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-1836
SELECT ALL COUNT( * ) + 93 AS col2 FROM ( tab1 AS cor0 CROSS JOIN tab2 cor1 ) WHERE NOT NULL IS NULL
----
93

skipif mysql # not compatible
query I rowsort label-1836
SELECT ALL COUNT ( * ) + 93 AS col2 FROM ( tab1 AS cor0 CROSS JOIN tab2 cor1 ) WHERE NOT NULL IS NULL
----
93

onlyif mysql # aggregate syntax: 
query I rowsort label-1837
SELECT ALL + + COUNT( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-1837
SELECT ALL + + COUNT ( * ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9

query I rowsort
SELECT DISTINCT + + 26 AS col1 FROM tab0 AS cor0 WHERE - col0 * + + col2 / - 93 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1839
SELECT ALL + - MAX( DISTINCT + 95 ) + - 58 AS col0 FROM tab0 cor0
----
-153

skipif mysql # not compatible
query I rowsort label-1839
SELECT ALL + - MAX ( DISTINCT + 95 ) + - 58 AS col0 FROM tab0 cor0
----
-153

onlyif mysql # DIV for integer division: 
query I rowsort label-1840
SELECT DISTINCT col0 DIV + + 98 + - col0 FROM tab2 AS cor0
----
-46
-64
-75

skipif mysql # not compatible
query I rowsort label-1840
SELECT DISTINCT col0 / + + 98 + - col0 FROM tab2 AS cor0
----
-46
-64
-75

query II rowsort
SELECT + - 29 AS col2, col0 - 37 FROM tab1 AS cor0
----
-29
14
-29
48
-29
54

query I rowsort
SELECT - 29 * + col2 + - 58 * + + 79 FROM tab0 cor0
----
-4872
-5945
-7453

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL <> ( NULL )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL + col1 * 44 AS col0, - col1 * col1 * + + 62 + col1 col0 FROM tab0 AS cor0
----
3564
-406701
44
-61
924
-27321

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col2 col0 FROM tab2 WHERE - 96 IS NULL AND NULL >= + ( + col1 )
----

query I rowsort
SELECT - 30 + + 28 * + - 3 - - col1 AS col0 FROM tab2
----
-37
-47
-63

onlyif mysql # aggregate syntax: 
query I rowsort label-1847
SELECT + 97 + - MIN( + - col2 ) FROM tab2
----
155

skipif mysql # not compatible
query I rowsort label-1847
SELECT + 97 + - MIN ( + - col2 ) FROM tab2
----
155

query I rowsort
SELECT ALL 16 * + col0 AS col0 FROM tab1
----
1360
1456
816

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1849
SELECT DISTINCT col1 * 8 + - 89 + + + col0 * + - col0 FROM tab2 WHERE NOT NULL NOT IN ( - - col0, + 32, col2 * - CAST( NULL AS SIGNED ) / + CAST( NULL AS SIGNED ) + + col1 )
----

skipif mysql # not compatible
query I rowsort label-1849
SELECT DISTINCT col1 * 8 + - 89 + + + col0 * + - col0 FROM tab2 WHERE NOT NULL NOT IN ( - - col0, + 32, col2 * - CAST ( NULL AS INTEGER ) / + CAST ( NULL AS INTEGER ) + + col1 )
----

query I rowsort
SELECT ALL col0 + col2 * - - 92 FROM tab1 AS cor0
----
5513
6347
8883

query I rowsort
SELECT DISTINCT - 45 + - + 22 AS col1 FROM tab0 AS cor0
----
-67

query I rowsort
SELECT ALL - + col1 + - + col1 AS col1 FROM tab2 AS cor0
----
-102
-134
-154

onlyif mysql # DIV for integer division: 
query I rowsort label-1853
SELECT - ( - col0 ) DIV col0 * col1 AS col1 FROM tab1 AS cor0
----
14
47
5

skipif mysql # not compatible
query I rowsort label-1853
SELECT - ( - col0 ) / col0 * col1 AS col1 FROM tab1 AS cor0
----
14
47
5

query I rowsort
SELECT ALL - ( 54 ) - + col2 FROM tab1 AS cor0
----
-113
-122
-150

query I rowsort
SELECT ALL col1 + + 21 FROM tab0 AS cor0 WHERE ( NULL ) IN ( col0 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL col2, 85 + - col0 col1 FROM tab0
----
10
-2
47
70
99
-12

query I rowsort
SELECT col1 + + + col2 * col1 AS col1 FROM tab1 AS cor0
----
1358
300
3243

query I rowsort
SELECT ALL + + col0 * + col2 + + + col1 + + + 44 + col1 AS col0 FROM tab1 AS cor0 WHERE ( NULL ) BETWEEN NULL AND NULL
----

query I rowsort
SELECT ALL + col2 * + - col0 + - 82 FROM tab2 AS cor0
----
-1140
-2642
-4432

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - col0 + 46 col0 FROM tab1 AS cor0
----
-39
-45
-5

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT - 11 * + 52 + col0 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query II rowsort label-1862
SELECT ALL - + 71 * + MAX( ALL + + col1 ) + 70, COUNT( * ) AS col1 FROM tab0 AS cor0
----
-5681
3

skipif mysql # not compatible
query II rowsort label-1862
SELECT ALL - + 71 * + MAX ( ALL + + col1 ) + 70, COUNT ( * ) AS col1 FROM tab0 AS cor0
----
-5681
3

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT - ( col2 ) NOT BETWEEN - col2 - + col1 AND + col0
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL - - ( + - col1 ) AS col2 FROM tab2 AS cor0
----
-51
-67
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-1865
SELECT 79 / + SUM( - 92 ) FROM tab2 WHERE NOT NULL IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1865
SELECT 79 / + SUM ( - 92 ) FROM tab2 WHERE NOT NULL IS NULL
----
NULL

query I rowsort
SELECT ALL 90 AS col1 FROM tab2, tab2 cor0
----
9 values hashing to 96f7a90428db93f472e0d219bab64853

query I rowsort
SELECT col2 AS col0 FROM tab1 WHERE NOT ( NULL ) IS NULL
----

query I rowsort
SELECT ( - 77 ) * + col2 * col1 * - - col1 AS col1 FROM tab0
----
-23744259
-339570
-7623

query I rowsort
SELECT + 95 AS col1 FROM tab1 cor0
----
95
95
95

onlyif mysql # aggregate syntax: 
query II rowsort label-1870
SELECT + COUNT( DISTINCT - + 21 ) AS col0, 16 AS col1 FROM tab0 AS cor0
----
1
16

skipif mysql # not compatible
query II rowsort label-1870
SELECT + COUNT ( DISTINCT - + 21 ) AS col0, 16 AS col1 FROM tab0 AS cor0
----
1
16

onlyif mysql # DIV for integer division: 
query II rowsort label-1871
SELECT DISTINCT + - col0 DIV col0, + col1 FROM tab1 AS cor0
----
-1
14
-1
47
-1
5

skipif mysql # not compatible
query II rowsort label-1871
SELECT DISTINCT + - col0 / col0, + col1 FROM tab1 AS cor0
----
-1
14
-1
47
-1
5

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1872
SELECT ALL + - COUNT( * ) * - COUNT( + - 71 ) + COUNT( * ) DIV + + ( - 33 ) FROM tab2 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-1872
SELECT ALL + - COUNT ( * ) * - COUNT ( + - 71 ) + COUNT ( * ) / + + ( - 33 ) FROM tab2 AS cor0
----
9

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1873
SELECT ALL * FROM tab1 WHERE - + CAST( NULL AS SIGNED ) + + col0 IN ( col1, col0 )
----

skipif mysql # not compatible
query III rowsort label-1873
SELECT ALL * FROM tab1 WHERE - + CAST ( NULL AS INTEGER ) + + col0 IN ( col1, col0 )
----

query I rowsort
SELECT DISTINCT + - 24 AS col0 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
-24

onlyif mysql # aggregate syntax: 
query II rowsort label-1875
SELECT DISTINCT - COUNT( * ) AS col0, 0 AS col0 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9
0

skipif mysql # not compatible
query II rowsort label-1875
SELECT DISTINCT - COUNT ( * ) AS col0, 0 AS col0 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9
0

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1876
SELECT * FROM tab2 AS cor0 WHERE 41 * - col0 <> + CAST( - - col2 AS SIGNED )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-1876
SELECT * FROM tab2 AS cor0 WHERE 41 * - col0 <> + CAST ( - - col2 AS INTEGER )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT + col1 + + ( + - ( col2 ) ) AS col1 FROM tab1 AS cor0
----
-21
-54
-82

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - 18 col0, + 91 AS col2 FROM tab1 cor0
----
-18
91
-18
91
-18
91

onlyif mysql # aggregate syntax: 
query I rowsort label-1879
SELECT DISTINCT + MAX( + 44 ) AS col1 FROM tab2
----
44

skipif mysql # not compatible
query I rowsort label-1879
SELECT DISTINCT + MAX ( + 44 ) AS col1 FROM tab2
----
44

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-1880
SELECT - col2 AS col2, - CAST( NULL AS SIGNED ) AS col1 FROM tab1
----
-59
NULL
-68
NULL
-96
NULL

skipif mysql # not compatible
query II rowsort label-1880
SELECT - col2 AS col2, - CAST ( NULL AS INTEGER ) AS col1 FROM tab1
----
-59
NULL
-68
NULL
-96
NULL

query I rowsort
SELECT + 47 * - col0 * + + col2 AS col2 FROM tab0
----
-33135
-40890
-451341

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col2 AS col1, - col0 * - col2 col2 FROM tab1
----
-59
5015
-68
6188
-96
4896

query I rowsort
SELECT col2 * + + col1 - col0 FROM tab0
----
123
2
3792

query II rowsort
SELECT ALL 52, col2 FROM tab1
----
52
59
52
68
52
96

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NULL > - col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1886
SELECT COUNT( * ) - - COUNT( * ) FROM tab2
----
6

skipif mysql # not compatible
query I rowsort label-1886
SELECT COUNT ( * ) - - COUNT ( * ) FROM tab2
----
6

onlyif mysql # aggregate syntax: 
query II rowsort label-1887
SELECT ALL COUNT( * ), 72 * + 77 * - 52 AS col1 FROM tab1
----
3
-288288

skipif mysql # not compatible
query II rowsort label-1887
SELECT ALL COUNT ( * ), 72 * + 77 * - 52 AS col1 FROM tab1
----
3
-288288

onlyif mysql # aggregate syntax: 
query I rowsort label-1888
SELECT ALL - ( + 74 ) + - COUNT( * ) * 17 * ( + 13 ) + 92 FROM tab2
----
-645

skipif mysql # not compatible
query I rowsort label-1888
SELECT ALL - ( + 74 ) + - COUNT ( * ) * 17 * ( + 13 ) + 92 FROM tab2
----
-645

query II rowsort
SELECT DISTINCT + - 87, 29 AS col0 FROM tab0 AS cor0
----
-87
29

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1890
SELECT ALL CAST( - col2 AS SIGNED ) + 2 AS col0 FROM tab1 AS cor0
----
-57
-66
-94

skipif mysql # not compatible
query I rowsort label-1890
SELECT ALL CAST ( - col2 AS INTEGER ) + 2 AS col0 FROM tab1 AS cor0
----
-57
-66
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-1891
SELECT ALL + - COUNT( * ) col1 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1891
SELECT ALL + - COUNT ( * ) col1 FROM tab2 AS cor0
----
-3

query I rowsort
SELECT 31 + - 19 * + col1 FROM tab0
----
-1508
-368
12

onlyif mysql # aggregate syntax: 
query II rowsort label-1893
SELECT - SUM( ALL - 23 ), COUNT( * ) AS col1 FROM tab2
----
69
3

skipif mysql # not compatible
query II rowsort label-1893
SELECT - SUM ( ALL - 23 ), COUNT ( * ) AS col1 FROM tab2
----
69
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1894
SELECT DISTINCT + CAST( NULL AS SIGNED ) - - 56 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-1894
SELECT DISTINCT + CAST ( NULL AS INTEGER ) - - 56 FROM tab0
----
NULL

query I rowsort
SELECT - + 51 - 97 AS col2 FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to de37b7db44227c1a24c6d1a028375050

query I rowsort
SELECT ALL - col0 * + + 78 FROM tab1 AS cor0
----
-3978
-6630
-7098

query I rowsort
SELECT col1 + col2 AS col1 FROM tab1 AS cor0 WHERE NOT 25 + 13 <> + + col1 / - col1 + + - 13 / + col1 * + 13 + - 40
----

query I rowsort
SELECT ALL - col1 * + 45 + - + col1 + - 88 AS col1 FROM tab0 AS cor0
----
-1054
-134
-3814

query I rowsort
SELECT ALL - + ( + ( + col0 ) ) * + - ( 53 ) + - col1 AS col1 FROM tab2 AS cor0
----
2387
3315
3908

onlyif mysql # aggregate syntax: 
query II rowsort label-1900
SELECT DISTINCT 18 * 32 AS col0, - COUNT( * ) FROM tab0 cor0
----
576
-3

skipif mysql # not compatible
query II rowsort label-1900
SELECT DISTINCT 18 * 32 AS col0, - COUNT ( * ) FROM tab0 cor0
----
576
-3

query I rowsort
SELECT DISTINCT - - 21 FROM tab2 cor0
----
21

query I rowsort
SELECT - col2 AS col2 FROM tab0 AS cor0 WHERE NOT col1 * + col1 NOT BETWEEN + 2 * - col1 AND + - col0 * + + col1
----

query II rowsort
SELECT + col2, + ( + - 23 ) * col2 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT - col0 * + - col1 FROM tab1 cor0
----
425
4277
714

query I rowsort
SELECT ALL - AVG ( + 7 ) AS col0 FROM tab1 AS cor0 WHERE NOT - col1 IS NOT NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-1906
SELECT + SUM( DISTINCT col0 ) FROM tab2
----
185

skipif mysql # not compatible
query I rowsort label-1906
SELECT + SUM ( DISTINCT col0 ) FROM tab2
----
185

onlyif mysql # DIV for integer division: 
query II rowsort label-1907
SELECT DISTINCT + 51 AS col1, ( - col0 ) DIV - 8 FROM tab2
----
51
5
51
8
51
9

skipif mysql # not compatible
query II rowsort label-1907
SELECT DISTINCT + 51 AS col1, ( - col0 ) / - 8 FROM tab2
----
51
5
51
8
51
9

onlyif mysql # aggregate syntax: 
query I rowsort label-1908
SELECT MIN( ALL ( col1 ) ) + + + COUNT( * ) FROM tab0 WHERE NOT NULL IS NOT NULL
----
4

skipif mysql # not compatible
query I rowsort label-1908
SELECT MIN ( ALL ( col1 ) ) + + + COUNT ( * ) FROM tab0 WHERE NOT NULL IS NOT NULL
----
4

query II rowsort
SELECT - col1 AS col1, - 84 FROM tab1
----
-14
-84
-47
-84
-5
-84

query I rowsort
SELECT ALL + col0 * - 32 AS col1 FROM tab1
----
-1632
-2720
-2912

query III rowsort
SELECT * FROM tab2 WHERE NOT col1 > 17
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1912
SELECT ALL SUM( DISTINCT col2 ) FROM tab0
----
156

skipif mysql # not compatible
query I rowsort label-1912
SELECT ALL SUM ( DISTINCT col2 ) FROM tab0
----
156

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1913
SELECT DISTINCT 6 * col2 * 47 * + CAST( NULL AS SIGNED ) FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-1913
SELECT DISTINCT 6 * col2 * 47 * + CAST ( NULL AS INTEGER ) FROM tab2
----
NULL

query I rowsort
SELECT ALL - col0 FROM tab0 AS cor0 WHERE NOT - 98 <= 12 * + + col0
----

query I rowsort
SELECT + 12 AS col1 FROM tab1 cor0
----
12
12
12

onlyif mysql # aggregate syntax: 
query I rowsort label-1916
SELECT DISTINCT + MAX( + - 80 ) AS col0 FROM tab1 AS cor0
----
-80

skipif mysql # not compatible
query I rowsort label-1916
SELECT DISTINCT + MAX ( + - 80 ) AS col0 FROM tab1 AS cor0
----
-80

query I rowsort
SELECT ( - + col0 ) AS col0 FROM tab1
----
-51
-85
-91

onlyif mysql # aggregate syntax: 
query I rowsort label-1918
SELECT - + COUNT( * ) col1 FROM tab1 cor0 CROSS JOIN tab0 cor1
----
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-1918
SELECT - + COUNT ( * ) col1 FROM tab1 cor0 CROSS JOIN tab0 cor1
----
-9

query III rowsort
SELECT DISTINCT * FROM tab2 cor0 WHERE col0 * + - 71 IS NULL
----

query I rowsort
SELECT - 56 FROM tab1 AS cor0 WHERE - col0 IS NULL
----

query I rowsort
SELECT col1 + - - col2 * + + 16 AS col2 FROM tab1 AS cor0
----
1135
1550
949

query I rowsort
SELECT DISTINCT + - col0 + + - 74 AS col1 FROM tab1 AS cor0
----
-125
-159
-165

query I rowsort
SELECT DISTINCT + col0 * + col0 + col0 + + + col1 + - 48 AS col2 FROM tab1 AS cor0
----
2618
7267
8371

query I rowsort
SELECT DISTINCT + + 0 FROM tab2 cor0
----
0

query I rowsort
SELECT ALL - col2 * - col2 * - col2 - col2 + col0 AS col2 FROM tab0 AS cor0
----
-103855
-923
-970301

query II rowsort
SELECT col1 + col1 AS col0, + ( - col0 ) AS col1 FROM tab1 AS cor0
----
10
-85
28
-51
94
-91

query I rowsort
SELECT DISTINCT - col1 + + 83 + - + 71 AS col1 FROM tab2 AS cor0
----
-39
-55
-65

query I rowsort
SELECT ( - + 55 ) + + - col0 + + col1 * ( - - col2 ) + + - ( - ( col0 ) ) AS col1 FROM tab1
----
1289
240
3141

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1929
SELECT DISTINCT + col2 * CAST( NULL AS SIGNED ) + 59 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-1929
SELECT DISTINCT + col2 * CAST ( NULL AS INTEGER ) + 59 FROM tab2
----
NULL

query I rowsort
SELECT ALL - col0 AS col2 FROM tab1 WHERE NOT + 83 IS NULL
----
-51
-85
-91

query I rowsort
SELECT ALL 42 AS col2 FROM tab1, tab1 AS cor0
----
9 values hashing to 64c29db9f1cd7ed4ddeb1735e3e0d442

query I rowsort
SELECT DISTINCT + 97 FROM tab0, tab1 AS cor0
----
97

query III rowsort
SELECT * FROM tab0 WHERE ( NOT ( NOT ( NOT - col1 IS NULL ) ) )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-1934
SELECT - 9 DIV + MIN( ALL + - col2 ) FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-1934
SELECT - 9 / + MIN ( ALL + - col2 ) FROM tab0
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1935
SELECT DISTINCT + COUNT( * ) FROM tab2 WHERE NOT ( - col1 + col1 + 81 = NULL )
----
0

skipif mysql # not compatible
query I rowsort label-1935
SELECT DISTINCT + COUNT ( * ) FROM tab2 WHERE NOT ( - col1 + col1 + 81 = NULL )
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1936
SELECT ALL - COUNT( * ) FROM tab2, tab1 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-1936
SELECT ALL - COUNT ( * ) FROM tab2, tab1 AS cor0
----
-9

query I rowsort
SELECT + + ( col1 ) * - + col1 FROM tab1 AS cor0
----
-196
-2209
-25

query II rowsort
SELECT DISTINCT + + col0 - + 73 + - col2, + col0 AS col2 FROM tab1 AS cor0
----
-118
51
-47
85
-50
91

query II rowsort
SELECT + col2 - - 62 - + - col2, + col1 AS col0 FROM tab0 AS cor0
----
156
81
260
1
82
21

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) BETWEEN + + ( - + col0 ) * + 84 + - col1 AND + 22
----

query II rowsort
SELECT col2, col1 + 85 AS col0 FROM tab2
----
23
136
40
162
58
152

onlyif mysql # aggregate syntax: 
query I rowsort label-1942
SELECT + - 31 * COUNT( * ) + + 53 AS col0 FROM tab1 AS cor0
----
-40

skipif mysql # not compatible
query I rowsort label-1942
SELECT + - 31 * COUNT ( * ) + + 53 AS col0 FROM tab1 AS cor0
----
-40

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1943
SELECT * FROM tab1 AS cor0 WHERE NOT - 74 * - ( + 38 ) * + col0 / + col0 BETWEEN - + CAST( NULL AS SIGNED ) AND - - col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-1943
SELECT * FROM tab1 AS cor0 WHERE NOT - 74 * - ( + 38 ) * + col0 / + col0 BETWEEN - + CAST ( NULL AS INTEGER ) AND - - col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + + col1 * + ( 68 ) AS col2 FROM tab2 AS cor0
----
3468
4556
5236

onlyif mysql # aggregate syntax: 
query II rowsort label-1945
SELECT ALL + COUNT( * ) AS col1, 80 AS col1 FROM tab0 AS cor0
----
3
80

skipif mysql # not compatible
query II rowsort label-1945
SELECT ALL + COUNT ( * ) AS col1, 80 AS col1 FROM tab0 AS cor0
----
3
80

onlyif mysql # aggregate syntax: 
query II rowsort label-1946
SELECT ALL MIN( ALL + 80 ) AS col2, 27 FROM tab2 cor0 WHERE NOT ( NULL ) BETWEEN + 95 + + 63 AND + 0
----
NULL
27

skipif mysql # not compatible
query II rowsort label-1946
SELECT ALL MIN ( ALL + 80 ) AS col2, 27 FROM tab2 cor0 WHERE NOT ( NULL ) BETWEEN + 95 + + 63 AND + 0
----
NULL
27

query II rowsort
SELECT ALL - + col0, col0 * - col0 + - - col2 AS col1 FROM tab2 AS cor0
----
-46
-2093
-64
-4056
-75
-5567

onlyif mysql # aggregate syntax: 
query I rowsort label-1948
SELECT ALL - MIN( 63 ) AS col2 FROM tab2 cor0
----
-63

skipif mysql # not compatible
query I rowsort label-1948
SELECT ALL - MIN ( 63 ) AS col2 FROM tab2 cor0
----
-63

onlyif mysql # aggregate syntax: 
query I rowsort label-1949
SELECT ALL 29 * 78 * + COUNT( * ) FROM tab2
----
6786

skipif mysql # not compatible
query I rowsort label-1949
SELECT ALL 29 * 78 * + COUNT ( * ) FROM tab2
----
6786

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-1950
SELECT 95 DIV - CAST( - 18 AS SIGNED ) FROM tab2
----
5
5
5

skipif mysql # not compatible
query I rowsort label-1950
SELECT 95 / - CAST ( - 18 AS INTEGER ) FROM tab2
----
5
5
5

query III rowsort
SELECT ALL * FROM tab2 WHERE + 11 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-1952
SELECT ALL COUNT( * ) * + ( 81 ) AS col1 FROM tab0
----
243

skipif mysql # not compatible
query I rowsort label-1952
SELECT ALL COUNT ( * ) * + ( 81 ) AS col1 FROM tab0
----
243

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 + - col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1954
SELECT ALL + + col1 AS col0 FROM tab1 AS cor0 WHERE NOT NULL IN ( CAST( NULL AS SIGNED ), col1 * col2 * + col2 )
----

skipif mysql # not compatible
query I rowsort label-1954
SELECT ALL + + col1 AS col0 FROM tab1 AS cor0 WHERE NOT NULL IN ( CAST ( NULL AS INTEGER ), col1 * col2 * + col2 )
----

query I rowsort
SELECT DISTINCT + + 76 + col2 * + - col2 FROM tab1 AS cor0
----
-3405
-4548
-9140

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-1956
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT col0 + col1 IN ( + 6 + + 75 * CAST( - - col0 AS SIGNED ) * - + 92 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-1956
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT col0 + col1 IN ( + 6 + + 75 * CAST ( - - col0 AS INTEGER ) * - + 92 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT - 36 FROM tab0 AS cor0 WHERE col2 <= NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 29 col1 FROM tab2 cor0
----
29
29
29

query I rowsort
SELECT 32 + - col0 FROM tab2
----
-14
-32
-43

onlyif mysql # DIV for integer division: 
query I rowsort label-1960
SELECT DISTINCT 20 DIV + col0 * + + 33 AS col2 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-1960
SELECT DISTINCT 20 / + col0 * + + 33 AS col2 FROM tab2
----
0

query I rowsort
SELECT DISTINCT 47 + col2 AS col2 FROM tab1
----
106
115
143

query I rowsort
SELECT DISTINCT - 73 * col1 AS col0 FROM tab1 AS cor0
----
-1022
-3431
-365

query I rowsort
SELECT col0 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
15
87
97

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( col2 ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1965
SELECT + MAX( ALL - 46 ) FROM tab2 AS cor0 WHERE col2 IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-1965
SELECT + MAX ( ALL - 46 ) FROM tab2 AS cor0 WHERE col2 IS NULL
----
NULL

query I rowsort
SELECT + 96 * + col1 * col0 FROM tab1 AS cor0
----
40800
410592
68544

query I rowsort
SELECT ALL + 45 * - 56 AS col2 FROM tab0 AS cor0
----
-2520
-2520
-2520

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE - col0 - - + 60 / - + col0 >= + + col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1969
SELECT - + 59 * + + COUNT( * ) AS col0 FROM tab2 WHERE NULL >= - col2
----
0

skipif mysql # not compatible
query I rowsort label-1969
SELECT - + 59 * + + COUNT ( * ) AS col0 FROM tab2 WHERE NULL >= - col2
----
0

query III rowsort
SELECT * FROM tab2 WHERE + 22 < + ( - col0 ) * - + col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-1971
SELECT ALL - 37 + + COUNT( * ) FROM tab0
----
-34

skipif mysql # not compatible
query I rowsort label-1971
SELECT ALL - 37 + + COUNT ( * ) FROM tab0
----
-34

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1972
SELECT DISTINCT - CAST( NULL AS SIGNED ) - - + ( 79 ) FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-1972
SELECT DISTINCT - CAST ( NULL AS INTEGER ) - - + ( 79 ) FROM tab2
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col1 - 63 col0 FROM tab2
----
-114
-130
-140

onlyif mysql # aggregate syntax: 
query I rowsort label-1974
SELECT + SUM( - col1 ) + - - COUNT( * ) FROM tab2
----
-192

skipif mysql # not compatible
query I rowsort label-1974
SELECT + SUM ( - col1 ) + - - COUNT ( * ) FROM tab2
----
-192

query I rowsort
SELECT + 1 + col2 + - col2 FROM tab1
----
1
1
1

onlyif mysql # aggregate syntax: 
query I rowsort label-1976
SELECT DISTINCT MAX( DISTINCT - ( + col2 ) ) FROM tab0
----
-10

skipif mysql # not compatible
query I rowsort label-1976
SELECT DISTINCT MAX ( DISTINCT - ( + col2 ) ) FROM tab0
----
-10

query I rowsort
SELECT DISTINCT 8 AS col1 FROM tab2
----
8

query I rowsort
SELECT DISTINCT - + 27 FROM tab2 cor0
----
-27

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT 31 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1980
SELECT - - col0 + - 4 + - ( + - col2 ) DIV + - col1 FROM tab2 cor0
----
42
60
71

skipif mysql # not compatible
query I rowsort label-1980
SELECT - - col0 + - 4 + - ( + - col2 ) / + - col1 FROM tab2 cor0
----
42
60
71

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1981
SELECT DISTINCT + 50 * + - CAST( - 88 AS SIGNED ) AS col1 FROM tab2 AS cor0
----
4400

skipif mysql # not compatible
query I rowsort label-1981
SELECT DISTINCT + 50 * + - CAST ( - 88 AS INTEGER ) AS col1 FROM tab2 AS cor0
----
4400

query I rowsort
SELECT DISTINCT 31 FROM tab1 AS cor0 WHERE NULL IS NULL
----
31

onlyif mysql # aggregate syntax: 
query I rowsort label-1983
SELECT ALL + + COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-1983
SELECT ALL + + COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
9

query II rowsort
SELECT ALL 40 AS col1, 77 FROM tab0
----
40
77
40
77
40
77

onlyif mysql # aggregate syntax: 
query I rowsort label-1985
SELECT DISTINCT + MIN( + 12 ) FROM tab0
----
12

skipif mysql # not compatible
query I rowsort label-1985
SELECT DISTINCT + MIN ( + 12 ) FROM tab0
----
12

query I rowsort
SELECT DISTINCT col0 * + 44 * + col1 AS col2 FROM tab2 AS cor0 WHERE NOT + 37 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-1987
SELECT + - MIN( - + col2 ) FROM tab1 AS cor0
----
96

skipif mysql # not compatible
query I rowsort label-1987
SELECT + - MIN ( - + col2 ) FROM tab1 AS cor0
----
96

query II rowsort
SELECT - 60, col0 AS col2 FROM tab2 AS cor0
----
-60
46
-60
64
-60
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-1989
SELECT ALL + CAST( NULL AS SIGNED ) AS col1 FROM tab1 AS cor0 WHERE NOT ( NULL ) BETWEEN + col2 + + + CAST( col1 AS SIGNED ) AND + 12 + + 99
----

skipif mysql # not compatible
query I rowsort label-1989
SELECT ALL + CAST ( NULL AS INTEGER ) AS col1 FROM tab1 AS cor0 WHERE NOT ( NULL ) BETWEEN + col2 + + + CAST ( col1 AS INTEGER ) AND + 12 + + 99
----

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT + 67 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1991
SELECT + ( col2 ) DIV + col1 FROM tab0 AS cor0
----
0
0
99

skipif mysql # not compatible
query I rowsort label-1991
SELECT + ( col2 ) / + col1 FROM tab0 AS cor0
----
0
0
99

onlyif mysql # aggregate syntax: 
query I rowsort label-1992
SELECT - COUNT( * ) * + 99 AS col0 FROM tab1 cor0
----
-297

skipif mysql # not compatible
query I rowsort label-1992
SELECT - COUNT ( * ) * + 99 AS col0 FROM tab1 cor0
----
-297

onlyif mysql # DIV for integer division: 
query I rowsort label-1993
SELECT 26 DIV col1 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-1993
SELECT 26 / col1 FROM tab2 AS cor0
----
0
0
0

query II rowsort
SELECT col1 AS col2, col0 + + + ( - + col0 ) AS col1 FROM tab1 AS cor0
----
14
0
47
0
5
0

onlyif mysql # aggregate syntax: 
query I rowsort label-1995
SELECT SUM( DISTINCT + col0 ) AS col2 FROM tab1
----
227

skipif mysql # not compatible
query I rowsort label-1995
SELECT SUM ( DISTINCT + col0 ) AS col2 FROM tab1
----
227

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL NOT IN ( col2 * + - 52 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-1997
SELECT - 38 * col1 DIV + - 19 FROM tab2
----
102
134
154

skipif mysql # not compatible
query I rowsort label-1997
SELECT - 38 * col1 / + - 19 FROM tab2
----
102
134
154

query II rowsort
SELECT DISTINCT - col2 AS col0, - col2 * - col1 FROM tab0
----
-10
210
-47
3807
-99
99

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 43 col1 FROM tab2, tab0 cor0
----
-43

query I rowsort
SELECT 56 AS col1 FROM tab2 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2001
SELECT DISTINCT * FROM tab1 WHERE + CAST( NULL AS SIGNED ) IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-2001
SELECT DISTINCT * FROM tab1 WHERE + CAST ( NULL AS INTEGER ) IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2002
SELECT DISTINCT col1 FROM tab1 WHERE - - col1 NOT BETWEEN NULL AND + - CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query I rowsort label-2002
SELECT DISTINCT col1 FROM tab1 WHERE - - col1 NOT BETWEEN NULL AND + - CAST ( NULL AS INTEGER )
----

query III rowsort
SELECT * FROM tab1 WHERE NOT + + 41 IN ( - + 12 * - 40, 13, + ( 33 ) + - col0 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + - 19 AS col0 FROM tab2 WHERE - - col0 <> NULL
----

query I rowsort
SELECT DISTINCT + 98 * + col1 FROM tab0
----
2058
7938
98

query I rowsort
SELECT + + col2 FROM tab1 AS cor0 WHERE + col2 + col1 IS NOT NULL
----
59
68
96

query II rowsort
SELECT + - col1 * + 9 + - + 97, col0 FROM tab0 AS cor0
----
-106
97
-286
87
-826
15

onlyif mysql # aggregate syntax: 
query I rowsort label-2008
SELECT ALL - COUNT( * ) + - 91 + ( + 10 ) * + 13 * - 53 AS col0 FROM tab0 AS cor0
----
-6984

skipif mysql # not compatible
query I rowsort label-2008
SELECT ALL - COUNT ( * ) + - 91 + ( + 10 ) * + 13 * - 53 AS col0 FROM tab0 AS cor0
----
-6984

onlyif mysql # aggregate syntax: 
query I rowsort label-2009
SELECT COUNT( * ) + - SUM( 69 ) AS col0 FROM tab1 cor0
----
-204

skipif mysql # not compatible
query I rowsort label-2009
SELECT COUNT ( * ) + - SUM ( 69 ) AS col0 FROM tab1 cor0
----
-204

query I rowsort
SELECT 69 + + - 69 AS col1 FROM tab0 AS cor0
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2011
SELECT - + 17 + + 80 + CAST( NULL AS SIGNED ) * - col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2011
SELECT - + 17 + + 80 + CAST ( NULL AS INTEGER ) * - col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2012
SELECT + COUNT( * ) + - 2 + - ( - 50 ) FROM tab1 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-2012
SELECT + COUNT ( * ) + - 2 + - ( - 50 ) FROM tab1 AS cor0
----
51

onlyif mysql # aggregate syntax: 
query I rowsort label-2013
SELECT DISTINCT + SUM( DISTINCT - 10 ) + 63 FROM tab2 AS cor0
----
53

skipif mysql # not compatible
query I rowsort label-2013
SELECT DISTINCT + SUM ( DISTINCT - 10 ) + 63 FROM tab2 AS cor0
----
53

query I rowsort
SELECT - - col0 + - col0 * 19 FROM tab1 AS cor0
----
-1530
-1638
-918

query I rowsort
SELECT ALL 78 * + - col1 + 18 AS col2 FROM tab1
----
-1074
-3648
-372

onlyif mysql # aggregate syntax: 
query I rowsort label-2016
SELECT + SUM( - 0 ) FROM tab0 WHERE NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-2016
SELECT + SUM ( - 0 ) FROM tab0 WHERE NULL IS NOT NULL
----
NULL

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - col0 * + 40 - - 70 <> NULL
----

query I rowsort
SELECT DISTINCT 49 - + 79 AS col0 FROM tab2
----
-30

query I rowsort
SELECT DISTINCT + + 30 AS col1 FROM tab1 WHERE NOT - - col0 + 65 BETWEEN NULL AND - col1
----
30

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2020
SELECT ALL + CAST( 30 AS SIGNED ) AS col1 FROM tab1
----
30
30
30

skipif mysql # not compatible
query I rowsort label-2020
SELECT ALL + CAST ( 30 AS INTEGER ) AS col1 FROM tab1
----
30
30
30

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2021
SELECT 78 DIV COUNT( * ) * - MAX( ALL + col1 ) FROM tab0
----
-2106

skipif mysql # not compatible
query I rowsort label-2021
SELECT 78 / COUNT ( * ) * - MAX ( ALL + col1 ) FROM tab0
----
-2106

onlyif mysql # aggregate syntax: 
query I rowsort label-2022
SELECT DISTINCT + MIN( ALL - 24 ) FROM tab1 AS cor0
----
-24

skipif mysql # not compatible
query I rowsort label-2022
SELECT DISTINCT + MIN ( ALL - 24 ) FROM tab1 AS cor0
----
-24

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-2023
SELECT ALL + COUNT( * ) * + ( 55 ) AS col1, CAST( NULL AS SIGNED ) + + 75 AS col2 FROM tab1 AS cor0
----
165
NULL

skipif mysql # not compatible
query II rowsort label-2023
SELECT ALL + COUNT ( * ) * + ( 55 ) AS col1, CAST ( NULL AS INTEGER ) + + 75 AS col2 FROM tab1 AS cor0
----
165
NULL

query I rowsort
SELECT - 31 AS col2 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to f4b05206ee2fc0cf8007d9c3514885fa

onlyif mysql # aggregate syntax: 
query I rowsort label-2025
SELECT ALL ( SUM( - col0 ) ) FROM tab2
----
-185

skipif mysql # not compatible
query I rowsort label-2025
SELECT ALL ( SUM ( - col0 ) ) FROM tab2
----
-185

query II rowsort
SELECT DISTINCT ( + + col0 ) AS col2, 63 FROM tab1
----
51
63
85
63
91
63

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT col1 * 3 * 71 * - col0 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2028
SELECT - col0 * + col1 DIV - col1 AS col2 FROM tab2 AS cor0
----
46
64
75

skipif mysql # not compatible
query I rowsort label-2028
SELECT - col0 * + col1 / - col1 AS col2 FROM tab2 AS cor0
----
46
64
75

onlyif mysql # DIV for integer division: 
query II rowsort label-2029
SELECT + col2 DIV + + col1 AS col0, + col0 AS col0 FROM tab0 cor0
----
0
15
0
87
99
97

skipif mysql # not compatible
query II rowsort label-2029
SELECT + col2 / + + col1 AS col0, + col0 AS col0 FROM tab0 cor0
----
0
15
0
87
99
97

query I rowsort
SELECT + ( + 74 ) FROM tab1
----
74
74
74

onlyif mysql # aggregate syntax: 
query I rowsort label-2031
SELECT ALL + ( + COUNT( * ) ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2031
SELECT ALL + ( + COUNT ( * ) ) FROM tab1
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2032
SELECT + MAX( DISTINCT 3 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2032
SELECT + MAX ( DISTINCT 3 ) FROM tab1
----
3

query II rowsort
SELECT - col0 AS col1, - col2 AS col0 FROM tab0
----
-15
-47
-87
-10
-97
-99

onlyif mysql # aggregate syntax: 
query I rowsort label-2034
SELECT + MAX( DISTINCT col0 ) FROM tab2
----
75

skipif mysql # not compatible
query I rowsort label-2034
SELECT + MAX ( DISTINCT col0 ) FROM tab2
----
75

query I rowsort
SELECT col1 * ( + ( 0 ) ) * ( + 31 ) FROM tab1
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2036
SELECT CAST( - - col0 AS SIGNED ) FROM tab1 AS cor0
----
51
85
91

skipif mysql # not compatible
query I rowsort label-2036
SELECT CAST ( - - col0 AS INTEGER ) FROM tab1 AS cor0
----
51
85
91

query II rowsort
SELECT + 82 AS col2, + col2 * + col1 + - col2 FROM tab2 AS cor0
----
82
1150
82
3040
82
3828

onlyif mysql # aggregate syntax: 
query I rowsort label-2038
SELECT DISTINCT 5 + + COUNT( * ) FROM tab1 AS cor0
----
8

skipif mysql # not compatible
query I rowsort label-2038
SELECT DISTINCT 5 + + COUNT ( * ) FROM tab1 AS cor0
----
8

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT ( NOT NULL <> - col2 )
----

query I rowsort
SELECT DISTINCT + + 82 + - 59 + + - ( + col0 ) FROM tab2 cor0
----
-23
-41
-52

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT - col1 + + ( col2 ) - - col0 IS NOT NULL OR NULL IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2042
SELECT - 87 * - CAST( COUNT( * ) AS SIGNED ) + + MIN( + col1 ) FROM tab2
----
312

skipif mysql # not compatible
query I rowsort label-2042
SELECT - 87 * - CAST ( COUNT ( * ) AS INTEGER ) + + MIN ( + col1 ) FROM tab2
----
312

query I rowsort
SELECT + 21 + + 34 + + + col2 FROM tab0
----
102
154
65

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2044
SELECT * FROM tab1 WHERE col1 + + col2 IS NULL OR + CAST( NULL AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-2044
SELECT * FROM tab1 WHERE col1 + + col2 IS NULL OR + CAST ( NULL AS INTEGER ) IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2045
SELECT DISTINCT - - CAST( + col1 AS SIGNED ) + + 16 FROM tab1 cor0
----
21
30
63

skipif mysql # not compatible
query I rowsort label-2045
SELECT DISTINCT - - CAST ( + col1 AS INTEGER ) + + 16 FROM tab1 cor0
----
21
30
63

onlyif mysql # aggregate syntax: 
query I rowsort label-2046
SELECT - COUNT( * ) + + MAX( ALL + - 46 ) AS col1 FROM tab1 AS cor0 WHERE - col1 IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-2046
SELECT - COUNT ( * ) + + MAX ( ALL + - 46 ) AS col1 FROM tab1 AS cor0 WHERE - col1 IS NULL
----
NULL

query I rowsort
SELECT DISTINCT col1 + 20 + 78 AS col1 FROM tab0 cor0
----
119
179
99

onlyif mysql # DIV for integer division: 
query I rowsort label-2048
SELECT DISTINCT - 90 DIV - col1 - - col0 DIV - - col1 AS col1 FROM tab2 AS cor0
----
1
2

skipif mysql # not compatible
query I rowsort label-2048
SELECT DISTINCT - 90 / - col1 - - col0 / - - col1 AS col1 FROM tab2 AS cor0
----
1
2

onlyif mysql # aggregate syntax: 
query I rowsort label-2049
SELECT SUM( ALL + 74 ) - - COUNT( * ) AS col2 FROM tab0 AS cor0
----
225

skipif mysql # not compatible
query I rowsort label-2049
SELECT SUM ( ALL + 74 ) - - COUNT ( * ) AS col2 FROM tab0 AS cor0
----
225

query I rowsort
SELECT + + 88 FROM tab2 WHERE NULL IS NULL
----
88
88
88

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2051
SELECT col2 - + CAST( NULL AS SIGNED ) FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2051
SELECT col2 - + CAST ( NULL AS INTEGER ) FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT - col1 + col2 + + - 21 AS col0 FROM tab2
----
-30
-49
-58

onlyif mysql # aggregate syntax: 
query I rowsort label-2053
SELECT DISTINCT COUNT( * ) - + 85 FROM tab1
----
-82

skipif mysql # not compatible
query I rowsort label-2053
SELECT DISTINCT COUNT ( * ) - + 85 FROM tab1
----
-82

onlyif mysql # DIV for integer division: 
query I rowsort label-2054
SELECT + col1 * + - col0 DIV + - ( + - col0 ) FROM tab2
----
-51
-67
-77

skipif mysql # not compatible
query I rowsort label-2054
SELECT + col1 * + - col0 / + - ( + - col0 ) FROM tab2
----
-51
-67
-77

query I rowsort
SELECT DISTINCT + ( + - col0 ) * + col1 * - + col0 AS col1 FROM tab1
----
36125
36414
389207

onlyif mysql # aggregate syntax: 
query I rowsort label-2056
SELECT - ( - SUM( ALL - ( - - col0 ) ) ) AS col1 FROM tab2 AS cor0
----
-185

skipif mysql # not compatible
query I rowsort label-2056
SELECT - ( - SUM ( ALL - ( - - col0 ) ) ) AS col1 FROM tab2 AS cor0
----
-185

query III rowsort
SELECT DISTINCT + + 27 * 59, col0 * - + col0 + - col0 AS col0, - 81 + + col0 + ( + col2 ) + + 46 AS col2 FROM tab0 cor0
----
9 values hashing to ba96b1e2f6734a2901e8f7ccc2e854e8

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT col2 >= + col2
----

query I rowsort
SELECT - ( - + col0 ) AS col0 FROM tab0 AS cor0 WHERE NOT NULL IS NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2060
SELECT + + COUNT( * ) DIV + COUNT( * ) col2 FROM tab2 AS cor0
----
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2060
SELECT + + COUNT ( * ) / + COUNT ( * ) col2 FROM tab2 AS cor0
----
1

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT + - ( - + col2 ) NOT BETWEEN NULL AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2062
SELECT DISTINCT CAST( NULL AS SIGNED ) AS col0, + 2 FROM tab1 WHERE NULL = NULL
----

skipif mysql # not compatible
query II rowsort label-2062
SELECT DISTINCT CAST ( NULL AS INTEGER ) AS col0, + 2 FROM tab1 WHERE NULL = NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2063
SELECT - COUNT( * ) + + - 63 + + SUM( - + 74 ) DIV 47 AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-86

skipif mysql # not compatible
query I rowsort label-2063
SELECT - COUNT ( * ) + + - 63 + + SUM ( - + 74 ) / 47 AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-86

onlyif mysql # DIV for integer division: 
query I rowsort label-2064
SELECT + ( + + 82 ) DIV - col2 + 57 FROM tab0 AS cor0
----
49
56
57

skipif mysql # not compatible
query I rowsort label-2064
SELECT + ( + + 82 ) / - col2 + 57 FROM tab0 AS cor0
----
49
56
57

onlyif mysql # aggregate syntax: 
query I rowsort label-2065
SELECT DISTINCT MIN( DISTINCT col2 ) FROM tab1 AS cor0
----
59

skipif mysql # not compatible
query I rowsort label-2065
SELECT DISTINCT MIN ( DISTINCT col2 ) FROM tab1 AS cor0
----
59

onlyif mysql # DIV for integer division: 
query I rowsort label-2066
SELECT + col2 DIV - ( + 71 ) FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2066
SELECT + col2 / - ( + 71 ) FROM tab2
----
0
0
0

query I rowsort
SELECT col0 + + + col1 + + 9 AS col1 FROM tab0
----
105
107
117

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2068
SELECT + col2 * - 98 + + + col1 * + - CAST( NULL AS SIGNED ) FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2068
SELECT + col2 * - 98 + + + col1 * + - CAST ( NULL AS INTEGER ) FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2069
SELECT ALL - SUM( col1 ) col2 FROM tab0
----
-103

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2069
SELECT ALL - SUM ( col1 ) col2 FROM tab0
----
-103

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2070
SELECT ALL + + 12 * - - 4 * + - CAST( - - col1 AS SIGNED ) FROM tab2 WHERE NOT + ( + col0 ) IS NULL
----
-2448
-3216
-3696

skipif mysql # not compatible
query I rowsort label-2070
SELECT ALL + + 12 * - - 4 * + - CAST ( - - col1 AS INTEGER ) FROM tab2 WHERE NOT + ( + col0 ) IS NULL
----
-2448
-3216
-3696

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2071
SELECT col0 + CAST( NULL AS DECIMAL ) AS col1 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2071
SELECT col0 + CAST ( NULL AS REAL ) AS col1 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2072
SELECT - SUM( + col2 ) AS col0 FROM tab2 AS cor0
----
-121

skipif mysql # not compatible
query I rowsort label-2072
SELECT - SUM ( + col2 ) AS col0 FROM tab2 AS cor0
----
-121

onlyif mysql # DIV for integer division: 
query II rowsort label-2073
SELECT ALL + col0 + - col0 AS col1, 75 DIV + 97 + + - col2 + + - col0 AS col0 FROM tab1 AS cor0
----
0
-144
0
-147
0
-159

skipif mysql # not compatible
query II rowsort label-2073
SELECT ALL + col0 + - col0 AS col1, 75 / + 97 + + - col2 + + - col0 AS col0 FROM tab1 AS cor0
----
0
-144
0
-147
0
-159

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2074
SELECT ( - CAST( NULL AS SIGNED ) ) * + + 70 FROM tab0 cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2074
SELECT ( - CAST ( NULL AS INTEGER ) ) * + + 70 FROM tab0 cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2075
SELECT ALL - 13 + - + COUNT( * ) AS col2 FROM tab0 AS cor0
----
-16

skipif mysql # not compatible
query I rowsort label-2075
SELECT ALL - 13 + - + COUNT ( * ) AS col2 FROM tab0 AS cor0
----
-16

onlyif mysql # aggregate syntax: 
query I rowsort label-2076
SELECT + ( + COUNT( * ) ) + - 32 FROM tab0
----
-29

skipif mysql # not compatible
query I rowsort label-2076
SELECT + ( + COUNT ( * ) ) + - 32 FROM tab0
----
-29

query I rowsort
SELECT - col1 + - + 7 FROM tab1 cor0
----
-12
-21
-54

query I rowsort
SELECT 92 * - col2 + col0 + + + 63 FROM tab1 AS cor0
----
-5280
-6102
-8718

query I rowsort
SELECT + col1 + + - col0 * - + col1 AS col0 FROM tab2 AS cor0
----
2397
5005
5092

query I rowsort
SELECT col2 + - 31 AS col2 FROM tab0 AS cor0
----
-21
16
68

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE NOT NULL >= 50
----

query I rowsort
SELECT DISTINCT - col1 + 49 FROM tab2 AS cor0
----
-18
-2
-28

query I rowsort
SELECT DISTINCT - + 59 - - 11 FROM tab1 AS cor0
----
-48

query I rowsort
SELECT - col1 AS col0 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
-1
-21
-81

query II rowsort
SELECT DISTINCT col1, - col2 + + col0 AS col0 FROM tab0
----
1
-2
21
77
81
-32

onlyif mysql # aggregate syntax: 
query I rowsort label-2086
SELECT - 10 * COUNT( * ) FROM tab0
----
-30

skipif mysql # not compatible
query I rowsort label-2086
SELECT - 10 * COUNT ( * ) FROM tab0
----
-30

query II rowsort
SELECT 28 AS col1, col1 AS col1 FROM tab2
----
28
51
28
67
28
77

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 76 * + - 57 col0 FROM tab0
----
-4332
-4332
-4332

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-2089
SELECT DISTINCT CAST( NULL AS SIGNED ) AS col2, - COUNT( * ) * 76 AS col0 FROM tab0
----
NULL
-228

skipif mysql # not compatible
query II rowsort label-2089
SELECT DISTINCT CAST ( NULL AS INTEGER ) AS col2, - COUNT ( * ) * 76 AS col0 FROM tab0
----
NULL
-228

query I rowsort
SELECT ALL 38 * + + col1 * col0 FROM tab2
----
187264
190950
89148

query I rowsort
SELECT DISTINCT col2 * + - col1 FROM tab1 AS cor0
----
-1344
-295
-3196

onlyif mysql # aggregate syntax: 
query I rowsort label-2092
SELECT ALL - + COUNT( * ) col1 FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2092
SELECT ALL - + COUNT ( * ) col1 FROM tab0 AS cor0
----
-3

query I rowsort
SELECT - + ( + col1 ) * - - col1 FROM tab2 AS cor0
----
-2601
-4489
-5929

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT - 37 / - 45 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab2 WHERE NOT NULL < - + col0
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2096
SELECT ALL CAST( - SUM( DISTINCT + 4 ) AS SIGNED ) AS col0 FROM tab0
----
-4

skipif mysql # not compatible
query I rowsort label-2096
SELECT ALL CAST ( - SUM ( DISTINCT + 4 ) AS INTEGER ) AS col0 FROM tab0
----
-4

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2097
SELECT - col1 + - CAST( col1 AS SIGNED ) AS col0 FROM tab1 cor0
----
-10
-28
-94

skipif mysql # not compatible
query I rowsort label-2097
SELECT - col1 + - CAST ( col1 AS INTEGER ) AS col0 FROM tab1 cor0
----
-10
-28
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-2098
SELECT - 50 + + MIN( + - col1 ) - 38 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN ( col2 ) AND - 9
----
NULL

skipif mysql # not compatible
query I rowsort label-2098
SELECT - 50 + + MIN ( + - col1 ) - 38 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN ( col2 ) AND - 9
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2099
SELECT + + 18 + + - col0 - CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2099
SELECT + + 18 + + - col0 - CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2100
SELECT CAST( 65 AS SIGNED ) + ( 93 ) col0 FROM tab0 AS cor0
----
158
158
158

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2100
SELECT CAST ( 65 AS INTEGER ) + ( 93 ) col0 FROM tab0 AS cor0
----
158
158
158

query I rowsort
SELECT DISTINCT + col1 * + 93 + - col2 FROM tab0 AS cor0
----
-6
1943
7486

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT ( + 68 ) > ( NULL )
----

query I rowsort
SELECT DISTINCT + 23 AS col0 FROM tab2 AS cor0 WHERE NULL >= col2
----

query I rowsort
SELECT DISTINCT - col2 + + + 83 FROM tab1 AS cor0
----
-13
15
24

query I rowsort
SELECT ALL + - col0 + - col2 * + - col0 * + col2 FROM tab1 AS cor0
----
295800
420693
469965

onlyif mysql # aggregate syntax: 
query II rowsort label-2106
SELECT - COUNT( * ) AS col2, COUNT( * ) + - 81 AS col1 FROM tab0
----
-3
-78

skipif mysql # not compatible
query II rowsort label-2106
SELECT - COUNT ( * ) AS col2, COUNT ( * ) + - 81 AS col1 FROM tab0
----
-3
-78

onlyif mysql # DIV for integer division: 
query II rowsort label-2107
SELECT ALL col2 col1, - 73 DIV - 51 FROM tab2
----
23
1
40
1
58
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2107
SELECT ALL col2 col1, - 73 / - 51 FROM tab2
----
23
1
40
1
58
1

query I rowsort
SELECT DISTINCT 41 * - 64 FROM tab0
----
-2624

onlyif mysql # aggregate syntax: 
query I rowsort label-2109
SELECT COUNT( + + col2 ) AS col2 FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2109
SELECT COUNT ( + + col2 ) AS col2 FROM tab1
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2110
SELECT COUNT( * ) FROM tab2, tab0 cor0
----
9

skipif mysql # not compatible
query I rowsort label-2110
SELECT COUNT ( * ) FROM tab2, tab0 cor0
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-2111
SELECT ALL + - COUNT( * ) + MAX( - col0 ) * MIN( DISTINCT - col2 ) AS col0 FROM tab1 AS cor0
----
4893

skipif mysql # not compatible
query I rowsort label-2111
SELECT ALL + - COUNT ( * ) + MAX ( - col0 ) * MIN ( DISTINCT - col2 ) AS col0 FROM tab1 AS cor0
----
4893

query I rowsort
SELECT ALL - col0 + + col0 + - col2 + + 94 * - col2 * - col1 FROM tab1 AS cor0
----
126240
27671
300356

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE + 57 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-2114
SELECT ALL MAX( DISTINCT col1 ) AS col2 FROM tab0 AS cor0 WHERE NOT col1 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-2114
SELECT ALL MAX ( DISTINCT col1 ) AS col2 FROM tab0 AS cor0 WHERE NOT col1 IS NOT NULL
----
NULL

query III rowsort
SELECT * FROM tab1 WHERE ( - col0 ) IN ( + 36 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2116
SELECT * FROM tab2 WHERE - CAST( NULL AS SIGNED ) IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-2116
SELECT * FROM tab2 WHERE - CAST ( NULL AS INTEGER ) IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col0 * + 64 FROM tab1
----
3264
5440
5824

query I rowsort
SELECT ALL + col2 AS col0 FROM tab0 WHERE NOT NULL > ( ( 87 ) / col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2119
SELECT ALL - COUNT( 48 ) * - 60 FROM tab0
----
180

skipif mysql # not compatible
query I rowsort label-2119
SELECT ALL - COUNT ( 48 ) * - 60 FROM tab0
----
180

onlyif mysql # DIV for integer division: 
query I rowsort label-2120
SELECT DISTINCT col2 DIV - ( col1 ) AS col2 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-2120
SELECT DISTINCT col2 / - ( col1 ) AS col2 FROM tab2
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-2121
SELECT DISTINCT 18 DIV col2 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-2121
SELECT DISTINCT 18 / col2 FROM tab1
----
0

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT ( + col0 ) NOT BETWEEN NULL AND col1
----

query I rowsort
SELECT - col0 * + col2 AS col0 FROM tab0 WHERE 96 IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2124
SELECT ALL 8 DIV - col1 AS col0 FROM tab0
----
-8
0
0

skipif mysql # not compatible
query I rowsort label-2124
SELECT ALL 8 / - col1 AS col0 FROM tab0
----
-8
0
0

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2125
SELECT CAST( NULL AS DECIMAL ) * - col2 + 78 AS col0 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2125
SELECT CAST ( NULL AS REAL ) * - col2 + 78 AS col0 FROM tab0
----
NULL
NULL
NULL

query III rowsort
SELECT ALL * FROM tab1 WHERE col1 * + col2 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT col0 * + 44 + 8 FROM tab1
----
2252
3748
4012

onlyif mysql # aggregate syntax: 
query I rowsort label-2128
SELECT ALL 43 - - COUNT( * ) * COUNT( * ) AS col1 FROM tab1
----
52

skipif mysql # not compatible
query I rowsort label-2128
SELECT ALL 43 - - COUNT ( * ) * COUNT ( * ) AS col1 FROM tab1
----
52

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + 25 + col0 = col0 + - 11 * col1
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-2130
SELECT DISTINCT * FROM tab0 WHERE NULL NOT BETWEEN ( + col2 * + CAST( NULL AS DECIMAL ) ) AND + col0 * + col0
----

skipif mysql # not compatible
query III rowsort label-2130
SELECT DISTINCT * FROM tab0 WHERE NULL NOT BETWEEN ( + col2 * + CAST ( NULL AS REAL ) ) AND + col0 * + col0
----

query I rowsort
SELECT + 22 + + 72 FROM tab2
----
94
94
94

onlyif mysql # aggregate syntax: 
query I rowsort label-2132
SELECT - COUNT( 22 ) + - 44 FROM tab0
----
-47

skipif mysql # not compatible
query I rowsort label-2132
SELECT - COUNT ( 22 ) + - 44 FROM tab0
----
-47

query I rowsort
SELECT ALL col0 * col2 + 77 AS col0 FROM tab2
----
1135
2637
4427

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2134
SELECT + col2 / CAST( + CAST( NULL AS SIGNED ) AS SIGNED ) + - CAST( NULL AS SIGNED ) AS col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2134
SELECT + col2 / CAST ( + CAST ( NULL AS INTEGER ) AS INTEGER ) + - CAST ( NULL AS INTEGER ) AS col2 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-2135
SELECT + 82 DIV col1 + col1 AS col1 FROM tab0
----
24
82
83

skipif mysql # not compatible
query I rowsort label-2135
SELECT + 82 / col1 + col1 AS col1 FROM tab0
----
24
82
83

query I rowsort
SELECT + col1 AS col2 FROM tab1 WHERE NOT ( col1 ) + + col1 * col2 IN ( + col2 )
----
14
47
5

query I rowsort
SELECT - ( - col1 ) AS col0 FROM tab1 WHERE NULL NOT BETWEEN col1 + + ( col1 ) AND NULL
----

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT col1 / - col1 - col2 * - col0 IS NOT NULL
----

query I rowsort
SELECT ALL + 85 * 58 + + ( 31 ) AS col2 FROM tab0
----
4961
4961
4961

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT NULL <> ( col2 - 26 )
----

query I rowsort
SELECT DISTINCT - col1 * + col0 + + col0 AS col1 FROM tab0
----
-1200
-1740
0

onlyif mysql # aggregate syntax: 
query I rowsort label-2142
SELECT - COUNT( * ) FROM tab1 WHERE NOT ( 66 ) < NULL
----
0

skipif mysql # not compatible
query I rowsort label-2142
SELECT - COUNT ( * ) FROM tab1 WHERE NOT ( 66 ) < NULL
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2143
SELECT - col2 + ( - col1 ) AS col0 FROM tab0 WHERE NOT 68 < - CAST( - 23 AS SIGNED )
----
-100
-128
-31

skipif mysql # not compatible
query I rowsort label-2143
SELECT - col2 + ( - col1 ) AS col0 FROM tab0 WHERE NOT 68 < - CAST ( - 23 AS INTEGER )
----
-100
-128
-31

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT ( 29 ) NOT BETWEEN col2 * + 1 AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2145
SELECT + ( - COUNT( * ) ) FROM tab1 cor0 WHERE NOT - col2 NOT BETWEEN 73 AND NULL
----
0

skipif mysql # not compatible
query I rowsort label-2145
SELECT + ( - COUNT ( * ) ) FROM tab1 cor0 WHERE NOT - col2 NOT BETWEEN 73 AND NULL
----
0

query I rowsort
SELECT ALL col0 + col1 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
108
96
98

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2147
SELECT - CAST( NULL AS SIGNED ) * 72 AS col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2147
SELECT - CAST ( NULL AS INTEGER ) * 72 AS col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2148
SELECT - COUNT( * ) DIV 20 AS col0 FROM tab2 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-2148
SELECT - COUNT ( * ) / 20 AS col0 FROM tab2 AS cor0
----
0

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT - col1 IN ( + 30 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL + 84 + + 52 AS col0 FROM tab2 AS cor0 CROSS JOIN tab1
----
9 values hashing to 241ddcc97f622e1fcc14bd3c6a5bb6f4

query III rowsort
SELECT * FROM tab2 WHERE NOT col0 + col1 IN ( + col1 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-2152
SELECT ALL + COUNT( * ) FROM tab2 cor0 CROSS JOIN tab1
----
9

skipif mysql # not compatible
query I rowsort label-2152
SELECT ALL + COUNT ( * ) FROM tab2 cor0 CROSS JOIN tab1
----
9

query I rowsort
SELECT + - 91 AS col0 FROM tab2 AS cor0
----
-91
-91
-91

query I rowsort
SELECT ALL 84 * - col1 FROM tab1 AS cor0
----
-1176
-3948
-420

onlyif mysql # aggregate syntax: 
query I rowsort label-2155
SELECT ALL + + COUNT( * ) * 15 FROM tab2 AS cor0
----
45

skipif mysql # not compatible
query I rowsort label-2155
SELECT ALL + + COUNT ( * ) * 15 FROM tab2 AS cor0
----
45

query I rowsort
SELECT - col1 * + 24 + col2 AS col0 FROM tab0 AS cor0
----
-1897
-494
75

query I rowsort
SELECT + 63 + 78 * - col2 AS col2 FROM tab0 AS cor0
----
-3603
-717
-7659

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2158
SELECT - 96 * + col0 + CAST( NULL AS SIGNED ) FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2158
SELECT - 96 * + col0 + CAST ( NULL AS INTEGER ) FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT - + 87 + col1 AS col0 FROM tab2 AS cor0
----
-10
-20
-36

query I rowsort
SELECT DISTINCT + ( col1 ) * - ( + 36 ) + - 88 AS col1 FROM tab2 AS cor0 WHERE NULL > NULL
----

query I rowsort
SELECT col1 AS col0 FROM tab2 cor0 WHERE 51 <> ( NULL )
----

query I rowsort
SELECT ALL col1 + - 10 FROM tab1 AS cor0
----
-5
37
4

query I rowsort
SELECT ALL 78 FROM tab1 WHERE 61 <= ( NULL )
----

query I rowsort
SELECT col0 + 19 AS col2 FROM tab0 WHERE + col0 IN ( col1 )
----

query I rowsort
SELECT ALL + ( col2 ) AS col2 FROM tab2 WHERE NOT NULL IS NOT NULL
----
23
40
58

query III rowsort
SELECT * FROM tab0 WHERE - col0 < ( NULL )
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT ( - col0 ) BETWEEN NULL AND NULL
----

query I rowsort
SELECT col2 + - 33 FROM tab0
----
-23
14
66

query I rowsort
SELECT ALL - 75 * - col0 FROM tab0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT ALL + 30 * ( col2 ) + - 65 AS col0 FROM tab0
----
1345
235
2905

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2171
SELECT DISTINCT col2 + - col1 - + CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2171
SELECT DISTINCT col2 + - col1 - + CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT + 88 * col2 FROM tab0 AS cor0 WHERE + col1 * + 14 >= NULL
----

query I rowsort
SELECT DISTINCT - 69 FROM ( tab0 cor0 CROSS JOIN tab1 cor1 )
----
-69

query I rowsort
SELECT col0 * - + col1 FROM tab1 AS cor0
----
-425
-4277
-714

onlyif mysql # DIV for integer division: 
query I rowsort label-2175
SELECT ALL - col2 DIV + + col2 FROM tab1 AS cor0
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-2175
SELECT ALL - col2 / + + col2 FROM tab1 AS cor0
----
-1
-1
-1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2176
SELECT DISTINCT - CAST( 52 AS SIGNED ) FROM tab0 AS cor0
----
-52

skipif mysql # not compatible
query I rowsort label-2176
SELECT DISTINCT - CAST ( 52 AS INTEGER ) FROM tab0 AS cor0
----
-52

query I rowsort
SELECT 51 * - 80 - + 62 AS col1 FROM tab0 cor0
----
-4142
-4142
-4142

onlyif mysql # DIV for integer division: 
query I rowsort label-2178
SELECT DISTINCT - - 94 DIV 93 AS col2 FROM tab1 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-2178
SELECT DISTINCT - - 94 / 93 AS col2 FROM tab1 AS cor0
----
1

onlyif mysql # aggregate syntax: 
query I rowsort label-2179
SELECT ALL - - COUNT( * ) col0 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2179
SELECT ALL - - COUNT ( * ) col0 FROM tab2 AS cor0
----
3

query III rowsort
SELECT DISTINCT * FROM tab2 cor0 WHERE NOT NULL <= NULL
----

query I rowsort
SELECT col1 + 93 * - col1 AS col1 FROM tab2 AS cor0 WHERE NOT ( NULL ) <= - col0 + 62
----

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE NOT NULL > ( + 20 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2183
SELECT ALL + COUNT( + col0 ) AS col1 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-2183
SELECT ALL + COUNT ( + col0 ) AS col1 FROM tab2 AS cor0
----
3

query I rowsort
SELECT ALL - col2 * - - col1 AS col0 FROM tab0 AS cor0
----
-210
-3807
-99

query I rowsort
SELECT col2 FROM tab0 WHERE NOT - ( - col1 ) < - 83 * col0
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-2186
SELECT DISTINCT - MAX( + col1 ) AS col2 FROM tab2
----
-77

skipif mysql # not compatible
query I rowsort label-2186
SELECT DISTINCT - MAX ( + col1 ) AS col2 FROM tab2
----
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-2187
SELECT MAX( DISTINCT 5 ) FROM tab1
----
5

skipif mysql # not compatible
query I rowsort label-2187
SELECT MAX ( DISTINCT 5 ) FROM tab1
----
5

query I rowsort
SELECT - 33 FROM tab0 WHERE NOT ( 99 ) NOT IN ( col0 )
----

query I rowsort
SELECT + 35 FROM tab1 cor0
----
35
35
35

query I rowsort
SELECT 8 / col0 FROM tab1 AS cor0 WHERE NOT NULL > ( + 74 + - col2 )
----

query I rowsort
SELECT DISTINCT + - col0 FROM tab0 AS cor0 WHERE - col1 * col2 IS NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 cor0 WHERE ( NULL ) NOT BETWEEN ( NULL ) AND + ( + - col1 ) - - ( col0 )
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( - + 49 IS NOT NULL )
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-2194
SELECT - COUNT( * ) FROM tab0 WHERE NOT ( NULL ) IN ( - CAST( - 60 AS DECIMAL ) )
----
0

skipif mysql # not compatible
query I rowsort label-2194
SELECT - COUNT ( * ) FROM tab0 WHERE NOT ( NULL ) IN ( - CAST ( - 60 AS REAL ) )
----
0

query II rowsort
SELECT DISTINCT 5 AS col0, - col1 * + col2 + + + col0 FROM tab2
----
5
-1127
5
-3016
5
-3811

query I rowsort
SELECT 15 + - col1 AS col1 FROM tab2
----
-36
-52
-62

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 5 + + + col1 col1 FROM tab0
----
26
6
86

query I rowsort
SELECT 53 AS col2 FROM tab1 AS cor0 WHERE col1 * col1 * - + col0 <= ( NULL )
----

query I rowsort
SELECT DISTINCT - + ( + 84 ) FROM tab0 AS cor0 WHERE NULL = + col0
----

query II rowsort
SELECT + col1 AS col0, - col1 + col2 AS col2 FROM tab2 AS cor0
----
51
-28
67
-9
77
-37

query I rowsort
SELECT 15 AS col0 FROM tab1 WHERE NULL NOT BETWEEN NULL AND + - col1
----

onlyif mysql # aggregate syntax: 
query II rowsort label-2202
SELECT ALL - COUNT( * ) AS col2, 10 FROM tab0
----
-3
10

skipif mysql # not compatible
query II rowsort label-2202
SELECT ALL - COUNT ( * ) AS col2, 10 FROM tab0
----
-3
10

query I rowsort
SELECT DISTINCT 36 * + col1 FROM tab0
----
2916
36
756

query I rowsort
SELECT + ( + 16 ) - + 80 + + + col2 FROM tab2
----
-24
-41
-6

query I rowsort
SELECT ALL - col0 * ( col0 ) FROM tab0
----
-225
-7569
-9409

onlyif mysql # aggregate syntax: 
query I rowsort label-2206
SELECT - COUNT( * ) - 91 FROM tab0
----
-94

skipif mysql # not compatible
query I rowsort label-2206
SELECT - COUNT ( * ) - 91 FROM tab0
----
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-2207
SELECT DISTINCT - SUM( DISTINCT - + 66 ) AS col2 FROM tab2
----
66

skipif mysql # not compatible
query I rowsort label-2207
SELECT DISTINCT - SUM ( DISTINCT - + 66 ) AS col2 FROM tab2
----
66

onlyif mysql # DIV for integer division: 
query I rowsort label-2208
SELECT ALL 21 DIV - + 94 FROM tab0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2208
SELECT ALL 21 / - + 94 FROM tab0
----
0
0
0

query II rowsort
SELECT ALL - 40 AS col2, + col0 AS col2 FROM tab1
----
-40
51
-40
85
-40
91

query III rowsort
SELECT * FROM tab1 WHERE ( NOT ( NOT ( NULL <= 23 + col1 ) ) )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 + + 35 col1 FROM tab2
----
58
75
93

query I rowsort
SELECT ALL col1 * + + ( - 14 ) * + 28 + - 22 FROM tab0
----
-31774
-414
-8254

onlyif mysql # aggregate syntax: 
query I rowsort label-2213
SELECT ALL 98 + COUNT( * ) + + COUNT( * ) FROM tab2 cor0
----
104

skipif mysql # not compatible
query I rowsort label-2213
SELECT ALL 98 + COUNT ( * ) + + COUNT ( * ) FROM tab2 cor0
----
104

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE col0 * + - ( 64 ) > NULL
----

query I rowsort
SELECT ALL + col2 + + - 39 + - 82 FROM tab2 AS cor0
----
-63
-81
-98

onlyif mysql # aggregate syntax: 
query I rowsort label-2216
SELECT COUNT( * ) + 24 FROM tab1 AS cor0
----
27

skipif mysql # not compatible
query I rowsort label-2216
SELECT COUNT ( * ) + 24 FROM tab1 AS cor0
----
27

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT + ( - 46 ), 20 * col0 col0 FROM tab1
----
-46
1020
-46
1700
-46
1820

query I rowsort
SELECT ALL - ( 10 ) FROM tab2 AS cor0 WHERE NOT + col0 <= col2
----
-10
-10
-10

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2219
SELECT ALL + + col2 FROM tab2 AS cor0 WHERE CAST( NULL AS SIGNED ) + + 81 <> NULL
----

skipif mysql # not compatible
query I rowsort label-2219
SELECT ALL + + col2 FROM tab2 AS cor0 WHERE CAST ( NULL AS INTEGER ) + + 81 <> NULL
----

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT NULL < col2 * + ( + 71 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 92 col1 FROM tab0 AS cor0
----
-92
-92
-92

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2222
SELECT DISTINCT - 92 DIV - + SUM( DISTINCT - col1 ) FROM tab1 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-2222
SELECT DISTINCT - 92 / - + SUM ( DISTINCT - col1 ) FROM tab1 AS cor0
----
-1

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2223
SELECT ALL - col1 * - + col2, + CAST( NULL AS SIGNED ) AS col0 FROM tab2 AS cor0
----
1173
NULL
3080
NULL
3886
NULL

skipif mysql # not compatible
query II rowsort label-2223
SELECT ALL - col1 * - + col2, + CAST ( NULL AS INTEGER ) AS col0 FROM tab2 AS cor0
----
1173
NULL
3080
NULL
3886
NULL

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2224
SELECT ALL CAST( NULL AS DECIMAL ) / + col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2224
SELECT ALL CAST ( NULL AS REAL ) / + col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-2225
SELECT + col0 DIV + - col2 AS col2 FROM tab0
----
-8
0
0

skipif mysql # not compatible
query I rowsort label-2225
SELECT + col0 / + - col2 AS col2 FROM tab0
----
-8
0
0

query I rowsort
SELECT + 74 * col1 FROM tab1
----
1036
3478
370

query II rowsort
SELECT col2 AS col0, col1 * - col1 FROM tab2
----
23
-2601
40
-5929
58
-4489

onlyif mysql # aggregate syntax: 
query I rowsort label-2228
SELECT ALL COUNT( * ) FROM tab0 WHERE NULL NOT IN ( - col2 )
----
0

skipif mysql # not compatible
query I rowsort label-2228
SELECT ALL COUNT ( * ) FROM tab0 WHERE NULL NOT IN ( - col2 )
----
0

query II rowsort
SELECT + 59, - 16 AS col0 FROM tab0
----
59
-16
59
-16
59
-16

query II rowsort
SELECT DISTINCT col2 AS col2, 29 AS col1 FROM tab1
----
59
29
68
29
96
29

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ( + - col0 ) col1 FROM tab1 AS cor0
----
-51
-85
-91

query I rowsort
SELECT DISTINCT + col0 AS col2 FROM tab0 AS cor0 WHERE NOT col0 IS NULL
----
15
87
97

onlyif mysql # aggregate syntax: 
query I rowsort label-2233
SELECT + - COUNT( * ) * - 7 AS col0 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
63

skipif mysql # not compatible
query I rowsort label-2233
SELECT + - COUNT ( * ) * - 7 AS col0 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
63

query I rowsort
SELECT DISTINCT - - 55 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
55

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT ( NULL ) IN ( - 96 )
----

query I rowsort
SELECT ALL + - ( + + col2 ) AS col1 FROM tab1 AS cor0
----
-59
-68
-96

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2237
SELECT DISTINCT + CAST( - + col1 AS SIGNED ) * col2 + - col1 * - - CAST( NULL AS SIGNED ) * col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2237
SELECT DISTINCT + CAST ( - + col1 AS INTEGER ) * col2 + - col1 * - - CAST ( NULL AS INTEGER ) * col1 FROM tab0 AS cor0
----
NULL

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE - col2 * - - 24 + - - col1 / - + 77 IS NULL
----

query I rowsort
SELECT ALL - 42 + - + col2 * 15 AS col2 FROM tab0 AS cor0
----
-1527
-192
-747

onlyif mysql # DIV for integer division: 
query I rowsort label-2240
SELECT + 14 + - col0 DIV - col0 AS col1 FROM tab1 AS cor0
----
15
15
15

skipif mysql # not compatible
query I rowsort label-2240
SELECT + 14 + - col0 / - col0 AS col1 FROM tab1 AS cor0
----
15
15
15

query I rowsort
SELECT DISTINCT - - ( - 19 ) + col1 FROM tab1 AS cor0
----
-14
-5
28

query I rowsort
SELECT ALL + 31 AS col0 FROM tab1 cor0 WHERE NULL IS NOT NULL
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT 76 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE col1 * + col1 BETWEEN ( NULL ) AND ( - + col0 )
----

query I rowsort
SELECT - col1 + - ( col0 ) FROM tab2
----
-141
-142
-97

query I rowsort
SELECT DISTINCT col0 - + - 84 AS col2 FROM tab2
----
130
148
159

query III rowsort
SELECT * FROM tab2 WHERE + + 99 * - ( - 74 ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT ( - + col2 ) FROM tab2
----
-23
-40
-58

onlyif mysql # aggregate syntax: 
query I rowsort label-2249
SELECT - COUNT( * ) * + + COUNT( * ) AS col2 FROM tab2
----
-9

skipif mysql # not compatible
query I rowsort label-2249
SELECT - COUNT ( * ) * + + COUNT ( * ) AS col2 FROM tab2
----
-9

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT ( 73 + - col0 IS NOT NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2251
SELECT - COUNT( ALL 99 ) AS col2 FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-2251
SELECT - COUNT ( ALL 99 ) AS col2 FROM tab0 AS cor0
----
-3

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE ( ( + col0 IS NOT NULL ) )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - - 70 col0 FROM tab0 WHERE col2 IS NULL
----

query II rowsort
SELECT 17 AS col0, col1 + + - col0 AS col1 FROM tab1
----
17
-37
17
-44
17
-80

onlyif mysql # aggregate syntax: 
query II rowsort label-2255
SELECT ALL + 99, SUM( - col2 ) AS col1 FROM tab0
----
99
-156

skipif mysql # not compatible
query II rowsort label-2255
SELECT ALL + 99, SUM ( - col2 ) AS col1 FROM tab0
----
99
-156

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2256
SELECT * FROM tab1 WHERE NOT ( 26 + + + col0 + col2 / - CAST( NULL AS SIGNED ) - - col2 * + col0 - - + ( 98 ) + - col0 ) IS NULL
----

skipif mysql # not compatible
query III rowsort label-2256
SELECT * FROM tab1 WHERE NOT ( 26 + + + col0 + col2 / - CAST ( NULL AS INTEGER ) - - col2 * + col0 - - + ( 98 ) + - col0 ) IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2257
SELECT ALL + 54 * 18 * ( - CAST( NULL AS SIGNED ) ) + MAX( + 17 ) AS col0 FROM tab0 WHERE NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-2257
SELECT ALL + 54 * 18 * ( - CAST ( NULL AS INTEGER ) ) + MAX ( + 17 ) AS col0 FROM tab0 WHERE NULL IS NOT NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2258
SELECT + COUNT( - col1 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-2258
SELECT + COUNT ( - col1 ) FROM tab2
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2259
SELECT ALL - 98 * CAST( NULL AS SIGNED ) AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2259
SELECT ALL - 98 * CAST ( NULL AS INTEGER ) AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2260
SELECT - MIN( - col0 ) DIV + COUNT( * ) FROM tab0 AS cor0
----
32

skipif mysql # not compatible
query I rowsort label-2260
SELECT - MIN ( - col0 ) / + COUNT ( * ) FROM tab0 AS cor0
----
32

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2261
SELECT DISTINCT - + COUNT( * ) DIV COUNT( * ) FROM tab2 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-2261
SELECT DISTINCT - + COUNT ( * ) / COUNT ( * ) FROM tab2 AS cor0
----
-1

onlyif mysql # aggregate syntax: 
query I rowsort label-2262
SELECT DISTINCT ( + + 97 ) * - + COUNT( * ) col1 FROM tab1 AS cor0
----
-291

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2262
SELECT DISTINCT ( + + 97 ) * - + COUNT ( * ) col1 FROM tab1 AS cor0
----
-291

onlyif mysql # aggregate syntax: 
query I rowsort label-2263
SELECT DISTINCT COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-2263
SELECT DISTINCT COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2264
SELECT - - 64 * COUNT( * ) * + 26 FROM tab2 cor0
----
4992

skipif mysql # not compatible
query I rowsort label-2264
SELECT - - 64 * COUNT ( * ) * + 26 FROM tab2 cor0
----
4992

query I rowsort
SELECT - col0 * col1 * 71 FROM tab1 AS cor0
----
-30175
-303667
-50694

onlyif mysql # DIV for integer division: 
query I rowsort label-2266
SELECT DISTINCT - - col0 DIV - 98 FROM tab0 cor0
----
0

skipif mysql # not compatible
query I rowsort label-2266
SELECT DISTINCT - - col0 / - 98 FROM tab0 cor0
----
0

query III rowsort
SELECT * FROM tab0 WHERE NOT 90 * 70 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT + col1 * + 33 FROM tab2
----
1683
2211
2541

query I rowsort
SELECT ALL 17 AS col0 FROM tab0, tab1 AS cor0
----
9 values hashing to 43298e43365fccb5146ea32003753c92

query II rowsort
SELECT + ( + 74 ) AS col1, col2 AS col0 FROM tab0
----
74
10
74
47
74
99

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 6 col0 FROM tab2
----
6
6
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2272
SELECT DISTINCT - col2 * - - CAST( NULL AS SIGNED ) AS col1 FROM tab1 WHERE ( NOT NULL IS NOT NULL )
----
NULL

skipif mysql # not compatible
query I rowsort label-2272
SELECT DISTINCT - col2 * - - CAST ( NULL AS INTEGER ) AS col1 FROM tab1 WHERE ( NOT NULL IS NOT NULL )
----
NULL

query III rowsort
SELECT * FROM tab2 WHERE NOT + col2 = NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + ( - - col1 ) col2, + col2 AS col2 FROM tab0
----
1
99
21
10
81
47

query I rowsort
SELECT ALL + + 97 + - col1 * col0 AS col0 FROM tab1 AS cor0
----
-328
-4180
-617

query I rowsort
SELECT 5 AS col2 FROM tab2 AS cor0 WHERE NULL BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2277
SELECT ALL + COUNT( - 50 ) AS col0 FROM tab1 cor0
----
3

skipif mysql # not compatible
query I rowsort label-2277
SELECT ALL + COUNT ( - 50 ) AS col0 FROM tab1 cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2278
SELECT DISTINCT COUNT( * ) + + SUM( col2 ) FROM tab0
----
159

skipif mysql # not compatible
query I rowsort label-2278
SELECT DISTINCT COUNT ( * ) + + SUM ( col2 ) FROM tab0
----
159

query I rowsort
SELECT DISTINCT + - col0 + - 46 FROM tab1 AS cor0
----
-131
-137
-97

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL >= + ( - col0 ) + + col2
----

query I rowsort
SELECT ( + ( - col1 ) ) AS col1 FROM tab0 AS cor0 WHERE NULL IS NULL
----
-1
-21
-81

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE col2 / - col1 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT - - ( - col0 ) - - col0 * + col2 AS col1 FROM tab1 AS cor0
----
4845
4930
6097

onlyif mysql # DIV for integer division: 
query I rowsort label-2284
SELECT + col2 DIV col1 * + - col0 - - ( + - col1 ) * - - col1 FROM tab2
----
-2601
-4489
-5929

skipif mysql # not compatible
query I rowsort label-2284
SELECT + col2 / col1 * + - col0 - - ( + - col1 ) * - - col1 FROM tab2
----
-2601
-4489
-5929

query I rowsort
SELECT DISTINCT + col1 + ( + - 78 ) AS col1 FROM tab0
----
-57
-77
3

query III rowsort
SELECT ALL * FROM tab0 WHERE - + 86 IS NULL
----

query I rowsort
SELECT ALL 29 - - 51 * - col1 * col1 * - 61 * + col2 AS col1 FROM tab0
----
13719539
308018
959329766

onlyif mysql # aggregate syntax: 
query I rowsort label-2288
SELECT ALL - ( + COUNT( + col0 ) ) FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-2288
SELECT ALL - ( + COUNT ( + col0 ) ) FROM tab1
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-2289
SELECT SUM( ALL - col1 ) * COUNT( * ) FROM tab2
----
-585

skipif mysql # not compatible
query I rowsort label-2289
SELECT SUM ( ALL - col1 ) * COUNT ( * ) FROM tab2
----
-585

query III rowsort
SELECT * FROM tab2 cor0 WHERE NOT + col0 + 15 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT 88 * - 82 AS col0 FROM tab0
----
-7216
-7216
-7216

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL > - + col2 + col1
----

query I rowsort
SELECT + 31 AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to d1ebd1cea4a9773069af34fbf8ea3540

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2294
SELECT ALL - ( - COUNT( * ) ) FROM tab0 AS cor0 WHERE col0 / ( - + col2 ) NOT IN ( + + col0, + col0 * + ( col1 ), + ( + - col0 ) * - 45, + CAST( NULL AS SIGNED ) )
----
0

skipif mysql # not compatible
query I rowsort label-2294
SELECT ALL - ( - COUNT ( * ) ) FROM tab0 AS cor0 WHERE col0 / ( - + col2 ) NOT IN ( + + col0, + col0 * + ( col1 ), + ( + - col0 ) * - 45, + CAST ( NULL AS INTEGER ) )
----
0

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2295
SELECT DISTINCT - + col0 + + 78 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN + col0 / + CAST( col1 AS DECIMAL ) AND + col1
----

skipif mysql # not compatible
query I rowsort label-2295
SELECT DISTINCT - + col0 + + 78 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN + col0 / + CAST ( col1 AS REAL ) AND + col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2296
SELECT + + ( COUNT( * ) ) AS col2 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-2296
SELECT + + ( COUNT ( * ) ) AS col2 FROM tab2 AS cor0
----
3

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2297
SELECT + ( COUNT( * ) ) DIV SUM( DISTINCT + col0 ) AS col0 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-2297
SELECT + ( COUNT ( * ) ) / SUM ( DISTINCT + col0 ) AS col0 FROM tab1 AS cor0
----
0

query I rowsort
SELECT ALL - + 78 AS col0 FROM tab0 AS cor0
----
-78
-78
-78

onlyif mysql # aggregate syntax: 
query I rowsort label-2299
SELECT - 0 * + MAX( + - col1 ) * + 82 * - 96 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-2299
SELECT - 0 * + MAX ( + - col1 ) * + 82 * - 96 FROM tab2
----
0

onlyif mysql # aggregate syntax: 
query II rowsort label-2300
SELECT DISTINCT 90, - COUNT( * ) AS col2 FROM tab0
----
90
-3

skipif mysql # not compatible
query II rowsort label-2300
SELECT DISTINCT 90, - COUNT ( * ) AS col2 FROM tab0
----
90
-3

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2301
SELECT ALL * FROM tab2 WHERE NOT - - col1 * CAST( NULL AS SIGNED ) * - col1 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-2301
SELECT ALL * FROM tab2 WHERE NOT - - col1 * CAST ( NULL AS INTEGER ) * - col1 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-2302
SELECT - 55 + + COUNT( * ) + - + 21 + - COUNT( * ) AS col2 FROM tab0 WHERE NOT + col2 / - ( + col0 ) < + + 97
----
-76

skipif mysql # not compatible
query I rowsort label-2302
SELECT - 55 + + COUNT ( * ) + - + 21 + - COUNT ( * ) AS col2 FROM tab0 WHERE NOT + col2 / - ( + col0 ) < + + 97
----
-76

query II rowsort
SELECT ALL col1 AS col2, - col1 AS col2 FROM tab2
----
51
-51
67
-67
77
-77

query I rowsort
SELECT col2 + + 31 * - - col1 * - col0 AS col2 FROM tab2
----
-152728
-155717
-72703

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT - col1 + + ( col1 ) + col2 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + 35 FROM tab0 WHERE - col0 IS NOT NULL AND NOT - 78 + - col0 IS NULL
----
35
35
35

query I rowsort
SELECT DISTINCT - col1 FROM tab2 WHERE NULL IS NULL
----
-51
-67
-77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2308
SELECT ALL CAST( NULL AS SIGNED ) + - 52 AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2308
SELECT ALL CAST ( NULL AS INTEGER ) + - 52 AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT - col0 AS col2, - col2 - + col2 FROM tab1 cor0
----
-51
-192
-85
-118
-91
-136

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col2 col2, + col2 * + 68 * col0 AS col0 FROM tab2 AS cor0
----
-23
71944
-40
174080
-58
295800

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2311
SELECT ALL * FROM tab0 AS cor0 WHERE col0 NOT IN ( + CAST( NULL AS SIGNED ) + + 5 / + col0 + col0 )
----

skipif mysql # not compatible
query III rowsort label-2311
SELECT ALL * FROM tab0 AS cor0 WHERE col0 NOT IN ( + CAST ( NULL AS INTEGER ) + + 5 / + col0 + col0 )
----

query II rowsort
SELECT col0 AS col2, + 20 AS col1 FROM tab2 AS cor0 WHERE NULL < - 55 * 37
----

onlyif mysql # DIV for integer division: 
query II rowsort label-2313
SELECT + - 52, col0 * 81 DIV col1 * col0 col0 FROM tab2 AS cor0
----
-52
3358
-52
4288
-52
6750

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2313
SELECT + - 52, col0 * 81 / col1 * col0 col0 FROM tab2 AS cor0
----
-52
3358
-52
4288
-52
6750

query II rowsort
SELECT DISTINCT 0 AS col2, - 17 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
0
-17

query I rowsort
SELECT - 38 AS col2 FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to e571541ae40cb0ddaca16e11f4359507

query I rowsort
SELECT DISTINCT - col0 AS col0 FROM tab1 WHERE ( NULL IS NULL ) OR - col2 * + - 86 IS NOT NULL
----
-51
-85
-91

query I rowsort
SELECT + 4 + + - col1 + 25 * + 23 AS col1 FROM tab2 AS cor0
----
502
512
528

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2318
SELECT DISTINCT CAST( NULL AS SIGNED ) * - - col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2318
SELECT DISTINCT CAST ( NULL AS INTEGER ) * - - col1 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT col0 + + + ( + - col1 ) FROM tab0 AS cor0
----
-66
66
96

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2320
SELECT ALL + col1 / - + col1 + + CAST( NULL AS SIGNED ) + - 90 + col2 / + col2 AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2320
SELECT ALL + col1 / - + col1 + + CAST ( NULL AS INTEGER ) + - 90 + col2 / + col2 AS col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2321
SELECT COUNT( * ) * - - SUM( - col0 ) + COUNT( * ) AS col0 FROM tab0 AS cor0
----
-594

skipif mysql # not compatible
query I rowsort label-2321
SELECT COUNT ( * ) * - - SUM ( - col0 ) + COUNT ( * ) AS col0 FROM tab0 AS cor0
----
-594

onlyif mysql # aggregate syntax: 
query I rowsort label-2322
SELECT DISTINCT + 14 + - COUNT( * ) + - 60 + + + 73 col2 FROM tab1 AS cor0
----
24

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2322
SELECT DISTINCT + 14 + - COUNT ( * ) + - 60 + + + 73 col2 FROM tab1 AS cor0
----
24

query I rowsort
SELECT ALL col2 + - - col0 FROM tab0 AS cor0
----
196
62
97

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2324
SELECT ALL - col1 * + - CAST( - col1 AS SIGNED ) + + col1 - - col1 FROM tab2 cor0
----
-2499
-4355
-5775

skipif mysql # not compatible
query I rowsort label-2324
SELECT ALL - col1 * + - CAST ( - col1 AS INTEGER ) + + col1 - - col1 FROM tab2 cor0
----
-2499
-4355
-5775

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2325
SELECT DISTINCT - ( - CAST( NULL AS SIGNED ) ) col2 FROM tab1
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2325
SELECT DISTINCT - ( - CAST ( NULL AS INTEGER ) ) col2 FROM tab1
----
NULL

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT + - 41 + - - col0 * - ( + 79 ) * - col0 BETWEEN + ( + 85 ) AND NULL
----

query III rowsort
SELECT * FROM tab1 WHERE NOT + + ( 39 ) + col2 * col2 <= NULL
----

query II rowsort
SELECT 49, - col0 AS col1 FROM tab2
----
49
-46
49
-64
49
-75

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL NOT BETWEEN + col2 AND - 27 * - col1 + ( - 67 ) / + ( 2 ) + + 58
----

query I rowsort
SELECT col1 * + - col0 FROM tab2
----
-2346
-4928
-5025

onlyif mysql # aggregate syntax: 
query I rowsort label-2331
SELECT 46 * COUNT( * ) FROM tab0 AS cor0
----
138

skipif mysql # not compatible
query I rowsort label-2331
SELECT 46 * COUNT ( * ) FROM tab0 AS cor0
----
138

onlyif mysql # aggregate syntax: 
query I rowsort label-2332
SELECT ALL - - MAX( ALL + col1 ) col1 FROM tab1 AS cor0
----
47

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2332
SELECT ALL - - MAX ( ALL + col1 ) col1 FROM tab1 AS cor0
----
47

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2333
SELECT DISTINCT + ( - col1 ) * + CAST( NULL AS SIGNED ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2333
SELECT DISTINCT + ( - col1 ) * + CAST ( NULL AS INTEGER ) FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT - + 11 AS col0 FROM tab2 AS cor0
----
-11

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2335
SELECT ALL - + SUM( ALL CAST( NULL AS SIGNED ) ) col0 FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2335
SELECT ALL - + SUM ( ALL CAST ( NULL AS INTEGER ) ) col0 FROM tab1 AS cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2336
SELECT + CAST( - 64 AS SIGNED ) FROM tab2
----
-64
-64
-64

skipif mysql # not compatible
query I rowsort label-2336
SELECT + CAST ( - 64 AS INTEGER ) FROM tab2
----
-64
-64
-64

query I rowsort
SELECT ALL + 40 FROM tab0 AS cor0 CROSS JOIN tab1 cor1
----
9 values hashing to b1e8ffeef334b4a2b01b2f91e649c2d3

query I rowsort
SELECT - 12 + - + col2 FROM tab0
----
-111
-22
-59

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2339
SELECT + ( MIN( + CAST( NULL AS SIGNED ) ) ) AS col0 FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2339
SELECT + ( MIN ( + CAST ( NULL AS INTEGER ) ) ) AS col0 FROM tab1 AS cor0
----
NULL

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT + col1 + - 16 < + col2
----
46
51
23
64
77
40

query I rowsort
SELECT DISTINCT + 71 + + col1 FROM tab0 AS cor0
----
152
72
92

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query III rowsort label-2342
SELECT * FROM tab0 WHERE - col2 BETWEEN - CAST( NULL AS DECIMAL ) - 47 * + col0 AND + + ( - - col2 ) - col1 + - 18 + 74 * - 23 / - CAST( NULL AS SIGNED ) * + 22 * col0 + - 78 + 36 * + 88
----

skipif mysql # not compatible
query III rowsort label-2342
SELECT * FROM tab0 WHERE - col2 BETWEEN - CAST ( NULL AS REAL ) - 47 * + col0 AND + + ( - - col2 ) - col1 + - 18 + 74 * - 23 / - CAST ( NULL AS INTEGER ) * + 22 * col0 + - 78 + 36 * + 88
----

query I rowsort
SELECT col1 * - 80 AS col0 FROM tab2
----
-4080
-5360
-6160

query I rowsort
SELECT DISTINCT + ( - - col1 ) * col0 AS col1 FROM tab2
----
2346
4928
5025

query I rowsort
SELECT ALL col0 * - 89 AS col1 FROM tab1
----
-4539
-7565
-8099

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2346
SELECT DISTINCT CAST( NULL AS SIGNED ) + - CAST( NULL AS SIGNED ) FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-2346
SELECT DISTINCT CAST ( NULL AS INTEGER ) + - CAST ( NULL AS INTEGER ) FROM tab0
----
NULL

query I rowsort
SELECT DISTINCT - 25 + - col0 FROM tab1 AS cor0
----
-110
-116
-76

onlyif mysql # aggregate syntax: 
query I rowsort label-2348
SELECT ALL 16 + - COUNT( * ) AS col2 FROM tab0 cor0
----
13

skipif mysql # not compatible
query I rowsort label-2348
SELECT ALL 16 + - COUNT ( * ) AS col2 FROM tab0 cor0
----
13

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2349
SELECT + CAST( 17 AS SIGNED ) + - + col0 / + CAST( NULL AS SIGNED ) * - col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2349
SELECT + CAST ( 17 AS INTEGER ) + - + col0 / + CAST ( NULL AS INTEGER ) * - col2 FROM tab2
----
NULL
NULL
NULL

query II rowsort
SELECT - 91, col0 AS col0 FROM tab1
----
-91
51
-91
85
-91
91

query I rowsort
SELECT ALL - 70 FROM ( tab2 AS cor0 CROSS JOIN tab0 AS cor1 ) WHERE ( + 21 IS NULL )
----

onlyif mysql # aggregate syntax: 
query II rowsort label-2352
SELECT - + 64, SUM( DISTINCT col1 ) col2 FROM tab1 AS cor0
----
-64
66

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2352
SELECT - + 64, SUM ( DISTINCT col1 ) col2 FROM tab1 AS cor0
----
-64
66

onlyif mysql # aggregate syntax: 
query I rowsort label-2353
SELECT ALL + COUNT( ALL + col2 ) AS col1 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-2353
SELECT ALL + COUNT ( ALL + col2 ) AS col1 FROM tab0 AS cor0
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 83 * col0 col0 FROM tab0 cor0 WHERE + col2 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2355
SELECT 47 - - col1 + + - CAST( - - CAST( NULL AS SIGNED ) AS SIGNED ) + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) * col0 * + col1 / - - ( col0 ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2355
SELECT 47 - - col1 + + - CAST ( - - CAST ( NULL AS INTEGER ) AS INTEGER ) + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) * col0 * + col1 / - - ( col0 ) FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT - col1 * + - 32 AS col0 FROM tab0 cor0 WHERE NOT + col2 >= NULL
----

query II rowsort
SELECT ALL + + 41, - col0 AS col2 FROM tab1 AS cor0
----
41
-51
41
-85
41
-91

query II rowsort
SELECT ALL - - col2 * 49, - col1 * col1 AS col2 FROM tab0 AS cor0
----
2303
-6561
4851
-1
490
-441

onlyif mysql # aggregate syntax: 
query I rowsort label-2359
SELECT ALL COUNT( * ) * ( - 85 ) FROM tab0
----
-255

skipif mysql # not compatible
query I rowsort label-2359
SELECT ALL COUNT ( * ) * ( - 85 ) FROM tab0
----
-255

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2360
SELECT ALL 2 DIV COUNT( * ) AS col2 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-2360
SELECT ALL 2 / COUNT ( * ) AS col2 FROM tab2
----
0

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-2361
SELECT * FROM tab2 WHERE NOT col1 * + 4 - + CAST( - col1 AS DECIMAL ) + + 51 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-2361
SELECT * FROM tab2 WHERE NOT col1 * + 4 - + CAST ( - col1 AS REAL ) + + 51 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL IN ( + - 25 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2363
SELECT DISTINCT - CAST( - col1 AS SIGNED ) FROM tab1
----
14
47
5

skipif mysql # not compatible
query I rowsort label-2363
SELECT DISTINCT - CAST ( - col1 AS INTEGER ) FROM tab1
----
14
47
5

query II rowsort
SELECT ALL ( - + col0 ), ( - col0 ) FROM tab0
----
-15
-15
-87
-87
-97
-97

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + col0 / + 13 NOT BETWEEN NULL AND NULL
----

query II rowsort
SELECT DISTINCT + ( 40 ) AS col0, - ( - col1 ) + col2 FROM tab2 AS cor0
----
40
117
40
125
40
74

onlyif mysql # aggregate syntax: 
query I rowsort label-2367
SELECT DISTINCT - COUNT( * ) * - + 45 AS col0 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
405

skipif mysql # not compatible
query I rowsort label-2367
SELECT DISTINCT - COUNT ( * ) * - + 45 AS col0 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
405

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE 77 + + + col2 < NULL
----

query I rowsort
SELECT ALL - - col2 + col0 + + col1 FROM tab2 cor0
----
120
181
200

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE - 19 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT + 3 + - - 44 AS col2 FROM tab2 AS cor0
----
47

onlyif mysql # aggregate syntax: 
query I rowsort label-2372
SELECT MIN( DISTINCT - + col1 ) FROM tab0 AS cor0
----
-81

skipif mysql # not compatible
query I rowsort label-2372
SELECT MIN ( DISTINCT - + col1 ) FROM tab0 AS cor0
----
-81

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 18 + col0 col1 FROM tab1 AS cor0
----
33
67
73

query I rowsort
SELECT ALL - + col1 + - 29 AS col0 FROM tab0 AS cor0
----
-110
-30
-50

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col1 col2 FROM tab2 WHERE NOT ( col0 + col1 IS NULL )
----
-51
-67
-77

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2376
SELECT ALL + CAST( NULL AS SIGNED ) + - - col2, - col1 AS col2 FROM tab2
----
NULL
-51
NULL
-67
NULL
-77

skipif mysql # not compatible
query II rowsort label-2376
SELECT ALL + CAST ( NULL AS INTEGER ) + - - col2, - col1 AS col2 FROM tab2
----
NULL
-51
NULL
-67
NULL
-77

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2377
SELECT DISTINCT + + 8 * COUNT( col2 ) * - CAST( + - AVG ( DISTINCT + 87 ) AS SIGNED ) * - + COUNT( * ) FROM tab1 WHERE NOT - - 0 * + - 16 < col0
----
NULL

skipif mysql # not compatible
query I rowsort label-2377
SELECT DISTINCT + + 8 * COUNT ( col2 ) * - CAST ( + - AVG ( DISTINCT + 87 ) AS INTEGER ) * - + COUNT ( * ) FROM tab1 WHERE NOT - - 0 * + - 16 < col0
----
NULL

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT 34 = - - 76
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-2379
SELECT ALL MAX( DISTINCT - + col2 ) AS col2 FROM tab0
----
-10

skipif mysql # not compatible
query I rowsort label-2379
SELECT ALL MAX ( DISTINCT - + col2 ) AS col2 FROM tab0
----
-10

onlyif mysql # aggregate syntax: 
query I rowsort label-2380
SELECT - MAX( + 64 ) AS col0 FROM tab1
----
-64

skipif mysql # not compatible
query I rowsort label-2380
SELECT - MAX ( + 64 ) AS col0 FROM tab1
----
-64

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2381
SELECT DISTINCT + CAST( NULL AS SIGNED ) col2 FROM tab2, tab0 AS cor0
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2381
SELECT DISTINCT + CAST ( NULL AS INTEGER ) col2 FROM tab2, tab0 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT - ( col2 ) FROM tab2 AS cor0 WHERE NOT - col2 < NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2383
SELECT - COUNT( * ) - + - COUNT( * ) FROM tab1 cor0
----
0

skipif mysql # not compatible
query I rowsort label-2383
SELECT - COUNT ( * ) - + - COUNT ( * ) FROM tab1 cor0
----
0

query I rowsort
SELECT col2 + - col1 AS col0 FROM tab1 WHERE + - col1 IN ( 66 * col1 + 52, col1 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2385
SELECT + + col1 DIV - col1 + col0 + - col2 AS col1 FROM tab0 AS cor0
----
-3
-33
76

skipif mysql # not compatible
query I rowsort label-2385
SELECT + + col1 / - col1 + col0 + - col2 AS col1 FROM tab0 AS cor0
----
-3
-33
76

query I rowsort
SELECT DISTINCT - col2 * - col2 + + 9 FROM tab2 AS cor0
----
1609
3373
538

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-2387
SELECT - COUNT( * ), + CAST( NULL AS SIGNED ) AS col1 FROM tab1 AS cor0
----
-3
NULL

skipif mysql # not compatible
query II rowsort label-2387
SELECT - COUNT ( * ), + CAST ( NULL AS INTEGER ) AS col1 FROM tab1 AS cor0
----
-3
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-2388
SELECT - col2 DIV - + 48 AS col1 FROM tab0 AS cor0
----
0
0
2

skipif mysql # not compatible
query I rowsort label-2388
SELECT - col2 / - + 48 AS col1 FROM tab0 AS cor0
----
0
0
2

onlyif mysql # aggregate syntax: 
query I rowsort label-2389
SELECT DISTINCT - + ( MIN( DISTINCT - col1 ) ) AS col0 FROM tab1 AS cor0
----
47

skipif mysql # not compatible
query I rowsort label-2389
SELECT DISTINCT - + ( MIN ( DISTINCT - col1 ) ) AS col0 FROM tab1 AS cor0
----
47

onlyif mysql # aggregate syntax: 
query I rowsort label-2390
SELECT MIN( ( - + col0 ) ) col1 FROM tab0 AS cor0
----
-97

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2390
SELECT MIN ( ( - + col0 ) ) col1 FROM tab0 AS cor0
----
-97

onlyif mysql # DIV for integer division: 
query I rowsort label-2391
SELECT - col1 DIV - - col2 AS col0 FROM tab1 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2391
SELECT - col1 / - - col2 AS col0 FROM tab1 AS cor0
----
0
0
0

query II rowsort
SELECT ALL col0 AS col1, + col1 AS col1 FROM tab0
----
15
81
87
21
97
1

query II rowsort
SELECT DISTINCT - col0, col2 FROM tab0 WHERE + - col0 IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2394
SELECT DISTINCT + col2 DIV 48 FROM tab1
----
1
2

skipif mysql # not compatible
query I rowsort label-2394
SELECT DISTINCT + col2 / 48 FROM tab1
----
1
2

query I rowsort
SELECT + col0 AS col2 FROM tab2 WHERE NOT col2 IS NULL
----
46
64
75

onlyif mysql # DIV for integer division: 
query I rowsort label-2396
SELECT ALL 99 DIV + 58 AS col2 FROM tab0
----
1
1
1

skipif mysql # not compatible
query I rowsort label-2396
SELECT ALL 99 / + 58 AS col2 FROM tab0
----
1
1
1

query I rowsort
SELECT DISTINCT - ( - - col0 ) AS col2 FROM tab1
----
-51
-85
-91

query I rowsort
SELECT + ( + + ( - col2 ) ) AS col2 FROM tab1 AS cor0
----
-59
-68
-96

query I rowsort
SELECT + + 34 * - - 74 * col1 FROM tab0 AS cor0
----
203796
2516
52836

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 26 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2401
SELECT DISTINCT col0 * - 16 - + col1 AS col1 FROM tab0 AS cor0 WHERE NOT + col0 + - 46 * col1 BETWEEN - 44 + - ( + 75 ) * + - CAST( NULL AS SIGNED ) / - + col2 AND + + col1
----
-1553

skipif mysql # not compatible
query I rowsort label-2401
SELECT DISTINCT col0 * - 16 - + col1 AS col1 FROM tab0 AS cor0 WHERE NOT + col0 + - 46 * col1 BETWEEN - 44 + - ( + 75 ) * + - CAST ( NULL AS INTEGER ) / - + col2 AND + + col1
----
-1553

onlyif mysql # aggregate syntax: 
query II rowsort label-2402
SELECT DISTINCT + 60 AS col0, 45 + + ( + COUNT( * ) ) FROM tab0 cor0
----
60
48

skipif mysql # not compatible
query II rowsort label-2402
SELECT DISTINCT + 60 AS col0, 45 + + ( + COUNT ( * ) ) FROM tab0 cor0
----
60
48

query I rowsort
SELECT 6 * + ( - - col2 ) + col2 AS col1 FROM tab1
----
413
476
672

onlyif mysql # aggregate syntax: 
query I rowsort label-2404
SELECT ALL + + 85 * COUNT( * ) AS col1 FROM tab1 cor0 CROSS JOIN tab1 AS cor1
----
765

skipif mysql # not compatible
query I rowsort label-2404
SELECT ALL + + 85 * COUNT ( * ) AS col1 FROM tab1 cor0 CROSS JOIN tab1 AS cor1
----
765

query I rowsort
SELECT 96 + 92 FROM tab1
----
188
188
188

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL >= 78
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2407
SELECT ALL - 79 + col2 - CAST( NULL AS SIGNED ) * - col0 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2407
SELECT ALL - 79 + col2 - CAST ( NULL AS INTEGER ) * - col0 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query II rowsort label-2408
SELECT 65 + - + COUNT( * ) col0, COUNT( * ) * + - COUNT( * ) AS col2 FROM tab2
----
62
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2408
SELECT 65 + - + COUNT ( * ) col0, COUNT ( * ) * + - COUNT ( * ) AS col2 FROM tab2
----
62
-9

onlyif mysql # DIV for integer division: 
query I rowsort label-2409
SELECT + 40 + - + col0 DIV + col2 FROM tab0 AS cor0
----
32
40
40

skipif mysql # not compatible
query I rowsort label-2409
SELECT + 40 + - + col0 / + col2 FROM tab0 AS cor0
----
32
40
40

onlyif mysql # aggregate syntax: 
query I rowsort label-2410
SELECT DISTINCT + 35 + COUNT( * ) AS col0 FROM tab1 AS cor0
----
38

skipif mysql # not compatible
query I rowsort label-2410
SELECT DISTINCT + 35 + COUNT ( * ) AS col0 FROM tab1 AS cor0
----
38

query I rowsort
SELECT ALL - + 12 AS col1 FROM tab1 AS cor0
----
-12
-12
-12

query I rowsort
SELECT - + col0 FROM tab1 AS cor0 WHERE NULL <= - col2 * - col0 * col0
----

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT + 23 IS NOT NULL
----

query I rowsort
SELECT - col1 * col2 * + + 39 AS col1 FROM tab1 AS cor0
----
-11505
-124644
-52416

onlyif mysql # aggregate syntax: 
query I rowsort label-2415
SELECT DISTINCT MIN( DISTINCT - col2 ) + - COUNT( * ) FROM tab1 AS cor0
----
-99

skipif mysql # not compatible
query I rowsort label-2415
SELECT DISTINCT MIN ( DISTINCT - col2 ) + - COUNT ( * ) FROM tab1 AS cor0
----
-99

onlyif mysql # aggregate syntax: 
query I rowsort label-2416
SELECT + COUNT( * ) AS col2 FROM tab1 WHERE - - 90 / - 46 IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-2416
SELECT + COUNT ( * ) AS col2 FROM tab1 WHERE - - 90 / - 46 IS NOT NULL
----
3

query I rowsort
SELECT 10 * + col0 FROM tab1
----
510
850
910

query I rowsort
SELECT col0 * 74 AS col1 FROM tab1
----
3774
6290
6734

onlyif mysql # aggregate syntax: 
query I rowsort label-2419
SELECT - 36 + - - COUNT( * ) FROM tab0
----
-33

skipif mysql # not compatible
query I rowsort label-2419
SELECT - 36 + - - COUNT ( * ) FROM tab0
----
-33

query I rowsort
SELECT + col2 + + - col2 AS col2 FROM tab1
----
0
0
0

query I rowsort
SELECT ALL col1 + - 15 AS col1 FROM tab2
----
36
52
62

onlyif mysql # DIV for integer division: 
query I rowsort label-2422
SELECT col2 DIV 44 + - 6 FROM tab0
----
-4
-5
-6

skipif mysql # not compatible
query I rowsort label-2422
SELECT col2 / 44 + - 6 FROM tab0
----
-4
-5
-6

onlyif mysql # aggregate syntax: 
query II rowsort label-2423
SELECT MAX( ALL col1 ) + + COUNT( * ) + + 48 * + 20, SUM( DISTINCT col1 ) FROM tab1 AS cor0 WHERE - col1 NOT BETWEEN - col2 * col1 AND NULL
----
NULL
NULL

skipif mysql # not compatible
query II rowsort label-2423
SELECT MAX ( ALL col1 ) + + COUNT ( * ) + + 48 * + 20, SUM ( DISTINCT col1 ) FROM tab1 AS cor0 WHERE - col1 NOT BETWEEN - col2 * col1 AND NULL
----
NULL
NULL

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + col0 NOT BETWEEN NULL AND - col0 + + col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col2 * 38 col2 FROM tab0
----
1786
3762
380

query I rowsort
SELECT ALL - + 57 FROM tab0 AS cor0 CROSS JOIN tab2 cor1
----
9 values hashing to 520dc393896969e02a72ab6c5d92126b

query I rowsort
SELECT ALL col1 FROM tab0 WHERE - col1 NOT BETWEEN NULL AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2428
SELECT DISTINCT ( - + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) ) AS col1 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-2428
SELECT DISTINCT ( - + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) ) AS col1 FROM tab2
----
NULL

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 BETWEEN col2 AND NULL
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT - col0 < ( - col2 )
----
15
81
47
97
1
99

query I rowsort
SELECT ALL + 26 AS col1 FROM tab2 cor0
----
26
26
26

onlyif mysql # aggregate syntax: 
query I rowsort label-2432
SELECT - 69 * - - 5 + + SUM( ALL col0 ) FROM tab2 cor0
----
-160

skipif mysql # not compatible
query I rowsort label-2432
SELECT - 69 * - - 5 + + SUM ( ALL col0 ) FROM tab2 cor0
----
-160

query I rowsort
SELECT ALL ( 33 ) * col1 FROM tab0 AS cor0
----
2673
33
693

onlyif mysql # DIV for integer division: 
query I rowsort label-2434
SELECT - col1 DIV - 19 FROM tab2
----
2
3
4

skipif mysql # not compatible
query I rowsort label-2434
SELECT - col1 / - 19 FROM tab2
----
2
3
4

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col1 * col0 col2 FROM tab0
----
-1215
-1827
-97

onlyif mysql # aggregate syntax: 
query I rowsort label-2436
SELECT ALL - SUM( + - col2 ) FROM tab0
----
156

skipif mysql # not compatible
query I rowsort label-2436
SELECT ALL - SUM ( + - col2 ) FROM tab0
----
156

onlyif mysql # aggregate syntax: 
query I rowsort label-2437
SELECT DISTINCT + COUNT( - + 52 ) AS col2 FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-2437
SELECT DISTINCT + COUNT ( - + 52 ) AS col2 FROM tab1 AS cor0
----
3

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 3 = NULL
----

query II rowsort
SELECT DISTINCT + col2, + 64 FROM tab1
----
59
64
68
64
96
64

onlyif mysql # DIV for integer division: 
query II rowsort label-2440
SELECT col1 DIV col2 AS col1, - col2 FROM tab2 AS cor0
----
1
-40
1
-58
2
-23

skipif mysql # not compatible
query II rowsort label-2440
SELECT col1 / col2 AS col1, - col2 FROM tab2 AS cor0
----
1
-40
1
-58
2
-23

query I rowsort
SELECT ALL col1 + col2 * + + col2 AS col0 FROM tab1 AS cor0
----
3486
4671
9230

onlyif mysql # aggregate syntax: 
query I rowsort label-2442
SELECT DISTINCT + COUNT( * ) + + COUNT( * ) FROM tab1 AS cor0
----
6

skipif mysql # not compatible
query I rowsort label-2442
SELECT DISTINCT + COUNT ( * ) + + COUNT ( * ) FROM tab1 AS cor0
----
6

query I rowsort
SELECT col2 + + + col0 FROM tab0 AS cor0
----
196
62
97

query I rowsort
SELECT - ( - 55 ) + - 30 AS col1 FROM tab1 AS cor0
----
25
25
25

query I rowsort
SELECT - col0 + + 8 + - - col0 FROM tab0
----
8
8
8

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE ( 51 ) = NULL
----

query I rowsort
SELECT - + col0 - - col0 FROM tab1 AS cor0
----
0
0
0

query I rowsort
SELECT - col1 * - 64 - + ( - 67 ) FROM tab2 cor0
----
3331
4355
4995

onlyif mysql # aggregate syntax: 
query I rowsort label-2449
SELECT DISTINCT + MAX( ALL - 9 ) FROM tab1, tab1 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-2449
SELECT DISTINCT + MAX ( ALL - 9 ) FROM tab1, tab1 AS cor0
----
-9

query I rowsort
SELECT DISTINCT - col2 AS col1 FROM tab2 WHERE NOT NULL NOT IN ( - 34, col0, + col0 * - col2, col1, 22 * + col1 + - col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2451
SELECT ALL 48 * + COUNT( * ) col0 FROM tab2
----
144

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2451
SELECT ALL 48 * + COUNT ( * ) col0 FROM tab2
----
144

query II rowsort
SELECT 12 AS col1, - col2 AS col2 FROM tab2
----
12
-23
12
-40
12
-58

query I rowsort
SELECT col2 * 22 AS col2 FROM tab2
----
1276
506
880

query I rowsort
SELECT 75 * + + col2 AS col1 FROM tab0 AS cor0
----
3525
7425
750

onlyif mysql # aggregate syntax: 
query I rowsort label-2455
SELECT ALL SUM( + - 54 ) AS col1 FROM tab1 AS cor0
----
-162

skipif mysql # not compatible
query I rowsort label-2455
SELECT ALL SUM ( + - 54 ) AS col1 FROM tab1 AS cor0
----
-162

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT - col0 * col0 + col2 * col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2457
SELECT DISTINCT + - 36 * + CAST( NULL AS SIGNED ) * + + AVG ( + col0 ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2457
SELECT DISTINCT + - 36 * + CAST ( NULL AS INTEGER ) * + + AVG ( + col0 ) FROM tab0 AS cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2458
SELECT DISTINCT - - CAST( NULL AS SIGNED ) * col1 / + ( + col2 ) AS col0 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2458
SELECT DISTINCT - - CAST ( NULL AS INTEGER ) * col1 / + ( + col2 ) AS col0 FROM tab0 AS cor0
----
NULL

query III rowsort
SELECT ALL * FROM tab0 WHERE + col0 * + col1 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL ( - 69 ) AS col2 FROM tab0
----
-69
-69
-69

onlyif mysql # aggregate syntax: 
query II rowsort label-2461
SELECT DISTINCT + ( 34 ) AS col2, + COUNT( * ) FROM tab2
----
34
3

skipif mysql # not compatible
query II rowsort label-2461
SELECT DISTINCT + ( 34 ) AS col2, + COUNT ( * ) FROM tab2
----
34
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2462
SELECT COUNT( * ) * - 13 FROM tab2
----
-39

skipif mysql # not compatible
query I rowsort label-2462
SELECT COUNT ( * ) * - 13 FROM tab2
----
-39

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2463
SELECT * FROM tab1 WHERE NOT + CAST( NULL AS SIGNED ) + - 86 + + - col2 * + + col1 IN ( + col2 )
----

skipif mysql # not compatible
query III rowsort label-2463
SELECT * FROM tab1 WHERE NOT + CAST ( NULL AS INTEGER ) + - 86 + + - col2 * + + col1 IN ( + col2 )
----

query I rowsort
SELECT DISTINCT - col0 * + - col2 AS col2 FROM tab1
----
4896
5015
6188

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 22 * - col2 col1 FROM tab0 AS cor0
----
-1034
-2178
-220

query I rowsort
SELECT ALL - ( - 16 ) AS col2 FROM tab0 AS cor0
----
16
16
16

query I rowsort
SELECT col0 + - + col1 FROM tab1
----
37
44
80

onlyif mysql # aggregate syntax: 
query I rowsort label-2468
SELECT + 91 + + MIN( - - col2 ) FROM tab1
----
150

skipif mysql # not compatible
query I rowsort label-2468
SELECT + 91 + + MIN ( - - col2 ) FROM tab1
----
150

onlyif mysql # aggregate syntax: 
query II rowsort label-2469
SELECT 80 + - COUNT( * ) + - COUNT( * ) col2, 78 AS col0 FROM tab2
----
74
78

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2469
SELECT 80 + - COUNT ( * ) + - COUNT ( * ) col2, 78 AS col0 FROM tab2
----
74
78

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT + 44 + - 52 - + col2 NOT BETWEEN col1 * + - 62 * + 96 AND NULL
----

query I rowsort
SELECT DISTINCT - col2 + - - 61 AS col0 FROM tab0 AS cor0
----
-38
14
51

onlyif mysql # aggregate syntax: 
query I rowsort label-2472
SELECT - - MAX( + col1 ) AS col1 FROM tab1 AS cor0
----
47

skipif mysql # not compatible
query I rowsort label-2472
SELECT - - MAX ( + col1 ) AS col1 FROM tab1 AS cor0
----
47

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE col0 NOT BETWEEN - col0 AND + + col2 * - 63 + - + 96
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE 98 IS NULL
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE ( NULL ) < 48
----

query I rowsort
SELECT ALL - col1 * - 82 AS col0 FROM tab0 AS cor0 WHERE NOT ( 62 ) * + col1 * - 13 <= 98
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-2477
SELECT DISTINCT 43 DIV ( - 82 ) * - + 15 AS col0, - COUNT( - 35 ) FROM tab1
----
0
-3

skipif mysql # not compatible
query II rowsort label-2477
SELECT DISTINCT 43 / ( - 82 ) * - + 15 AS col0, - COUNT ( - 35 ) FROM tab1
----
0
-3

query I rowsort
SELECT - col0 - col2 + 47 AS col0 FROM tab0
----
-149
-15
-50

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2479
SELECT DISTINCT + + col1 * col0 FROM tab2 WHERE CAST( NULL AS SIGNED ) IS NULL
----
2346
4928
5025

skipif mysql # not compatible
query I rowsort label-2479
SELECT DISTINCT + + col1 * col0 FROM tab2 WHERE CAST ( NULL AS INTEGER ) IS NULL
----
2346
4928
5025

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2480
SELECT DISTINCT + COUNT( * ) - + CAST( - + COUNT( * ) AS SIGNED ) + 7 AS col2 FROM tab0
----
13

skipif mysql # not compatible
query I rowsort label-2480
SELECT DISTINCT + COUNT ( * ) - + CAST ( - + COUNT ( * ) AS INTEGER ) + 7 AS col2 FROM tab0
----
13

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 91 * - - 13 + - col1 col0 FROM tab1
----
1136
1169
1178

query I rowsort
SELECT DISTINCT 59 AS col0 FROM tab0 WHERE NOT ( NOT NULL < 11 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2483
SELECT 33 + + CAST( 75 AS SIGNED ) AS col2 FROM tab0
----
108
108
108

skipif mysql # not compatible
query I rowsort label-2483
SELECT 33 + + CAST ( 75 AS INTEGER ) AS col2 FROM tab0
----
108
108
108

onlyif mysql # DIV for integer division: 
query I rowsort label-2484
SELECT DISTINCT + + 51 DIV - + col0 FROM tab1 AS cor0
----
-1
0

skipif mysql # not compatible
query I rowsort label-2484
SELECT DISTINCT + + 51 / - + col0 FROM tab1 AS cor0
----
-1
0

query I rowsort
SELECT DISTINCT 9 AS col1 FROM tab0 cor0
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-2486
SELECT DISTINCT 9 * - SUM( DISTINCT ( + col2 ) ) FROM tab2 AS cor0
----
-1089

skipif mysql # not compatible
query I rowsort label-2486
SELECT DISTINCT 9 * - SUM ( DISTINCT ( + col2 ) ) FROM tab2 AS cor0
----
-1089

query I rowsort
SELECT DISTINCT ( - 26 ) FROM tab0
----
-26

query I rowsort
SELECT ALL + - 72 AS col1 FROM tab2 AS cor0
----
-72
-72
-72

query I rowsort
SELECT ALL + - col1 * - + 1 + + + col0 FROM tab2 AS cor0
----
141
142
97

onlyif mysql # aggregate syntax: 
query I rowsort label-2490
SELECT + + MIN( DISTINCT col1 ) FROM tab2 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-2490
SELECT + + MIN ( DISTINCT col1 ) FROM tab2 AS cor0
----
51

onlyif mysql # DIV for integer division: 
query I rowsort label-2491
SELECT + 58 DIV col0 * - 88 FROM tab1 AS cor0
----
-88
0
0

skipif mysql # not compatible
query I rowsort label-2491
SELECT + 58 / col0 * - 88 FROM tab1 AS cor0
----
-88
0
0

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT NULL < 40 + col1
----

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE NOT - col0 * + col0 > NULL
----

query III rowsort
SELECT * FROM tab2 WHERE NOT col1 * 74 + - col2 NOT BETWEEN ( col1 ) AND NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col0 * + col1 + 60 - - col0 col2 FROM tab1 WHERE NOT + + 18 = - col2 * + col1 * - col2
----
4428
570
825

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2496
SELECT CAST( - + 96 AS SIGNED ) AS col0 FROM tab1
----
-96
-96
-96

skipif mysql # not compatible
query I rowsort label-2496
SELECT CAST ( - + 96 AS INTEGER ) AS col0 FROM tab1
----
-96
-96
-96

query I rowsort
SELECT ALL - col0 FROM tab0 WHERE NULL NOT BETWEEN NULL AND + col1 / 48 * + col2 * + ( + 20 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2498
SELECT + col1 + - col2 + ( col1 ) DIV + + 63 - + col2 + + col1 AS col2 FROM tab2
----
19
56
75

skipif mysql # not compatible
query I rowsort label-2498
SELECT + col1 + - col2 + ( col1 ) / + + 63 - + col2 + + col1 AS col2 FROM tab2
----
19
56
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2499
SELECT CAST( - col0 AS SIGNED ) + + 91 col2 FROM tab1
----
0
40
6

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2499
SELECT CAST ( - col0 AS INTEGER ) + + 91 col2 FROM tab1
----
0
40
6

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE col0 + - - col1 + - col1 + + col0 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL - 53 * + col2 FROM tab2
----
-1219
-2120
-3074

onlyif mysql # aggregate syntax: 
query I rowsort label-2502
SELECT ALL - COUNT( - col0 ) AS col1 FROM tab1 cor0
----
-3

skipif mysql # not compatible
query I rowsort label-2502
SELECT ALL - COUNT ( - col0 ) AS col1 FROM tab1 cor0
----
-3

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE col1 + col0 IS NULL
----

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE NOT col1 >= + col0
----
87
21
10
97
1
99

query I rowsort
SELECT DISTINCT + 0 AS col0 FROM tab2 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
0

query I rowsort
SELECT 30 / - col2 + - col1 AS col1 FROM tab1 AS cor0 WHERE - col0 + 39 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2507
SELECT + - MAX( DISTINCT - col2 ) + - COUNT( * ) FROM tab2 cor0
----
20

skipif mysql # not compatible
query I rowsort label-2507
SELECT + - MAX ( DISTINCT - col2 ) + - COUNT ( * ) FROM tab2 cor0
----
20

query I rowsort
SELECT - col1 + - - col1 * - col0 - col2 AS col0 FROM tab1 cor0
----
-4392
-489
-824

onlyif mysql # aggregate syntax: 
query I rowsort label-2509
SELECT + COUNT( * ) + + ( - 85 ) FROM tab2 AS cor0
----
-82

skipif mysql # not compatible
query I rowsort label-2509
SELECT + COUNT ( * ) + + ( - 85 ) FROM tab2 AS cor0
----
-82

query I rowsort
SELECT - 29 * - col0 * + - col1 + - + col0 FROM tab2 AS cor0
----
-142976
-145800
-68080

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2511
SELECT + 5 + + - col1 + + CAST( NULL AS DECIMAL ) * + 3 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2511
SELECT + 5 + + - col1 + + CAST ( NULL AS REAL ) * + 3 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2512
SELECT - + ( - COUNT( * ) ) + + COUNT( * ) FROM tab1 AS cor0
----
6

skipif mysql # not compatible
query I rowsort label-2512
SELECT - + ( - COUNT ( * ) ) + + COUNT ( * ) FROM tab1 AS cor0
----
6

onlyif mysql # DIV for integer division: 
query I rowsort label-2513
SELECT DISTINCT - 81 DIV + - col2 - col2 col2 FROM tab1 AS cor0
----
-58
-67
-96

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2513
SELECT DISTINCT - 81 / + - col2 - col2 col2 FROM tab1 AS cor0
----
-58
-67
-96

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2514
SELECT * FROM tab0 WHERE + - col1 * - 29 + + col2 NOT BETWEEN + - CAST( NULL AS SIGNED ) AND - 15 * - + CAST( - col2 AS SIGNED )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-2514
SELECT * FROM tab0 WHERE + - col1 * - 29 + + col2 NOT BETWEEN + - CAST ( NULL AS INTEGER ) AND - 15 * - + CAST ( - col2 AS INTEGER )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2515
SELECT ALL - col0 / + - CAST( NULL AS SIGNED ) - - col0 - - - 34 / col0 AS col2 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2515
SELECT ALL - col0 / + - CAST ( NULL AS INTEGER ) - - col0 - - - 34 / col0 AS col2 FROM tab0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2516
SELECT DISTINCT 40 - - SUM( + ( - col0 ) ) DIV COUNT( * ) FROM tab2
----
-21

skipif mysql # not compatible
query I rowsort label-2516
SELECT DISTINCT 40 - - SUM ( + ( - col0 ) ) / COUNT ( * ) FROM tab2
----
-21

query I rowsort
SELECT DISTINCT - col1 AS col2 FROM tab0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT + + 34 * + col2 * ( - col2 ) AS col1 FROM tab0 AS cor0
----
-333234
-3400
-75106

onlyif mysql # aggregate syntax: 
query I rowsort label-2519
SELECT + COUNT( ALL - - 12 ) AS col0 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-2519
SELECT + COUNT ( ALL - - 12 ) AS col0 FROM tab0 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2520
SELECT COUNT( ALL - col1 ) AS col2 FROM tab2 cor0
----
3

skipif mysql # not compatible
query I rowsort label-2520
SELECT COUNT ( ALL - col1 ) AS col2 FROM tab2 cor0
----
3

query I rowsort
SELECT DISTINCT - col2 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN NULL AND - col0
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE col2 <= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2523
SELECT DISTINCT + + SUM( ALL + + ( 53 ) ) FROM tab0 AS cor0
----
159

skipif mysql # not compatible
query I rowsort label-2523
SELECT DISTINCT + + SUM ( ALL + + ( 53 ) ) FROM tab0 AS cor0
----
159

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + + 51 col0 FROM tab2 AS cor0
----
51

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2525
SELECT ALL - CAST( NULL AS SIGNED ) + - - col1 AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2525
SELECT ALL - CAST ( NULL AS INTEGER ) + - - col1 AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2526
SELECT + + SUM( - - 1 ) col2 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2526
SELECT + + SUM ( - - 1 ) col2 FROM tab2 AS cor0
----
3

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2527
SELECT DISTINCT + 5 DIV ( + 95 ) + + MIN( ALL - 95 ) col0 FROM tab1 AS cor0
----
-95

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2527
SELECT DISTINCT + 5 / ( + 95 ) + + MIN ( ALL - 95 ) col0 FROM tab1 AS cor0
----
-95

query II rowsort
SELECT DISTINCT + + col0 AS col1, col0 + - 81 AS col1 FROM tab0 cor0
----
15
-66
87
6
97
16

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT col1 IN ( + col1, col1, + col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2530
SELECT + COUNT( * ) - 83 FROM tab0 AS cor0 WHERE NOT NULL BETWEEN NULL AND ( NULL )
----
-83

skipif mysql # not compatible
query I rowsort label-2530
SELECT + COUNT ( * ) - 83 FROM tab0 AS cor0 WHERE NOT NULL BETWEEN NULL AND ( NULL )
----
-83

onlyif mysql # DIV for integer division: 
query I rowsort label-2531
SELECT 45 DIV - col0 AS col0 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2531
SELECT 45 / - col0 AS col0 FROM tab2
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2532
SELECT - col2 FROM tab1 WHERE NOT CAST( + 89 AS SIGNED ) * - - 28 IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-2532
SELECT - col2 FROM tab1 WHERE NOT CAST ( + 89 AS INTEGER ) * - - 28 IS NOT NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2533
SELECT COUNT( + CAST( - 43 AS SIGNED ) ) * - + CAST( NULL AS SIGNED ) / 4 AS col1 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-2533
SELECT COUNT ( + CAST ( - 43 AS INTEGER ) ) * - + CAST ( NULL AS INTEGER ) / 4 AS col1 FROM tab0
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-2534
SELECT col0 DIV col0 col2 FROM tab0
----
1
1
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2534
SELECT col0 / col0 col2 FROM tab0
----
1
1
1

onlyif mysql # aggregate syntax: 
query I rowsort label-2535
SELECT DISTINCT ( + COUNT( col0 ) ) AS col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-2535
SELECT DISTINCT ( + COUNT ( col0 ) ) AS col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
3

query I rowsort
SELECT DISTINCT col2 * - - ( col1 ) AS col2 FROM tab1
----
1344
295
3196

onlyif mysql # aggregate syntax: 
query I rowsort label-2537
SELECT - MIN( DISTINCT - col0 ) FROM tab2
----
75

skipif mysql # not compatible
query I rowsort label-2537
SELECT - MIN ( DISTINCT - col0 ) FROM tab2
----
75

onlyif mysql # DIV for integer division: 
query II rowsort label-2538
SELECT col2 DIV + ( - col2 ) AS col1, col0 * col0 FROM tab1
----
-1
2601
-1
7225
-1
8281

skipif mysql # not compatible
query II rowsort label-2538
SELECT col2 / + ( - col2 ) AS col1, col0 * col0 FROM tab1
----
-1
2601
-1
7225
-1
8281

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2539
SELECT - col2 / + CAST( NULL AS SIGNED ) + - 83 - col1 FROM tab1 cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2539
SELECT - col2 / + CAST ( NULL AS INTEGER ) + - 83 - col1 FROM tab1 cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2540
SELECT ALL COUNT( * ) + - COUNT( ALL - col0 ) FROM tab2 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-2540
SELECT ALL COUNT ( * ) + - COUNT ( ALL - col0 ) FROM tab2 AS cor0
----
0

query I rowsort
SELECT ALL + 35 AS col2 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to d9b103f79c4e8f0de4b7c1c821783a29

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE col2 + + col1 >= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2543
SELECT DISTINCT - MIN( ALL 57 ) FROM tab2 AS cor0 WHERE NOT - 50 / + 33 BETWEEN + col1 AND - col0
----
-57

skipif mysql # not compatible
query I rowsort label-2543
SELECT DISTINCT - MIN ( ALL 57 ) FROM tab2 AS cor0 WHERE NOT - 50 / + 33 BETWEEN + col1 AND - col0
----
-57

query I rowsort
SELECT DISTINCT + 68 + ( + col0 ) + 63 FROM tab0 cor0
----
146
218
228

onlyif mysql # aggregate syntax: 
query I rowsort label-2545
SELECT COUNT( * ) - 66 FROM tab2 AS cor0
----
-63

skipif mysql # not compatible
query I rowsort label-2545
SELECT COUNT ( * ) - 66 FROM tab2 AS cor0
----
-63

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2546
SELECT ALL - CAST( NULL AS SIGNED ) + - col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2546
SELECT ALL - CAST ( NULL AS INTEGER ) + - col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( NOT - 14 NOT BETWEEN NULL AND 89 )
----

query I rowsort
SELECT ALL - col0 - + + col0 FROM tab2 AS cor0
----
-128
-150
-92

onlyif mysql # aggregate syntax: 
query I rowsort label-2549
SELECT ALL - 86 - - + COUNT( * ) AS col0 FROM tab2
----
-83

skipif mysql # not compatible
query I rowsort label-2549
SELECT ALL - 86 - - + COUNT ( * ) AS col0 FROM tab2
----
-83

query I rowsort
SELECT - - col0 FROM tab0 WHERE NULL IS NULL
----
15
87
97

query I rowsort
SELECT DISTINCT col0 - - 99 AS col2 FROM tab1
----
150
184
190

query I rowsort
SELECT - col1 AS col0 FROM tab2 WHERE NOT NULL IS NOT NULL
----
-51
-67
-77

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 85 * - 98 col2 FROM tab0
----
-8330
-8330
-8330

onlyif mysql # aggregate syntax: 
query I rowsort label-2554
SELECT ALL + COUNT( * ) * - - MAX( 26 ) AS col0 FROM tab0 AS cor0
----
78

skipif mysql # not compatible
query I rowsort label-2554
SELECT ALL + COUNT ( * ) * - - MAX ( 26 ) AS col0 FROM tab0 AS cor0
----
78

query I rowsort
SELECT ALL - - 49 FROM tab2 AS cor0 WHERE NOT col1 BETWEEN + + col1 + + col2 AND + 47
----
49
49
49

query I rowsort
SELECT ALL + - col0 * + - 74 * - - 11 * - col2 AS col0 FROM tab2 cor0
----
-2083840
-3540900
-861212

onlyif mysql # aggregate syntax: 
query I rowsort label-2557
SELECT ALL + MAX( ALL + 95 ) + - COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
86

skipif mysql # not compatible
query I rowsort label-2557
SELECT ALL + MAX ( ALL + 95 ) + - COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
86

onlyif mysql # DIV for integer division: 
query I rowsort label-2558
SELECT ALL - + 24 * + col1 + 61 + + 31 + - col0 DIV 79 FROM tab1 AS cor0
----
-1037
-244
-29

skipif mysql # not compatible
query I rowsort label-2558
SELECT ALL - + 24 * + col1 + 61 + + 31 + - col0 / 79 FROM tab1 AS cor0
----
-1037
-244
-29

query I rowsort
SELECT DISTINCT - ( + ( - ( + col0 ) ) ) + - - col2 FROM tab0 AS cor0
----
196
62
97

onlyif mysql # aggregate syntax: 
query I rowsort label-2560
SELECT DISTINCT - MAX( - col0 ) AS col2 FROM tab2 AS cor0
----
46

skipif mysql # not compatible
query I rowsort label-2560
SELECT DISTINCT - MAX ( - col0 ) AS col2 FROM tab2 AS cor0
----
46

query II rowsort
SELECT + 0 * - 61 * - - 34, - col2 AS col0 FROM tab2 AS cor0
----
0
-23
0
-40
0
-58

query I rowsort
SELECT - + col2 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2563
SELECT DISTINCT + SUM( - 48 ) AS col0 FROM tab2 AS cor0
----
-144

skipif mysql # not compatible
query I rowsort label-2563
SELECT DISTINCT + SUM ( - 48 ) AS col0 FROM tab2 AS cor0
----
-144

query I rowsort
SELECT - col1 + 43 * - 31 + + col0 + - col0 * - + 17 * - + col1 AS col2 FROM tab1 AS cor0
----
-13434
-73998
-8478

onlyif mysql # aggregate syntax: 
query I rowsort label-2565
SELECT DISTINCT COUNT( * ) + 48 FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-2565
SELECT DISTINCT COUNT ( * ) + 48 FROM tab1
----
51

onlyif mysql # aggregate syntax: 
query I rowsort label-2566
SELECT - 70 + - - 31 * - SUM( + col2 ) AS col1 FROM tab0
----
-4906

skipif mysql # not compatible
query I rowsort label-2566
SELECT - 70 + - - 31 * - SUM ( + col2 ) AS col1 FROM tab0
----
-4906

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2567
SELECT ALL CAST( - - col1 AS SIGNED ) FROM tab1
----
14
47
5

skipif mysql # not compatible
query I rowsort label-2567
SELECT ALL CAST ( - - col1 AS INTEGER ) FROM tab1
----
14
47
5

query I rowsort
SELECT ALL + col0 + + + ( + col2 ) FROM tab0 WHERE NOT NULL = - col1 * + - 5 + + col0
----

query I rowsort
SELECT + - col0 FROM tab1 WHERE NULL IS NULL
----
-51
-85
-91

query I rowsort
SELECT ALL - 1 * + 12 FROM tab1
----
-12
-12
-12

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2571
SELECT ALL CAST( MAX( - 22 ) AS SIGNED ) AS col1 FROM tab2
----
-22

skipif mysql # not compatible
query I rowsort label-2571
SELECT ALL CAST ( MAX ( - 22 ) AS INTEGER ) AS col1 FROM tab2
----
-22

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2572
SELECT DISTINCT * FROM tab0 WHERE NULL > + col0 * + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-2572
SELECT DISTINCT * FROM tab0 WHERE NULL > + col0 * + CAST ( NULL AS INTEGER )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2573
SELECT - + 52 / - COUNT( * ) * - - ( + SUM( ALL - + col0 ) ) AS col2 FROM tab0 WHERE NULL <> - 41
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL handles NULL in DIV/0 by differently
query I rowsort label-2573
SELECT - + 52 / - COUNT ( * ) * - - ( + SUM ( ALL - + col0 ) ) AS col2 FROM tab0 WHERE NULL <> - 41
----
NULL

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col0 BETWEEN NULL AND + 56 * + + col2 * col1
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE - col1 * 64 * + ( col0 ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT - col2 - + - ( - col0 ) AS col1 FROM tab0 AS cor0
----
-196
-62
-97

onlyif mysql # aggregate syntax: 
query I rowsort label-2577
SELECT ALL - 30 + + COUNT( * ) AS col0 FROM tab0 AS cor0
----
-27

skipif mysql # not compatible
query I rowsort label-2577
SELECT ALL - 30 + + COUNT ( * ) AS col0 FROM tab0 AS cor0
----
-27

onlyif mysql # aggregate syntax: 
query I rowsort label-2578
SELECT - MIN( + + col1 ) FROM tab2 cor0
----
-51

skipif mysql # not compatible
query I rowsort label-2578
SELECT - MIN ( + + col1 ) FROM tab2 cor0
----
-51

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-2579
SELECT + + 30 AS col1, - MAX( ALL + - col1 ) DIV - COUNT( * ) AS col2 FROM tab0 AS cor0
----
30
0

skipif mysql # not compatible
query II rowsort label-2579
SELECT + + 30 AS col1, - MAX ( ALL + - col1 ) / - COUNT ( * ) AS col2 FROM tab0 AS cor0
----
30
0

query I rowsort
SELECT DISTINCT - - col0 AS col2 FROM tab1 WHERE NOT col1 IS NULL
----
51
85
91

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE NOT - ( + - ( col0 ) ) + col1 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT - + 15 AS col0 FROM tab0 AS cor0
----
-15

query II rowsort
SELECT DISTINCT - - col0 + col2 AS col1, + col1 * - col0 FROM tab2 AS cor0
----
104
-4928
133
-5025
69
-2346

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - - ( col0 ) col1 FROM tab0 AS cor0
----
15
87
97

query II rowsort
SELECT - + 70 + + + 82 AS col0, + 24 AS col2 FROM tab2 cor0
----
12
24
12
24
12
24

query I rowsort
SELECT + + 53 AS col2 FROM tab0 AS cor0
----
53
53
53

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2587
SELECT CAST( NULL AS SIGNED ) AS col1 FROM tab1 AS cor0 WHERE NOT - col2 + - col1 * col0 IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-2587
SELECT CAST ( NULL AS INTEGER ) AS col1 FROM tab1 AS cor0 WHERE NOT - col2 + - col1 * col0 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 54 col2 FROM tab2 cor0
----
54
54
54

query I rowsort
SELECT ALL 72 * 29 FROM tab1 AS cor0
----
2088
2088
2088

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + ( - 1 ) col2 FROM tab2
----
-1
-1
-1

query II rowsort
SELECT ALL + col0, 69 FROM tab1
----
51
69
85
69
91
69

query II rowsort
SELECT ALL - 95, 9 AS col2 FROM tab0
----
-95
9
-95
9
-95
9

onlyif mysql # aggregate syntax: 
query I rowsort label-2593
SELECT DISTINCT COUNT( DISTINCT + col0 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2593
SELECT DISTINCT COUNT ( DISTINCT + col0 ) FROM tab1
----
3

query I rowsort
SELECT DISTINCT col0 + col2 + + - col1 AS col0 FROM tab0 WHERE NOT - 12 >= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2595
SELECT ALL - ( - SUM( + + col0 ) ) AS col2 FROM tab0
----
199

skipif mysql # not compatible
query I rowsort label-2595
SELECT ALL - ( - SUM ( + + col0 ) ) AS col2 FROM tab0
----
199

onlyif mysql # DIV for integer division: 
query I rowsort label-2596
SELECT DISTINCT 61 DIV - - 56 FROM tab1 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-2596
SELECT DISTINCT 61 / - - 56 FROM tab1 AS cor0
----
1

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT + col1 * 64 <= ( + 6 * - col0 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL BETWEEN - 18 * - col2 AND NULL
----

query I rowsort
SELECT - 60 + - ( - 35 ) AS col1 FROM tab1
----
-25
-25
-25

onlyif mysql # aggregate syntax: 
query I rowsort label-2600
SELECT + COUNT( * ) * ( COUNT( + col2 ) ) AS col2 FROM tab0
----
9

skipif mysql # not compatible
query I rowsort label-2600
SELECT + COUNT ( * ) * ( COUNT ( + col2 ) ) AS col2 FROM tab0
----
9

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2601
SELECT CAST( NULL AS SIGNED ) * - 77 AS col0 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2601
SELECT CAST ( NULL AS INTEGER ) * - 77 AS col0 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2602
SELECT CAST( NULL AS DECIMAL ) * - col1 AS col0 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2602
SELECT CAST ( NULL AS REAL ) * - col1 AS col0 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT - col1 * 59 FROM tab1
----
-2773
-295
-826

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE ( col0 ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-2605
SELECT MAX( col2 ) AS col1 FROM tab1
----
96

skipif mysql # not compatible
query I rowsort label-2605
SELECT MAX ( col2 ) AS col1 FROM tab1
----
96

onlyif mysql # aggregate syntax: 
query I rowsort label-2606
SELECT ALL 78 * COUNT( * ) + - COUNT( * ) FROM tab2
----
231

skipif mysql # not compatible
query I rowsort label-2606
SELECT ALL 78 * COUNT ( * ) + - COUNT ( * ) FROM tab2
----
231

query I rowsort
SELECT + col1 + 40 AS col1 FROM tab2 WHERE ( - col1 ) IS NOT NULL
----
107
117
91

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2608
SELECT 25 + + CAST( NULL AS DECIMAL ) AS col1 FROM tab0 WHERE NOT NULL IS NOT NULL
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2608
SELECT 25 + + CAST ( NULL AS REAL ) AS col1 FROM tab0 WHERE NOT NULL IS NOT NULL
----
NULL
NULL
NULL

query I rowsort
SELECT ALL - col2 * 17 FROM tab2
----
-391
-680
-986

query I rowsort
SELECT DISTINCT col0 * + col2 FROM tab0 WHERE NOT NULL IS NOT NULL
----
705
870
9603

onlyif mysql # aggregate syntax: 
query I rowsort label-2611
SELECT + COUNT( * ) + 16 AS col2 FROM tab1
----
19

skipif mysql # not compatible
query I rowsort label-2611
SELECT + COUNT ( * ) + 16 AS col2 FROM tab1
----
19

onlyif mysql # aggregate syntax: 
query I rowsort label-2612
SELECT ALL SUM( col0 ) AS col1 FROM tab0
----
199

skipif mysql # not compatible
query I rowsort label-2612
SELECT ALL SUM ( col0 ) AS col1 FROM tab0
----
199

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2613
SELECT DISTINCT * FROM tab0 WHERE NOT NULL IN ( CAST( NULL AS SIGNED ) * 33 + + col1 )
----

skipif mysql # not compatible
query III rowsort label-2613
SELECT DISTINCT * FROM tab0 WHERE NOT NULL IN ( CAST ( NULL AS INTEGER ) * 33 + + col1 )
----

query I rowsort
SELECT - col2 FROM tab1 WHERE NOT ( col2 ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2615
SELECT COUNT( * ) * - 69 FROM tab0
----
-207

skipif mysql # not compatible
query I rowsort label-2615
SELECT COUNT ( * ) * - 69 FROM tab0
----
-207

query I rowsort
SELECT DISTINCT + col1 FROM tab2 WHERE ( col2 ) <= ( + 4 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2617
SELECT COUNT( * ) * MIN( col2 ) AS col1 FROM tab1
----
177

skipif mysql # not compatible
query I rowsort label-2617
SELECT COUNT ( * ) * MIN ( col2 ) AS col1 FROM tab1
----
177

query I rowsort
SELECT - 52 * + col2 + col1 FROM tab1
----
-3063
-3489
-4978

query I rowsort
SELECT - col1 * + col2 + + 75 AS col0 FROM tab0
----
-135
-24
-3732

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NULL <> ( NULL )
----

query I rowsort
SELECT 65 + - 17 AS col0 FROM tab0 cor0
----
48
48
48

onlyif mysql # aggregate syntax: 
query I rowsort label-2622
SELECT ALL + COUNT( * ) + MIN( 21 ) FROM tab0 AS cor0
----
24

skipif mysql # not compatible
query I rowsort label-2622
SELECT ALL + COUNT ( * ) + MIN ( 21 ) FROM tab0 AS cor0
----
24

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE ( + col1 ) >= NULL
----

query I rowsort
SELECT ALL 39 - - 78 * - 66 AS col2 FROM tab1 AS cor0
----
-5109
-5109
-5109

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NULL >= col0
----

query I rowsort
SELECT col1 + 90 AS col2 FROM tab0 cor0
----
111
171
91

query I rowsort
SELECT DISTINCT - col1 FROM tab1 AS cor0 WHERE NOT ( + col2 ) <= NULL
----

query III rowsort
SELECT * FROM tab2 cor0 WHERE NOT ( 45 * 99 ) IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2629
SELECT 20 * - col2 AS col1 FROM tab1 AS cor0 WHERE NOT CAST( 9 AS SIGNED ) + - ( + col1 ) IS NULL
----
-1180
-1360
-1920

skipif mysql # not compatible
query I rowsort label-2629
SELECT 20 * - col2 AS col1 FROM tab1 AS cor0 WHERE NOT CAST ( 9 AS INTEGER ) + - ( + col1 ) IS NULL
----
-1180
-1360
-1920

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT + col0 < NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2631
SELECT + SUM( - col0 ) AS col2 FROM tab0 AS cor0
----
-199

skipif mysql # not compatible
query I rowsort label-2631
SELECT + SUM ( - col0 ) AS col2 FROM tab0 AS cor0
----
-199

query I rowsort
SELECT DISTINCT - 84 AS col1 FROM tab1 AS cor0 WHERE col0 IS NOT NULL
----
-84

onlyif mysql # DIV for integer division: 
query I rowsort label-2633
SELECT col1 DIV + + 90 col0 FROM tab2
----
0
0
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2633
SELECT col1 / + + 90 col0 FROM tab2
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-2634
SELECT - SUM( ALL col2 ) FROM tab0
----
-156

skipif mysql # not compatible
query I rowsort label-2634
SELECT - SUM ( ALL col2 ) FROM tab0
----
-156

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - ( - 86 ) * col0 col2 FROM tab0 WHERE NULL IS NULL
----
1290
7482
8342

query I rowsort
SELECT + 59 * - 82 * + col1 AS col0 FROM tab0
----
-101598
-391878
-4838

onlyif mysql # aggregate syntax: 
query I rowsort label-2637
SELECT COUNT( ALL col0 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2637
SELECT COUNT ( ALL col0 ) FROM tab1
----
3

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( col0 ) NOT BETWEEN ( + col0 / 19 ) AND ( NULL )
----

query I rowsort
SELECT DISTINCT - ( 28 ) FROM tab1 WHERE ( + 92 ) NOT BETWEEN + ( + 8 ) AND ( + col2 )
----
-28

query I rowsort
SELECT DISTINCT + col1 * + + 60 AS col1 FROM tab1
----
2820
300
840

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT + col1 IS NOT NULL
----

query I rowsort
SELECT - col1 FROM tab1 WHERE NOT - 86 IN ( 47 * - 49 + 22 )
----
-14
-47
-5

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2643
SELECT ALL 45 * - CAST( NULL AS SIGNED ) FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2643
SELECT ALL 45 * - CAST ( NULL AS INTEGER ) FROM tab0
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2644
SELECT ALL + - CAST( NULL AS SIGNED ) * - col2 * + ( + 26 / col1 ) FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2644
SELECT ALL + - CAST ( NULL AS INTEGER ) * - col2 * + ( + 26 / col1 ) FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT 0 * - - col0 AS col0 FROM tab2 AS cor0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-2646
SELECT ALL - MAX( + col2 ) FROM tab0 AS cor0
----
-99

skipif mysql # not compatible
query I rowsort label-2646
SELECT ALL - MAX ( + col2 ) FROM tab0 AS cor0
----
-99

query I rowsort
SELECT DISTINCT 20 AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
20

onlyif mysql # aggregate syntax: 
query I rowsort label-2648
SELECT ALL MIN( DISTINCT col1 ) AS col0 FROM tab2
----
51

skipif mysql # not compatible
query I rowsort label-2648
SELECT ALL MIN ( DISTINCT col1 ) AS col0 FROM tab2
----
51

query I rowsort
SELECT DISTINCT + col1 * col2 * col0 AS col0 FROM tab1
----
25075
290836
68544

query I rowsort
SELECT DISTINCT + + 33 AS col1 FROM ( tab1 AS cor0 CROSS JOIN tab2 AS cor1 )
----
33

query I rowsort
SELECT DISTINCT - ( AVG ( 68 ) ) FROM tab1 WHERE ( + 98 + + col0 ) IS NULL
----
NULL

query I rowsort
SELECT ALL 42 * - col1 FROM tab1 AS cor0
----
-1974
-210
-588

query I rowsort
SELECT ALL 54 + col2 + + col1 + - col2 FROM tab0 cor0
----
135
55
75

onlyif mysql # DIV for integer division: 
query I rowsort label-2654
SELECT ALL - col0 DIV col0 FROM tab2 cor0 WHERE - col0 NOT BETWEEN ( + col1 + - 0 ) AND ( NULL )
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-2654
SELECT ALL - col0 / col0 FROM tab2 cor0 WHERE - col0 NOT BETWEEN ( + col1 + - 0 ) AND ( NULL )
----
-1
-1
-1

query III rowsort
SELECT ALL * FROM tab2 cor0 WHERE - col2 < ( + - 1 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 36 + - ( - col1 ) + col0 col0 FROM tab0 AS cor0
----
132
134
144

query I rowsort
SELECT DISTINCT col0 + + + 4 FROM tab1 AS cor0
----
55
89
95

query I rowsort
SELECT ALL col0 + col1 + - col2 + - col2 AS col1 FROM tab0 AS cor0
----
-100
2
88

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2659
SELECT ALL * FROM tab2 WHERE NOT 30 NOT BETWEEN col2 AND ( CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-2659
SELECT ALL * FROM tab2 WHERE NOT 30 NOT BETWEEN col2 AND ( CAST ( NULL AS INTEGER ) )
----

query I rowsort
SELECT col1 AS col1 FROM tab0 WHERE NOT - col2 + - 12 * 91 IS NOT NULL AND ( + ( - col1 ) ) <= - 6
----

query I rowsort
SELECT ALL 15 * + - col2 FROM tab1
----
-1020
-1440
-885

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2662
SELECT * FROM tab1 WHERE + CAST( - + col0 AS SIGNED ) + col1 <> - col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-2662
SELECT * FROM tab1 WHERE + CAST ( - + col0 AS INTEGER ) + col1 <> - col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2663
SELECT ALL col1 * col0 * - + CAST( NULL AS SIGNED ) FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2663
SELECT ALL col1 * col0 * - + CAST ( NULL AS INTEGER ) FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2664
SELECT DISTINCT COUNT( * ) DIV ( + SUM( + - 81 ) ) FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-2664
SELECT DISTINCT COUNT ( * ) / ( + SUM ( + - 81 ) ) FROM tab1
----
0

query I rowsort
SELECT DISTINCT col2 FROM tab0 WHERE NOT - col1 NOT BETWEEN ( - 69 ) AND + col1 + 60
----
10
99

onlyif mysql # aggregate syntax: 
query I rowsort label-2666
SELECT ALL - ( + + COUNT( * ) ) * COUNT( * ) FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-2666
SELECT ALL - ( + + COUNT ( * ) ) * COUNT ( * ) FROM tab1
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-2667
SELECT + MIN( ( 23 ) ) + - MIN( col1 + col0 ) FROM tab1 WHERE ( NULL ) NOT IN ( col1 * col0 )
----
NULL

skipif mysql # not compatible
query I rowsort label-2667
SELECT + MIN ( ( 23 ) ) + - MIN ( col1 + col0 ) FROM tab1 WHERE ( NULL ) NOT IN ( col1 * col0 )
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2668
SELECT DISTINCT - col2 / - CAST( NULL AS SIGNED ) * - col1 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-2668
SELECT DISTINCT - col2 / - CAST ( NULL AS INTEGER ) * - col1 FROM tab1
----
NULL

query II rowsort
SELECT col2 * + + col1, 99 AS col1 FROM tab1
----
1344
99
295
99
3196
99

query I rowsort
SELECT 16 AS col0 FROM tab1 WHERE ( - col2 ) IS NOT NULL
----
16
16
16

onlyif mysql # aggregate syntax: 
query I rowsort label-2671
SELECT 85 * SUM( ( - col2 ) ) FROM tab2
----
-10285

skipif mysql # not compatible
query I rowsort label-2671
SELECT 85 * SUM ( ( - col2 ) ) FROM tab2
----
-10285

query I rowsort
SELECT ALL - ( - 80 ) AS col1 FROM tab0
----
80
80
80

query I rowsort
SELECT DISTINCT - + col0 FROM tab1 AS cor0 WHERE NULL <= + 9
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-2674
SELECT * FROM tab2 AS cor0 WHERE CAST( NULL AS DECIMAL ) IN ( + - 33 )
----

skipif mysql # not compatible
query III rowsort label-2674
SELECT * FROM tab2 AS cor0 WHERE CAST ( NULL AS REAL ) IN ( + - 33 )
----

query I rowsort
SELECT ALL col1 + - 2 + + ( + col2 ) * + col2 FROM tab1 AS cor0
----
3484
4669
9228

query I rowsort
SELECT ALL col0 AS col1 FROM tab0 AS cor0 WHERE 71 * + + col1 <> + col2 + 61
----
15
87
97

query I rowsort
SELECT DISTINCT col2 * + col2 + - col2 FROM tab2 cor0 WHERE 15 NOT IN ( + + col2 * 51 + - 94 - - col1 )
----
1560
3306
506

query I rowsort
SELECT DISTINCT + 36 + 39 + + ( col0 ) AS col2 FROM tab0 AS cor0
----
162
172
90

onlyif mysql # aggregate syntax: 
query I rowsort label-2679
SELECT DISTINCT - SUM( ALL + + col1 ) - - COUNT( * ) FROM tab2 AS cor0
----
-192

skipif mysql # not compatible
query I rowsort label-2679
SELECT DISTINCT - SUM ( ALL + + col1 ) - - COUNT ( * ) FROM tab2 AS cor0
----
-192

onlyif mysql # DIV for integer division: 
query I rowsort label-2680
SELECT + 75 * col2 - + + 42 * + ( 36 ) + col1 DIV + col2 AS col1 FROM tab1 AS cor0
----
2913
3588
5688

skipif mysql # not compatible
query I rowsort label-2680
SELECT + 75 * col2 - + + 42 * + ( 36 ) + col1 / + col2 AS col1 FROM tab1 AS cor0
----
2913
3588
5688

onlyif mysql # aggregate syntax: 
query I rowsort label-2681
SELECT DISTINCT + COUNT( * ) FROM tab2 AS cor0 WHERE NULL < ( 53 * col0 )
----
0

skipif mysql # not compatible
query I rowsort label-2681
SELECT DISTINCT + COUNT ( * ) FROM tab2 AS cor0 WHERE NULL < ( 53 * col0 )
----
0

query III rowsort
SELECT * FROM tab2 WHERE - col1 * + col0 * - + 68 / - col0 BETWEEN ( NULL ) AND NULL
----

query I rowsort
SELECT DISTINCT 21 + + + 49 AS col2 FROM tab1
----
70

query II rowsort
SELECT DISTINCT - col1 * - col1 - - 32 AS col2, col2 + - 20 FROM tab0
----
33
79
473
-10
6593
27

query I rowsort
SELECT col1 * + + col1 AS col2 FROM tab0 WHERE NOT col2 <= ( NULL )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-2686
SELECT ALL 89 DIV - col2 AS col0 FROM tab2
----
-1
-2
-3

skipif mysql # not compatible
query I rowsort label-2686
SELECT ALL 89 / - col2 AS col0 FROM tab2
----
-1
-2
-3

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN + col0 * - 15 + + + 99 * col0 AND ( col2 )
----

query I rowsort
SELECT - + 0 * - 57 * col2 AS col0 FROM tab0 AS cor0
----
0
0
0

query I rowsort
SELECT ALL ( + + 11 ) FROM tab2 AS cor0
----
11
11
11

query I rowsort
SELECT + - 31 * - ( + col0 ) + + col2 AS col0 FROM tab0 AS cor0
----
2707
3106
512

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2691
SELECT - SUM( DISTINCT + CAST( NULL AS SIGNED ) ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2691
SELECT - SUM ( DISTINCT + CAST ( NULL AS INTEGER ) ) FROM tab1 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query II rowsort label-2692
SELECT DISTINCT COUNT( * ) AS col2, COUNT( * ) AS col1 FROM tab1 AS cor0
----
3
3

skipif mysql # not compatible
query II rowsort label-2692
SELECT DISTINCT COUNT ( * ) AS col2, COUNT ( * ) AS col1 FROM tab1 AS cor0
----
3
3

query I rowsort
SELECT - - col2 * + - col1 FROM tab1 AS cor0
----
-1344
-295
-3196

query I rowsort
SELECT + - 47 FROM tab2 cor0
----
-47
-47
-47

onlyif mysql # DIV for integer division: 
query II rowsort label-2695
SELECT 48 AS col1, + 49 DIV + - col0 AS col0 FROM tab0 cor0
----
48
-3
48
0
48
0

skipif mysql # not compatible
query II rowsort label-2695
SELECT 48 AS col1, + 49 / + - col0 AS col0 FROM tab0 cor0
----
48
-3
48
0
48
0

query I rowsort
SELECT + col1 * col1 * + col1 * + col1 * col1 + col0 FROM tab1 AS cor0
----
229345098
3210
537875

onlyif mysql # aggregate syntax: 
query I rowsort label-2697
SELECT MIN( DISTINCT - col0 ) AS col2 FROM tab1
----
-91

skipif mysql # not compatible
query I rowsort label-2697
SELECT MIN ( DISTINCT - col0 ) AS col2 FROM tab1
----
-91

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT ( col1 ) NOT IN ( + col0 * col2 * - col0 )
----

query I rowsort
SELECT - col1 AS col2 FROM tab2 WHERE NOT + 1 = ( + col2 )
----
-51
-67
-77

query I rowsort
SELECT DISTINCT col2 * 85 FROM tab0
----
3995
8415
850

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2701
SELECT DISTINCT - 87 * + 84 * - + ( CAST( NULL AS SIGNED ) ) col1, - col2 AS col0 FROM tab2
----
NULL
-23
NULL
-40
NULL
-58

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2701
SELECT DISTINCT - 87 * + 84 * - + ( CAST ( NULL AS INTEGER ) ) col1, - col2 AS col0 FROM tab2
----
NULL
-23
NULL
-40
NULL
-58

query III rowsort
SELECT * FROM tab1 WHERE NOT + col2 * - + 41 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT + 49 * col2 FROM tab2 WHERE + ( + col1 ) + + col2 NOT BETWEEN ( - + col2 ) AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2704
SELECT COUNT( * ) AS col0 FROM tab2, tab1 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-2704
SELECT COUNT ( * ) AS col0 FROM tab2, tab1 AS cor0
----
9

query II rowsort
SELECT ALL col1, col0 + + col1 FROM tab1
----
14
65
47
138
5
90

query I rowsort
SELECT - + 53 AS col2 FROM tab1 AS cor0
----
-53
-53
-53

query I rowsort
SELECT DISTINCT + ( - 1 ) FROM tab0 AS cor0
----
-1

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2708
SELECT DISTINCT - - SUM( - - CAST( - 92 AS SIGNED ) ) col0 FROM tab1 AS cor0
----
-276

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2708
SELECT DISTINCT - - SUM ( - - CAST ( - 92 AS INTEGER ) ) col0 FROM tab1 AS cor0
----
-276

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT NULL > + col2
----

query II rowsort
SELECT DISTINCT col1, col1 FROM tab1 AS cor0
----
14
14
47
47
5
5

query I rowsort
SELECT ALL + col2 * + col1 * - 22 * + - col1 FROM tab0
----
2178
6784074
97020

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-2712
SELECT DISTINCT * FROM tab2 WHERE NOT - CAST( NULL AS DECIMAL ) + + - col1 NOT IN ( - col2, - 9 / 99 )
----

skipif mysql # not compatible
query III rowsort label-2712
SELECT DISTINCT * FROM tab2 WHERE NOT - CAST ( NULL AS REAL ) + + - col1 NOT IN ( - col2, - 9 / 99 )
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT ( NULL ) > - col2 * ( col2 )
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE 28 * + 34 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-2715
SELECT ALL + 32 + 96 - + 76 + - 16 + COUNT( * ) FROM tab0 AS cor0
----
39

skipif mysql # not compatible
query I rowsort label-2715
SELECT ALL + 32 + 96 - + 76 + - 16 + COUNT ( * ) FROM tab0 AS cor0
----
39

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE col1 - + + 91 / - 45 * col0 * + col1 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - - 81 + + col2 col0 FROM tab1 AS cor0 WHERE NOT ( col1 ) IN ( + 50 * - + col2 + 60, 81 )
----
140
149
177

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col0 + - ( - + col2 ) AS col2, col2 col1 FROM tab1
----
144
59
147
96
159
68

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2719
SELECT ALL CAST( NULL AS SIGNED ) - + CAST( col1 AS SIGNED ) * - col1 AS col1 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2719
SELECT ALL CAST ( NULL AS INTEGER ) - + CAST ( col1 AS INTEGER ) * - col1 AS col1 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2720
SELECT 75 - + - COUNT( * ) + - - 90 * + 42 * + - 47 AS col0 FROM tab1
----
-177582

skipif mysql # not compatible
query I rowsort label-2720
SELECT 75 - + - COUNT ( * ) + - - 90 * + 42 * + - 47 AS col0 FROM tab1
----
-177582

query I rowsort
SELECT DISTINCT 12 - + col0 FROM tab0
----
-3
-75
-85

onlyif mysql # aggregate syntax: 
query I rowsort label-2722
SELECT ALL + COUNT( ALL + col0 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2722
SELECT ALL + COUNT ( ALL + col0 ) FROM tab1
----
3

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-2723
SELECT - CAST( - col2 AS SIGNED ) DIV - col1 + col2 + 12 DIV + - col2 + - col1 AS col2 FROM tab1
----
20
43
76

skipif mysql # not compatible
query I rowsort label-2723
SELECT - CAST ( - col2 AS INTEGER ) / - col1 + col2 + 12 / + - col2 + - col1 AS col2 FROM tab1
----
20
43
76

query I rowsort
SELECT - col1 + + + ( + + ( + col1 ) ) AS col0 FROM tab2
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2725
SELECT 6 + + CAST( NULL AS SIGNED ) col2 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2725
SELECT 6 + + CAST ( NULL AS INTEGER ) col2 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-2726
SELECT DISTINCT COUNT( * ) AS col1, - COUNT( ALL CAST( + + col1 AS SIGNED ) ) FROM tab0
----
3
-3

skipif mysql # not compatible
query II rowsort label-2726
SELECT DISTINCT COUNT ( * ) AS col1, - COUNT ( ALL CAST ( + + col1 AS INTEGER ) ) FROM tab0
----
3
-3

query I rowsort
SELECT - 19 / - + col1 * - ( + col2 ) AS col2 FROM tab1 WHERE NULL IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 2 + - col2 col0 FROM tab1 WHERE NOT NULL <> ( - col2 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - ( 69 ) col2 FROM tab1 AS cor0
----
-69

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT NULL > + col0 * + ( + - col1 ) - col0
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE + col2 - + 16 < - - 38 + col2 * - + col1
----

query III rowsort
SELECT * FROM tab2 WHERE NOT NULL IN ( + 17 * + 86 + + + col0 * + col1 + - col1, - col0 )
----

query I rowsort
SELECT ALL - 68 * - - col2 FROM tab2
----
-1564
-2720
-3944

onlyif mysql # aggregate syntax: 
query I rowsort label-2734
SELECT DISTINCT COUNT( * ) * + 12 FROM tab1
----
36

skipif mysql # not compatible
query I rowsort label-2734
SELECT DISTINCT COUNT ( * ) * + 12 FROM tab1
----
36

onlyif mysql # DIV for integer division: 
query II rowsort label-2735
SELECT DISTINCT + col2 DIV + col0, - col1 AS col1 FROM tab1
----
0
-47
0
-5
1
-14

skipif mysql # not compatible
query II rowsort label-2735
SELECT DISTINCT + col2 / + col0, - col1 AS col1 FROM tab1
----
0
-47
0
-5
1
-14

query I rowsort
SELECT - ( - 95 ) FROM tab2
----
95
95
95

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + - col2 + + col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 23 * col0 * + col1 col0 FROM tab0 AS cor0
----
2231
27945
42021

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2739
SELECT + + MIN( DISTINCT + col1 ) * 72 DIV + + COUNT( * ) FROM tab1 AS cor0
----
120

skipif mysql # not compatible
query I rowsort label-2739
SELECT + + MIN ( DISTINCT + col1 ) * 72 / + + COUNT ( * ) FROM tab1 AS cor0
----
120

onlyif mysql # DIV for integer division: 
query I rowsort label-2740
SELECT - col1 DIV + ( col1 ) + col0 AS col2 FROM tab0 AS cor0
----
14
86
96

skipif mysql # not compatible
query I rowsort label-2740
SELECT - col1 / + ( col1 ) + col0 AS col2 FROM tab0 AS cor0
----
14
86
96

onlyif mysql # DIV for integer division: 
query I rowsort label-2741
SELECT ALL + col2 DIV + - 42 FROM tab1 AS cor0
----
-1
-1
-2

skipif mysql # not compatible
query I rowsort label-2741
SELECT ALL + col2 / + - 42 FROM tab1 AS cor0
----
-1
-1
-2

query I rowsort
SELECT - col0 * - + 24 * + 88 AS col0 FROM tab2 AS cor0
----
135168
158400
97152

query I rowsort
SELECT ( + 45 ) * col1 FROM tab2
----
2295
3015
3465

onlyif mysql # aggregate syntax: 
query I rowsort label-2744
SELECT 30 * + + COUNT( * ) AS col2 FROM tab0 WHERE NOT ( + 42 ) IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-2744
SELECT 30 * + + COUNT ( * ) AS col2 FROM tab0 WHERE NOT ( + 42 ) IS NOT NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-2745
SELECT DISTINCT + MIN( + col2 ) FROM tab2
----
23

skipif mysql # not compatible
query I rowsort label-2745
SELECT DISTINCT + MIN ( + col2 ) FROM tab2
----
23

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL = + col1 * + col1
----

query I rowsort
SELECT DISTINCT col0 AS col2 FROM tab2 AS cor0 WHERE NULL BETWEEN - col1 AND + col0
----

query III rowsort
SELECT * FROM tab2 WHERE - col2 * + col0 NOT IN ( 49 * - col2 - col0, col2 + col0 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-2749
SELECT - 18 * + COUNT( * ) col0 FROM tab2
----
-54

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2749
SELECT - 18 * + COUNT ( * ) col0 FROM tab2
----
-54

onlyif mysql # aggregate syntax: 
query I rowsort label-2750
SELECT DISTINCT + 42 + MIN( ALL col0 ) FROM tab1
----
93

skipif mysql # not compatible
query I rowsort label-2750
SELECT DISTINCT + 42 + MIN ( ALL col0 ) FROM tab1
----
93

query I rowsort
SELECT col2 + - 66 * col2 AS col0 FROM tab1 AS cor0
----
-3835
-4420
-6240

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 51 col0 FROM tab0 cor0
----
51

query I rowsort
SELECT col0 * col0 * + col1 + - col0 AS col0 FROM tab0 AS cor0
----
158862
18210
9312

query I rowsort
SELECT ALL - col1 + - + 98 + + col1 AS col0 FROM tab2 AS cor0
----
-98
-98
-98

query I rowsort
SELECT DISTINCT col1 - - 3 + - 35 FROM tab1 AS cor0
----
-18
-27
15

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NULL BETWEEN col2 AND ( + col1 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2757
SELECT + CAST( NULL AS SIGNED ) + + COUNT( * ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2757
SELECT + CAST ( NULL AS INTEGER ) + + COUNT ( * ) FROM tab0 AS cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2758
SELECT ALL + CAST( NULL AS SIGNED ) + ( ( col1 ) ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2758
SELECT ALL + CAST ( NULL AS INTEGER ) + ( ( col1 ) ) FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT - col1 * 38 FROM tab1 AS cor0 WHERE - col0 IS NULL
----

query I rowsort
SELECT - + 31 + - col0 AS col0 FROM tab1 AS cor0
----
-116
-122
-82

onlyif mysql # aggregate syntax: 
query I rowsort label-2761
SELECT + COUNT( * ) + - + COUNT( * ) col1 FROM tab2 AS cor0
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2761
SELECT + COUNT ( * ) + - + COUNT ( * ) col1 FROM tab2 AS cor0
----
0

query I rowsort
SELECT ALL - col2 - + col1 + + 21 * + 44 FROM tab0 AS cor0
----
796
824
893

query I rowsort
SELECT DISTINCT + - col2 FROM tab2 AS cor0 WHERE ( NULL ) BETWEEN ( 14 ) AND 26
----

query I rowsort
SELECT + col2 + - col1 + col0 * col1 FROM tab0 AS cor0
----
1181
1816
195

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE + + 12 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL - 71 - + 0 + - + col2 AS col0 FROM tab2
----
-111
-129
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-2767
SELECT COUNT( * ) * - - MAX( 33 ) FROM tab2
----
99

skipif mysql # not compatible
query I rowsort label-2767
SELECT COUNT ( * ) * - - MAX ( 33 ) FROM tab2
----
99

query I rowsort
SELECT - col2 - - col2 + 4 FROM tab0 AS cor0
----
4
4
4

query I rowsort
SELECT - 57 - + 5 FROM tab1 cor0
----
-62
-62
-62

query I rowsort
SELECT ( 3 ) AS col0 FROM tab2 AS cor0
----
3
3
3

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2771
SELECT DISTINCT - MAX( col1 ) DIV ( COUNT( * ) ) FROM tab2 AS cor0
----
-25

skipif mysql # not compatible
query I rowsort label-2771
SELECT DISTINCT - MAX ( col1 ) / ( COUNT ( * ) ) FROM tab2 AS cor0
----
-25

query I rowsort
SELECT DISTINCT - 12 AS col1 FROM tab0 cor0 WHERE NULL >= 39
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 44 col1 FROM tab0 AS cor0 WHERE NOT NULL >= + col2
----

query I rowsort
SELECT ALL - col0 * - 15 AS col2 FROM tab2 AS cor0
----
1125
690
960

query I rowsort
SELECT + 87 * + + 78 AS col2 FROM tab2 cor0
----
6786
6786
6786

onlyif mysql # DIV for integer division: 
query I rowsort label-2776
SELECT col0 DIV - + col2 col1 FROM tab2 AS cor0
----
-1
-1
-2

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2776
SELECT col0 / - + col2 col1 FROM tab2 AS cor0
----
-1
-1
-2

onlyif mysql # DIV for integer division: 
query I rowsort label-2777
SELECT DISTINCT col0 DIV + col2 + + 53 + col2 FROM tab0 AS cor0
----
100
152
71

skipif mysql # not compatible
query I rowsort label-2777
SELECT DISTINCT col0 / + col2 + + 53 + col2 FROM tab0 AS cor0
----
100
152
71

query I rowsort
SELECT ALL - + 41 FROM tab2 AS cor0 WHERE NOT - col2 IS NULL
----
-41
-41
-41

onlyif mysql # DIV for integer division: 
query I rowsort label-2779
SELECT ALL + col2 DIV - + 95 AS col0 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2779
SELECT ALL + col2 / - + 95 AS col0 FROM tab2 AS cor0
----
0
0
0

onlyif mysql # aggregate syntax: 
query II rowsort label-2780
SELECT ALL MAX( - + col0 ) AS col0, COUNT( * ) AS col1 FROM tab0
----
-15
3

skipif mysql # not compatible
query II rowsort label-2780
SELECT ALL MAX ( - + col0 ) AS col0, COUNT ( * ) AS col1 FROM tab0
----
-15
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2781
SELECT DISTINCT - SUM( ALL + ( - ( + col1 ) ) ) AS col2 FROM tab0
----
103

skipif mysql # not compatible
query I rowsort label-2781
SELECT DISTINCT - SUM ( ALL + ( - ( + col1 ) ) ) AS col2 FROM tab0
----
103

onlyif mysql # DIV for integer division: 
query I rowsort label-2782
SELECT - ( - col1 ) DIV + ( + col2 ) AS col1 FROM tab0
----
0
1
2

skipif mysql # not compatible
query I rowsort label-2782
SELECT - ( - col1 ) / + ( + col2 ) AS col1 FROM tab0
----
0
1
2

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2783
SELECT ALL + - 1 * - COUNT( DISTINCT + col1 ) + 57 + - CAST( 1 AS SIGNED ) FROM tab2 WHERE - + col2 + - 97 < - col0 * + + col1 + 13 * - + ( + + 41 ) + + - col2
----
56

skipif mysql # not compatible
query I rowsort label-2783
SELECT ALL + - 1 * - COUNT ( DISTINCT + col1 ) + 57 + - CAST ( 1 AS INTEGER ) FROM tab2 WHERE - + col2 + - 97 < - col0 * + + col1 + 13 * - + ( + + 41 ) + + - col2
----
56

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + col0 NOT IN ( - col2, - col1, - + col0, col0 )
----

query I rowsort
SELECT - ( - 10 ) FROM tab1
----
10
10
10

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NULL >= 5
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2787
SELECT - COUNT( DISTINCT col0 ) FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-2787
SELECT - COUNT ( DISTINCT col0 ) FROM tab0 AS cor0
----
-3

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2788
SELECT * FROM tab2 cor0 WHERE col1 IN ( + CAST( NULL AS SIGNED ) + - CAST( NULL AS SIGNED ), col2 * + col1 + - - 30 )
----

skipif mysql # not compatible
query III rowsort label-2788
SELECT * FROM tab2 cor0 WHERE col1 IN ( + CAST ( NULL AS INTEGER ) + - CAST ( NULL AS INTEGER ), col2 * + col1 + - - 30 )
----

query IIIIII rowsort
SELECT * FROM tab0 AS cor0 CROSS JOIN tab2 cor1 WHERE NOT + 32 IS NOT NULL
----

query I rowsort
SELECT - col0 * + col0 + + col0 * - 91 AS col2 FROM tab0
----
-15486
-1590
-18236

query I rowsort
SELECT ALL ( + - col2 ) AS col2 FROM tab0
----
-10
-47
-99

onlyif mysql # DIV for integer division: 
query I rowsort label-2792
SELECT + col0 DIV 15 * - col0 AS col1 FROM tab0
----
-15
-435
-582

skipif mysql # not compatible
query I rowsort label-2792
SELECT + col0 / 15 * - col0 AS col1 FROM tab0
----
-15
-435
-582

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL >= - - col0
----

query I rowsort
SELECT ALL + 96 FROM tab1 AS cor0 WHERE NOT 48 NOT IN ( 77, + col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2795
SELECT ALL + 13 + COUNT( * ) AS col1 FROM tab2 AS cor0
----
16

skipif mysql # not compatible
query I rowsort label-2795
SELECT ALL + 13 + COUNT ( * ) AS col1 FROM tab2 AS cor0
----
16

query I rowsort
SELECT DISTINCT 65 + + ( + ( - col1 ) ) FROM tab2 AS cor0
----
-12
-2
14

query I rowsort
SELECT + col0 - 32 FROM tab0 AS cor0
----
-17
55
65

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2798
SELECT DISTINCT - CAST( + COUNT( ALL col2 ) AS SIGNED ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-2798
SELECT DISTINCT - CAST ( + COUNT ( ALL col2 ) AS INTEGER ) FROM tab2
----
-3

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT col0 IS NOT NULL AND col2 * + 35 NOT IN ( ( + col1 ) )
----

query I rowsort
SELECT ALL + 85 - + col0 * - col1 FROM tab2
----
2431
5013
5110

query II rowsort
SELECT DISTINCT col1 - col2 * ( - 59 ) AS col2, + col0 * + col0 * - col1 - ( col2 ) * - col0 - col2 * + 80 FROM tab2
----
1408
-108698
2437
-316032
3489
-377165

onlyif mysql # aggregate syntax: 
query I rowsort label-2802
SELECT - + MIN( col0 ) AS col0 FROM tab1 WHERE + + col0 < 9 * - col1
----
NULL

skipif mysql # not compatible
query I rowsort label-2802
SELECT - + MIN ( col0 ) AS col0 FROM tab1 WHERE + + col0 < 9 * - col1
----
NULL

query II rowsort
SELECT DISTINCT + col2 AS col1, - col0 AS col2 FROM tab0
----
10
-87
47
-15
99
-97

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT NULL IN ( + col1, + 89 / + 64 + col0 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - - col2 * - col2 col0 FROM tab0 cor0
----
-100
-2209
-9801

onlyif mysql # DIV for integer division: 
query I rowsort label-2806
SELECT - 23 DIV col1 + + 55 FROM tab0 AS cor0
----
32
54
55

skipif mysql # not compatible
query I rowsort label-2806
SELECT - 23 / col1 + + 55 FROM tab0 AS cor0
----
32
54
55

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT NULL <= - 83
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col2 * - col0 * + 7 col1 FROM tab2 AS cor0 WHERE NOT col0 + - col1 + - + 83 + - col0 IN ( + - col2, - col1, + 88 * + col0 )
----
17920
30450
7406

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 78 * - col1 - - col2 + col2 + col2 col0 FROM tab0 AS cor0
----
-1608
-6177
219

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2810
SELECT ALL + + CAST( NULL AS SIGNED ) FROM tab2 AS cor0 WHERE NOT NULL <= - col2
----

skipif mysql # not compatible
query I rowsort label-2810
SELECT ALL + + CAST ( NULL AS INTEGER ) FROM tab2 AS cor0 WHERE NOT NULL <= - col2
----

query I rowsort
SELECT - col1 * + 13 FROM tab0 cor0
----
-1053
-13
-273

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2812
SELECT ALL ( + ( - + CAST( NULL AS SIGNED ) ) ) AS col2 FROM tab1 cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2812
SELECT ALL ( + ( - + CAST ( NULL AS INTEGER ) ) ) AS col2 FROM tab1 cor0
----
NULL
NULL
NULL

query II rowsort
SELECT + col2 * 90 AS col2, col2 AS col2 FROM tab1 AS cor0
----
5310
59
6120
68
8640
96

query II rowsort
SELECT DISTINCT + - 46 AS col1, - col0 AS col0 FROM tab1 AS cor0 WHERE NOT col1 + - + col2 NOT BETWEEN - 29 AND NULL
----

query I rowsort
SELECT ( col0 ) AS col0 FROM tab2 cor0 WHERE NOT col1 + + 23 IS NULL
----
46
64
75

query I rowsort
SELECT DISTINCT col2 + - 79 FROM tab1 AS cor0
----
-11
-20
17

query II rowsort
SELECT 93 * ( - 79 ) AS col0, 47 FROM tab0 cor0
----
-7347
47
-7347
47
-7347
47

onlyif mysql # aggregate syntax: 
query I rowsort label-2818
SELECT ALL + SUM( + col1 ) col1 FROM tab1 AS cor0
----
66

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2818
SELECT ALL + SUM ( + col1 ) col1 FROM tab1 AS cor0
----
66

onlyif mysql # aggregate syntax: 
query I rowsort label-2819
SELECT ALL + 61 * MAX( DISTINCT + + col2 ) FROM tab0 AS cor0
----
6039

skipif mysql # not compatible
query I rowsort label-2819
SELECT ALL + 61 * MAX ( DISTINCT + + col2 ) FROM tab0 AS cor0
----
6039

onlyif mysql # DIV for integer division: 
query I rowsort label-2820
SELECT + col0 DIV - + 25 + + 98 AS col2 FROM tab0 AS cor0
----
95
95
98

skipif mysql # not compatible
query I rowsort label-2820
SELECT + col0 / - + 25 + + 98 AS col2 FROM tab0 AS cor0
----
95
95
98

onlyif mysql # DIV for integer division: 
query I rowsort label-2821
SELECT col2 DIV col2 * + col2 + - col1 AS col1 FROM tab1
----
21
54
82

skipif mysql # not compatible
query I rowsort label-2821
SELECT col2 / col2 * + col2 + - col1 AS col1 FROM tab1
----
21
54
82

onlyif mysql # aggregate syntax: 
query I rowsort label-2822
SELECT + + COUNT( * ) AS col0 FROM tab0 WHERE ( - col0 IS NOT NULL )
----
3

skipif mysql # not compatible
query I rowsort label-2822
SELECT + + COUNT ( * ) AS col0 FROM tab0 WHERE ( - col0 IS NOT NULL )
----
3

query I rowsort
SELECT ALL 23 * + 36 FROM tab0
----
828
828
828

query I rowsort
SELECT + - col1 AS col1 FROM tab1 WHERE ( NOT ( NOT ( col2 IS NOT NULL ) ) )
----
-14
-47
-5

query II rowsort
SELECT DISTINCT 87 AS col2, - ( - col2 ) AS col0 FROM tab2
----
87
23
87
40
87
58

onlyif mysql # aggregate syntax: 
query I rowsort label-2826
SELECT DISTINCT + + COUNT( * ) * - COUNT( * ) * - - 79 + + COUNT( * ) FROM tab1 AS cor0
----
-708

skipif mysql # not compatible
query I rowsort label-2826
SELECT DISTINCT + + COUNT ( * ) * - COUNT ( * ) * - - 79 + + COUNT ( * ) FROM tab1 AS cor0
----
-708

onlyif mysql # DIV for integer division: 
query II rowsort label-2827
SELECT ALL - col0 + ( + col1 ) * - col0 col0, col2 * col2 * col2 DIV - - col0 + 12 FROM tab0 AS cor0
----
-1230
6933
-1914
23
-194
10015

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-2827
SELECT ALL - col0 + ( + col1 ) * - col0 col0, col2 * col2 * col2 / - - col0 + 12 FROM tab0 AS cor0
----
-1230
6933
-1914
23
-194
10015

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2828
SELECT ALL ( - CAST( col1 AS SIGNED ) ) + - 53 AS col2 FROM tab0 AS cor0
----
-134
-54
-74

skipif mysql # not compatible
query I rowsort label-2828
SELECT ALL ( - CAST ( col1 AS INTEGER ) ) + - 53 AS col2 FROM tab0 AS cor0
----
-134
-54
-74

query I rowsort
SELECT - - 73 AS col1 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to e5fbf5d129b181bacd6113bbc8732496

onlyif mysql # aggregate syntax: 
query I rowsort label-2830
SELECT + COUNT( * ) + - + 22 AS col2 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
-13

skipif mysql # not compatible
query I rowsort label-2830
SELECT + COUNT ( * ) + - + 22 AS col2 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
-13

query I rowsort
SELECT col0 + col0 - - + col2 FROM tab2
----
115
168
208

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE + col1 * + - col1 IS NULL
----

query I rowsort
SELECT 57 + - col1 FROM tab0 AS cor0
----
-24
36
56

query II rowsort
SELECT - col1 + + 27 AS col1, col1 * - + 38 AS col1 FROM tab0 AS cor0
----
-54
-3078
26
-38
6
-798

query I rowsort
SELECT col2 + + 81 * col2 * + 39 FROM tab0 AS cor0
----
148520
312840
31600

query I rowsort
SELECT ALL col2 - - - col0 AS col2 FROM tab2 AS cor0
----
-17
-23
-24

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2837
SELECT ALL 40 + - 64 AS col0, - CAST( + 97 AS SIGNED ) AS col1 FROM tab2 AS cor0
----
-24
-97
-24
-97
-24
-97

skipif mysql # not compatible
query II rowsort label-2837
SELECT ALL 40 + - 64 AS col0, - CAST ( + 97 AS INTEGER ) AS col1 FROM tab2 AS cor0
----
-24
-97
-24
-97
-24
-97

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE col1 - + 21 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT ALL * FROM tab0 WHERE + 86 BETWEEN NULL AND NULL
----

query II rowsort
SELECT ALL + col0, col2 AS col1 FROM tab2
----
46
23
64
40
75
58

query I rowsort
SELECT - 15 * + + col1 AS col2 FROM tab1
----
-210
-705
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-2842
SELECT - COUNT( * ) * - 56 FROM tab1
----
168

skipif mysql # not compatible
query I rowsort label-2842
SELECT - COUNT ( * ) * - 56 FROM tab1
----
168

query I rowsort
SELECT col2 * - col2 * - + col1 AS col0 FROM tab0
----
178929
2100
9801

onlyif mysql # aggregate syntax: 
query I rowsort label-2844
SELECT MAX( - 74 ) AS col1 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
-74

skipif mysql # not compatible
query I rowsort label-2844
SELECT MAX ( - 74 ) AS col1 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
-74

onlyif mysql # aggregate syntax: 
query I rowsort label-2845
SELECT + COUNT( * ) + - + 92 AS col1 FROM tab1
----
-89

skipif mysql # not compatible
query I rowsort label-2845
SELECT + COUNT ( * ) + - + 92 AS col1 FROM tab1
----
-89

query I rowsort
SELECT ALL 13 + - + col2 AS col0 FROM tab1 AS cor0 WHERE NULL IS NULL
----
-46
-55
-83

onlyif mysql # aggregate syntax: 
query I rowsort label-2847
SELECT DISTINCT 47 + COUNT( * ) + + + COUNT( * ) FROM tab0 AS cor0
----
53

skipif mysql # not compatible
query I rowsort label-2847
SELECT DISTINCT 47 + COUNT ( * ) + + + COUNT ( * ) FROM tab0 AS cor0
----
53

query II rowsort
SELECT ALL - 62 AS col0, + col0 AS col0 FROM tab0 AS cor0
----
-62
15
-62
87
-62
97

query I rowsort
SELECT ALL 73 AS col0 FROM tab1 AS cor0 WHERE + col1 IS NULL
----

query I rowsort
SELECT - - 63 * - 92 FROM tab0 AS cor0
----
-5796
-5796
-5796

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2851
SELECT - ( + 64 ) FROM tab2 AS cor0 WHERE NOT - CAST( NULL AS SIGNED ) < - ( - + 24 ) * 23 * + col2
----

skipif mysql # not compatible
query I rowsort label-2851
SELECT - ( + 64 ) FROM tab2 AS cor0 WHERE NOT - CAST ( NULL AS INTEGER ) < - ( - + 24 ) * 23 * + col2
----

query I rowsort
SELECT DISTINCT - - col0 + - col0 + + - 21 FROM tab1 AS cor0 WHERE NOT NULL <= ( NULL )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - col0 * - col1, + 22 * - col1 col1 FROM tab0
----
1215
-1782
1827
-462
97
-22

query I rowsort
SELECT col0 FROM tab1 WHERE NULL < 1 * col1
----

query II rowsort
SELECT DISTINCT + 42 * - col1 AS col2, col1 FROM tab0
----
-3402
81
-42
1
-882
21

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2856
SELECT ALL - CAST( NULL AS DECIMAL ) * + + col1 * + - col2 AS col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2856
SELECT ALL - CAST ( NULL AS REAL ) * + + col1 * + - col2 AS col2 FROM tab2
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT col1 * - - col1 * - col1 FROM tab0
----
-1
-531441
-9261

query I rowsort
SELECT DISTINCT - 15 * 36 FROM tab1
----
-540

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2859
SELECT ALL * FROM tab1 WHERE NOT - CAST( + - col0 AS SIGNED ) < + col2
----
85
5
59
91
47
68

skipif mysql # not compatible
query III rowsort label-2859
SELECT ALL * FROM tab1 WHERE NOT - CAST ( + - col0 AS INTEGER ) < + col2
----
85
5
59
91
47
68

query I rowsort
SELECT col2 + + col2 * col1 FROM tab0
----
198
220
3854

query I rowsort
SELECT col1 * + + 60 + col0 AS col2 FROM tab2
----
3106
4095
4684

query I rowsort
SELECT - col2 + col2 + col2 + + 78 * + - ( + 34 ) + + col2 * + col0 AS col2 FROM tab1 AS cor0
----
2340
2422
3604

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col2 < col1 + + col2
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2864
SELECT + col2 / - CAST( NULL AS SIGNED ) + + col1 AS col0 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2864
SELECT + col2 / - CAST ( NULL AS INTEGER ) + + col1 AS col0 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2865
SELECT col1, col2 * - CAST( NULL AS SIGNED ) FROM tab1
----
14
NULL
47
NULL
5
NULL

skipif mysql # not compatible
query II rowsort label-2865
SELECT col1, col2 * - CAST ( NULL AS INTEGER ) FROM tab1
----
14
NULL
47
NULL
5
NULL

query IIIIII rowsort
SELECT ALL * FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1 WHERE NOT ( NULL ) = NULL
----

query II rowsort
SELECT DISTINCT - col1, col2 + - col0 * + col1 * + col1 AS col1 FROM tab1 AS cor0
----
-14
-9900
-47
-200951
-5
-2066

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2868
SELECT ALL - CAST( - - col0 AS SIGNED ) FROM tab0 AS cor0
----
-15
-87
-97

skipif mysql # not compatible
query I rowsort label-2868
SELECT ALL - CAST ( - - col0 AS INTEGER ) FROM tab0 AS cor0
----
-15
-87
-97

query I rowsort
SELECT ALL col1 + + - col0 AS col2 FROM tab2 cor0
----
-8
13
5

query I rowsort
SELECT + col2 - + + 90 FROM tab2 AS cor0
----
-32
-50
-67

query I rowsort
SELECT ALL - ( + 10 ) FROM tab1 AS cor0
----
-10
-10
-10

query I rowsort
SELECT DISTINCT + 65 * 82 + + col2 + + col2 * col1 * - + 84 * - 86 FROM tab0 AS cor0
----
1522380
27507145
720605

onlyif mysql # aggregate syntax: 
query I rowsort label-2873
SELECT SUM( DISTINCT - + col2 ) AS col1 FROM tab0
----
-156

skipif mysql # not compatible
query I rowsort label-2873
SELECT SUM ( DISTINCT - + col2 ) AS col1 FROM tab0
----
-156

query I rowsort
SELECT - col0 * - 9 AS col1 FROM tab0
----
135
783
873

query I rowsort
SELECT col0 * + - col1 * + col1 FROM tab1
----
-201019
-2125
-9996

query I rowsort
SELECT col2 FROM tab2 WHERE NOT col0 * + col2 + + + 95 IS NULL
----
23
40
58

onlyif mysql # aggregate syntax: 
query II rowsort label-2877
SELECT COUNT( * ) * + 0 AS col0, - COUNT( * ) FROM tab0 AS cor0
----
0
-3

skipif mysql # not compatible
query II rowsort label-2877
SELECT COUNT ( * ) * + 0 AS col0, - COUNT ( * ) FROM tab0 AS cor0
----
0
-3

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + col0 * + col2 * col0 <> NULL
----

query I rowsort
SELECT col1 * + 58 AS col1 FROM tab1
----
2726
290
812

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT col1 BETWEEN NULL AND NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + 94 * + col2 * + 92 col0 FROM tab0 AS cor0 WHERE NOT - col1 + + col1 IS NOT NULL
----

query I rowsort
SELECT DISTINCT col1 * 28 * 94 + + col1 + col2 FROM tab2 cor0
----
134306
176469
202781

onlyif mysql # DIV for integer division: 
query III rowsort label-2883
SELECT + + col0 AS col0, + col0 DIV - col1, + 1 * + - col0 * + + col1 AS col0 FROM tab0 AS cor0
----
9 values hashing to 20990fa345f99d0dce87d1dc43786f89

skipif mysql # not compatible
query III rowsort label-2883
SELECT + + col0 AS col0, + col0 / - col1, + 1 * + - col0 * + + col1 AS col0 FROM tab0 AS cor0
----
9 values hashing to 20990fa345f99d0dce87d1dc43786f89

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2884
SELECT ALL * FROM tab2 AS cor0 WHERE - CAST( NULL AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-2884
SELECT ALL * FROM tab2 AS cor0 WHERE - CAST ( NULL AS INTEGER ) IS NOT NULL
----

query II rowsort
SELECT DISTINCT ( + col0 ) + - 65 AS col0, col2 FROM tab1 AS cor0
----
-14
96
20
59
26
68

query I rowsort
SELECT - col0 + + col2 + col1 FROM tab0 AS cor0
----
-56
113
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + col1 + - + col0 * + ( + col1 ) col0 FROM tab0 AS cor0
----
-1134
-1806
-96

query II rowsort
SELECT col1 AS col0, col2 AS col1 FROM tab1 AS cor0 WHERE - col0 * + col1 * + col1 <= NULL
----

query I rowsort
SELECT 71 + + + 89 + col0 FROM tab0
----
175
247
257

onlyif mysql # aggregate syntax: 
query I rowsort label-2890
SELECT - COUNT( * ) + 73 FROM tab2
----
70

skipif mysql # not compatible
query I rowsort label-2890
SELECT - COUNT ( * ) + 73 FROM tab2
----
70

onlyif mysql # aggregate syntax: 
query I rowsort label-2891
SELECT ALL 18 * - COUNT( * ) AS col2 FROM tab1
----
-54

skipif mysql # not compatible
query I rowsort label-2891
SELECT ALL 18 * - COUNT ( * ) AS col2 FROM tab1
----
-54

onlyif mysql # DIV for integer division: 
query I rowsort label-2892
SELECT ALL 45 DIV + col2 FROM tab0
----
0
0
4

skipif mysql # not compatible
query I rowsort label-2892
SELECT ALL 45 / + col2 FROM tab0
----
0
0
4

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 63 col2 FROM tab0
----
63
63
63

query I rowsort
SELECT ALL col1 FROM tab0 AS cor0 WHERE ( + - col1 ) / + + col2 IS NOT NULL
----
1
21
81

onlyif mysql # aggregate syntax: 
query I rowsort label-2895
SELECT ALL COUNT( * ) * - 99 + - 26 AS col1 FROM tab1 AS cor0
----
-323

skipif mysql # not compatible
query I rowsort label-2895
SELECT ALL COUNT ( * ) * - 99 + - 26 AS col1 FROM tab1 AS cor0
----
-323

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 - col1 * + 31 col1 FROM tab0 cor0
----
-128
-2526
-738

query I rowsort
SELECT col1 - 27 FROM tab1
----
-13
-22
20

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2898
SELECT ALL - MAX( ALL - CAST( NULL AS SIGNED ) ) FROM ( tab1 cor0 CROSS JOIN tab0 AS cor1 )
----
NULL

skipif mysql # not compatible
query I rowsort label-2898
SELECT ALL - MAX ( ALL - CAST ( NULL AS INTEGER ) ) FROM ( tab1 cor0 CROSS JOIN tab0 AS cor1 )
----
NULL

query I rowsort
SELECT ALL 18 - - - 85 AS col0 FROM tab0
----
-67
-67
-67

query IIIIII rowsort
SELECT * FROM tab2 AS cor0 CROSS JOIN tab1 cor1 WHERE ( NULL ) <= NULL
----

query I rowsort
SELECT DISTINCT - 47 * + + 91 * + + 93 * 66 FROM tab2 AS cor0
----
-26252226

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-2902
SELECT COUNT( * ) DIV COUNT( * ) + - 56 AS col2 FROM tab2 AS cor0
----
-55

skipif mysql # not compatible
query I rowsort label-2902
SELECT COUNT ( * ) / COUNT ( * ) + - 56 AS col2 FROM tab2 AS cor0
----
-55

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-2903
SELECT + 6 DIV - CAST( 18 AS SIGNED ) + - + col2 AS col0 FROM tab2 AS cor0
----
-23
-40
-58

skipif mysql # not compatible
query I rowsort label-2903
SELECT + 6 / - CAST ( 18 AS INTEGER ) + - + col2 AS col0 FROM tab2 AS cor0
----
-23
-40
-58

onlyif mysql # aggregate syntax: 
query I rowsort label-2904
SELECT DISTINCT + - ( + COUNT( * ) ) * - COUNT( * ) AS col1 FROM tab2 cor0
----
9

skipif mysql # not compatible
query I rowsort label-2904
SELECT DISTINCT + - ( + COUNT ( * ) ) * - COUNT ( * ) AS col1 FROM tab2 cor0
----
9

onlyif mysql # DIV for integer division: 
query I rowsort label-2905
SELECT ALL - col2 DIV + - 68 FROM tab1 AS cor0
----
0
1
1

skipif mysql # not compatible
query I rowsort label-2905
SELECT ALL - col2 / + - 68 FROM tab1 AS cor0
----
0
1
1

query II rowsort
SELECT col1 AS col2, - col1 FROM tab0
----
1
-1
21
-21
81
-81

onlyif mysql # aggregate syntax: 
query I rowsort label-2907
SELECT ALL - COUNT( + col1 ) FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-2907
SELECT ALL - COUNT ( + col1 ) FROM tab1
----
-3

onlyif mysql # DIV for integer division: 
query II rowsort label-2908
SELECT ALL - ( col1 ) DIV + 93, + col2 FROM tab2
----
0
23
0
40
0
58

skipif mysql # not compatible
query II rowsort label-2908
SELECT ALL - ( col1 ) / + 93, + col2 FROM tab2
----
0
23
0
40
0
58

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - - col1 + col0 IN ( - 22 * + col0 )
----

query I rowsort
SELECT col1 * + - 99 FROM tab1
----
-1386
-4653
-495

query I rowsort
SELECT 18 * + col0 * + ( - 16 ) FROM tab1
----
-14688
-24480
-26208

onlyif mysql # aggregate syntax: 
query I rowsort label-2912
SELECT DISTINCT - COUNT( + col0 ) AS col1 FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-2912
SELECT DISTINCT - COUNT ( + col0 ) AS col1 FROM tab1
----
-3

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-2913
SELECT DISTINCT + 19 AS col0, CAST( - + COUNT( * ) AS SIGNED ) + - 5 * + COUNT( * ) AS col0 FROM tab2 AS cor0
----
19
-18

skipif mysql # not compatible
query II rowsort label-2913
SELECT DISTINCT + 19 AS col0, CAST ( - + COUNT ( * ) AS INTEGER ) + - 5 * + COUNT ( * ) AS col0 FROM tab2 AS cor0
----
19
-18

onlyif mysql # DIV for integer division: 
query I rowsort label-2914
SELECT ALL col1 DIV - 35 FROM tab2 AS cor0
----
-1
-1
-2

skipif mysql # not compatible
query I rowsort label-2914
SELECT ALL col1 / - 35 FROM tab2 AS cor0
----
-1
-1
-2

query I rowsort
SELECT - 8 + - - col1 + + col2 - col2 FROM tab2
----
43
59
69

onlyif mysql # aggregate syntax: 
query I rowsort label-2916
SELECT + 88 * + COUNT( * ) * + + 84 + SUM( col1 ) * - 16 FROM tab1
----
21120

skipif mysql # not compatible
query I rowsort label-2916
SELECT + 88 * + COUNT ( * ) * + + 84 + SUM ( col1 ) * - 16 FROM tab1
----
21120

query I rowsort
SELECT 57 * + - col0 * 56 + + 80 AS col1 FROM tab1
----
-162712
-271240
-290392

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE + col1 + - col1 * - + 50 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2919
SELECT ( - CAST( col1 AS SIGNED ) ) AS col1 FROM tab1 AS cor0
----
-14
-47
-5

skipif mysql # not compatible
query I rowsort label-2919
SELECT ( - CAST ( col1 AS INTEGER ) ) AS col1 FROM tab1 AS cor0
----
-14
-47
-5

onlyif mysql # aggregate syntax: 
query I rowsort label-2920
SELECT + SUM( DISTINCT - + 96 ) AS col0 FROM tab2 AS cor0
----
-96

skipif mysql # not compatible
query I rowsort label-2920
SELECT + SUM ( DISTINCT - + 96 ) AS col0 FROM tab2 AS cor0
----
-96

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2921
SELECT DISTINCT + - 19 + - 56 * - CAST( NULL AS SIGNED ) * - col1 FROM tab2 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-2921
SELECT DISTINCT + - 19 + - 56 * - CAST ( NULL AS INTEGER ) * - col1 FROM tab2 cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2922
SELECT DISTINCT + + 83 FROM tab2 AS cor0 WHERE - 9 BETWEEN - - 67 + - ( - 79 ) - - CAST( + - col0 AS SIGNED ) - - col2 * + - 14 + + 39 AND NULL
----

skipif mysql # not compatible
query I rowsort label-2922
SELECT DISTINCT + + 83 FROM tab2 AS cor0 WHERE - 9 BETWEEN - - 67 + - ( - 79 ) - - CAST ( + - col0 AS INTEGER ) - - col2 * + - 14 + + 39 AND NULL
----

query I rowsort
SELECT ALL ( - 63 ) + - col0 + - - col2 AS col0 FROM tab2 AS cor0
----
-80
-86
-87

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query I rowsort label-2924
SELECT ALL - CAST( NULL AS SIGNED ) + + CAST( NULL AS DECIMAL ) / + col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2924
SELECT ALL - CAST ( NULL AS INTEGER ) + + CAST ( NULL AS REAL ) / + col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT ALL + + col0 + + - 43 FROM tab1 AS cor0
----
42
48
8

query II rowsort
SELECT - 68 AS col2, 64 FROM tab0 AS cor0 WHERE ( - 30 ) IS NOT NULL
----
-68
64
-68
64
-68
64

onlyif mysql # aggregate syntax: 
query I rowsort label-2927
SELECT DISTINCT - COUNT( * ) + + 60 AS col2 FROM tab0 AS cor0
----
57

skipif mysql # not compatible
query I rowsort label-2927
SELECT DISTINCT - COUNT ( * ) + + 60 AS col2 FROM tab0 AS cor0
----
57

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE col2 NOT BETWEEN - col0 * - 81 AND + 85 * - + col2 * - - col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-2929
SELECT + MIN( DISTINCT - 50 ) AS col1 FROM tab0 AS cor0
----
-50

skipif mysql # not compatible
query I rowsort label-2929
SELECT + MIN ( DISTINCT - 50 ) AS col1 FROM tab0 AS cor0
----
-50

onlyif mysql # aggregate syntax: 
query I rowsort label-2930
SELECT ALL COUNT( - + col0 ) col1 FROM tab2
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2930
SELECT ALL COUNT ( - + col0 ) col1 FROM tab2
----
3

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-2931
SELECT - 53 * - 80 + - COUNT( * ) + + CAST( NULL AS SIGNED ) / + - 27 AS col0 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-2931
SELECT - 53 * - 80 + - COUNT ( * ) + + CAST ( NULL AS INTEGER ) / + - 27 AS col0 FROM tab1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2932
SELECT MIN( ALL + col1 ) + + 66 FROM tab0
----
67

skipif mysql # not compatible
query I rowsort label-2932
SELECT MIN ( ALL + col1 ) + + 66 FROM tab0
----
67

query I rowsort
SELECT - + 55 * + col0 FROM tab2 AS cor0 WHERE - col2 NOT BETWEEN NULL AND + col0
----

query I rowsort
SELECT ALL - col1 + ( - - col0 ) AS col1 FROM tab0 AS cor0
----
-66
66
96

query I rowsort
SELECT DISTINCT + - col2 + + col1 AS col2 FROM tab0 AS cor0
----
-98
11
34

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2936
SELECT ALL + + 90 + - + CAST( NULL AS DECIMAL ) + - col2 - + - 12 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2936
SELECT ALL + + 90 + - + CAST ( NULL AS REAL ) + - col2 - + - 12 FROM tab2 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE 94 < NULL
----

query I rowsort
SELECT DISTINCT 28 + + - col0 FROM tab1
----
-23
-57
-63

query I rowsort
SELECT ALL 46 - - 79 AS col2 FROM tab1
----
125
125
125

query I rowsort
SELECT ALL 2 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to 84dbfaf9bc17dd097f15bc36b4186261

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2941
SELECT - CAST( + 5 AS SIGNED ) AS col1 FROM tab1
----
-5
-5
-5

skipif mysql # not compatible
query I rowsort label-2941
SELECT - CAST ( + 5 AS INTEGER ) AS col1 FROM tab1
----
-5
-5
-5

onlyif mysql # aggregate syntax: 
query I rowsort label-2942
SELECT ALL + - COUNT( * ) FROM tab1 WHERE NOT NULL IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-2942
SELECT ALL + - COUNT ( * ) FROM tab1 WHERE NOT NULL IS NULL
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2943
SELECT DISTINCT + CAST( NULL AS SIGNED ) AS col0, col0 FROM tab1
----
NULL
51
NULL
85
NULL
91

skipif mysql # not compatible
query II rowsort label-2943
SELECT DISTINCT + CAST ( NULL AS INTEGER ) AS col0, col0 FROM tab1
----
NULL
51
NULL
85
NULL
91

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + ( col1 ) + 45 BETWEEN - + col1 AND + 42 / - 17
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 35 col1 FROM tab0 AS cor0
----
35
35
35

onlyif mysql # aggregate syntax: 
query II rowsort label-2946
SELECT DISTINCT - 70 AS col0, COUNT( * ) AS col2 FROM tab2 cor0
----
-70
3

skipif mysql # not compatible
query II rowsort label-2946
SELECT DISTINCT - 70 AS col0, COUNT ( * ) AS col2 FROM tab2 cor0
----
-70
3

query I rowsort
SELECT DISTINCT - 32 * + + 41 AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
-1312

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT col0 + - - col2 * - col1 IS NOT NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-2949
SELECT - 75 / + col2 * - + CAST( NULL AS DECIMAL ) * + col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2949
SELECT - 75 / + col2 * - + CAST ( NULL AS REAL ) * + col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - col0, + col0 col1 FROM tab2 AS cor0
----
-46
46
-64
64
-75
75

onlyif mysql # aggregate syntax: 
query I rowsort label-2951
SELECT - 86 + - 58 / - MAX( ALL - + ( col2 ) ) FROM tab1 WHERE NOT + 28 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-2951
SELECT - 86 + - 58 / - MAX ( ALL - + ( col2 ) ) FROM tab1 WHERE NOT + 28 IS NOT NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-2952
SELECT - ( - COUNT( + col1 ) ) AS col2 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-2952
SELECT - ( - COUNT ( + col1 ) ) AS col2 FROM tab2
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-2953
SELECT + 14 * MIN( DISTINCT + - 48 ) FROM tab2
----
-672

skipif mysql # not compatible
query I rowsort label-2953
SELECT + 14 * MIN ( DISTINCT + - 48 ) FROM tab2
----
-672

query I rowsort
SELECT col0 * - col2 * + + ( - col0 ) AS col2 FROM tab2
----
163840
326250
48668

onlyif mysql # aggregate syntax: 
query II rowsort label-2955
SELECT DISTINCT ( COUNT( * ) ) AS col1, + COUNT( * ) FROM tab0
----
3
3

skipif mysql # not compatible
query II rowsort label-2955
SELECT DISTINCT ( COUNT ( * ) ) AS col1, + COUNT ( * ) FROM tab0
----
3
3

query I rowsort
SELECT ALL + - 76 AS col1 FROM tab2 WHERE - + ( + 73 ) <> - - col0
----
-76
-76
-76

query I rowsort
SELECT - 76 + - col2 FROM tab2 WHERE NOT NULL < + col2
----

query I rowsort
SELECT - 37 AS col1 FROM tab2 WHERE NOT + 0 NOT BETWEEN + col0 AND - 33
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2959
SELECT ALL - SUM( - - col1 ) * - 76 col0 FROM tab1 AS cor0
----
5016

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2959
SELECT ALL - SUM ( - - col1 ) * - 76 col0 FROM tab1 AS cor0
----
5016

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT col0 + ( + - 23 ) + 81 IS NOT NULL
----

query I rowsort
SELECT ALL - 5 + - col0 FROM tab0 AS cor0
----
-102
-20
-92

query I rowsort
SELECT DISTINCT - - col1 + - + 41 + ( - - col0 ) AS col1 FROM tab2 AS cor0
----
100
101
56

onlyif mysql # DIV for integer division: 
query I rowsort label-2963
SELECT ALL + 97 DIV - col1 - + + col0 - - col2 + - 60 AS col1 FROM tab1 AS cor0
----
-105
-21
-85

skipif mysql # not compatible
query I rowsort label-2963
SELECT ALL + 97 / - col1 - + + col0 - - col2 + - 60 AS col1 FROM tab1 AS cor0
----
-105
-21
-85

query I rowsort
SELECT ALL col1 * 15 FROM tab0
----
1215
15
315

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NULL BETWEEN ( + col2 ) - col2 + + col0 * - col2 AND 20
----

query I rowsort
SELECT - 85 + + col2 FROM tab2 AS cor0
----
-27
-45
-62

query I rowsort
SELECT col2 + 83 AS col1 FROM tab0 AS cor0
----
130
182
93

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col1 + col1 col1 FROM tab0 AS cor0 WHERE + 88 >= + col1
----
0

query I rowsort
SELECT col1 + + - 50 FROM tab1 AS cor0
----
-3
-36
-45

onlyif mysql # DIV for integer division: 
query I rowsort label-2970
SELECT DISTINCT + - 24 DIV - + col1 + - 77 col0 FROM tab0 AS cor0
----
-53
-76
-77

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-2970
SELECT DISTINCT + - 24 / - + col1 + - 77 col0 FROM tab0 AS cor0
----
-53
-76
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-2971
SELECT DISTINCT 65 - - COUNT( * ) AS col1 FROM tab2 AS cor0
----
68

skipif mysql # not compatible
query I rowsort label-2971
SELECT DISTINCT 65 - - COUNT ( * ) AS col1 FROM tab2 AS cor0
----
68

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE 53 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-2973
SELECT - - COUNT( * ) + + 56 FROM tab2 AS cor0
----
59

skipif mysql # not compatible
query I rowsort label-2973
SELECT - - COUNT ( * ) + + 56 FROM tab2 AS cor0
----
59

query I rowsort
SELECT DISTINCT - col2 + - 67 FROM tab2 AS cor0
----
-107
-125
-90

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - col0 * 50 - + col2 + col2 * col0 col1 FROM tab1
----
1570
2250
706

onlyif mysql # aggregate syntax: 
query I rowsort label-2976
SELECT DISTINCT - SUM( col0 ) AS col2 FROM tab2
----
-185

skipif mysql # not compatible
query I rowsort label-2976
SELECT DISTINCT - SUM ( col0 ) AS col2 FROM tab2
----
-185

query I rowsort
SELECT - + ( + 11 ) - + col1 + - col1 + + 5 + + col1 * + col0 * - col1 * - - col2 FROM tab1 AS cor0
----
-125391
-13669392
-959650

query I rowsort
SELECT + - col1 - 4 + - col1 + col2 FROM tab2 cor0
----
-118
-80
-83

query I rowsort
SELECT ALL - 3 - + col0 AS col2 FROM tab0 AS cor0
----
-100
-18
-90

onlyif mysql # aggregate syntax: 
query I rowsort label-2980
SELECT DISTINCT + COUNT( + col0 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-2980
SELECT DISTINCT + COUNT ( + col0 ) FROM tab1
----
3

query IIIIIIIII rowsort
SELECT DISTINCT * FROM tab2 cor0 JOIN tab2 cor1 ON + ( 90 ) IS NOT NULL, tab0 AS cor2
----
243 values hashing to b49d6bdf826f46863e2bbfbd63553f5c

query I rowsort
SELECT ( + 44 ) AS col2 FROM tab2 AS cor0
----
44
44
44

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-2983
SELECT * FROM tab2 AS cor0 WHERE NOT + col2 < + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-2983
SELECT * FROM tab2 AS cor0 WHERE NOT + col2 < + CAST ( NULL AS INTEGER )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col0 col1, + col1 * - - col0 * - col1 FROM tab1 AS cor0
----
-51
-9996
-85
-2125
-91
-201019

query II rowsort
SELECT + col0, col0 FROM tab2 AS cor0 WHERE NOT col0 * - - 78 * - col2 IS NULL
----
46
46
64
64
75
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2986
SELECT - + 12 * - CAST( NULL AS SIGNED ) - + + 35 + - col2 * + col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-2986
SELECT - + 12 * - CAST ( NULL AS INTEGER ) - + + 35 + - col2 * + col1 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 54 * - col2 col0 FROM tab0 AS cor0
----
-2538
-5346
-540

query I rowsort
SELECT DISTINCT + 83 * col1 + + col0 - + col2 * + col1 + - + col1 FROM tab0 AS cor0
----
1599
2850
80

onlyif mysql # aggregate syntax: 
query I rowsort label-2989
SELECT ALL - COUNT( * ) FROM tab0 AS cor0 WHERE NOT + ( + + col0 ) IS NULL
----
-3

skipif mysql # not compatible
query I rowsort label-2989
SELECT ALL - COUNT ( * ) FROM tab0 AS cor0 WHERE NOT + ( + + col0 ) IS NULL
----
-3

onlyif mysql # DIV for integer division: 
query I rowsort label-2990
SELECT 41 DIV - 59 * - col0 AS col1 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-2990
SELECT 41 / - 59 * - col0 AS col1 FROM tab2 AS cor0
----
0
0
0

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( - col0 ) IN ( - col1 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query II rowsort
SELECT ALL col2 AS col1, + 31 + - col1 + - 75 AS col0 FROM tab0
----
10
-65
47
-125
99
-45

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-2993
SELECT 5 AS col2, col0 + + 9 + CAST( NULL AS SIGNED ) FROM tab2
----
5
NULL
5
NULL
5
NULL

skipif mysql # not compatible
query II rowsort label-2993
SELECT 5 AS col2, col0 + + 9 + CAST ( NULL AS INTEGER ) FROM tab2
----
5
NULL
5
NULL
5
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-2994
SELECT - CAST( + col1 AS SIGNED ) * - col2 FROM tab2
----
1173
3080
3886

skipif mysql # not compatible
query I rowsort label-2994
SELECT - CAST ( + col1 AS INTEGER ) * - col2 FROM tab2
----
1173
3080
3886

query I rowsort
SELECT - 9 FROM tab0 WHERE NOT ( NOT col1 = - col0 + col1 - 97 )
----

onlyif mysql # aggregate syntax: 
query II rowsort label-2996
SELECT 17 AS col2, + ( - SUM( + - col1 ) ) - + MAX( col2 ) AS col2 FROM tab2
----
17
137

skipif mysql # not compatible
query II rowsort label-2996
SELECT 17 AS col2, + ( - SUM ( + - col1 ) ) - + MAX ( col2 ) AS col2 FROM tab2
----
17
137

query I rowsort
SELECT ALL + - col2 AS col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-59
-68
-96

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL NOT BETWEEN + 23 * col1 * - 58 AND + col2
----

query I rowsort
SELECT + 96 * + col1 FROM tab1
----
1344
4512
480

query I rowsort
SELECT DISTINCT + col2 * - 99 + + col1 FROM tab1 AS cor0
----
-5836
-6685
-9490

onlyif mysql # aggregate syntax: 
query II rowsort label-3001
SELECT + COUNT( * ), 0 AS col2 FROM tab0 AS cor0
----
3
0

skipif mysql # not compatible
query II rowsort label-3001
SELECT + COUNT ( * ), 0 AS col2 FROM tab0 AS cor0
----
3
0

query II rowsort
SELECT ALL - col2, 33 AS col1 FROM tab0 AS cor0
----
-10
33
-47
33
-99
33

query II rowsort
SELECT DISTINCT - col0 AS col2, - col0 AS col1 FROM tab2 cor0
----
-46
-46
-64
-64
-75
-75

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT + col1 + col2 >= col1
----

query I rowsort
SELECT + + 95 FROM tab2 AS cor0 CROSS JOIN tab1 cor1
----
9 values hashing to e57d8ed879dfd04d04aae87725c970d3

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT - col1 = - + 11 - + 46
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT col0 * - 87 * + - 43 AS col0 FROM tab1
----
190791
317985
340431

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3008
SELECT ALL - - CAST( + col1 AS SIGNED ) + col2 + + + col1 * + col1 col0, + col1 AS col1 FROM tab2 AS cor0
----
2675
51
4614
67
6046
77

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3008
SELECT ALL - - CAST ( + col1 AS INTEGER ) + col2 + + + col1 * + col1 col0, + col1 AS col1 FROM tab2 AS cor0
----
2675
51
4614
67
6046
77

query I rowsort
SELECT 69 * 14 FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT 41 FROM tab1 AS cor0 WHERE ( NULL IS NOT NULL )
----

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( NULL ) > + - 21 * col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3012
SELECT DISTINCT + - COUNT( * ) + 9 FROM tab0 AS cor0
----
6

skipif mysql # not compatible
query I rowsort label-3012
SELECT DISTINCT + - COUNT ( * ) + 9 FROM tab0 AS cor0
----
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3013
SELECT 21 * ( - col1 ) AS col1 FROM tab0 cor0 WHERE 25 + - CAST( NULL AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-3013
SELECT 21 * ( - col1 ) AS col1 FROM tab0 cor0 WHERE 25 + - CAST ( NULL AS INTEGER ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3014
SELECT ALL - 65 - COUNT( * ) AS col1 FROM tab0 cor0
----
-68

skipif mysql # not compatible
query I rowsort label-3014
SELECT ALL - 65 - COUNT ( * ) AS col1 FROM tab0 cor0
----
-68

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE 84 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3016
SELECT - 35 - MAX( ALL + col0 ) * + + 4 * - - COUNT( * ) AS col1 FROM tab0
----
-1199

skipif mysql # not compatible
query I rowsort label-3016
SELECT - 35 - MAX ( ALL + col0 ) * + + 4 * - - COUNT ( * ) AS col1 FROM tab0
----
-1199

query I rowsort
SELECT col0 + - - col1 AS col0 FROM tab0
----
108
96
98

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + col2 * + 37 + col1, - col2 + - - col2 col2 FROM tab1
----
2188
0
2563
0
3566
0

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3019
SELECT * FROM tab0 WHERE - + ( - 50 ) NOT BETWEEN - 41 AND - 54 * + 83 + - - col2 * + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-3019
SELECT * FROM tab0 WHERE - + ( - 50 ) NOT BETWEEN - 41 AND - 54 * + 83 + - - col2 * + CAST ( NULL AS INTEGER )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3020
SELECT DISTINCT - 94 + COUNT( * ) FROM tab1 cor0
----
-91

skipif mysql # not compatible
query I rowsort label-3020
SELECT DISTINCT - 94 + COUNT ( * ) FROM tab1 cor0
----
-91

query I rowsort
SELECT DISTINCT - col1 * col1 FROM tab2 AS cor0 WHERE 99 > col1 + + 0
----
-2601
-4489
-5929

query II rowsort
SELECT ALL + col2 AS col1, 37 AS col0 FROM tab1 AS cor0
----
59
37
68
37
96
37

query III rowsort
SELECT * FROM tab1 WHERE NOT + col2 + col0 IS NOT NULL
----

query I rowsort
SELECT ( 18 ) * + col2 * + 46 AS col1 FROM tab0
----
38916
81972
8280

onlyif mysql # aggregate syntax: 
query II rowsort label-3025
SELECT ALL - COUNT( * ) AS col2, 42 AS col1 FROM tab1 AS cor0 WHERE NOT col0 = ( - col2 )
----
-3
42

skipif mysql # not compatible
query II rowsort label-3025
SELECT ALL - COUNT ( * ) AS col2, 42 AS col1 FROM tab1 AS cor0 WHERE NOT col0 = ( - col2 )
----
-3
42

onlyif mysql # aggregate syntax: 
query I rowsort label-3026
SELECT + COUNT( DISTINCT - + col2 ) FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-3026
SELECT + COUNT ( DISTINCT - + col2 ) FROM tab2 AS cor0
----
3

query I rowsort
SELECT - col2 * - + col0 AS col2 FROM tab0 AS cor0
----
705
870
9603

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3028
SELECT + + COUNT( * ) DIV + ( - COUNT( * ) ) AS col1 FROM tab0 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-3028
SELECT + + COUNT ( * ) / + ( - COUNT ( * ) ) AS col1 FROM tab0 AS cor0
----
-1

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3029
SELECT * FROM tab0 AS cor0 WHERE NOT CAST( NULL AS SIGNED ) + 68 - 86 / + 14 BETWEEN - col2 + + col2 AND NULL
----

skipif mysql # not compatible
query III rowsort label-3029
SELECT * FROM tab0 AS cor0 WHERE NOT CAST ( NULL AS INTEGER ) + 68 - 86 / + 14 BETWEEN - col2 + + col2 AND NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3030
SELECT - 40 DIV + COUNT( * ) FROM tab0
----
-13

skipif mysql # not compatible
query I rowsort label-3030
SELECT - 40 / + COUNT ( * ) FROM tab0
----
-13

query I rowsort
SELECT 24 * - - col0 FROM tab2
----
1104
1536
1800

onlyif mysql # aggregate syntax: 
query I rowsort label-3032
SELECT DISTINCT + MAX( + 97 ) col1 FROM tab1
----
97

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3032
SELECT DISTINCT + MAX ( + 97 ) col1 FROM tab1
----
97

query I rowsort
SELECT DISTINCT - col0 * - + 75 FROM tab0
----
1125
6525
7275

query III rowsort
SELECT * FROM tab2 WHERE NOT NULL BETWEEN NULL AND - col1
----

query I rowsort
SELECT DISTINCT + col1 AS col1 FROM tab2 WHERE - col1 * - 85 + 85 < + - 69
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3036
SELECT DISTINCT - COUNT( * ) * + - COUNT( * ) AS col1 FROM tab0
----
9

skipif mysql # not compatible
query I rowsort label-3036
SELECT DISTINCT - COUNT ( * ) * + - COUNT ( * ) AS col1 FROM tab0
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-3037
SELECT ALL + COUNT( * ) * 50 AS col0 FROM tab2
----
150

skipif mysql # not compatible
query I rowsort label-3037
SELECT ALL + COUNT ( * ) * 50 AS col0 FROM tab2
----
150

query I rowsort
SELECT DISTINCT col2 * + 60 FROM tab2
----
1380
2400
3480

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3039
SELECT * FROM tab2 WHERE NOT ( + - 90 ) * + + col0 / - CAST( + col1 AS SIGNED ) - ( + col2 ) / - + ( + 90 ) * col0 + 6 NOT IN ( + + col2, + 10 / - col1, - 48 )
----

skipif mysql # not compatible
query III rowsort label-3039
SELECT * FROM tab2 WHERE NOT ( + - 90 ) * + + col0 / - CAST ( + col1 AS INTEGER ) - ( + col2 ) / - + ( + 90 ) * col0 + 6 NOT IN ( + + col2, + 10 / - col1, - 48 )
----

query III rowsort
SELECT * FROM tab2 WHERE + ( - 86 ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab0 WHERE - + col2 * col2 * + 53 IS NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col1 + + + 86 * col1 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + - col2 + + + col1 col2 FROM tab2 AS cor0
----
28
37
9

onlyif mysql # aggregate syntax: 
query I rowsort label-3044
SELECT - MIN( col0 ) FROM tab1 AS cor0
----
-51

skipif mysql # not compatible
query I rowsort label-3044
SELECT - MIN ( col0 ) FROM tab1 AS cor0
----
-51

query I rowsort
SELECT + + col0 * + + col2 * + - 70 * + col1 AS col0 FROM tab0 AS cor0
----
-1278900
-3997350
-672210

query I rowsort
SELECT DISTINCT 89 FROM tab0 cor0 WHERE NOT NULL > NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3047
SELECT + + 93 * COUNT( * ) FROM tab1 AS cor0
----
279

skipif mysql # not compatible
query I rowsort label-3047
SELECT + + 93 * COUNT ( * ) FROM tab1 AS cor0
----
279

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT col0 AS col2, + col1 col1 FROM tab2
----
46
51
64
77
75
67

onlyif mysql # aggregate syntax: 
query I rowsort label-3049
SELECT DISTINCT - 59 * - COUNT( * ) AS col0 FROM tab1
----
177

skipif mysql # not compatible
query I rowsort label-3049
SELECT DISTINCT - 59 * - COUNT ( * ) AS col0 FROM tab1
----
177

onlyif mysql # CAST syntax: SIGNED type: 
query IIIIII rowsort label-3050
SELECT DISTINCT * FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1 WHERE + CAST( NULL AS SIGNED ) IS NULL
----
54 values hashing to c419dc2a653bccd84f7a2da103315187

skipif mysql # not compatible
query IIIIII rowsort label-3050
SELECT DISTINCT * FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1 WHERE + CAST ( NULL AS INTEGER ) IS NULL
----
54 values hashing to c419dc2a653bccd84f7a2da103315187

onlyif mysql # aggregate syntax: 
query I rowsort label-3051
SELECT ALL + COUNT( DISTINCT - - 73 ) * ( - COUNT( * ) ) FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-3051
SELECT ALL + COUNT ( DISTINCT - - 73 ) * ( - COUNT ( * ) ) FROM tab0
----
-3

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3052
SELECT DISTINCT + 32 / CAST( NULL AS DECIMAL ) / 71 AS col0 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-3052
SELECT DISTINCT + 32 / CAST ( NULL AS REAL ) / 71 AS col0 FROM tab2
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-3053
SELECT DISTINCT col1 DIV + - col0 AS col1 FROM tab2
----
-1
0

skipif mysql # not compatible
query I rowsort label-3053
SELECT DISTINCT col1 / + - col0 AS col1 FROM tab2
----
-1
0

query IIIIII rowsort
SELECT * FROM tab0 AS cor0 CROSS JOIN tab2 cor1 WHERE NOT NULL IS NOT NULL
----
54 values hashing to eaa394f1627c8d5e53406d9ca3b09469

query I rowsort
SELECT + 33 * + col1 * + col1 + 81 AS col2 FROM tab1 AS cor0
----
6549
72978
906

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3056
SELECT * FROM tab1 AS cor0 WHERE + CAST( + col0 AS SIGNED ) + + ( col2 ) + 91 IS NULL
----

skipif mysql # not compatible
query III rowsort label-3056
SELECT * FROM tab1 AS cor0 WHERE + CAST ( + col0 AS INTEGER ) + + ( col2 ) + 91 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3057
SELECT ALL CAST( - col2 AS SIGNED ) + + col1 FROM tab0 AS cor0
----
-98
11
34

skipif mysql # not compatible
query I rowsort label-3057
SELECT ALL CAST ( - col2 AS INTEGER ) + + col1 FROM tab0 AS cor0
----
-98
11
34

query I rowsort
SELECT DISTINCT - - 51 * + col1 + + col1 AS col1 FROM tab2 AS cor0
----
2652
3484
4004

onlyif mysql # DIV for integer division: 
query I rowsort label-3059
SELECT - col1 DIV - col0 + ( + col1 ) col0 FROM tab0 AS cor0
----
1
21
86

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3059
SELECT - col1 / - col0 + ( + col1 ) col0 FROM tab0 AS cor0
----
1
21
86

query I rowsort
SELECT DISTINCT - ( - - col2 ) AS col1 FROM tab2 AS cor0 WHERE NULL = 52
----

query I rowsort
SELECT - 31 + col2 AS col2 FROM tab2 AS cor0
----
-8
27
9

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + ( 45 ) col0 FROM tab0 AS cor0 WHERE NULL > ( NULL )
----

query I rowsort
SELECT ALL - - col1 - - 39 AS col2 FROM tab0 AS cor0
----
120
40
60

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3064
SELECT DISTINCT ( CAST( NULL AS SIGNED ) ) + - - col0 * - col2 col1 FROM tab0
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3064
SELECT DISTINCT ( CAST ( NULL AS INTEGER ) ) + - - col0 * - col2 col1 FROM tab0
----
NULL

query III rowsort
SELECT * FROM tab0 WHERE + 49 * + 49 - + col0 - 54 NOT IN ( - 92 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT col0 AS col0 FROM tab0 WHERE NOT + + col0 IS NOT NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-3067
SELECT ALL COUNT( * ) DIV - 33, - MAX( - - col2 ) + 43 * 1 col0 FROM tab1
----
0
-53

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3067
SELECT ALL COUNT ( * ) / - 33, - MAX ( - - col2 ) + 43 * 1 col0 FROM tab1
----
0
-53

onlyif mysql # aggregate syntax: 
query I rowsort label-3068
SELECT + SUM( - 29 ) FROM tab0 AS cor0
----
-87

skipif mysql # not compatible
query I rowsort label-3068
SELECT + SUM ( - 29 ) FROM tab0 AS cor0
----
-87

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 71 col1 FROM tab0
----
71
71
71

query I rowsort
SELECT 55 * col2 AS col1 FROM tab0
----
2585
5445
550

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3071
SELECT ALL * FROM tab0 AS cor0 WHERE NOT NULL NOT BETWEEN col0 AND - - ( - CAST( + - col1 AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-3071
SELECT ALL * FROM tab0 AS cor0 WHERE NOT NULL NOT BETWEEN col0 AND - - ( - CAST ( + - col1 AS INTEGER ) )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + - ( + - col0 ) col0 FROM tab0 AS cor0
----
15
87
97

query I rowsort
SELECT 60 AS col1 FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL
----
60
60
60

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-3074
SELECT + 33 AS col1, 90 + + - CAST( NULL AS SIGNED ) * - ( + COUNT( * ) ) AS col2 FROM tab2 AS cor0
----
33
NULL

skipif mysql # not compatible
query II rowsort label-3074
SELECT + 33 AS col1, 90 + + - CAST ( NULL AS INTEGER ) * - ( + COUNT ( * ) ) AS col2 FROM tab2 AS cor0
----
33
NULL

query II rowsort
SELECT DISTINCT + col0, 80 FROM tab1 AS cor0 WHERE col2 IS NOT NULL
----
51
80
85
80
91
80

onlyif mysql # aggregate syntax: 
query I rowsort label-3076
SELECT ALL + SUM( ALL - col1 ) FROM tab0 cor0
----
-103

skipif mysql # not compatible
query I rowsort label-3076
SELECT ALL + SUM ( ALL - col1 ) FROM tab0 cor0
----
-103

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT col0 NOT BETWEEN + + col1 / col2 - - 30 AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3078
SELECT DISTINCT 23 * - COUNT( * ) FROM tab2
----
-69

skipif mysql # not compatible
query I rowsort label-3078
SELECT DISTINCT 23 * - COUNT ( * ) FROM tab2
----
-69

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT NULL IN ( + - 10, + col0 * + 55, - col1 / - 10 + col2 + col0, + col1 )
----

query I rowsort
SELECT DISTINCT 90 * - 30 FROM tab2
----
-2700

query I rowsort
SELECT ( - col0 ) * 57 FROM tab0
----
-4959
-5529
-855

onlyif mysql # aggregate syntax: 
query I rowsort label-3082
SELECT 34 * COUNT( * ) FROM tab0
----
102

skipif mysql # not compatible
query I rowsort label-3082
SELECT 34 * COUNT ( * ) FROM tab0
----
102

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3083
SELECT - 22 DIV - ( + MAX( DISTINCT - - col1 ) ) FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-3083
SELECT - 22 / - ( + MAX ( DISTINCT - - col1 ) ) FROM tab2
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-3084
SELECT ALL - COUNT( * ) + + 93 AS col1 FROM tab1
----
90

skipif mysql # not compatible
query I rowsort label-3084
SELECT ALL - COUNT ( * ) + + 93 AS col1 FROM tab1
----
90

query I rowsort
SELECT - ( col2 ) + + - 87 AS col0 FROM tab0 AS cor0
----
-134
-186
-97

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE col2 + + col1 * - 51 IS NULL
----

query I rowsort
SELECT DISTINCT col1 FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE 5 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab0 WHERE ( 74 ) / + 18 + - col1 IS NULL
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL BETWEEN 29 AND - col0 * col1
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3091
SELECT - CAST( NULL AS SIGNED ) - + - col2 AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3091
SELECT - CAST ( NULL AS INTEGER ) - + - col2 AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query II rowsort label-3092
SELECT + 39 AS col0, 76 DIV col0 AS col1 FROM tab1
----
39
0
39
0
39
1

skipif mysql # not compatible
query II rowsort label-3092
SELECT + 39 AS col0, 76 / col0 AS col1 FROM tab1
----
39
0
39
0
39
1

query I rowsort
SELECT ALL + 75 * col0 AS col1 FROM tab1
----
3825
6375
6825

onlyif mysql # aggregate syntax: 
query I rowsort label-3094
SELECT ALL + MIN( ALL - - col0 ) col2 FROM tab0
----
15

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3094
SELECT ALL + MIN ( ALL - - col0 ) col2 FROM tab0
----
15

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 1 col0 FROM tab1
----
1
1
1

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 col1 FROM tab2 WHERE NOT - - 9 IS NOT NULL
----

query II rowsort
SELECT ALL 84 AS col1, - col1 AS col2 FROM tab1
----
84
-14
84
-47
84
-5

onlyif mysql # aggregate syntax: 
query II rowsort label-3098
SELECT ALL COUNT( * ), 47 AS col1 FROM tab2
----
3
47

skipif mysql # not compatible
query II rowsort label-3098
SELECT ALL COUNT ( * ), 47 AS col1 FROM tab2
----
3
47

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT - col1 <= NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 70 * + 15 col1 FROM tab2 AS cor0
----
-1050

query III rowsort
SELECT DISTINCT * FROM tab2 cor0 WHERE NOT 23 > 22
----

query III rowsort
SELECT ALL * FROM tab2 WHERE - 32 * 88 IN ( + - 22 )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3103
SELECT ALL 93 + ( + - 79 ) DIV COUNT( * ) DIV - - SUM( DISTINCT + + col0 ) + - 87 FROM tab1 AS cor0 WHERE + col0 <> - col0
----
6

skipif mysql # not compatible
query I rowsort label-3103
SELECT ALL 93 + ( + - 79 ) / COUNT ( * ) / - - SUM ( DISTINCT + + col0 ) + - 87 FROM tab1 AS cor0 WHERE + col0 <> - col0
----
6

query I rowsort
SELECT DISTINCT - - col0 * - 71 * col0 + - 95 FROM tab1 AS cor0
----
-184766
-513070
-588046

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3105
SELECT ALL - - COUNT( * ) DIV - + COUNT( * ) - COUNT( + col0 ) + 93 FROM tab0 AS cor0
----
89

skipif mysql # not compatible
query I rowsort label-3105
SELECT ALL - - COUNT ( * ) / - + COUNT ( * ) - COUNT ( + col0 ) + 93 FROM tab0 AS cor0
----
89

query II rowsort
SELECT + 56, - col2 FROM tab0 AS cor0 WHERE NOT + 43 <> NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3107
SELECT ALL + 66 + + COUNT( * ) FROM tab0 AS cor0
----
69

skipif mysql # not compatible
query I rowsort label-3107
SELECT ALL + 66 + + COUNT ( * ) FROM tab0 AS cor0
----
69

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT NULL > col0 - 83 + + col2 + 22 + + - col1
----

query I rowsort
SELECT DISTINCT col2 + 47 FROM tab2 AS cor0
----
105
70
87

onlyif mysql # aggregate syntax: 
query I rowsort label-3110
SELECT - - MAX( + - 34 ) FROM tab1 WHERE ( - col0 NOT BETWEEN NULL AND - col1 )
----
NULL

skipif mysql # not compatible
query I rowsort label-3110
SELECT - - MAX ( + - 34 ) FROM tab1 WHERE ( - col0 NOT BETWEEN NULL AND - col1 )
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3111
SELECT ALL - MIN( + col2 ) FROM tab2
----
-23

skipif mysql # not compatible
query I rowsort label-3111
SELECT ALL - MIN ( + col2 ) FROM tab2
----
-23

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 36 col0 FROM tab1
----
36

query III rowsort
SELECT * FROM tab0 WHERE + - col1 >= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3114
SELECT MAX( ALL - 74 ) AS col2 FROM tab1 AS cor0
----
-74

skipif mysql # not compatible
query I rowsort label-3114
SELECT MAX ( ALL - 74 ) AS col2 FROM tab1 AS cor0
----
-74

query I rowsort
SELECT ALL + - 83 AS col0 FROM tab2 cor0 WHERE NULL NOT BETWEEN - col1 AND col1
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 22 col0 FROM tab2 AS cor0
----
22
22
22

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - col2 * - col2 NOT IN ( col1 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3118
SELECT 20 DIV - COUNT( ALL col1 ) FROM tab1
----
-6

skipif mysql # not compatible
query I rowsort label-3118
SELECT 20 / - COUNT ( ALL col1 ) FROM tab1
----
-6

query I rowsort
SELECT DISTINCT + col2 * - col1 - + 36 AS col1 FROM tab1
----
-1380
-3232
-331

query I rowsort
SELECT ALL 93 AS col2 FROM tab1 WHERE col0 > + col1
----
93
93
93

query III rowsort
SELECT * FROM tab0 WHERE + 90 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3122
SELECT DISTINCT COUNT( * ) DIV - 37 FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-3122
SELECT DISTINCT COUNT ( * ) / - 37 FROM tab0
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-3123
SELECT ALL - ( MIN( col0 ) ) FROM tab2
----
-46

skipif mysql # not compatible
query I rowsort label-3123
SELECT ALL - ( MIN ( col0 ) ) FROM tab2
----
-46

query III rowsort
SELECT * FROM tab1 WHERE NOT col0 * - col1 + - col0 * col2 BETWEEN ( - col1 ) AND NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # DIV for integer division: 
query I rowsort label-3125
SELECT DISTINCT col1 + - 70 DIV col1 AS col1 FROM tab2
----
50
66
77

skipif mysql # not compatible
query I rowsort label-3125
SELECT DISTINCT col1 + - 70 / col1 AS col1 FROM tab2
----
50
66
77

onlyif mysql # aggregate syntax: 
query I rowsort label-3126
SELECT + SUM( DISTINCT - col1 ) * + 85 FROM tab0
----
-8755

skipif mysql # not compatible
query I rowsort label-3126
SELECT + SUM ( DISTINCT - col1 ) * + 85 FROM tab0
----
-8755

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL IN ( 35 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT ( + col2 ) + + col0 col1 FROM tab0
----
196
62
97

query I rowsort
SELECT col2 * - 49 AS col0 FROM tab0
----
-2303
-4851
-490

query I rowsort
SELECT DISTINCT + 38 * col0 AS col1 FROM tab2
----
1748
2432
2850

onlyif mysql # aggregate syntax: 
query I rowsort label-3131
SELECT COUNT( - col1 ) + 9 FROM tab1
----
12

skipif mysql # not compatible
query I rowsort label-3131
SELECT COUNT ( - col1 ) + 9 FROM tab1
----
12

onlyif mysql # aggregate syntax: 
query I rowsort label-3132
SELECT ALL MIN( - 0 ) AS col0 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-3132
SELECT ALL MIN ( - 0 ) AS col0 FROM tab1
----
0

query I rowsort
SELECT ( + 1 ) AS col1 FROM tab0
----
1
1
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3134
SELECT DISTINCT - CAST( AVG ( + 50 ) AS SIGNED ) FROM tab0
----
-50

skipif mysql # not compatible
query I rowsort label-3134
SELECT DISTINCT - CAST ( AVG ( + 50 ) AS INTEGER ) FROM tab0
----
-50

query I rowsort
SELECT DISTINCT 30 - + col2 FROM tab2
----
-10
-28
7

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3136
SELECT DISTINCT 75 + COUNT( * ) DIV - 28 AS col1 FROM tab1
----
75

skipif mysql # not compatible
query I rowsort label-3136
SELECT DISTINCT 75 + COUNT ( * ) / - 28 AS col1 FROM tab1
----
75

query III rowsort
SELECT * FROM tab1 WHERE ( 29 ) NOT IN ( col0 - ( 71 + col2 ) )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL col0 FROM tab1 WHERE col2 IS NOT NULL
----
51
85
91

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-3139
SELECT ALL * FROM tab1 WHERE NULL <= CAST( + col0 AS DECIMAL )
----

skipif mysql # not compatible
query III rowsort label-3139
SELECT ALL * FROM tab1 WHERE NULL <= CAST ( + col0 AS REAL )
----

query I rowsort
SELECT + ( - 18 ) + col1 FROM tab2 WHERE 36 IS NULL
----

query III rowsort
SELECT * FROM tab0 WHERE ( + col1 / + 16 + 82 ) NOT BETWEEN - col2 * 29 AND NULL
----

query I rowsort
SELECT - ( 57 ) - + col1 FROM tab0
----
-138
-58
-78

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3143
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( ( + 57 ) + CAST( NULL AS SIGNED ) ) <> 33 + - 79
----

skipif mysql # not compatible
query III rowsort label-3143
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( ( + 57 ) + CAST ( NULL AS INTEGER ) ) <> 33 + - 79
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT 42 = NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3145
SELECT col2 DIV 81 FROM tab0 cor0
----
0
0
1

skipif mysql # not compatible
query I rowsort label-3145
SELECT col2 / 81 FROM tab0 cor0
----
0
0
1

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3146
SELECT ALL * FROM tab1 AS cor0 WHERE ( NULL ) > CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-3146
SELECT ALL * FROM tab1 AS cor0 WHERE ( NULL ) > CAST ( NULL AS INTEGER )
----

query I rowsort
SELECT 94 AS col1 FROM tab1 AS cor0
----
94
94
94

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3148
SELECT ALL + COUNT( * ) DIV + COUNT( * ) col0 FROM tab1
----
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3148
SELECT ALL + COUNT ( * ) / + COUNT ( * ) col0 FROM tab1
----
1

query III rowsort
SELECT * FROM tab1 WHERE NOT col2 / + 18 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT col0 FROM tab1 WHERE NOT col2 >= ( col0 )
----
85
91

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3151
SELECT CAST( - col2 AS SIGNED ) + 26 FROM tab2
----
-14
-32
3

skipif mysql # not compatible
query I rowsort label-3151
SELECT CAST ( - col2 AS INTEGER ) + 26 FROM tab2
----
-14
-32
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3152
SELECT ALL 43 * MAX( ALL - 10 ) AS col1 FROM tab1
----
-430

skipif mysql # not compatible
query I rowsort label-3152
SELECT ALL 43 * MAX ( ALL - 10 ) AS col1 FROM tab1
----
-430

query IIIIII rowsort
SELECT ALL * FROM tab1 AS cor0 CROSS JOIN tab1 WHERE NOT ( NULL ) IS NULL
----

query I rowsort
SELECT - 70 FROM tab0 AS cor0 CROSS JOIN tab1
----
9 values hashing to 35707a5d99c98b2657c084a50ff1b073

onlyif mysql # aggregate syntax: 
query I rowsort label-3155
SELECT - - MIN( col0 ) * - COUNT( * ) FROM tab1 AS cor0
----
-153

skipif mysql # not compatible
query I rowsort label-3155
SELECT - - MIN ( col0 ) * - COUNT ( * ) FROM tab1 AS cor0
----
-153

query I rowsort
SELECT DISTINCT col1 * + col0 AS col1 FROM tab1 cor0 WHERE - 7 NOT IN ( 63 )
----
425
4277
714

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT + col0 <> ( - 0 )
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE ( 57 ) IS NULL
----

query I rowsort
SELECT DISTINCT - + col1 + 35 FROM tab0 AS cor0
----
-46
14
34

onlyif mysql # aggregate syntax: 
query I rowsort label-3160
SELECT ALL + COUNT( * ) + + 97 AS col0 FROM tab0 cor0
----
100

skipif mysql # not compatible
query I rowsort label-3160
SELECT ALL + COUNT ( * ) + + 97 AS col0 FROM tab0 cor0
----
100

query I rowsort
SELECT - 98 FROM tab2 AS cor0 WHERE ( ( + 60 ) ) IS NULL
----

query I rowsort
SELECT DISTINCT - - col0 + - 37 AS col1 FROM tab2 AS cor0
----
27
38
9

query I rowsort
SELECT DISTINCT col1 FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3164
SELECT ALL COUNT( - ( 36 ) ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-3164
SELECT ALL COUNT ( - ( 36 ) ) FROM tab1
----
3

query I rowsort
SELECT col0 * + - 74 AS col2 FROM tab2
----
-3404
-4736
-5550

onlyif mysql # DIV for integer division: 
query I rowsort label-3166
SELECT col2 DIV + 44 AS col0 FROM tab0
----
0
1
2

skipif mysql # not compatible
query I rowsort label-3166
SELECT col2 / + 44 AS col0 FROM tab0
----
0
1
2

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( - col2 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-3168
SELECT COUNT( * ) * - 4 col0 FROM tab2
----
-12

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3168
SELECT COUNT ( * ) * - 4 col0 FROM tab2
----
-12

onlyif mysql # aggregate syntax: 
query I rowsort label-3169
SELECT ALL ( - + COUNT( * ) ) col2 FROM tab0
----
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3169
SELECT ALL ( - + COUNT ( * ) ) col2 FROM tab0
----
-3

query I rowsort
SELECT - 74 / 25 FROM tab1 WHERE ( 99 ) IS NULL OR NOT ( + col0 + + 25 ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3171
SELECT DISTINCT MAX( - + col2 ) FROM tab0
----
-10

skipif mysql # not compatible
query I rowsort label-3171
SELECT DISTINCT MAX ( - + col2 ) FROM tab0
----
-10

query I rowsort
SELECT DISTINCT + ( - - col2 ) + - col0 * - 77 FROM tab2
----
3565
4968
5833

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3173
SELECT 23 + - - col0 - - CAST( NULL AS DECIMAL ) * col0 / + 81 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3173
SELECT 23 + - - col0 - - CAST ( NULL AS REAL ) * col0 / + 81 FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT ALL + col0 + - + 48 AS col1 FROM tab1
----
3
37
43

query I rowsort
SELECT ALL - 94 + 79 AS col0 FROM tab0 AS cor0
----
-15
-15
-15

query I rowsort
SELECT DISTINCT - - 3 + - 79 FROM tab0 AS cor0
----
-76

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3177
SELECT ALL 16 - ( - - CAST( NULL AS SIGNED ) ) + 12 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3177
SELECT ALL 16 - ( - - CAST ( NULL AS INTEGER ) ) + 12 FROM tab0
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 48 col1 FROM tab1, tab2 AS cor0
----
9 values hashing to 31c94943c073954e4ca20b170ab61f8c

query III rowsort
SELECT * FROM tab0 WHERE ( + 88 ) NOT BETWEEN ( NULL ) AND - col2
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL < 3
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3181
SELECT - CAST( 58 AS SIGNED ) * - COUNT( * ) AS col0 FROM tab0 AS cor0
----
174

skipif mysql # not compatible
query I rowsort label-3181
SELECT - CAST ( 58 AS INTEGER ) * - COUNT ( * ) AS col0 FROM tab0 AS cor0
----
174

onlyif mysql # DIV for integer division: 
query I rowsort label-3182
SELECT - + 80 DIV - col2 FROM tab2 cor0
----
1
2
3

skipif mysql # not compatible
query I rowsort label-3182
SELECT - + 80 / - col2 FROM tab2 cor0
----
1
2
3

query I rowsort
SELECT DISTINCT + col2 + - col1 FROM tab1 AS cor0 WHERE 6 + + col0 IN ( 28 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: DIV for integer division: 
query II rowsort label-3184
SELECT - + 6, + SUM( DISTINCT + + CAST( col0 AS SIGNED ) ) DIV ( COUNT( * ) ) col0 FROM tab1 AS cor0
----
-6
75

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3184
SELECT - + 6, + SUM ( DISTINCT + + CAST ( col0 AS INTEGER ) ) / ( COUNT ( * ) ) col0 FROM tab1 AS cor0
----
-6
75

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + - 86 col1, - col0 * + col0 AS col1 FROM tab2 AS cor0
----
-86
-2116
-86
-4096
-86
-5625

query I rowsort
SELECT + 94 + + 61 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
155
155
155

onlyif mysql # aggregate syntax: 
query I rowsort label-3187
SELECT DISTINCT ( MIN( DISTINCT 87 ) ) AS col2 FROM tab1 WHERE NOT ( + col1 ) IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3187
SELECT DISTINCT ( MIN ( DISTINCT 87 ) ) AS col2 FROM tab1 WHERE NOT ( + col1 ) IS NOT NULL
----
NULL

query I rowsort
SELECT DISTINCT - col1 * 46 FROM tab2 WHERE col0 IS NOT NULL
----
-2346
-3082
-3542

onlyif mysql # aggregate syntax: 
query I rowsort label-3189
SELECT - COUNT( DISTINCT col0 ) AS col0 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-3189
SELECT - COUNT ( DISTINCT col0 ) AS col0 FROM tab2
----
-3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3190
SELECT CAST( + - col0 AS SIGNED ) AS col1 FROM tab1
----
-51
-85
-91

skipif mysql # not compatible
query I rowsort label-3190
SELECT CAST ( + - col0 AS INTEGER ) AS col1 FROM tab1
----
-51
-85
-91

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3191
SELECT DISTINCT - col2 * + 35 AS col2, - 11 - + CAST( NULL AS SIGNED ) * + col1 AS col1 FROM tab1
----
-2065
NULL
-2380
NULL
-3360
NULL

skipif mysql # not compatible
query II rowsort label-3191
SELECT DISTINCT - col2 * + 35 AS col2, - 11 - + CAST ( NULL AS INTEGER ) * + col1 AS col1 FROM tab1
----
-2065
NULL
-2380
NULL
-3360
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3192
SELECT + SUM( ALL - col1 ) AS col2 FROM tab0
----
-103

skipif mysql # not compatible
query I rowsort label-3192
SELECT + SUM ( ALL - col1 ) AS col2 FROM tab0
----
-103

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3193
SELECT 34 * - col2 AS col2 FROM tab1 WHERE NOT - 27 * - CAST( NULL AS SIGNED ) * 64 BETWEEN - 24 AND NULL
----

skipif mysql # not compatible
query I rowsort label-3193
SELECT 34 * - col2 AS col2 FROM tab1 WHERE NOT - 27 * - CAST ( NULL AS INTEGER ) * 64 BETWEEN - 24 AND NULL
----

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL NOT BETWEEN ( NULL ) AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3195
SELECT ALL - COUNT( * ) FROM tab1 WHERE ( - - col1 / col2 + - col0 + col1 ) NOT BETWEEN ( col0 ) AND NULL
----
-3

skipif mysql # not compatible
query I rowsort label-3195
SELECT ALL - COUNT ( * ) FROM tab1 WHERE ( - - col1 / col2 + - col0 + col1 ) NOT BETWEEN ( col0 ) AND NULL
----
-3

query I rowsort
SELECT ALL col1 * + 20 * + - 68 FROM tab1
----
-19040
-63920
-6800

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL AVG ( col0 ) col2 FROM tab0 WHERE NOT NULL > + - col2 + - 18
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3198
SELECT DISTINCT + 81 * - + COUNT( * ) col1 FROM tab2 AS cor0
----
-243

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3198
SELECT DISTINCT + 81 * - + COUNT ( * ) col1 FROM tab2 AS cor0
----
-243

query I rowsort
SELECT + ( - 33 ) FROM tab1 AS cor0 WHERE NOT 69 IS NULL
----
-33
-33
-33

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT - 3 NOT IN ( + 58 )
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT - 86 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + ( - 24 ) * + - col2 AS col0 FROM tab0 AS cor0
----
1128
2376
240

query I rowsort
SELECT DISTINCT - ( - + col0 ) FROM tab2 AS cor0
----
46
64
75

onlyif mysql # DIV for integer division: 
query I rowsort label-3204
SELECT + 88 DIV - - col2 AS col1 FROM tab2
----
1
2
3

skipif mysql # not compatible
query I rowsort label-3204
SELECT + 88 / - - col2 AS col1 FROM tab2
----
1
2
3

query I rowsort
SELECT DISTINCT 14 FROM tab1 WHERE NOT ( + - col0 ) NOT BETWEEN NULL AND - + col2 * - col2
----

query I rowsort
SELECT DISTINCT + col2 * 28 * - - col0 * + - col0 FROM tab2
----
-1362704
-4587520
-9135000

query I rowsort
SELECT + ( - + 86 ) FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE ( col0 * + 56 * + - 10 + col1 ) BETWEEN ( col2 ) + col1 / + col1 AND NULL
----

query I rowsort
SELECT ALL - + col0 * 33 * + + col2 + - col2 FROM tab0 cor0
----
-23312
-28720
-316998

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3210
SELECT DISTINCT 56 + + - col0 + + - col1 * CAST( - 50 AS SIGNED ) AS col1 FROM tab0 AS cor0
----
1019
4091
9

skipif mysql # not compatible
query I rowsort label-3210
SELECT DISTINCT 56 + + - col0 + + - col1 * CAST ( - 50 AS INTEGER ) AS col1 FROM tab0 AS cor0
----
1019
4091
9

onlyif mysql # DIV for integer division: 
query I rowsort label-3211
SELECT DISTINCT - - 6 DIV + ( + 76 ) + col2 AS col1 FROM tab2 AS cor0
----
23
40
58

skipif mysql # not compatible
query I rowsort label-3211
SELECT DISTINCT - - 6 / + ( + 76 ) + col2 AS col1 FROM tab2 AS cor0
----
23
40
58

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( - col2 ) <= - col1 + + col1 / col2 + col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-3213
SELECT MIN( + col0 ) FROM tab0 AS cor0 WHERE NULL IS NULL
----
15

skipif mysql # not compatible
query I rowsort label-3213
SELECT MIN ( + col0 ) FROM tab0 AS cor0 WHERE NULL IS NULL
----
15

onlyif mysql # aggregate syntax: 
query I rowsort label-3214
SELECT ALL + COUNT( * ) + - ( 98 ) AS col1 FROM tab1 AS cor0
----
-95

skipif mysql # not compatible
query I rowsort label-3214
SELECT ALL + COUNT ( * ) + - ( 98 ) AS col1 FROM tab1 AS cor0
----
-95

query I rowsort
SELECT 65 + - ( - 7 ) + + 66 FROM tab1 AS cor0
----
138
138
138

onlyif mysql # aggregate syntax: 
query I rowsort label-3216
SELECT ALL - - ( - + MAX( col2 ) ) * - + COUNT( * ) FROM tab0 AS cor0
----
297

skipif mysql # not compatible
query I rowsort label-3216
SELECT ALL - - ( - + MAX ( col2 ) ) * - + COUNT ( * ) FROM tab0 AS cor0
----
297

onlyif mysql # aggregate syntax: 
query I rowsort label-3217
SELECT DISTINCT COUNT( * ) + 8 AS col2 FROM tab0
----
11

skipif mysql # not compatible
query I rowsort label-3217
SELECT DISTINCT COUNT ( * ) + 8 AS col2 FROM tab0
----
11

query I rowsort
SELECT + 86 + + 3 FROM tab1
----
89
89
89

onlyif mysql # DIV for integer division: 
query I rowsort label-3219
SELECT ( + col1 ) DIV + col1 AS col0 FROM tab0
----
1
1
1

skipif mysql # not compatible
query I rowsort label-3219
SELECT ( + col1 ) / + col1 AS col0 FROM tab0
----
1
1
1

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - ( + col2 ) * - 20 col2 FROM tab2
----
1160
460
800

onlyif mysql # aggregate syntax: 
query I rowsort label-3221
SELECT ALL MIN( ALL - - col0 ) FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-3221
SELECT ALL MIN ( ALL - - col0 ) FROM tab1
----
51

query III rowsort
SELECT * FROM tab2 WHERE NULL = col0
----

query I rowsort
SELECT 21 FROM tab0 WHERE - 82 > + 64
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3224
SELECT DISTINCT - SUM( ALL - - col1 ) * + COUNT( 31 ) AS col2 FROM tab0
----
-309

skipif mysql # not compatible
query I rowsort label-3224
SELECT DISTINCT - SUM ( ALL - - col1 ) * + COUNT ( 31 ) AS col2 FROM tab0
----
-309

query I rowsort
SELECT + 59 * + col2 FROM tab1
----
3481
4012
5664

onlyif mysql # aggregate syntax: 
query I rowsort label-3226
SELECT - 82 * - + MIN( + 35 ) - COUNT( * ) FROM tab1 cor0
----
2867

skipif mysql # not compatible
query I rowsort label-3226
SELECT - 82 * - + MIN ( + 35 ) - COUNT ( * ) FROM tab1 cor0
----
2867

query I rowsort
SELECT - col1 * + - col0 - + col1 AS col0 FROM tab0 AS cor0
----
1134
1806
96

onlyif mysql # aggregate syntax: 
query I rowsort label-3228
SELECT DISTINCT COUNT( * ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL BETWEEN NULL AND + - col1 OR NULL IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-3228
SELECT DISTINCT COUNT ( * ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL BETWEEN NULL AND + - col1 OR NULL IS NOT NULL
----
0

query II rowsort
SELECT ALL 63 - - - col0, col2 AS col2 FROM tab0 AS cor0
----
-24
10
-34
99
48
47

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + col2 + + col0 NOT BETWEEN - - 51 * + col1 + - col0 - 27 + + col2 AND NULL
----

query I rowsort
SELECT ALL - ( - + col2 ) AS col2 FROM tab0 AS cor0
----
10
47
99

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE ( ( 34 * - 66 + col1 + col2 + - col1 ) > ( - 65 ) )
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 4 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + col0 col0 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
51
85
91

query II rowsort
SELECT - - 8 * + col0, + 96 AS col2 FROM tab2 AS cor0
----
368
96
512
96
600
96

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-3236
SELECT - col1 DIV CAST( + col1 AS SIGNED ) FROM tab0 AS cor0
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-3236
SELECT - col1 / CAST ( + col1 AS INTEGER ) FROM tab0 AS cor0
----
-1
-1
-1

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 / + 74 + - 30 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col2 * col2 + + - ( + col0 ) AS col1 FROM tab2 AS cor0
----
1536
3289
483

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT 80 * - - 47 > - + 77
----

query III rowsort
SELECT * FROM tab2 WHERE NOT col2 + - col0 + + 69 NOT BETWEEN - col2 + - col0 AND ( - col1 * col1 + - 83 )
----

query II rowsort
SELECT ALL + col0 AS col1, 3 AS col1 FROM tab1
----
51
3
85
3
91
3

query I rowsort
SELECT DISTINCT + ( - col1 ) * - - 5 AS col1 FROM tab0
----
-105
-405
-5

query II rowsort
SELECT col2, ( + col0 ) * - + 3 * - ( - + col2 ) * + col0 + + col0 AS col0 FROM tab0
----
10
-226983
47
-31710
99
-2794376

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3244
SELECT + + 31 + - - COUNT( * ) / + CAST( NULL AS SIGNED ) * + - COUNT( ALL - + 92 ) FROM tab0 WHERE NOT col2 > NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3244
SELECT + + 31 + - - COUNT ( * ) / + CAST ( NULL AS INTEGER ) * + - COUNT ( ALL - + 92 ) FROM tab0 WHERE NOT col2 > NULL
----
NULL

query II rowsort
SELECT 51, col1 FROM tab1
----
51
14
51
47
51
5

onlyif mysql # aggregate syntax: 
query I rowsort label-3246
SELECT - SUM( + + 3 ) FROM tab2
----
-9

skipif mysql # not compatible
query I rowsort label-3246
SELECT - SUM ( + + 3 ) FROM tab2
----
-9

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col2 * + col1 col2 FROM tab0
----
210
3807
99

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3248
SELECT ALL + col1, + col2 + + CAST( NULL AS SIGNED ) AS col0 FROM tab1
----
14
NULL
47
NULL
5
NULL

skipif mysql # not compatible
query II rowsort label-3248
SELECT ALL + col1, + col2 + + CAST ( NULL AS INTEGER ) AS col0 FROM tab1
----
14
NULL
47
NULL
5
NULL

query II rowsort
SELECT - 53 AS col2, 85 AS col0 FROM tab2 AS cor0
----
-53
85
-53
85
-53
85

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3250
SELECT ALL - CAST( - 40 AS SIGNED ) col0 FROM tab0 AS cor0
----
40
40
40

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3250
SELECT ALL - CAST ( - 40 AS INTEGER ) col0 FROM tab0 AS cor0
----
40
40
40

onlyif mysql # aggregate syntax: 
query II rowsort label-3251
SELECT + + COUNT( * ) AS col2, - 97 * - 82 FROM tab0 cor0
----
3
7954

skipif mysql # not compatible
query II rowsort label-3251
SELECT + + COUNT ( * ) AS col2, - 97 * - 82 FROM tab0 cor0
----
3
7954

query I rowsort
SELECT DISTINCT col0 + col0 + col1 AS col0 FROM tab2 AS cor0
----
143
205
217

onlyif mysql # aggregate syntax: 
query I rowsort label-3253
SELECT DISTINCT + COUNT( * ) + 61 FROM tab2 cor0
----
64

skipif mysql # not compatible
query I rowsort label-3253
SELECT DISTINCT + COUNT ( * ) + 61 FROM tab2 cor0
----
64

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 60 col0 FROM tab0 cor0 WHERE NOT NULL IS NOT NULL
----
60
60
60

query I rowsort
SELECT DISTINCT - 99 + col2 FROM tab1 WHERE NOT ( ( - - col0 ) + - 96 IN ( - 33 * 6 + + - col1 + + col1 - - 99 ) )
----
-3
-31
-40

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT ( col1 IS NOT NULL )
----

query I rowsort
SELECT DISTINCT col1 + + - col2 FROM tab1 AS cor0
----
-21
-54
-82

query I rowsort
SELECT DISTINCT col2 + + - col0 AS col0 FROM tab2 cor0
----
-17
-23
-24

onlyif mysql # aggregate syntax: 
query I rowsort label-3259
SELECT ALL - 91 + + COUNT( * ) * + 47 FROM tab0 AS cor0
----
50

skipif mysql # not compatible
query I rowsort label-3259
SELECT ALL - 91 + + COUNT ( * ) * + 47 FROM tab0 AS cor0
----
50

query I rowsort
SELECT ALL - - col1 * col2 * col1 AS col0 FROM tab1 AS cor0
----
1475
150212
18816

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE col1 IN ( + 36 )
----

query II rowsort
SELECT ALL + col0 * col0 * col0 + + + col2 + + + col0 AS col0, col1 FROM tab1
----
132798
14
614269
5
753730
47

onlyif mysql # aggregate syntax: 
query I rowsort label-3263
SELECT - COUNT( * ) - + 54 FROM tab2
----
-57

skipif mysql # not compatible
query I rowsort label-3263
SELECT - COUNT ( * ) - + 54 FROM tab2
----
-57

query I rowsort
SELECT DISTINCT - col1 * 47 FROM tab1
----
-2209
-235
-658

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3265
SELECT - 50 + - COUNT( * ) * + + CAST( - COUNT( * ) AS SIGNED ) AS col1 FROM tab0
----
-41

skipif mysql # not compatible
query I rowsort label-3265
SELECT - 50 + - COUNT ( * ) * + + CAST ( - COUNT ( * ) AS INTEGER ) AS col1 FROM tab0
----
-41

query II rowsort
SELECT ALL - ( - 19 ) + + + 96 AS col0, col0 FROM tab0
----
115
15
115
87
115
97

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3267
SELECT ALL 38 DIV COUNT( * ) AS col1 FROM tab1
----
12

skipif mysql # not compatible
query I rowsort label-3267
SELECT ALL 38 / COUNT ( * ) AS col1 FROM tab1
----
12

query I rowsort
SELECT - col1 * + col0 + + + col0 AS col2 FROM tab0
----
-1200
-1740
0

query II rowsort
SELECT DISTINCT - 55 AS col1, 89 FROM tab0 AS cor0
----
-55
89

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) IN ( - - 58 - + col0 * + 40 + - + 16 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3271
SELECT ALL COUNT( ALL + col2 ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN ( NULL ) AND + CAST( NULL AS SIGNED ) / + col2 + + col0
----
0

skipif mysql # not compatible
query I rowsort label-3271
SELECT ALL COUNT ( ALL + col2 ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN ( NULL ) AND + CAST ( NULL AS INTEGER ) / + col2 + + col0
----
0

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + col0 NOT BETWEEN NULL AND - + 44
----

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE ( NOT - 7 > - + col1 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3274
SELECT ALL col1 DIV - ( col0 ) AS col0 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-3274
SELECT ALL col1 / - ( col0 ) AS col0 FROM tab1
----
0
0
0

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3275
SELECT DISTINCT CAST( NULL AS DECIMAL ) / - col1 * - - col1 AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-3275
SELECT DISTINCT CAST ( NULL AS REAL ) / - col1 * - - col1 AS col0 FROM tab0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3276
SELECT ALL - ( + + COUNT( * ) ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-3276
SELECT ALL - ( + + COUNT ( * ) ) FROM tab2
----
-3

query II rowsort
SELECT ALL - 20, col0 AS col0 FROM tab2
----
-20
46
-20
64
-20
75

query I rowsort
SELECT DISTINCT - 36 * col1 FROM tab0 AS cor0
----
-2916
-36
-756

query I rowsort
SELECT ALL 65 FROM tab0 AS cor0 WHERE + col1 IS NULL
----

query II rowsort
SELECT ALL - + 86 AS col0, col2 AS col1 FROM tab0 AS cor0
----
-86
10
-86
47
-86
99

query II rowsort
SELECT DISTINCT col0, + col0 * - col0 AS col1 FROM tab1 AS cor0
----
51
-2601
85
-7225
91
-8281

query I rowsort
SELECT - col0 * - col2 - col0 AS col0 FROM tab2 AS cor0
----
1012
2496
4275

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT 26 NOT IN ( - - col0 * + 6 )
----

onlyif mysql # aggregate syntax: 
query II rowsort label-3284
SELECT - COUNT( * ), 63 col2 FROM tab1 cor0
----
-3
63

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3284
SELECT - COUNT ( * ), 63 col2 FROM tab1 cor0
----
-3
63

onlyif mysql # aggregate syntax: 
query I rowsort label-3285
SELECT + 77 * COUNT( * ) * - 8 FROM tab2 AS cor0
----
-1848

skipif mysql # not compatible
query I rowsort label-3285
SELECT + 77 * COUNT ( * ) * - 8 FROM tab2 AS cor0
----
-1848

query I rowsort
SELECT + col2 + col2 AS col2 FROM tab0 AS cor0 WHERE NOT NULL BETWEEN + col0 AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3287
SELECT ALL - SUM( DISTINCT + - col2 ) AS col1 FROM tab0
----
156

skipif mysql # not compatible
query I rowsort label-3287
SELECT ALL - SUM ( DISTINCT + - col2 ) AS col1 FROM tab0
----
156

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3288
SELECT SUM( DISTINCT + CAST( NULL AS SIGNED ) ) * + 21 AS col2 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-3288
SELECT SUM ( DISTINCT + CAST ( NULL AS INTEGER ) ) * + 21 AS col2 FROM tab0
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-3289
SELECT DISTINCT col0 DIV - - 32 FROM tab2
----
1
2

skipif mysql # not compatible
query I rowsort label-3289
SELECT DISTINCT col0 / - - 32 FROM tab2
----
1
2

query III rowsort
SELECT * FROM tab2 WHERE NOT ( NOT - 18 + + col1 IS NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3291
SELECT COUNT( + - 68 ) + - + COUNT( * ) FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-3291
SELECT COUNT ( + - 68 ) + - + COUNT ( * ) FROM tab0
----
0

query I rowsort
SELECT - col1 + + + col0 + col2 FROM tab2
----
18
27
66

query III rowsort
SELECT * FROM tab0 WHERE NOT - 89 IS NOT NULL
----

query I rowsort
SELECT DISTINCT 0 FROM tab0, tab0 cor0
----
0

query III rowsort
SELECT * FROM tab0 WHERE NOT ( NOT ( - col1 IS NOT NULL ) )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3296
SELECT + CAST( + + col2 AS SIGNED ) FROM tab0 AS cor0
----
10
47
99

skipif mysql # not compatible
query I rowsort label-3296
SELECT + CAST ( + + col2 AS INTEGER ) FROM tab0 AS cor0
----
10
47
99

onlyif mysql # aggregate syntax: 
query II rowsort label-3297
SELECT ALL - - COUNT( ALL - - col2 ) col1, - 96 AS col0 FROM tab1 AS cor0
----
3
-96

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3297
SELECT ALL - - COUNT ( ALL - - col2 ) col1, - 96 AS col0 FROM tab1 AS cor0
----
3
-96

onlyif mysql # aggregate syntax: 
query I rowsort label-3298
SELECT DISTINCT - COUNT( ALL - 25 ) FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-3298
SELECT DISTINCT - COUNT ( ALL - 25 ) FROM tab0
----
-3

query I rowsort
SELECT 20 FROM tab0 cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to 2fdd942fe0307a6ff66b63004ef102c4

onlyif mysql # aggregate syntax: 
query II rowsort label-3300
SELECT DISTINCT + 32 AS col2, COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
32
9

skipif mysql # not compatible
query II rowsort label-3300
SELECT DISTINCT + 32 AS col2, COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
32
9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: DIV for integer division: 
query I rowsort label-3301
SELECT + 86 + + COUNT( * ) DIV - + ( CAST( - MIN( col1 ) AS SIGNED ) ) FROM tab1 AS cor0
----
86

skipif mysql # not compatible
query I rowsort label-3301
SELECT + 86 + + COUNT ( * ) / - + ( CAST ( - MIN ( col1 ) AS INTEGER ) ) FROM tab1 AS cor0
----
86

onlyif mysql # aggregate syntax: 
query I rowsort label-3302
SELECT ALL + - SUM( + col1 ) - + COUNT( * ) FROM tab2 AS cor0
----
-198

skipif mysql # not compatible
query I rowsort label-3302
SELECT ALL + - SUM ( + col1 ) - + COUNT ( * ) FROM tab2 AS cor0
----
-198

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3303
SELECT DISTINCT - CAST( NULL AS SIGNED ) / col1 - 71 FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3303
SELECT DISTINCT - CAST ( NULL AS INTEGER ) / col1 - 71 FROM tab2 AS cor0
----
NULL

query I rowsort
SELECT ( + + 68 ) AS col2 FROM tab0
----
68
68
68

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3305
SELECT ALL 0 - + 38 AS col0, + CAST( NULL AS SIGNED ) * - col2 AS col2 FROM tab1
----
-38
NULL
-38
NULL
-38
NULL

skipif mysql # not compatible
query II rowsort label-3305
SELECT ALL 0 - + 38 AS col0, + CAST ( NULL AS INTEGER ) * - col2 AS col2 FROM tab1
----
-38
NULL
-38
NULL
-38
NULL

query I rowsort
SELECT DISTINCT 48 + - - 73 FROM tab2
----
121

onlyif mysql # aggregate syntax: 
query I rowsort label-3307
SELECT DISTINCT 47 * 84 * + COUNT( * ) AS col0 FROM tab1
----
11844

skipif mysql # not compatible
query I rowsort label-3307
SELECT DISTINCT 47 * 84 * + COUNT ( * ) AS col0 FROM tab1
----
11844

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - 94 < - 89
----

query I rowsort
SELECT DISTINCT + ( - 89 ) * col0 * + + 9 FROM tab2 AS cor0
----
-36846
-51264
-60075

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT col1 >= col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-3311
SELECT DISTINCT + MAX( ALL + 11 ) col0 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
11

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3311
SELECT DISTINCT + MAX ( ALL + 11 ) col0 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
11

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + - col1 * - 15 NOT BETWEEN - 50 AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3313
SELECT ALL CAST( NULL AS SIGNED ) * - 50 + - CAST( NULL AS SIGNED ) * col2 AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3313
SELECT ALL CAST ( NULL AS INTEGER ) * - 50 + - CAST ( NULL AS INTEGER ) * col2 AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3314
SELECT - - 69 * - SUM( ALL - 68 ) FROM tab0 AS cor0
----
14076

skipif mysql # not compatible
query I rowsort label-3314
SELECT - - 69 * - SUM ( ALL - 68 ) FROM tab0 AS cor0
----
14076

query I rowsort
SELECT DISTINCT - col2 * col1 * 8 FROM tab1 AS cor0
----
-10752
-2360
-25568

query I rowsort
SELECT - col2 * - + 82 * + ( + 65 ) AS col2 FROM tab1 cor0
----
314470
362440
511680

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3317
SELECT ALL + 49 DIV 4 * + ( COUNT( - + 51 ) ) FROM tab0 AS cor0
----
36

skipif mysql # not compatible
query I rowsort label-3317
SELECT ALL + 49 / 4 * + ( COUNT ( - + 51 ) ) FROM tab0 AS cor0
----
36

onlyif mysql # aggregate syntax: 
query I rowsort label-3318
SELECT ALL MIN( DISTINCT + col2 ) FROM tab2 AS cor0
----
23

skipif mysql # not compatible
query I rowsort label-3318
SELECT ALL MIN ( DISTINCT + col2 ) FROM tab2 AS cor0
----
23

query I rowsort
SELECT DISTINCT - + col0 * - - ( + - col0 ) FROM tab2 cor0
----
2116
4096
5625

onlyif mysql # DIV for integer division: 
query I rowsort label-3320
SELECT DISTINCT 39 DIV - col0 AS col2 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-3320
SELECT DISTINCT 39 / - col0 AS col2 FROM tab1
----
0

query II rowsort
SELECT DISTINCT + 6 AS col0, 69 FROM tab0 WHERE NULL = 42
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3322
SELECT ALL ( + - MAX( ALL - + col2 ) ) FROM tab0
----
10

skipif mysql # not compatible
query I rowsort label-3322
SELECT ALL ( + - MAX ( ALL - + col2 ) ) FROM tab0
----
10

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3323
SELECT + CAST( NULL AS SIGNED ) * - - col1 * - - 17 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3323
SELECT + CAST ( NULL AS INTEGER ) * - - col1 * - - 17 FROM tab2
----
NULL
NULL
NULL

query II rowsort
SELECT - col2, col0 FROM tab0
----
-10
87
-47
15
-99
97

onlyif mysql # aggregate syntax: 
query II rowsort label-3325
SELECT - COUNT( * ) col1, - COUNT( * ) AS col0 FROM tab2
----
-3
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3325
SELECT - COUNT ( * ) col1, - COUNT ( * ) AS col0 FROM tab2
----
-3
-3

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT - col2 NOT BETWEEN - 6 * col0 + col0 + 86 * col2 AND NULL
----

query II rowsort
SELECT DISTINCT - col1 AS col2, col0 * - - 27 + + 38 + 11 AS col2 FROM tab1
----
-14
1426
-47
2506
-5
2344

query I rowsort
SELECT col0 * - + col1 * - col2 FROM tab0
----
18270
57105
9603

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3329
SELECT ALL + 85 + - COUNT( * ) DIV - + COUNT( * ) + - - ( - COUNT( * ) ) - - COUNT( * ) * - 42 AS col2 FROM tab1 AS cor0
----
-43

skipif mysql # not compatible
query I rowsort label-3329
SELECT ALL + 85 + - COUNT ( * ) / - + COUNT ( * ) + - - ( - COUNT ( * ) ) - - COUNT ( * ) * - 42 AS col2 FROM tab1 AS cor0
----
-43

query I rowsort
SELECT DISTINCT + ( + col1 ) + col2 AS col0 FROM tab0 AS cor0
----
100
128
31

query III rowsort
SELECT * FROM tab1 cor0 WHERE NULL < 16 + - col2 * - - ( - col2 )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3332
SELECT ALL SUM( col2 ) DIV + COUNT( * ) + + COUNT( * ) FROM tab0 AS cor0
----
55

skipif mysql # not compatible
query I rowsort label-3332
SELECT ALL SUM ( col2 ) / + COUNT ( * ) + + COUNT ( * ) FROM tab0 AS cor0
----
55

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3333
SELECT DISTINCT - AVG ( - CAST( NULL AS SIGNED ) ) FROM tab1 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3333
SELECT DISTINCT - AVG ( - CAST ( NULL AS INTEGER ) ) FROM tab1 cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3334
SELECT ALL * FROM tab0 AS cor0 WHERE NULL IN ( col0, + 95 - + - col2, + ( - col0 ) + 12 + + CAST( NULL AS SIGNED ) / col0 )
----

skipif mysql # not compatible
query III rowsort label-3334
SELECT ALL * FROM tab0 AS cor0 WHERE NULL IN ( col0, + 95 - + - col2, + ( - col0 ) + 12 + + CAST ( NULL AS INTEGER ) / col0 )
----

query I rowsort
SELECT ALL - + 1 + col2 AS col0 FROM tab0 AS cor0
----
46
9
98

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3336
SELECT CAST( col0 AS SIGNED ) AS col2 FROM tab1 AS cor0 WHERE NOT + + CAST( col1 AS SIGNED ) IS NOT NULL AND NULL IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-3336
SELECT CAST ( col0 AS INTEGER ) AS col2 FROM tab1 AS cor0 WHERE NOT + + CAST ( col1 AS INTEGER ) IS NOT NULL AND NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT - 82 + + col1 * + - col1 FROM tab2 AS cor0
----
-2683
-4571
-6011

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT NULL IS NULL AND NOT col0 + col2 NOT BETWEEN col0 AND - col0
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col1 * + col0 col0 FROM tab1 cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3340
SELECT ALL CAST( NULL AS SIGNED ) - - col1 + - + CAST( NULL AS SIGNED ) FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3340
SELECT ALL CAST ( NULL AS INTEGER ) - - col1 + - + CAST ( NULL AS INTEGER ) FROM tab2
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT 57 - + - col2 * + ( col0 ) AS col1 FROM tab2
----
1115
2617
4407

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3342
SELECT ALL CAST( NULL AS SIGNED ) * col2 + - col2, - col2 AS col0 FROM tab0
----
NULL
-10
NULL
-47
NULL
-99

skipif mysql # not compatible
query II rowsort label-3342
SELECT ALL CAST ( NULL AS INTEGER ) * col2 + - col2, - col2 AS col0 FROM tab0
----
NULL
-10
NULL
-47
NULL
-99

onlyif mysql # DIV for integer division: 
query I rowsort label-3343
SELECT 55 DIV - col2 + - + col2 AS col0 FROM tab0
----
-15
-48
-99

skipif mysql # not compatible
query I rowsort label-3343
SELECT 55 / - col2 + - + col2 AS col0 FROM tab0
----
-15
-48
-99

query I rowsort
SELECT DISTINCT 24 - - col2 FROM tab2
----
47
64
82

query I rowsort
SELECT DISTINCT + 34 * + col0 FROM tab0
----
2958
3298
510

query I rowsort
SELECT col2 * - + 85 FROM tab0
----
-3995
-8415
-850

query I rowsort
SELECT + col1 AS col1 FROM tab1 WHERE NOT + col2 + + 97 <= NULL
----

query I rowsort
SELECT - col0 * + - 7 AS col0 FROM tab0 AS cor0
----
105
609
679

onlyif mysql # aggregate syntax: 
query II rowsort label-3349
SELECT DISTINCT + - 15, MIN( ALL + col2 ) AS col2 FROM tab2 AS cor0
----
-15
23

skipif mysql # not compatible
query II rowsort label-3349
SELECT DISTINCT + - 15, MIN ( ALL + col2 ) AS col2 FROM tab2 AS cor0
----
-15
23

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT + col1 <= + 57
----
15
81
47

query I rowsort
SELECT ALL 94 AS col2 FROM tab1 AS cor0
----
94
94
94

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col1 BETWEEN + + col0 AND - - 92 - col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT - + 61 + col1 + - col2 FROM tab2 AS cor0
----
-24
-33
-52

query I rowsort
SELECT - + 92 * + + col0 FROM tab1 AS cor0
----
-4692
-7820
-8372

onlyif mysql # aggregate syntax: 
query I rowsort label-3355
SELECT DISTINCT - + COUNT( DISTINCT + col1 ) FROM tab1 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3355
SELECT DISTINCT - + COUNT ( DISTINCT + col1 ) FROM tab1 AS cor0
----
-3

query I rowsort
SELECT 58 * - 44 FROM tab0 AS cor0
----
-2552
-2552
-2552

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - ( - col2 ) * col1 col0 FROM tab0 AS cor0
----
210
3807
99

query I rowsort
SELECT DISTINCT - + 52 FROM tab0 AS cor0 WHERE NOT - col2 * - - col1 + - 85 IS NOT NULL
----

query I rowsort
SELECT ALL - col0 FROM tab2 WHERE NOT NULL IS NOT NULL
----
-46
-64
-75

query I rowsort
SELECT DISTINCT - ( + + col0 ) FROM tab1
----
-51
-85
-91

query I rowsort
SELECT col1 + - - col0 * + col2 - - col2 * - col1 * + col0 FROM tab2
----
-194483
-287033
-52849

query I rowsort
SELECT DISTINCT col1 * - 91 FROM tab0
----
-1911
-7371
-91

onlyif mysql # aggregate syntax: 
query I rowsort label-3363
SELECT DISTINCT COUNT( ALL - col1 ) AS col2 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-3363
SELECT DISTINCT COUNT ( ALL - col1 ) AS col2 FROM tab0
----
3

query I rowsort
SELECT DISTINCT + 1 + col0 AS col1 FROM tab2
----
47
65
76

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL ( + 40 ) * + - col1 col0 FROM tab2
----
-2040
-2680
-3080

query I rowsort
SELECT DISTINCT + ( + col1 ) + + col0 - - - col0 AS col2 FROM tab0 AS cor0
----
1
21
81

onlyif mysql # aggregate syntax: 
query I rowsort label-3367
SELECT ALL + 78 + COUNT( ALL - col1 ) AS col2 FROM tab2 AS cor0
----
81

skipif mysql # not compatible
query I rowsort label-3367
SELECT ALL + 78 + COUNT ( ALL - col1 ) AS col2 FROM tab2 AS cor0
----
81

onlyif mysql # aggregate syntax: 
query I rowsort label-3368
SELECT + + 1 * - COUNT( * ) FROM tab2 AS cor0 WHERE col2 IS NOT NULL
----
-3

skipif mysql # not compatible
query I rowsort label-3368
SELECT + + 1 * - COUNT ( * ) FROM tab2 AS cor0 WHERE col2 IS NOT NULL
----
-3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3369
SELECT DISTINCT + - col1 + - CAST( - + col1 AS SIGNED ) AS col0 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-3369
SELECT DISTINCT + - col1 + - CAST ( - + col1 AS INTEGER ) AS col0 FROM tab1 AS cor0
----
0

query II rowsort
SELECT ALL 95, + col2 AS col2 FROM tab2
----
95
23
95
40
95
58

query I rowsort
SELECT + 16 - + - 21 AS col2 FROM tab0
----
37
37
37

query I rowsort
SELECT 74 FROM tab1 AS cor0 CROSS JOIN tab2 cor1
----
9 values hashing to 2ccf8ef3f477e1a1a3e30c8b8154ff31

onlyif mysql # CAST syntax: SIGNED type: 
query IIIIII rowsort label-3373
SELECT * FROM tab2, tab0 AS cor0 WHERE NOT + CAST( - + 18 AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query IIIIII rowsort label-3373
SELECT * FROM tab2, tab0 AS cor0 WHERE NOT + CAST ( - + 18 AS INTEGER ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3374
SELECT DISTINCT - - COUNT( * ) + + COUNT( * ) AS col2 FROM tab1 AS cor0
----
6

skipif mysql # not compatible
query I rowsort label-3374
SELECT DISTINCT - - COUNT ( * ) + + COUNT ( * ) AS col2 FROM tab1 AS cor0
----
6

onlyif mysql # aggregate syntax: 
query I rowsort label-3375
SELECT ALL - COUNT( - col2 ) FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3375
SELECT ALL - COUNT ( - col2 ) FROM tab2 AS cor0
----
-3

query I rowsort
SELECT ALL + 68 + + 37 AS col1 FROM tab0 AS cor0
----
105
105
105

query I rowsort
SELECT ALL + 14 + 72 + + - ( + - col0 ) * - col0 AS col0 FROM tab1 AS cor0
----
-2515
-7139
-8195

query I rowsort
SELECT ALL 9 FROM tab1 AS cor0 WHERE NOT NULL < ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3379
SELECT ALL CAST( - col1 AS SIGNED ) * - col1 + - col2 + + - col1 * - 80 * + col0 FROM tab0 AS cor0
----
103714
146591
7662

skipif mysql # not compatible
query I rowsort label-3379
SELECT ALL CAST ( - col1 AS INTEGER ) * - col1 + - col2 + + - col1 * - 80 * + col0 FROM tab0 AS cor0
----
103714
146591
7662

query I rowsort
SELECT ALL 38 + col2 - col2 FROM tab0 AS cor0
----
38
38
38

query I rowsort
SELECT DISTINCT - + col0 AS col0 FROM tab1 AS cor0 WHERE ( NULL ) >= NULL
----

query I rowsort
SELECT - - 53 AS col0 FROM tab1 AS cor0
----
53
53
53

query I rowsort
SELECT ALL + ( 31 ) FROM tab0
----
31
31
31

query I rowsort
SELECT DISTINCT + - 82 + + ( - col0 ) * + col0 * + col1 AS col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-36207
-36496
-389289

onlyif mysql # aggregate syntax: 
query I rowsort label-3385
SELECT + ( + ( - - 56 ) ) * MIN( - - col0 ) FROM tab0
----
840

skipif mysql # not compatible
query I rowsort label-3385
SELECT + ( + ( - - 56 ) ) * MIN ( - - col0 ) FROM tab0
----
840

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3386
SELECT - CAST( NULL AS SIGNED ) / + 23 AS col2, + col1 FROM tab0 AS cor0
----
NULL
1
NULL
21
NULL
81

skipif mysql # not compatible
query II rowsort label-3386
SELECT - CAST ( NULL AS INTEGER ) / + 23 AS col2, + col1 FROM tab0 AS cor0
----
NULL
1
NULL
21
NULL
81

query I rowsort
SELECT ALL + col0 * + - 1 FROM tab1 cor0
----
-51
-85
-91

onlyif mysql # aggregate syntax: 
query I rowsort label-3388
SELECT + COUNT( * ) - - COUNT( * ) col0 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
18

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3388
SELECT + COUNT ( * ) - - COUNT ( * ) col0 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
18

query I rowsort
SELECT col1 * - - col1 * + + col1 AS col0 FROM tab2
----
132651
300763
456533

onlyif mysql # aggregate syntax: 
query I rowsort label-3390
SELECT ALL COUNT( * ) * - + 21 col2 FROM tab2
----
-63

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3390
SELECT ALL COUNT ( * ) * - + 21 col2 FROM tab2
----
-63

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL + col0, + 61 col1 FROM tab0 AS cor0
----
15
61
87
61
97
61

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT + col2 * + 27 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT DISTINCT col1 + 38 FROM tab2 AS cor0
----
105
115
89

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT ( NOT - 90 IS NULL )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3395
SELECT - CAST( + 47 AS SIGNED ) + + + COUNT( col0 ) AS col1 FROM tab1
----
-44

skipif mysql # not compatible
query I rowsort label-3395
SELECT - CAST ( + 47 AS INTEGER ) + + + COUNT ( col0 ) AS col1 FROM tab1
----
-44

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3396
SELECT + col2 + + CAST( NULL AS SIGNED ) + + ( ( - col0 ) ) col0, col0 FROM tab2
----
NULL
46
NULL
64
NULL
75

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3396
SELECT + col2 + + CAST ( NULL AS INTEGER ) + + ( ( - col0 ) ) col0, col0 FROM tab2
----
NULL
46
NULL
64
NULL
75

query II rowsort
SELECT ALL - 5 * - 51 AS col1, + col0 FROM tab0
----
255
15
255
87
255
97

query II rowsort
SELECT ALL 31 + - + col1 * + - ( + 65 ) AS col1, - 30 + + - col0 FROM tab2
----
3346
-76
4386
-105
5036
-94

onlyif mysql # aggregate syntax: 
query I rowsort label-3399
SELECT + COUNT( * ) + COUNT( + 45 ) FROM tab2
----
6

skipif mysql # not compatible
query I rowsort label-3399
SELECT + COUNT ( * ) + COUNT ( + 45 ) FROM tab2
----
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3400
SELECT DISTINCT + col2 * CAST( 71 AS SIGNED ) col2 FROM tab0
----
3337
7029
710

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3400
SELECT DISTINCT + col2 * CAST ( 71 AS INTEGER ) col2 FROM tab0
----
3337
7029
710

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3401
SELECT * FROM tab1 AS cor0 WHERE NULL BETWEEN - 85 AND + + col0 * - - 0 * - - col0 + CAST( NULL AS SIGNED ) + + col2 + - - col0 + - col2 * - - col1
----

skipif mysql # not compatible
query III rowsort label-3401
SELECT * FROM tab1 AS cor0 WHERE NULL BETWEEN - 85 AND + + col0 * - - 0 * - - col0 + CAST ( NULL AS INTEGER ) + + col2 + - - col0 + - col2 * - - col1
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE + col2 + - 77 IN ( ( col1 ) )
----

query I rowsort
SELECT ALL 77 * - col2 AS col1 FROM tab1
----
-4543
-5236
-7392

query I rowsort
SELECT DISTINCT ( - col2 ) * col1 AS col1 FROM tab0
----
-210
-3807
-99

onlyif mysql # DIV for integer division: 
query I rowsort label-3405
SELECT ALL + 95 DIV col2 * - col2 * + - col0 FROM tab2
----
4232
4350
5120

skipif mysql # not compatible
query I rowsort label-3405
SELECT ALL + 95 / col2 * - col2 * + - col0 FROM tab2
----
4232
4350
5120

onlyif mysql # aggregate syntax: 
query I rowsort label-3406
SELECT + COUNT( * ) * - COUNT( * ) AS col1 FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-3406
SELECT + COUNT ( * ) * - COUNT ( * ) AS col1 FROM tab1
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-3407
SELECT + COUNT( * ) FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
9

skipif mysql # not compatible
query I rowsort label-3407
SELECT + COUNT ( * ) FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-3408
SELECT DISTINCT - SUM( 41 ) FROM tab1
----
-123

skipif mysql # not compatible
query I rowsort label-3408
SELECT DISTINCT - SUM ( 41 ) FROM tab1
----
-123

onlyif mysql # aggregate syntax: 
query I rowsort label-3409
SELECT ALL - - COUNT( * ) col1 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3409
SELECT ALL - - COUNT ( * ) col1 FROM tab0 AS cor0
----
3

query II rowsort
SELECT col2 AS col2, - col2 AS col1 FROM tab0
----
10
-10
47
-47
99
-99

query I rowsort
SELECT + col2 * - - 79 FROM tab1
----
4661
5372
7584

onlyif mysql # aggregate syntax: 
query I rowsort label-3412
SELECT ALL 16 * ( + + COUNT( * ) ) FROM tab1
----
48

skipif mysql # not compatible
query I rowsort label-3412
SELECT ALL 16 * ( + + COUNT ( * ) ) FROM tab1
----
48

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 12 col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
12
12
12

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NULL NOT BETWEEN NULL AND 41
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3415
SELECT - CAST( + 90 AS SIGNED ) FROM tab2 AS cor0
----
-90
-90
-90

skipif mysql # not compatible
query I rowsort label-3415
SELECT - CAST ( + 90 AS INTEGER ) FROM tab2 AS cor0
----
-90
-90
-90

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3416
SELECT ALL + CAST( - - AVG ( + - col1 ) AS SIGNED ) FROM tab2 AS cor0
----
-65

skipif mysql # not compatible
query I rowsort label-3416
SELECT ALL + CAST ( - - AVG ( + - col1 ) AS INTEGER ) FROM tab2 AS cor0
----
-65

onlyif mysql # aggregate syntax: 
query II rowsort label-3417
SELECT DISTINCT - COUNT( * ) AS col1, ( + + MAX( DISTINCT 80 ) ) FROM tab0 cor0
----
-3
80

skipif mysql # not compatible
query II rowsort label-3417
SELECT DISTINCT - COUNT ( * ) AS col1, ( + + MAX ( DISTINCT 80 ) ) FROM tab0 cor0
----
-3
80

onlyif mysql # aggregate syntax: 
query I rowsort label-3418
SELECT - COUNT( * ) + - - 23 AS col2 FROM tab2 WHERE NOT ( NOT ( NULL ) IS NULL )
----
20

skipif mysql # not compatible
query I rowsort label-3418
SELECT - COUNT ( * ) + - - 23 AS col2 FROM tab2 WHERE NOT ( NOT ( NULL ) IS NULL )
----
20

onlyif mysql # aggregate syntax: 
query I rowsort label-3419
SELECT DISTINCT COUNT( * ) + 21 AS col2 FROM tab0
----
24

skipif mysql # not compatible
query I rowsort label-3419
SELECT DISTINCT COUNT ( * ) + 21 AS col2 FROM tab0
----
24

query I rowsort
SELECT DISTINCT 86 AS col2 FROM ( tab2 AS cor0 CROSS JOIN tab2 AS cor1 )
----
86

query II rowsort
SELECT - - ( - col1 ) AS col2, + 37 FROM tab1 AS cor0
----
-14
37
-47
37
-5
37

onlyif mysql # aggregate syntax: 
query I rowsort label-3422
SELECT ALL MAX( DISTINCT + ( col1 ) ) AS col0 FROM tab1 AS cor0
----
47

skipif mysql # not compatible
query I rowsort label-3422
SELECT ALL MAX ( DISTINCT + ( col1 ) ) AS col0 FROM tab1 AS cor0
----
47

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3423
SELECT + col1 * - 10 * + CAST( NULL AS SIGNED ) + - - CAST( NULL AS SIGNED ) + - col2 col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3423
SELECT + col1 * - 10 * + CAST ( NULL AS INTEGER ) + - - CAST ( NULL AS INTEGER ) + - col2 col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT DISTINCT * FROM tab0 cor0 WHERE NOT + ( col1 ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3425
SELECT DISTINCT - 21 * 40 * - COUNT( * ) + COUNT( * ) AS col1 FROM tab1 AS cor0
----
2523

skipif mysql # not compatible
query I rowsort label-3425
SELECT DISTINCT - 21 * 40 * - COUNT ( * ) + COUNT ( * ) AS col1 FROM tab1 AS cor0
----
2523

query I rowsort
SELECT ALL - 84 + + + col1 * + col1 FROM tab0 AS cor0
----
-83
357
6477

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3427
SELECT ALL + - COUNT( * ) * CAST( 64 AS SIGNED ) * + COUNT( * ) + - + 87 col0 FROM tab0 AS cor0
----
-663

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3427
SELECT ALL + - COUNT ( * ) * CAST ( 64 AS INTEGER ) * + COUNT ( * ) + - + 87 col0 FROM tab0 AS cor0
----
-663

query I rowsort
SELECT DISTINCT ( + 32 ) * + 91 * - col1 FROM tab2 AS cor0
----
-148512
-195104
-224224

query I rowsort
SELECT + 5 + - col1 * + 48 * + + col0 FROM tab1 AS cor0
----
-20395
-205291
-34267

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3430
SELECT + col0 + - - col2, CAST( NULL AS SIGNED ) col2 FROM tab1 AS cor0
----
144
NULL
147
NULL
159
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3430
SELECT + col0 + - - col2, CAST ( NULL AS INTEGER ) col2 FROM tab1 AS cor0
----
144
NULL
147
NULL
159
NULL

query I rowsort
SELECT - + col1 + - 0 AS col0 FROM tab0 AS cor0
----
-1
-21
-81

query I rowsort
SELECT - + col1 + - - 30 FROM tab2 AS cor0
----
-21
-37
-47

query I rowsort
SELECT col0 + + 0 AS col1 FROM tab2
----
46
64
75

query I rowsort
SELECT ALL 9 * - + col2 * + 82 FROM tab1
----
-43542
-50184
-70848

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT + col1 >= NULL
----

query I rowsort
SELECT 71 * - 55 + col0 + col2 + + - col1 AS col2 FROM tab1
----
-3766
-3772
-3793

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NULL <= - 57
----

query II rowsort
SELECT ALL 7 AS col0, 65 * col0 FROM tab1
----
7
3315
7
5525
7
5915

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3439
SELECT DISTINCT CAST( NULL AS DECIMAL ) * col2 + - col1 AS col2 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-3439
SELECT DISTINCT CAST ( NULL AS REAL ) * col2 + - col1 AS col2 FROM tab1
----
NULL

query III rowsort
SELECT ALL * FROM tab0 WHERE + - col2 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( + 84 + + col2 IS NULL )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - - ( col1 ) col1 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----

query I rowsort
SELECT + col0 / - col1 AS col0 FROM tab1 AS cor0 WHERE NULL BETWEEN col2 AND NULL
----

query I rowsort
SELECT col1 - + col0 - + col0 * - - col1 + - + col2 FROM tab2 AS cor0
----
-2364
-4955
-5091

onlyif mysql # aggregate syntax: 
query I rowsort label-3445
SELECT DISTINCT - SUM( - col1 ) AS col0 FROM tab0
----
103

skipif mysql # not compatible
query I rowsort label-3445
SELECT DISTINCT - SUM ( - col1 ) AS col0 FROM tab0
----
103

query I rowsort
SELECT + 20 AS col1 FROM tab0 WHERE 8 / + 47 IS NOT NULL
----
20
20
20

onlyif mysql # aggregate syntax: 
query I rowsort label-3447
SELECT DISTINCT SUM( DISTINCT + col0 ) AS col0 FROM tab1 AS cor0
----
227

skipif mysql # not compatible
query I rowsort label-3447
SELECT DISTINCT SUM ( DISTINCT + col0 ) AS col0 FROM tab1 AS cor0
----
227

onlyif mysql # aggregate syntax: 
query I rowsort label-3448
SELECT - COUNT( * ) * 49 AS col2 FROM tab0 AS cor0
----
-147

skipif mysql # not compatible
query I rowsort label-3448
SELECT - COUNT ( * ) * 49 AS col2 FROM tab0 AS cor0
----
-147

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE NOT + col2 IS NOT NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3450
SELECT DISTINCT - - COUNT( * ) * - + CAST( NULL AS SIGNED ) * 9 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3450
SELECT DISTINCT - - COUNT ( * ) * - + CAST ( NULL AS INTEGER ) * 9 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT col0 * + 35 FROM tab1 AS cor0
----
1785
2975
3185

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NULL BETWEEN ( NULL ) AND - - col2 + 51
----

query I rowsort
SELECT - col0 * + - 68 FROM tab2 AS cor0
----
3128
4352
5100

query I rowsort
SELECT DISTINCT - 38 * - col0 * 45 FROM tab0
----
148770
165870
25650

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-3455
SELECT DISTINCT SUM( ALL + - col2 ) DIV + COUNT( * ) col0, COUNT( * ) FROM tab2
----
-40
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3455
SELECT DISTINCT SUM ( ALL + - col2 ) / + COUNT ( * ) col0, COUNT ( * ) FROM tab2
----
-40
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3456
SELECT ALL - COUNT( * ) col2 FROM tab1, tab2 cor0
----
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3456
SELECT ALL - COUNT ( * ) col2 FROM tab1, tab2 cor0
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-3457
SELECT - ( + COUNT( 20 ) ) AS col2 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-3457
SELECT - ( + COUNT ( 20 ) ) AS col2 FROM tab2
----
-3

query I rowsort
SELECT DISTINCT 13 * + col2 - - + 94 + col1 FROM tab0 AS cor0
----
1382
245
786

query I rowsort
SELECT ( - 97 ) + + 1 AS col1 FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to c89b545346f99713888a7934e4caa539

query I rowsort
SELECT ALL ( + 35 ) FROM tab2
----
35
35
35

onlyif mysql # aggregate syntax: 
query I rowsort label-3461
SELECT DISTINCT + SUM( - col0 ) + COUNT( * ) col2 FROM tab0 AS cor0
----
-196

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3461
SELECT DISTINCT + SUM ( - col0 ) + COUNT ( * ) col2 FROM tab0 AS cor0
----
-196

query II rowsort
SELECT ALL - 20 AS col0, 85 FROM tab0 AS cor0
----
-20
85
-20
85
-20
85

query I rowsort
SELECT + ( 13 ) FROM tab0 AS cor0
----
13
13
13

query I rowsort
SELECT + - ( + 20 ) FROM tab0 AS cor0
----
-20
-20
-20

query I rowsort
SELECT col0 * col0 + - 64 AS col0 FROM tab1
----
2537
7161
8217

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT col0 * + + 25 * + ( - + 20 ) + + col1 + col1 * col0 IN ( ( col2 ), 54 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + 0 + - - 22 AS col2 FROM tab2 AS cor0
----
22
22
22

query I rowsort
SELECT DISTINCT + + col1 FROM tab2 AS cor0 WHERE NULL < ( NULL )
----

query I rowsort
SELECT DISTINCT - + ( - col2 ) - col0 * + col1 FROM tab0 AS cor0
----
-1168
-1817
2

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col2 col0 FROM tab1 AS cor0 WHERE ( NULL ) IS NULL
----
59
68
96

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE + 53 IS NULL
----

query I rowsort
SELECT col2 * - + col0 FROM tab2 AS cor0
----
-1058
-2560
-4350

onlyif mysql # aggregate syntax: 
query I rowsort label-3473
SELECT DISTINCT + COUNT( * ) - 4 FROM tab0
----
-1

skipif mysql # not compatible
query I rowsort label-3473
SELECT DISTINCT + COUNT ( * ) - 4 FROM tab0
----
-1

query I rowsort
SELECT 3 * 42 FROM tab1
----
126
126
126

onlyif mysql # aggregate syntax: 
query II rowsort label-3475
SELECT DISTINCT + - COUNT( * ) AS col0, + COUNT( * ) FROM tab0 AS cor0
----
-3
3

skipif mysql # not compatible
query II rowsort label-3475
SELECT DISTINCT + - COUNT ( * ) AS col0, + COUNT ( * ) FROM tab0 AS cor0
----
-3
3

query I rowsort
SELECT DISTINCT + col2 * 59 * + 68 * + col0 AS col0 FROM tab1 AS cor0
----
19642752
20120180
24826256

onlyif mysql # aggregate syntax: 
query I rowsort label-3477
SELECT ALL + COUNT( * ) * - 33 + + MIN( + col2 ) * - 76 * + - 42 FROM tab2 cor0
----
73317

skipif mysql # not compatible
query I rowsort label-3477
SELECT ALL + COUNT ( * ) * - 33 + + MIN ( + col2 ) * - 76 * + - 42 FROM tab2 cor0
----
73317

query I rowsort
SELECT DISTINCT + col2 * - ( - col2 ) AS col2 FROM tab2 AS cor0 WHERE - col0 IS NOT NULL
----
1600
3364
529

onlyif mysql # aggregate syntax: 
query II rowsort label-3479
SELECT COUNT( * ) AS col1, - COUNT( * ) AS col2 FROM tab2 AS cor0
----
3
-3

skipif mysql # not compatible
query II rowsort label-3479
SELECT COUNT ( * ) AS col1, - COUNT ( * ) AS col2 FROM tab2 AS cor0
----
3
-3

onlyif mysql # DIV for integer division: 
query III rowsort label-3480
SELECT * FROM tab2 AS cor0 WHERE NOT col0 DIV + col0 NOT IN ( + col1, col1 DIV + 60 )
----
64
77
40
75
67
58

skipif mysql # not compatible
query III rowsort label-3480
SELECT * FROM tab2 AS cor0 WHERE NOT col0 / + col0 NOT IN ( + col1, col1 / + 60 )
----
64
77
40
75
67
58

query I rowsort
SELECT ALL - 97 AS col2 FROM tab1
----
-97
-97
-97

query I rowsort
SELECT 41 * + col2 FROM tab0
----
1927
4059
410

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE ( col1 ) <= - col2
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3484
SELECT - col1 DIV col2 DIV - col2 AS col1 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-3484
SELECT - col1 / col2 / - col2 AS col1 FROM tab2
----
0
0
0

onlyif mysql # DIV for integer division: 
query I rowsort label-3485
SELECT ALL 11 DIV + col0 * col2 AS col1 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-3485
SELECT ALL 11 / + col0 * col2 AS col1 FROM tab1
----
0
0
0

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3486
SELECT DISTINCT - CAST( NULL AS DECIMAL ) AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-3486
SELECT DISTINCT - CAST ( NULL AS REAL ) AS col0 FROM tab0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3487
SELECT ALL + CAST( - 98 AS SIGNED ) AS col2, + 50 FROM tab2
----
-98
50
-98
50
-98
50

skipif mysql # not compatible
query II rowsort label-3487
SELECT ALL + CAST ( - 98 AS INTEGER ) AS col2, + 50 FROM tab2
----
-98
50
-98
50
-98
50

query II rowsort
SELECT 51 * + 80, ( + col0 ) * - ( + col2 ) * 93 + 62 AS col2 FROM tab2 AS cor0
----
4080
-238018
4080
-404488
4080
-98332

onlyif mysql # DIV for integer division: 
query I rowsort label-3489
SELECT DISTINCT ( - + col2 ) DIV - - 41 FROM tab1 AS cor0
----
-1
-2

skipif mysql # not compatible
query I rowsort label-3489
SELECT DISTINCT ( - + col2 ) / - - 41 FROM tab1 AS cor0
----
-1
-2

query III rowsort
SELECT DISTINCT * FROM tab2 cor0 WHERE - 70 IN ( - 90, ( + - 15 ) )
----

query I rowsort
SELECT ALL col0 * col1 * col1 + + - 41 * - + col0 AS col2 FROM tab1 AS cor0
----
12087
204750
5610

query I rowsort
SELECT + col0 * + + col0 * - - 45 AS col1 FROM tab2 AS cor0
----
184320
253125
95220

query III rowsort
SELECT * FROM tab1 WHERE + + col1 * 7 / - col0 + + col2 <= col0 * + + col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3494
SELECT ALL - col1 * + + CAST( + col2 AS SIGNED ) FROM tab0
----
-210
-3807
-99

skipif mysql # not compatible
query I rowsort label-3494
SELECT ALL - col1 * + + CAST ( + col2 AS INTEGER ) FROM tab0
----
-210
-3807
-99

onlyif mysql # aggregate syntax: 
query I rowsort label-3495
SELECT ALL COUNT( * ) AS col2 FROM tab1 AS cor0 WHERE NULL <> + col0 AND NULL = NULL
----
0

skipif mysql # not compatible
query I rowsort label-3495
SELECT ALL COUNT ( * ) AS col2 FROM tab1 AS cor0 WHERE NULL <> + col0 AND NULL = NULL
----
0

query I rowsort
SELECT - 48 + - + col1 AS col1 FROM tab0 AS cor0
----
-129
-49
-69

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE 27 + + col2 IS NULL
----

query I rowsort
SELECT DISTINCT + 19 + + col0 AS col0 FROM tab1 AS cor0
----
104
110
70

query I rowsort
SELECT DISTINCT + + col0 AS col2 FROM tab2 AS cor0 WHERE NOT 38 IS NULL
----
46
64
75

onlyif mysql # aggregate syntax: 
query I rowsort label-3500
SELECT 55 + - COUNT( * ) - ( COUNT( * ) ) FROM tab0 AS cor0
----
49

skipif mysql # not compatible
query I rowsort label-3500
SELECT 55 + - COUNT ( * ) - ( COUNT ( * ) ) FROM tab0 AS cor0
----
49

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3501
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( + col2 ) * - col0 - + col1 <> + - col1 + - CAST( NULL AS SIGNED ) + - col0 + - + col0 * + 51 * col0 + + col1
----

skipif mysql # not compatible
query III rowsort label-3501
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( + col2 ) * - col0 - + col1 <> + - col1 + - CAST ( NULL AS INTEGER ) + - col0 + - + col0 * + 51 * col0 + + col1
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE - ( - + 26 ) IS NULL
----

query II rowsort
SELECT - col1 AS col0, - col0 * - col2 AS col1 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
-1
9603
-21
870
-81
705

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3504
SELECT DISTINCT - ( CAST( COUNT( * ) AS SIGNED ) ) AS col1 FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3504
SELECT DISTINCT - ( CAST ( COUNT ( * ) AS INTEGER ) ) AS col1 FROM tab0 AS cor0
----
-3

query I rowsort
SELECT DISTINCT + col1 - + + col0 * + 6 AS col2 FROM tab0
----
-501
-581
-9

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col1 col2, col2 * + col0 * col1 * + - 69 AS col2 FROM tab1
----
-14
-4729536
-47
-20067684
-5
-1730175

query I rowsort
SELECT DISTINCT - col1 * col0 - + 81 FROM tab2
----
-2427
-5009
-5106

query I rowsort
SELECT ALL 1 + col1 * + col1 AS col2 FROM tab0
----
2
442
6562

query I rowsort
SELECT col0 - 9 + - + col2 + 89 AS col2 FROM tab2
----
103
104
97

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3510
SELECT DISTINCT - col2 + - col1 FROM tab1 AS cor0 WHERE + CAST( - col0 AS DECIMAL ) * col2 * col2 + + + 60 + - col0 IS NULL
----

skipif mysql # not compatible
query I rowsort label-3510
SELECT DISTINCT - col2 + - col1 FROM tab1 AS cor0 WHERE + CAST ( - col0 AS REAL ) * col2 * col2 + + + 60 + - col0 IS NULL
----

query I rowsort
SELECT DISTINCT + col2 + - - 13 AS col0 FROM tab1 AS cor0
----
109
72
81

query I rowsort
SELECT + - col1 * - - col2 * - 97 AS col1 FROM tab2 AS cor0
----
113781
298760
376942

onlyif mysql # aggregate syntax: 
query I rowsort label-3513
SELECT ALL + COUNT( DISTINCT - col2 ) * - + COUNT( * ) col2 FROM tab0 AS cor0
----
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3513
SELECT ALL + COUNT ( DISTINCT - col2 ) * - + COUNT ( * ) col2 FROM tab0 AS cor0
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-3514
SELECT DISTINCT - COUNT( DISTINCT - col2 ) AS col0 FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-3514
SELECT DISTINCT - COUNT ( DISTINCT - col2 ) AS col0 FROM tab1
----
-3

query I rowsort
SELECT DISTINCT + + col1 * - 10 AS col2 FROM tab1 cor0
----
-140
-470
-50

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3516
SELECT DISTINCT - COUNT( * ) * - COUNT( * ) DIV 21 FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-3516
SELECT DISTINCT - COUNT ( * ) * - COUNT ( * ) / 21 FROM tab0 AS cor0
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-3517
SELECT + - 6 DIV + col0 + - - col0 AS col2 FROM tab0 AS cor0
----
15
87
97

skipif mysql # not compatible
query I rowsort label-3517
SELECT + - 6 / + col0 + - - col0 AS col2 FROM tab0 AS cor0
----
15
87
97

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT - ( - 6 ) + - 86 NOT IN ( + col2, ( + col2 ), - ( 44 ) )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3519
SELECT ALL - + COUNT( * ) * - 57 FROM tab2 cor0
----
171

skipif mysql # not compatible
query I rowsort label-3519
SELECT ALL - + COUNT ( * ) * - 57 FROM tab2 cor0
----
171

query I rowsort
SELECT ALL col0 FROM tab0 AS cor0 WHERE NOT col2 BETWEEN NULL AND - + col1
----
15
87
97

query I rowsort
SELECT DISTINCT ( - 9 ) FROM tab2
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-3522
SELECT DISTINCT MIN( ALL + - col0 ) AS col2 FROM tab1
----
-91

skipif mysql # not compatible
query I rowsort label-3522
SELECT DISTINCT MIN ( ALL + - col0 ) AS col2 FROM tab1
----
-91

onlyif mysql # DIV for integer division: 
query I rowsort label-3523
SELECT + 74 DIV - + col0 FROM tab0
----
-4
0
0

skipif mysql # not compatible
query I rowsort label-3523
SELECT + 74 / - + col0 FROM tab0
----
-4
0
0

query I rowsort
SELECT - 76 AS col0 FROM tab2 WHERE NOT - 47 <= + col1
----

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL BETWEEN 10 * + 51 - - col2 + - col0 AND - + 61
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col1 * + col1 col1 FROM tab2
----
2601
4489
5929

onlyif mysql # aggregate syntax: 
query I rowsort label-3527
SELECT DISTINCT + 28 + - COUNT( * ) FROM tab1
----
25

skipif mysql # not compatible
query I rowsort label-3527
SELECT DISTINCT + 28 + - COUNT ( * ) FROM tab1
----
25

query I rowsort
SELECT ALL 94 * - - col0 FROM tab2 AS cor0
----
4324
6016
7050

query I rowsort
SELECT 92 + + 70 * + col1 * - + col0 * col1 FROM tab1 cor0
----
-14071238
-148658
-699628

query I rowsort
SELECT ALL - col1 * + - col1 FROM tab2
----
2601
4489
5929

query III rowsort
SELECT ALL * FROM tab2 cor0 WHERE NULL >= 85
----

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-3532
SELECT + - SUM( DISTINCT + - 59 ) * + CAST( NULL AS DECIMAL ) FROM tab0 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3532
SELECT + - SUM ( DISTINCT + - 59 ) * + CAST ( NULL AS REAL ) FROM tab0 cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3533
SELECT + SUM( + - 67 ) FROM tab1 AS cor0
----
-201

skipif mysql # not compatible
query I rowsort label-3533
SELECT + SUM ( + - 67 ) FROM tab1 AS cor0
----
-201

query II rowsort
SELECT + col1 * + + col1 AS col0, col0 * + col0 * col2 FROM tab2 AS cor0
----
2601
48668
4489
326250
5929
163840

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col1 * - col2 * col1 col2, 75 AS col1 FROM tab0 AS cor0 WHERE 83 IS NULL
----

query I rowsort
SELECT DISTINCT + + 72 * - + 52 + - col1 AS col0 FROM tab1 AS cor0
----
-3749
-3758
-3791

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3537
SELECT DISTINCT + col1 - - - CAST( + col1 AS SIGNED ) * CAST( col1 AS SIGNED ) AS col2 FROM tab2 cor0
----
-2550
-4422
-5852

skipif mysql # not compatible
query I rowsort label-3537
SELECT DISTINCT + col1 - - - CAST ( + col1 AS INTEGER ) * CAST ( col1 AS INTEGER ) AS col2 FROM tab2 cor0
----
-2550
-4422
-5852

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE col2 = + ( col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3539
SELECT ALL + 95 - - + COUNT( * ) FROM tab1
----
98

skipif mysql # not compatible
query I rowsort label-3539
SELECT ALL + 95 - - + COUNT ( * ) FROM tab1
----
98

onlyif mysql # aggregate syntax: 
query I rowsort label-3540
SELECT + COUNT( - - col0 ) + - 66 AS col0 FROM tab0
----
-63

skipif mysql # not compatible
query I rowsort label-3540
SELECT + COUNT ( - - col0 ) + - 66 AS col0 FROM tab0
----
-63

query I rowsort
SELECT col1 * col1 FROM tab2 WHERE - - col0 = + col2
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 16 + + + 42 col1 FROM tab0
----
58
58
58

query I rowsort
SELECT 50 + - + ( + col1 ) + + col0 + + 89 AS col1 FROM tab1
----
176
183
219

query I rowsort
SELECT ( + - ( col2 ) ) + + col2 AS col1 FROM tab0
----
0
0
0

query I rowsort
SELECT DISTINCT + ( - + 12 ) * - col0 - + col1 FROM tab0
----
1023
1163
99

query II rowsort
SELECT + col0 + - 1 + + + col2, + ( + col0 ) FROM tab1
----
143
85
146
51
158
91

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT 65 + - + ( col0 ) + - ( + col1 ) col0, - 50 FROM tab1
----
-25
-50
-73
-50
0
-50

query III rowsort
SELECT * FROM tab1 WHERE NULL <= 43
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL col1, - col1 col2 FROM tab2 cor0
----
51
-51
67
-67
77
-77

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + col0 * col0 * - - col2 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ( + 92 ) AS col2 FROM tab2
----
92
92
92

query II rowsort
SELECT 95 AS col1, 97 * + col1 * + ( + + 76 ) FROM tab2
----
95
375972
95
493924
95
567644

query I rowsort
SELECT DISTINCT 41 * col1 * - col1 AS col2 FROM tab2 AS cor0
----
-106641
-184049
-243089

query II rowsort
SELECT + col0 AS col2, col1 + - 15 FROM tab0 AS cor0
----
15
66
87
6
97
-14

query II rowsort
SELECT ALL col2 AS col1, - col2 FROM tab0 AS cor0
----
10
-10
47
-47
99
-99

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT - col0 IS NOT NULL
----

query II rowsort
SELECT + col2 AS col1, col0 * - + col2 * + col0 AS col0 FROM tab0 AS cor0
----
10
-75690
47
-10575
99
-931491

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3558
SELECT + + col0, CAST( NULL AS SIGNED ) + - col0 FROM tab2 AS cor0
----
46
NULL
64
NULL
75
NULL

skipif mysql # not compatible
query II rowsort label-3558
SELECT + + col0, CAST ( NULL AS INTEGER ) + - col0 FROM tab2 AS cor0
----
46
NULL
64
NULL
75
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3559
SELECT - SUM( ALL col2 ) col2 FROM tab0 AS cor0
----
-156

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3559
SELECT - SUM ( ALL col2 ) col2 FROM tab0 AS cor0
----
-156

onlyif mysql # aggregate syntax: 
query I rowsort label-3560
SELECT DISTINCT - ( + - MIN( - - col1 ) ) FROM tab2 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-3560
SELECT DISTINCT - ( + - MIN ( - - col1 ) ) FROM tab2 AS cor0
----
51

query I rowsort
SELECT DISTINCT - + 7 FROM tab1 AS cor0
----
-7

query I rowsort
SELECT ( + - 90 ) + + col2 + + 3 + + 30 + + - 2 * - - col0 * + + col1 AS col1 FROM tab2
----
-10049
-4726
-9873

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3563
SELECT ALL + col0 * + CAST( NULL AS SIGNED ) AS col1 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3563
SELECT ALL + col0 * + CAST ( NULL AS INTEGER ) AS col1 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT + col2 + + 77 - + col0 FROM tab1
----
122
51
54

onlyif mysql # aggregate syntax: 
query I rowsort label-3565
SELECT ALL + SUM( col1 ) * + - 58 FROM tab0
----
-5974

skipif mysql # not compatible
query I rowsort label-3565
SELECT ALL + SUM ( col1 ) * + - 58 FROM tab0
----
-5974

onlyif mysql # aggregate syntax: 
query I rowsort label-3566
SELECT ( - + 29 ) + + COUNT( * ) FROM tab2
----
-26

skipif mysql # not compatible
query I rowsort label-3566
SELECT ( - + 29 ) + + COUNT ( * ) FROM tab2
----
-26

query I rowsort
SELECT 56 + col1 AS col0 FROM tab1
----
103
61
70

onlyif mysql # aggregate syntax: 
query I rowsort label-3568
SELECT COUNT( + ( + col1 ) ) AS col2 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-3568
SELECT COUNT ( + ( + col1 ) ) AS col2 FROM tab0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3569
SELECT 35 * + COUNT( * ) AS col1 FROM tab1
----
105

skipif mysql # not compatible
query I rowsort label-3569
SELECT 35 * + COUNT ( * ) AS col1 FROM tab1
----
105

query I rowsort
SELECT - col2 FROM tab0 WHERE - - 15 IS NOT NULL
----
-10
-47
-99

onlyif mysql # aggregate syntax: 
query I rowsort label-3571
SELECT + COUNT( * ) AS col0 FROM tab0, tab1 cor0
----
9

skipif mysql # not compatible
query I rowsort label-3571
SELECT + COUNT ( * ) AS col0 FROM tab0, tab1 cor0
----
9

query I rowsort
SELECT ALL col2 + - ( + 55 ) FROM tab2 AS cor0
----
-15
-32
3

query I rowsort
SELECT DISTINCT 95 / - + col2 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT 68 AS col1 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1 WHERE NULL IS NULL
----
68

onlyif mysql # aggregate syntax: 
query I rowsort label-3575
SELECT DISTINCT - COUNT( ALL ( col1 ) ) FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-3575
SELECT DISTINCT - COUNT ( ALL ( col1 ) ) FROM tab1
----
-3

query I rowsort
SELECT DISTINCT 49 * + col0 FROM tab1
----
2499
4165
4459

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT + col0 - col0 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL - 79 + col0 FROM tab0 cor0
----
-64
18
8

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-3579
SELECT + COUNT( * ), - COUNT( * ) FROM tab0 AS cor0 WHERE + col2 - col1 * + + CAST( NULL AS SIGNED ) + - col1 + - col2 / - - col1 IS NOT NULL
----
0
0

skipif mysql # not compatible
query II rowsort label-3579
SELECT + COUNT ( * ), - COUNT ( * ) FROM tab0 AS cor0 WHERE + col2 - col1 * + + CAST ( NULL AS INTEGER ) + - col1 + - col2 / - - col1 IS NOT NULL
----
0
0

query I rowsort
SELECT + 94 + + ( col0 ) AS col2 FROM tab0 AS cor0
----
109
181
191

onlyif mysql # aggregate syntax: 
query I rowsort label-3581
SELECT DISTINCT + COUNT( * ) AS col0 FROM tab2 cor0 WHERE NOT 58 IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-3581
SELECT DISTINCT + COUNT ( * ) AS col0 FROM tab2 cor0 WHERE NOT 58 IS NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3582
SELECT - - SUM( ALL - col2 ) FROM tab0 cor0
----
-156

skipif mysql # not compatible
query I rowsort label-3582
SELECT - - SUM ( ALL - col2 ) FROM tab0 cor0
----
-156

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + col2 - col1 col1 FROM tab2
----
-28
-37
-9

query II rowsort
SELECT - - 59 AS col0, - col0 AS col0 FROM tab1 WHERE NOT NULL NOT BETWEEN NULL AND - - col1
----

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT + col1 = - 13
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: DECIMAL type: 
query II rowsort label-3586
SELECT + ( + CAST( NULL AS DECIMAL ) ), col0 col2 FROM tab2
----
NULL
46
NULL
64
NULL
75

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3586
SELECT + ( + CAST ( NULL AS REAL ) ), col0 col2 FROM tab2
----
NULL
46
NULL
64
NULL
75

query I rowsort
SELECT - 67 * + ( + - col2 ) + + + col0 AS col0 FROM tab0 AS cor0
----
3164
6730
757

query I rowsort
SELECT - col2 AS col0 FROM tab2 cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT + ( - - col1 ) * + col1 FROM tab1
----
196
2209
25

onlyif mysql # aggregate syntax: 
query I rowsort label-3590
SELECT ALL + + ( - ( COUNT( * ) ) ) FROM ( tab0 AS cor0 CROSS JOIN tab1 AS cor1 )
----
-9

skipif mysql # not compatible
query I rowsort label-3590
SELECT ALL + + ( - ( COUNT ( * ) ) ) FROM ( tab0 AS cor0 CROSS JOIN tab1 AS cor1 )
----
-9

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3591
SELECT + - CAST( col2 AS SIGNED ) AS col1 FROM tab0 AS cor0
----
-10
-47
-99

skipif mysql # not compatible
query I rowsort label-3591
SELECT + - CAST ( col2 AS INTEGER ) AS col1 FROM tab0 AS cor0
----
-10
-47
-99

onlyif mysql # aggregate syntax: 
query I rowsort label-3592
SELECT - ( + - COUNT( * ) ) AS col1 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-3592
SELECT - ( + - COUNT ( * ) ) AS col1 FROM tab2 AS cor0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3593
SELECT - MAX( DISTINCT col2 ) FROM tab2 AS cor0
----
-58

skipif mysql # not compatible
query I rowsort label-3593
SELECT - MAX ( DISTINCT col2 ) FROM tab2 AS cor0
----
-58

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3594
SELECT col0 / col1 AS col2, + 78 * 68 / - 0 AS col2 FROM tab1 AS cor0 WHERE NOT NULL > + col2 + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL handles NULL in DIV/0 by differently
query II rowsort label-3594
SELECT col0 / col1 AS col2, + 78 * 68 / - 0 AS col2 FROM tab1 AS cor0 WHERE NOT NULL > + col2 + CAST ( NULL AS INTEGER )
----

query I rowsort
SELECT + 89 * 34 FROM tab0 AS cor0
----
3026
3026
3026

query I rowsort
SELECT DISTINCT 30 FROM tab0 AS cor0 WHERE NOT col2 * - + 57 > - + col2 + + 40
----
30

onlyif mysql # aggregate syntax: 
query I rowsort label-3597
SELECT + - MAX( - - col2 ) col0 FROM tab2 AS cor0
----
-58

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3597
SELECT + - MAX ( - - col2 ) col0 FROM tab2 AS cor0
----
-58

query I rowsort
SELECT ALL + + ( + col2 ) - + - 23 * + col1 FROM tab2 AS cor0 WHERE NOT ( NULL ) BETWEEN + col1 - col1 + - col1 + - 99 * + 90 AND NULL
----

query II rowsort
SELECT DISTINCT 53 AS col1, col2 + + - 74 + - + col2 FROM tab1
----
53
-74

query I rowsort
SELECT - 28 * + col1 AS col1 FROM tab2
----
-1428
-1876
-2156

query I rowsort
SELECT - - 8 AS col2 FROM tab0 WHERE NULL IS NOT NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3602
SELECT DISTINCT col0 * + + 50 * + + CAST( NULL AS DECIMAL ) AS col1 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-3602
SELECT DISTINCT col0 * + + 50 * + + CAST ( NULL AS REAL ) AS col1 FROM tab2
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3603
SELECT - AVG ( DISTINCT - 60 ) + CAST( NULL AS SIGNED ) FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-3603
SELECT - AVG ( DISTINCT - 60 ) + CAST ( NULL AS INTEGER ) FROM tab0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3604
SELECT 48 + - COUNT( * ) col2 FROM tab0
----
45

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3604
SELECT 48 + - COUNT ( * ) col2 FROM tab0
----
45

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT + - 29 col2, 25 AS col1 FROM tab1 AS cor0
----
-29
25

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3606
SELECT ALL + - col0 + + CAST( 22 AS SIGNED ) AS col1 FROM tab2 AS cor0
----
-24
-42
-53

skipif mysql # not compatible
query I rowsort label-3606
SELECT ALL + - col0 + + CAST ( 22 AS INTEGER ) AS col1 FROM tab2 AS cor0
----
-24
-42
-53

onlyif mysql # aggregate syntax: 
query I rowsort label-3607
SELECT ALL + MIN( DISTINCT + col0 ) * 90 FROM tab0 AS cor0
----
1350

skipif mysql # not compatible
query I rowsort label-3607
SELECT ALL + MIN ( DISTINCT + col0 ) * 90 FROM tab0 AS cor0
----
1350

query I rowsort
SELECT - col0 + - col0 * - + col2 AS col1 FROM tab1 cor0
----
4845
4930
6097

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query II rowsort label-3609
SELECT DISTINCT - COUNT( * ) * - CAST( NULL AS DECIMAL ), COUNT( * ) col1 FROM tab2
----
NULL
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3609
SELECT DISTINCT - COUNT ( * ) * - CAST ( NULL AS REAL ), COUNT ( * ) col1 FROM tab2
----
NULL
3

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3610
SELECT DISTINCT - CAST( NULL AS DECIMAL ) FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-3610
SELECT DISTINCT - CAST ( NULL AS REAL ) FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3611
SELECT ALL CAST( + 87 AS SIGNED ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to fa0cdd86483844cda3bb806e032d5c64

skipif mysql # not compatible
query I rowsort label-3611
SELECT ALL CAST ( + 87 AS INTEGER ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to fa0cdd86483844cda3bb806e032d5c64

onlyif mysql # DIV for integer division: 
query I rowsort label-3612
SELECT + 66 DIV + col0 FROM tab0
----
0
0
4

skipif mysql # not compatible
query I rowsort label-3612
SELECT + 66 / + col0 FROM tab0
----
0
0
4

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-3613
SELECT DISTINCT - + 43 + + - 94 DIV - CAST( + 39 AS SIGNED ) AS col2 FROM tab2 AS cor0
----
-41

skipif mysql # not compatible
query I rowsort label-3613
SELECT DISTINCT - + 43 + + - 94 / - CAST ( + 39 AS INTEGER ) AS col2 FROM tab2 AS cor0
----
-41

query I rowsort
SELECT ALL + + 66 FROM tab0 cor0
----
66
66
66

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3615
SELECT DISTINCT + ( + + col1 ) + col1, CAST( + CAST( NULL AS SIGNED ) AS SIGNED ) AS col2 FROM tab2 AS cor0
----
102
NULL
134
NULL
154
NULL

skipif mysql # not compatible
query II rowsort label-3615
SELECT DISTINCT + ( + + col1 ) + col1, CAST ( + CAST ( NULL AS INTEGER ) AS INTEGER ) AS col2 FROM tab2 AS cor0
----
102
NULL
134
NULL
154
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3616
SELECT ALL - - ( + 48 ) * COUNT( * ) AS col2 FROM tab1 AS cor0
----
144

skipif mysql # not compatible
query I rowsort label-3616
SELECT ALL - - ( + 48 ) * COUNT ( * ) AS col2 FROM tab1 AS cor0
----
144

onlyif mysql # aggregate syntax: 
query II rowsort label-3617
SELECT 98 AS col1, COUNT( * ) + - COUNT( * ) FROM tab1
----
98
0

skipif mysql # not compatible
query II rowsort label-3617
SELECT 98 AS col1, COUNT ( * ) + - COUNT ( * ) FROM tab1
----
98
0

onlyif mysql # aggregate syntax: 
query I rowsort label-3618
SELECT ALL COUNT( * ) AS col1 FROM tab1 WHERE NULL BETWEEN NULL AND - + col0
----
0

skipif mysql # not compatible
query I rowsort label-3618
SELECT ALL COUNT ( * ) AS col1 FROM tab1 WHERE NULL BETWEEN NULL AND - + col0
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-3619
SELECT DISTINCT - COUNT( * ) * MAX( DISTINCT + + ( - col0 ) ) AS col1 FROM tab0
----
45

skipif mysql # not compatible
query I rowsort label-3619
SELECT DISTINCT - COUNT ( * ) * MAX ( DISTINCT + + ( - col0 ) ) AS col1 FROM tab0
----
45

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3620
SELECT ALL + COUNT( * ) DIV - 1 FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-3620
SELECT ALL + COUNT ( * ) / - 1 FROM tab0
----
-3

query III rowsort
SELECT ALL * FROM tab2 WHERE ( ( NULL >= + col0 ) )
----

query II rowsort
SELECT DISTINCT col0, - col1 FROM tab1
----
51
-14
85
-5
91
-47

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3623
SELECT DISTINCT CAST( - COUNT( * ) AS SIGNED ) FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-3623
SELECT DISTINCT CAST ( - COUNT ( * ) AS INTEGER ) FROM tab2
----
-3

onlyif mysql # aggregate syntax: 
query II rowsort label-3624
SELECT 91 col1, + COUNT( * ) AS col2 FROM tab2
----
91
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3624
SELECT 91 col1, + COUNT ( * ) AS col2 FROM tab2
----
91
3

query I rowsort
SELECT ALL ( + - col2 ) AS col1 FROM tab1
----
-59
-68
-96

query I rowsort
SELECT ALL + col1 * - + col1 * 64 FROM tab1 AS cor0
----
-12544
-141376
-1600

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT 87 <= NULL
----

query I rowsort
SELECT DISTINCT + - col2 * - - 42 AS col0 FROM tab1 AS cor0
----
-2478
-2856
-4032

onlyif mysql # aggregate syntax: 
query I rowsort label-3629
SELECT DISTINCT + MIN( ALL - + col0 ) AS col2 FROM tab1 AS cor0 WHERE NOT 72 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3629
SELECT DISTINCT + MIN ( ALL - + col0 ) AS col2 FROM tab1 AS cor0 WHERE NOT 72 IS NOT NULL
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - col2 * col1 * + col2 col1, ( + 54 ) AS col1 FROM tab0 AS cor0
----
-178929
54
-2100
54
-9801
54

query III rowsort
SELECT * FROM tab1 WHERE ( NULL ) BETWEEN - col1 AND ( NULL )
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - col2 * col1 < col2 * + col2 + col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT - AVG ( + 75 ) FROM tab2 WHERE NOT NULL NOT IN ( col0 )
----
NULL

query I rowsort
SELECT - ( ( col1 ) ) + col1 AS col1 FROM tab0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-3635
SELECT DISTINCT - COUNT( * ) * ( 62 ) AS col1 FROM tab1
----
-186

skipif mysql # not compatible
query I rowsort label-3635
SELECT DISTINCT - COUNT ( * ) * ( 62 ) AS col1 FROM tab1
----
-186

onlyif mysql # aggregate syntax: 
query I rowsort label-3636
SELECT MIN( DISTINCT 10 ) AS col0 FROM tab2 WHERE NOT ( NULL ) BETWEEN 22 AND NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3636
SELECT MIN ( DISTINCT 10 ) AS col0 FROM tab2 WHERE NOT ( NULL ) BETWEEN 22 AND NULL
----
NULL

query III rowsort
SELECT * FROM tab1 WHERE - 95 * col1 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab1 WHERE ( + col0 / + 82 ) NOT BETWEEN col2 AND 31
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-3639
SELECT COUNT( * ) * 80 FROM tab1
----
240

skipif mysql # not compatible
query I rowsort label-3639
SELECT COUNT ( * ) * 80 FROM tab1
----
240

query I rowsort
SELECT DISTINCT - col2 + - 7 FROM tab2 WHERE ( - col1 + col1 ) NOT BETWEEN ( NULL ) AND col0
----

query I rowsort
SELECT 74 * col2 + + col1 FROM tab1
----
4371
5079
7118

query I rowsort
SELECT col1 + 65 * - col2 FROM tab1
----
-3830
-4373
-6226

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-3643
SELECT ALL CAST( 59 AS SIGNED ) DIV col1 + - col1 FROM tab1
----
-10
-46
6

skipif mysql # not compatible
query I rowsort label-3643
SELECT ALL CAST ( 59 AS INTEGER ) / col1 + - col1 FROM tab1
----
-10
-46
6

query I rowsort
SELECT 53 * + col2 AS col2 FROM tab2
----
1219
2120
3074

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE ( 91 * col0 ) <> col0
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3646
SELECT CAST( 81 AS SIGNED ) * 16 + 43 AS col2 FROM tab2 WHERE NULL IS NULL
----
1339
1339
1339

skipif mysql # not compatible
query I rowsort label-3646
SELECT CAST ( 81 AS INTEGER ) * 16 + 43 AS col2 FROM tab2 WHERE NULL IS NULL
----
1339
1339
1339

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 67 * - 80 col1 FROM tab0
----
-5360
-5360
-5360

query I rowsort
SELECT ALL + col1 - col2 * - col0 AS col2 FROM tab2
----
1109
2637
4417

query I rowsort
SELECT col1 * - 68 FROM tab2
----
-3468
-4556
-5236

query III rowsort
SELECT ALL * FROM tab2 WHERE + col2 * col1 IS NULL
----

query I rowsort
SELECT - col2 * + col0 + - 43 AS col2 FROM tab1
----
-4939
-5058
-6231

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3652
SELECT - col0 * CAST( NULL AS SIGNED ) FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3652
SELECT - col0 * CAST ( NULL AS INTEGER ) FROM tab2
----
NULL
NULL
NULL

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE col0 NOT BETWEEN + col1 AND NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3654
SELECT DISTINCT - col1 + - col2 DIV col1 FROM tab1
----
-16
-20
-48

skipif mysql # not compatible
query I rowsort label-3654
SELECT DISTINCT - col1 + - col2 / col1 FROM tab1
----
-16
-20
-48

onlyif mysql # aggregate syntax: 
query I rowsort label-3655
SELECT COUNT( - 79 ) AS col0 FROM tab0 cor0
----
3

skipif mysql # not compatible
query I rowsort label-3655
SELECT COUNT ( - 79 ) AS col0 FROM tab0 cor0
----
3

query I rowsort
SELECT DISTINCT ( - 49 ) * col1 - + 63 FROM tab1 AS cor0
----
-2366
-308
-749

query I rowsort
SELECT DISTINCT + col2 FROM tab1 WHERE col0 * + col0 IS NULL
----

query I rowsort
SELECT 24 + col1 * + col2 AS col0 FROM tab2
----
1197
3104
3910

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT ( + 73 ) NOT IN ( col1 * + col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3660
SELECT DISTINCT - COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab2
----
-9

skipif mysql # not compatible
query I rowsort label-3660
SELECT DISTINCT - COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab2
----
-9

query I rowsort
SELECT - + 24 FROM tab1 cor0
----
-24
-24
-24

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( - col2 ) IN ( 31 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT 60 * 59 AS col1 FROM tab2 AS cor0
----
3540
3540
3540

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT - col1 BETWEEN ( NULL ) AND + col0 + 2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3665
SELECT - SUM( - col1 ) AS col1 FROM tab1 AS cor0
----
66

skipif mysql # not compatible
query I rowsort label-3665
SELECT - SUM ( - col1 ) AS col1 FROM tab1 AS cor0
----
66

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT - col0 NOT IN ( 40 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3667
SELECT ALL - COUNT( col2 ) AS col0 FROM tab1 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3667
SELECT ALL - COUNT ( col2 ) AS col0 FROM tab1 AS cor0
----
-3

query III rowsort
SELECT DISTINCT * FROM tab0 cor0 WHERE ( - col1 * + col2 ) IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3669
SELECT ALL + MAX( ALL CAST( NULL AS SIGNED ) ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3669
SELECT ALL + MAX ( ALL CAST ( NULL AS INTEGER ) ) FROM tab1 AS cor0
----
NULL

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT col0 IN ( col2 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3671
SELECT * FROM tab0 AS cor0 WHERE NOT CAST( NULL AS SIGNED ) IS NULL
----

skipif mysql # not compatible
query III rowsort label-3671
SELECT * FROM tab0 AS cor0 WHERE NOT CAST ( NULL AS INTEGER ) IS NULL
----

query I rowsort
SELECT col1 FROM tab1 WHERE NOT NULL IN ( col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3673
SELECT SUM( ALL 29 ) * 72 AS col2 FROM tab2 WHERE NOT NULL IS NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3673
SELECT SUM ( ALL 29 ) * 72 AS col2 FROM tab2 WHERE NOT NULL IS NULL
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + col2 col1 FROM tab0 WHERE + 84 <= col0 * - 55
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 64 col0 FROM tab0
----
64
64
64

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3676
SELECT DISTINCT - col1 AS col0 FROM tab0 WHERE col2 - + CAST( NULL AS SIGNED ) NOT IN ( - col2 )
----

skipif mysql # not compatible
query I rowsort label-3676
SELECT DISTINCT - col1 AS col0 FROM tab0 WHERE col2 - + CAST ( NULL AS INTEGER ) NOT IN ( - col2 )
----

query I rowsort
SELECT DISTINCT col0 * + col0 * 86 AS col1 FROM tab2
----
181976
352256
483750

query I rowsort
SELECT col2 FROM tab2 WHERE NOT 50 <> 52 - 46
----

query I rowsort
SELECT DISTINCT + col2 * + + 29 AS col1 FROM tab2
----
1160
1682
667

query I rowsort
SELECT - ( ( + 11 ) ) FROM tab2
----
-11
-11
-11

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL NOT BETWEEN NULL AND ( - col1 )
----

query I rowsort
SELECT ALL + 89 * 35 FROM tab1
----
3115
3115
3115

query I rowsort
SELECT - ( - 7 ) AS col2 FROM tab1
----
7
7
7

onlyif mysql # aggregate syntax: 
query I rowsort label-3684
SELECT MAX( DISTINCT - col0 ) FROM tab0 cor0
----
-15

skipif mysql # not compatible
query I rowsort label-3684
SELECT MAX ( DISTINCT - col0 ) FROM tab0 cor0
----
-15

onlyif mysql # aggregate syntax: 
query I rowsort label-3685
SELECT ALL SUM( - - col1 ) * 16 FROM tab1 AS cor0
----
1056

skipif mysql # not compatible
query I rowsort label-3685
SELECT ALL SUM ( - - col1 ) * 16 FROM tab1 AS cor0
----
1056

query I rowsort
SELECT DISTINCT col0 * - col1 + 37 FROM tab2 AS cor0
----
-2309
-4891
-4988

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE + col0 >= + ( - col2 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-3688
SELECT COUNT( ALL col1 ) AS col2 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-3688
SELECT COUNT ( ALL col1 ) AS col2 FROM tab0 AS cor0
----
3

query I rowsort
SELECT + col0 * - + col1 AS col1 FROM tab0 AS cor0
----
-1215
-1827
-97

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT 23 NOT BETWEEN NULL AND ( - col2 )
----

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT - col0 * col2 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # DIV for integer division: 
query I rowsort label-3692
SELECT DISTINCT + 13 DIV 90 * 68 AS col2 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-3692
SELECT DISTINCT + 13 / 90 * 68 AS col2 FROM tab1 AS cor0
----
0

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - col0 + col0 * col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT ALL + 21 AS col0, - 28 AS col0 FROM tab2
----
21
-28
21
-28
21
-28

query II rowsort
SELECT col1 AS col0, col2 AS col0 FROM tab1 AS cor0
----
14
96
47
68
5
59

query II rowsort
SELECT + col2 AS col2, col2 + col2 AS col1 FROM tab2 AS cor0
----
23
46
40
80
58
116

query II rowsort
SELECT - col1 AS col0, - 93 * - 89 - - 8 AS col0 FROM tab0 AS cor0
----
-1
8285
-21
8285
-81
8285

query I rowsort
SELECT 48 FROM tab1 AS cor0 WHERE - col0 * + col2 IN ( col2 * - col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3699
SELECT 4 * COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NULL = + col1
----
0

skipif mysql # not compatible
query I rowsort label-3699
SELECT 4 * COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NULL = + col1
----
0

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT col1 / col1 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3701
SELECT + col1 AS col0, - 8 * - + col2 - + ( CAST( NULL AS SIGNED ) + - col0 * + col0 ) * + 46 AS col0 FROM tab2 AS cor0
----
51
NULL
67
NULL
77
NULL

skipif mysql # not compatible
query II rowsort label-3701
SELECT + col1 AS col0, - 8 * - + col2 - + ( CAST ( NULL AS INTEGER ) + - col0 * + col0 ) * + 46 AS col0 FROM tab2 AS cor0
----
51
NULL
67
NULL
77
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col0 + + col0 col2 FROM tab0 cor0
----
174
194
30

query I rowsort
SELECT col2 AS col0 FROM tab2 AS cor0 WHERE ( - 30 ) IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3704
SELECT ALL 10 FROM tab2 AS cor0 WHERE CAST( - CAST( NULL AS SIGNED ) AS SIGNED ) IS NULL
----
10
10
10

skipif mysql # not compatible
query I rowsort label-3704
SELECT ALL 10 FROM tab2 AS cor0 WHERE CAST ( - CAST ( NULL AS INTEGER ) AS INTEGER ) IS NULL
----
10
10
10

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( NULL ) > - 69
----

query I rowsort
SELECT ALL col1 FROM tab1 WHERE NULL <= NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3707
SELECT ALL + CAST( - + col2 AS SIGNED ) + - col2 - + col2 col2 FROM tab1
----
-177
-204
-288

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3707
SELECT ALL + CAST ( - + col2 AS INTEGER ) + - col2 - + col2 col2 FROM tab1
----
-177
-204
-288

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3708
SELECT MAX( ALL + 72 ) DIV - + MIN( ALL - col1 ) + + 95 FROM tab0
----
95

skipif mysql # not compatible
query I rowsort label-3708
SELECT MAX ( ALL + 72 ) / - + MIN ( ALL - col1 ) + + 95 FROM tab0
----
95

query I rowsort
SELECT ( - col1 ) + 42 FROM tab2
----
-25
-35
-9

onlyif mysql # DIV for integer division: 
query I rowsort label-3710
SELECT - col1 + col2 DIV + ( col1 ) + - 76 FROM tab0
----
-157
-97
22

skipif mysql # not compatible
query I rowsort label-3710
SELECT - col1 + col2 / + ( col1 ) + - 76 FROM tab0
----
-157
-97
22

query I rowsort
SELECT DISTINCT + 61 * + col0 * - - col1 FROM tab1
----
25925
260897
43554

onlyif mysql # aggregate syntax: 
query I rowsort label-3712
SELECT DISTINCT + MIN( col1 ) + - - 80 FROM tab0
----
81

skipif mysql # not compatible
query I rowsort label-3712
SELECT DISTINCT + MIN ( col1 ) + - - 80 FROM tab0
----
81

onlyif mysql # aggregate syntax: 
query I rowsort label-3713
SELECT - 66 + - ( + COUNT( * ) ) * + COUNT( * ) FROM tab2 AS cor0
----
-75

skipif mysql # not compatible
query I rowsort label-3713
SELECT - 66 + - ( + COUNT ( * ) ) * + COUNT ( * ) FROM tab2 AS cor0
----
-75

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col2 + + 57 col1 FROM tab1 cor0
----
-11
-2
-39

onlyif mysql # aggregate syntax: 
query I rowsort label-3715
SELECT ALL MAX( ALL + 40 ) - MAX( - 70 ) FROM tab0 AS cor0
----
110

skipif mysql # not compatible
query I rowsort label-3715
SELECT ALL MAX ( ALL + 40 ) - MAX ( - 70 ) FROM tab0 AS cor0
----
110

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE + 50 + col2 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL + 92 AS col0 FROM tab0 WHERE NOT NULL NOT BETWEEN ( col2 ) AND col1
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3718
SELECT ALL COUNT( * ) - - 90 AS col1 FROM tab0
----
93

skipif mysql # not compatible
query I rowsort label-3718
SELECT ALL COUNT ( * ) - - 90 AS col1 FROM tab0
----
93

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NULL IN ( - col2 * - - col1 + + - 1 + - ( + col2 ) * - col0 + - 3 )
----

query I rowsort
SELECT DISTINCT col2 FROM tab1 AS cor0 WHERE NOT ( NULL ) IS NOT NULL
----
59
68
96

query I rowsort
SELECT ALL - col2 * - + col2 FROM tab1 AS cor0
----
3481
4624
9216

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT NULL IN ( - col2, + 50 )
----

query I rowsort
SELECT DISTINCT col0 FROM tab2 AS cor0 WHERE NOT NULL > NULL
----

query I rowsort
SELECT col0 FROM tab1 AS cor0 WHERE NOT ( - col1 + col0 + col1 - col2 ) NOT IN ( - col1 / - col0 + col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3725
SELECT DISTINCT - - MIN( + col2 ) AS col1 FROM tab1 AS cor0
----
59

skipif mysql # not compatible
query I rowsort label-3725
SELECT DISTINCT - - MIN ( + col2 ) AS col1 FROM tab1 AS cor0
----
59

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3726
SELECT + CAST( NULL AS SIGNED ) * MAX( + + 69 ) * + COUNT( * ) FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3726
SELECT + CAST ( NULL AS INTEGER ) * MAX ( + + 69 ) * + COUNT ( * ) FROM tab2 AS cor0
----
NULL

query II rowsort
SELECT DISTINCT col0, + ( + - col2 ) * col0 AS col1 FROM tab1
----
51
-4896
85
-5015
91
-6188

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-3728
SELECT COUNT( * ) AS col2, - 60 DIV 70 col0 FROM tab2
----
3
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3728
SELECT COUNT ( * ) AS col2, - 60 / 70 col0 FROM tab2
----
3
0

query I rowsort
SELECT ALL col0 * + - 7 FROM tab2
----
-322
-448
-525

query II rowsort
SELECT DISTINCT col0, + col0 FROM tab0
----
15
15
87
87
97
97

onlyif mysql # aggregate syntax: 
query I rowsort label-3731
SELECT + SUM( ALL + - 8 ) + - 52 + + COUNT( * ) FROM tab0 WHERE NOT NULL >= NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-3731
SELECT + SUM ( ALL + - 8 ) + - 52 + + COUNT ( * ) FROM tab0 WHERE NOT NULL >= NULL
----
NULL

query II rowsort
SELECT col1, 97 AS col1 FROM tab0
----
1
97
21
97
81
97

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL BETWEEN NULL AND + + 58
----

onlyif mysql # aggregate syntax: 
query II rowsort label-3734
SELECT 76 AS col2, 49 * - ( - + COUNT( * ) ) AS col2 FROM tab0
----
76
147

skipif mysql # not compatible
query II rowsort label-3734
SELECT 76 AS col2, 49 * - ( - + COUNT ( * ) ) AS col2 FROM tab0
----
76
147

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN - 74 AND + 58
----

query I rowsort
SELECT - col0 / - + 70 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3737
SELECT DISTINCT + 4 * COUNT( * ) AS col0 FROM tab2 cor0
----
12

skipif mysql # not compatible
query I rowsort label-3737
SELECT DISTINCT + 4 * COUNT ( * ) AS col0 FROM tab2 cor0
----
12

query I rowsort
SELECT DISTINCT col1 FROM tab0 AS cor0 WHERE NOT + - col0 NOT BETWEEN - col1 + - col2 * col2 AND ( NULL ) OR NOT NULL BETWEEN col2 + 18 AND + col1 + - ( + ( 53 ) )
----

query II rowsort
SELECT ALL 8, - 5 AS col1 FROM tab0 AS cor0
----
8
-5
8
-5
8
-5

onlyif mysql # DIV for integer division: 
query I rowsort label-3740
SELECT col1 * - col0 + + - 91 + - 32 - + col0 DIV + col1 AS col1 FROM tab1 AS cor0
----
-4401
-565
-840

skipif mysql # not compatible
query I rowsort label-3740
SELECT col1 * - col0 + + - 91 + - 32 - + col0 / + col1 AS col1 FROM tab1 AS cor0
----
-4401
-565
-840

onlyif mysql # aggregate syntax: 
query I rowsort label-3741
SELECT + COUNT( * ) * ( 74 ) AS col0 FROM tab0 AS cor0
----
222

skipif mysql # not compatible
query I rowsort label-3741
SELECT + COUNT ( * ) * ( 74 ) AS col0 FROM tab0 AS cor0
----
222

query I rowsort
SELECT DISTINCT - 44 + - - col1 * + - col0 FROM tab0 AS cor0
----
-1259
-141
-1871

query I rowsort
SELECT DISTINCT - col2 * + + col0 + - 43 FROM tab0 AS cor0
----
-748
-913
-9646

query I rowsort
SELECT + col2 * - col0 + + - 0 + - 73 - col2 + + 27 + + + col2 FROM tab1 AS cor0
----
-4942
-5061
-6234

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3745
SELECT DISTINCT 26 + 81 AS col0, - CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
107
NULL

skipif mysql # not compatible
query II rowsort label-3745
SELECT DISTINCT 26 + 81 AS col0, - CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
107
NULL

query I rowsort
SELECT DISTINCT - 20 + + + ( col1 ) FROM tab1 AS cor0
----
-15
-6
27

query I rowsort
SELECT - - ( - - 99 ) + - + col2 + col2 * + - col0 * - ( - col1 ) FROM tab2 AS cor0
----
-197061
-291409
-53882

query I rowsort
SELECT DISTINCT + 71 + + - 12 - col2 FROM tab1 AS cor0
----
-37
-9
0

query I rowsort
SELECT ALL 79 + + ( + 41 ) - - 89 * + 15 FROM tab0 AS cor0
----
1455
1455
1455

query I rowsort
SELECT DISTINCT - col1 + + col1 + col2 FROM tab1 WHERE NOT NULL IS NOT NULL
----
59
68
96

query I rowsort
SELECT ALL 45 - - + col2 AS col2 FROM tab1
----
104
113
141

query I rowsort
SELECT col1 * + ( + 16 ) * + 15 + 18 + - + col1 FROM tab0
----
19377
257
5037

query I rowsort
SELECT ALL col1 * + + col2 FROM tab1
----
1344
295
3196

query I rowsort
SELECT ALL col1 * + - col0 FROM tab0
----
-1215
-1827
-97

query I rowsort
SELECT ALL - col2 AS col1 FROM tab0 WHERE NOT + col1 IS NULL
----
-10
-47
-99

query I rowsort
SELECT ALL col2 * + - col0 AS col1 FROM tab2
----
-1058
-2560
-4350

query III rowsort
SELECT * FROM tab1 WHERE + ( col1 ) IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3758
SELECT DISTINCT col0 DIV - + col0 AS col2 FROM tab2
----
-1

skipif mysql # not compatible
query I rowsort label-3758
SELECT DISTINCT col0 / - + col0 AS col2 FROM tab2
----
-1

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT + ( - - 13 ) + + + col0 * - 78 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL + 29 + + ( 75 ) FROM tab1
----
104
104
104

query I rowsort
SELECT DISTINCT - col0 + 64 FROM tab2 AS cor0
----
-11
0
18

query I rowsort
SELECT DISTINCT 59 + - ( - 3 ) FROM tab1 cor0
----
62

query I rowsort
SELECT ALL - + ( - 94 ) - col2 + - col0 FROM tab0 AS cor0
----
-102
-3
32

onlyif mysql # aggregate syntax: 
query I rowsort label-3764
SELECT + - COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

skipif mysql # not compatible
query I rowsort label-3764
SELECT + - COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3765
SELECT - + 38 DIV COUNT( * ) AS col1 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-4

skipif mysql # not compatible
query I rowsort label-3765
SELECT - + 38 / COUNT ( * ) AS col1 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-4

query IIIIII rowsort
SELECT * FROM tab0 cor0 CROSS JOIN tab0 AS cor1 WHERE NOT ( NULL ) IS NOT NULL
----
54 values hashing to 42daa03e48aa6755defd0a3206e51d8e

onlyif mysql # aggregate syntax: 
query I rowsort label-3767
SELECT - 36 * SUM( ALL - - col1 ) FROM tab1
----
-2376

skipif mysql # not compatible
query I rowsort label-3767
SELECT - 36 * SUM ( ALL - - col1 ) FROM tab1
----
-2376

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 * - 66 col1 FROM tab2
----
3036
4224
4950

onlyif mysql # aggregate syntax: 
query I rowsort label-3769
SELECT DISTINCT - - MIN( DISTINCT - - 83 ) AS col0 FROM tab2 AS cor0
----
83

skipif mysql # not compatible
query I rowsort label-3769
SELECT DISTINCT - - MIN ( DISTINCT - - 83 ) AS col0 FROM tab2 AS cor0
----
83

onlyif mysql # aggregate syntax: 
query I rowsort label-3770
SELECT + MAX( + ( + 15 ) ) FROM tab1 AS cor0
----
15

skipif mysql # not compatible
query I rowsort label-3770
SELECT + MAX ( + ( + 15 ) ) FROM tab1 AS cor0
----
15

query I rowsort
SELECT + col1 * 3 AS col0 FROM tab1 AS cor0 WHERE NOT NULL NOT BETWEEN NULL AND NULL
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT 56 IN ( col0 + + ( - - col1 ) )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT - + 11 * col0 FROM tab0 cor0
----
-1067
-165
-957

onlyif mysql # aggregate syntax: 
query I rowsort label-3774
SELECT DISTINCT + + MAX( - 98 ) FROM tab0 AS cor0 WHERE NOT 77 NOT BETWEEN + col2 + - col1 * - col1 AND - col0
----
NULL

skipif mysql # not compatible
query I rowsort label-3774
SELECT DISTINCT + + MAX ( - 98 ) FROM tab0 AS cor0 WHERE NOT 77 NOT BETWEEN + col2 + - col1 * - col1 AND - col0
----
NULL

query I rowsort
SELECT DISTINCT + col1 AS col0 FROM tab0 AS cor0 WHERE NOT NULL = ( NULL )
----

query I rowsort
SELECT DISTINCT col0 AS col0 FROM tab2 AS cor0 WHERE NOT ( ( - 82 * - col2 * + 37 ) NOT IN ( - 64 ) ) OR ( col2 ) IN ( + 33 * col2 )
----

query II rowsort
SELECT + col2 AS col2, + col2 AS col2 FROM tab0 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN - col1 / - - col2 AND + + 22 * 1
----

query I rowsort
SELECT DISTINCT + 47 * - col0 AS col1 FROM tab0
----
-4089
-4559
-705

query I rowsort
SELECT + + 35 FROM tab0 WHERE NOT - - col0 * col1 <> NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3780
SELECT DISTINCT - SUM( ALL col1 ) col0 FROM tab2
----
-195

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3780
SELECT DISTINCT - SUM ( ALL col1 ) col0 FROM tab2
----
-195

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL col1, col2 col1 FROM tab1
----
14
96
47
68
5
59

onlyif mysql # aggregate syntax: 
query I rowsort label-3782
SELECT MIN( DISTINCT - 72 ) AS col1 FROM tab1
----
-72

skipif mysql # not compatible
query I rowsort label-3782
SELECT MIN ( DISTINCT - 72 ) AS col1 FROM tab1
----
-72

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + col0 * - - col0 col2 FROM tab1
----
2601
7225
8281

onlyif mysql # aggregate syntax: 
query I rowsort label-3784
SELECT - COUNT( DISTINCT 78 ) FROM tab0 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-3784
SELECT - COUNT ( DISTINCT 78 ) FROM tab0 AS cor0
----
-1

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT 82 - col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT DISTINCT - col0 + - + col1 AS col1 FROM tab1 AS cor0
----
-138
-65
-90

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( 64 ) IS NOT NULL
----

query I rowsort
SELECT ALL - - col0 + - 97 AS col1 FROM tab1 AS cor0
----
-12
-46
-6

onlyif mysql # aggregate syntax: 
query I rowsort label-3789
SELECT DISTINCT + MAX( + col0 ) AS col2 FROM tab2 AS cor0
----
75

skipif mysql # not compatible
query I rowsort label-3789
SELECT DISTINCT + MAX ( + col0 ) AS col2 FROM tab2 AS cor0
----
75

query III rowsort
SELECT * FROM tab0 WHERE - 75 = - + col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3791
SELECT DISTINCT - ( 40 ) + - + COUNT( * ) FROM tab2
----
-43

skipif mysql # not compatible
query I rowsort label-3791
SELECT DISTINCT - ( 40 ) + - + COUNT ( * ) FROM tab2
----
-43

query I rowsort
SELECT - ( - + col1 ) AS col1 FROM tab1 AS cor0
----
14
47
5

onlyif mysql # aggregate syntax: 
query I rowsort label-3793
SELECT - 86 + - - COUNT( * ) FROM tab1 AS cor0 WHERE col1 + + - col2 + col2 - + col0 * - 67 IS NOT NULL
----
-83

skipif mysql # not compatible
query I rowsort label-3793
SELECT - 86 + - - COUNT ( * ) FROM tab1 AS cor0 WHERE col1 + + - col2 + col2 - + col0 * - 67 IS NOT NULL
----
-83

query I rowsort
SELECT DISTINCT - + col0 FROM tab1 AS cor0 WHERE NOT - 10 <> + 87 + 35
----

query I rowsort
SELECT ALL + col0 * + + col1 + + + ( + col0 ) AS col0 FROM tab1 AS cor0
----
4368
510
765

query II rowsort
SELECT ALL - + 22 * + col2 + - - ( + - col0 ) * col2 + + col0, col1 AS col0 FROM tab0 AS cor0
----
-1003
21
-11684
1
-1724
81

query II rowsort
SELECT DISTINCT + - col0 + + ( - col0 ) * + col0, 58 * + - col1 AS col0 FROM tab0 AS cor0
----
-240
-4698
-7656
-1218
-9506
-58

query II rowsort
SELECT + - col0 AS col2, col1 FROM tab1 AS cor0
----
-51
14
-85
5
-91
47

query I rowsort
SELECT ALL col0 + - col0 AS col1 FROM tab2 cor0
----
0
0
0

query I rowsort
SELECT ALL + col0 + + + col0 FROM tab2 cor0
----
128
150
92

query I rowsort
SELECT DISTINCT + col1 - + - col1 AS col2 FROM tab1 AS cor0
----
10
28
94

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3802
SELECT DISTINCT CAST( NULL AS SIGNED ) - + 79 * - - COUNT( * ) col0 FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3802
SELECT DISTINCT CAST ( NULL AS INTEGER ) - + 79 * - - COUNT ( * ) col0 FROM tab1 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT 27 - - + col2 FROM tab0
----
126
37
74

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3804
SELECT + CAST( + + COUNT( * ) AS SIGNED ) + + 10 FROM tab0
----
13

skipif mysql # not compatible
query I rowsort label-3804
SELECT + CAST ( + + COUNT ( * ) AS INTEGER ) + + 10 FROM tab0
----
13

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3805
SELECT DISTINCT + MIN( - col1 ) - - CAST( + + COUNT( * ) AS SIGNED ) AS col0 FROM tab2
----
-74

skipif mysql # not compatible
query I rowsort label-3805
SELECT DISTINCT + MIN ( - col1 ) - - CAST ( + + COUNT ( * ) AS INTEGER ) AS col0 FROM tab2
----
-74

query I rowsort
SELECT DISTINCT col0 - ( - - 69 ) AS col0 FROM tab2
----
-23
-5
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3807
SELECT CAST( NULL AS SIGNED ) + - - col2 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3807
SELECT CAST ( NULL AS INTEGER ) + - - col2 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT + 9 + col2 FROM tab1
----
105
68
77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3809
SELECT 77 + CAST( - + col1 AS SIGNED ) AS col2 FROM tab1 WHERE ( NULL IS NOT NULL )
----

skipif mysql # not compatible
query I rowsort label-3809
SELECT 77 + CAST ( - + col1 AS INTEGER ) AS col2 FROM tab1 WHERE ( NULL IS NOT NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3810
SELECT - ( - COUNT( * ) ) col2 FROM tab2 WHERE ( NOT ( NULL IS NULL ) )
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3810
SELECT - ( - COUNT ( * ) ) col2 FROM tab2 WHERE ( NOT ( NULL IS NULL ) )
----
0

query IIIIII rowsort
SELECT DISTINCT * FROM tab0, tab1 AS cor0 WHERE NULL < - + 80
----

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT NULL NOT BETWEEN col2 * - col1 AND + col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3813
SELECT DISTINCT ( COUNT( * ) ) AS col2 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-3813
SELECT DISTINCT ( COUNT ( * ) ) AS col2 FROM tab0 AS cor0
----
3

query I rowsort
SELECT ALL - col1 FROM tab1 AS cor0 WHERE NOT col1 IS NULL
----
-14
-47
-5

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + 70 * - col0 col2 FROM tab2 cor0
----
-3220
-4480
-5250

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3816
SELECT * FROM tab2 WHERE NOT + 41 / - ( - col1 ) + + - col2 NOT BETWEEN + col0 - - col2 * + CAST( + ( - 38 ) AS SIGNED ) * CAST( 78 AS SIGNED ) + col2 * - col2 AND - col1
----

skipif mysql # not compatible
query III rowsort label-3816
SELECT * FROM tab2 WHERE NOT + 41 / - ( - col1 ) + + - col2 NOT BETWEEN + col0 - - col2 * + CAST ( + ( - 38 ) AS INTEGER ) * CAST ( 78 AS INTEGER ) + col2 * - col2 AND - col1
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3817
SELECT ALL col0 DIV - - col1 FROM tab2
----
0
0
1

skipif mysql # not compatible
query I rowsort label-3817
SELECT ALL col0 / - - col1 FROM tab2
----
0
0
1

onlyif mysql # aggregate syntax: 
query I rowsort label-3818
SELECT - SUM( + 96 ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-864

skipif mysql # not compatible
query I rowsort label-3818
SELECT - SUM ( + 96 ) FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-864

query I rowsort
SELECT 68 * + col0 FROM tab0
----
1020
5916
6596

onlyif mysql # DIV for integer division: 
query I rowsort label-3820
SELECT - col1 DIV - 6 + - col0 AS col1 FROM tab0 WHERE NOT + - 13 IS NULL
----
-2
-84
-97

skipif mysql # not compatible
query I rowsort label-3820
SELECT - col1 / - 6 + - col0 AS col1 FROM tab0 WHERE NOT + - 13 IS NULL
----
-2
-84
-97

onlyif mysql # DIV for integer division: 
query I rowsort label-3821
SELECT DISTINCT + col1 DIV - + col1 FROM tab1
----
-1

skipif mysql # not compatible
query I rowsort label-3821
SELECT DISTINCT + col1 / - + col1 FROM tab1
----
-1

onlyif mysql # aggregate syntax: 
query I rowsort label-3822
SELECT ALL - COUNT( * ) AS col1 FROM tab2 AS cor0 WHERE NOT 76 IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-3822
SELECT ALL - COUNT ( * ) AS col1 FROM tab2 AS cor0 WHERE NOT 76 IS NOT NULL
----
0

query I rowsort
SELECT col2 * - ( + 29 ) FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT + col2 = + + 75
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-3825
SELECT DISTINCT - MIN( col1 ) FROM tab1 AS cor0
----
-5

skipif mysql # not compatible
query I rowsort label-3825
SELECT DISTINCT - MIN ( col1 ) FROM tab1 AS cor0
----
-5

query II rowsort
SELECT DISTINCT + 43, - col0 + - col2 AS col2 FROM tab1 AS cor0
----
43
-144
43
-147
43
-159

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 98 col2 FROM tab0 cor0
----
98
98
98

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - 77, + col2 col1 FROM tab1 AS cor0
----
-77
59
-77
68
-77
96

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NOT + 63 * - + 60 IS NULL )
----

query II rowsort
SELECT - col2, - col2 * col0 AS col0 FROM tab0 AS cor0
----
-10
-870
-47
-705
-99
-9603

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT 21 + - + col1 + col1 col0 FROM tab0
----
21
21
21

onlyif mysql # aggregate syntax: 
query I rowsort label-3832
SELECT ALL SUM( ALL - + 31 ) FROM tab1
----
-93

skipif mysql # not compatible
query I rowsort label-3832
SELECT ALL SUM ( ALL - + 31 ) FROM tab1
----
-93

onlyif mysql # aggregate syntax: 
query I rowsort label-3833
SELECT ALL MIN( + + 86 ) AS col2 FROM tab0
----
86

skipif mysql # not compatible
query I rowsort label-3833
SELECT ALL MIN ( + + 86 ) AS col2 FROM tab0
----
86

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NULL >= - col2 OR NULL IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL col2 + + col1 + - - col0 + + col0 FROM tab0 AS cor0
----
158
205
294

query I rowsort
SELECT + + 58 AS col2 FROM tab0 AS cor0 WHERE 99 * - + col2 + - + 43 <= NULL
----

query I rowsort
SELECT DISTINCT col0 * + - col0 FROM tab2
----
-2116
-4096
-5625

onlyif mysql # DIV for integer division: 
query I rowsort label-3838
SELECT ALL col1 DIV + col0 + - + col0 AS col0 FROM tab1 AS cor0
----
-51
-85
-91

skipif mysql # not compatible
query I rowsort label-3838
SELECT ALL col1 / + col0 + - + col0 AS col0 FROM tab1 AS cor0
----
-51
-85
-91

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3839
SELECT + + CAST( + - SUM( ALL + - col0 ) AS SIGNED ) AS col1 FROM tab1 AS cor0 WHERE col0 <> + 19
----
227

skipif mysql # not compatible
query I rowsort label-3839
SELECT + + CAST ( + - SUM ( ALL + - col0 ) AS INTEGER ) AS col1 FROM tab1 AS cor0 WHERE col0 <> + 19
----
227

query II rowsort
SELECT ALL + 16 + - + 91 * col0 AS col2, col2 FROM tab0 AS cor0
----
-1349
47
-7901
10
-8811
99

query I rowsort
SELECT DISTINCT col0 + - 11 + col2 FROM tab0 AS cor0
----
185
51
86

query II rowsort
SELECT col0, - 86 + - 63 + + 76 AS col1 FROM tab1
----
51
-73
85
-73
91
-73

query III rowsort
SELECT * FROM tab2 WHERE - + col1 IS NULL
----

query I rowsort
SELECT - col2 * + ( + + 35 ) - - col2 AS col1 FROM tab1
----
-2006
-2312
-3264

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + + col1 - + 43 - + col1 col0 FROM tab2 WHERE NOT NULL NOT IN ( + col1 + + - col2, + col0 * + - col1 ) AND NOT + 67 - - ( + 55 ) IS NULL
----

query I rowsort
SELECT - col1 * - col2 * - ( col1 ) FROM tab1 AS cor0
----
-1475
-150212
-18816

onlyif mysql # DIV for integer division: 
query II rowsort label-3847
SELECT + col0 AS col1, 88 DIV + 80 FROM tab1 AS cor0
----
51
1
85
1
91
1

skipif mysql # not compatible
query II rowsort label-3847
SELECT + col0 AS col1, 88 / + 80 FROM tab1 AS cor0
----
51
1
85
1
91
1

query I rowsort
SELECT + 9 * - ( + col1 ) AS col0 FROM tab0 AS cor0
----
-189
-729
-9

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT NULL < + 48
----

query I rowsort
SELECT ALL - + col1 - + col1 AS col1 FROM tab2 AS cor0 WHERE - col0 IN ( + 9, col1, - 85, 37 * + col2 / col2 )
----

query III rowsort
SELECT * FROM tab0 WHERE NOT + col1 NOT IN ( + col1 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL col2 * + - col2 FROM tab2 cor0
----
-1600
-3364
-529

onlyif mysql # aggregate syntax: 
query I rowsort label-3853
SELECT DISTINCT + COUNT( + + 0 ) AS col2 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-3853
SELECT DISTINCT + COUNT ( + + 0 ) AS col2 FROM tab2
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-3854
SELECT ALL col0, CAST( NULL AS SIGNED ) * - - col1 / - col2 * - col2 FROM tab2
----
46
NULL
64
NULL
75
NULL

skipif mysql # not compatible
query II rowsort label-3854
SELECT ALL col0, CAST ( NULL AS INTEGER ) * - - col1 / - col2 * - col2 FROM tab2
----
46
NULL
64
NULL
75
NULL

query III rowsort
SELECT * FROM tab2 WHERE ( - 25 IS NOT NULL )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-3856
SELECT - SUM( ALL - 75 ) col1 FROM tab0
----
225

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3856
SELECT - SUM ( ALL - 75 ) col1 FROM tab0
----
225

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT col0 col2, 78 FROM tab0
----
15
78
87
78
97
78

query I rowsort
SELECT - - 99 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to 4b77467dd5f346109d29f6364a7bb8db

onlyif mysql # DIV for integer division: 
query I rowsort label-3859
SELECT + 96 DIV - col2 AS col0 FROM tab0
----
-2
-9
0

skipif mysql # not compatible
query I rowsort label-3859
SELECT + 96 / - col2 AS col0 FROM tab0
----
-2
-9
0

query I rowsort
SELECT col2 - col2 * - + 11 AS col2 FROM tab0 AS cor0
----
1188
120
564

query I rowsort
SELECT ALL + 34 + - ( col1 ) FROM tab1 AS cor0
----
-13
20
29

onlyif mysql # DIV for integer division: 
query I rowsort label-3862
SELECT ALL + 69 * - + col1 + - + 26 * 60 DIV + 60 + - 23 + - + col2 FROM tab2 AS cor0
----
-3591
-4730
-5402

skipif mysql # not compatible
query I rowsort label-3862
SELECT ALL + 69 * - + col1 + - + 26 * 60 / + 60 + - 23 + - + col2 FROM tab2 AS cor0
----
-3591
-4730
-5402

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE col0 * + col1 IS NULL
----

query I rowsort
SELECT - col1 * - col2 + col1 AS col1 FROM tab1 AS cor0
----
1358
300
3243

query I rowsort
SELECT + col1 * - 54 + ( - 34 ) AS col2 FROM tab1
----
-2572
-304
-790

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3866
SELECT ALL * FROM tab2 WHERE - - CAST( NULL AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-3866
SELECT ALL * FROM tab2 WHERE - - CAST ( NULL AS INTEGER ) IS NOT NULL
----

query I rowsort
SELECT DISTINCT + 99 AS col2 FROM tab1
----
99

onlyif mysql # aggregate syntax: 
query I rowsort label-3868
SELECT - - COUNT( * ) * - - 21 FROM tab2 WHERE NOT NULL IS NOT NULL
----
63

skipif mysql # not compatible
query I rowsort label-3868
SELECT - - COUNT ( * ) * - - 21 FROM tab2 WHERE NOT NULL IS NOT NULL
----
63

onlyif mysql # aggregate syntax: 
query I rowsort label-3869
SELECT COUNT( * ) * - + COUNT( * ) AS col0 FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-3869
SELECT COUNT ( * ) * - + COUNT ( * ) AS col0 FROM tab1
----
-9

query I rowsort
SELECT + 0 * + - col1 FROM tab0
----
0
0
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - 40 col0 FROM tab0
----
-40
-40
-40

onlyif mysql # aggregate syntax: 
query I rowsort label-3872
SELECT + MAX( ALL - col1 ) AS col2 FROM tab2
----
-51

skipif mysql # not compatible
query I rowsort label-3872
SELECT + MAX ( ALL - col1 ) AS col2 FROM tab2
----
-51

query II rowsort
SELECT ALL 6 AS col2, col2 * - col1 FROM tab2
----
6
-1173
6
-3080
6
-3886

onlyif mysql # aggregate syntax: 
query I rowsort label-3874
SELECT - - 8 * + - MAX( - col2 ) AS col2 FROM tab1 AS cor0
----
472

skipif mysql # not compatible
query I rowsort label-3874
SELECT - - 8 * + - MAX ( - col2 ) AS col2 FROM tab1 AS cor0
----
472

query I rowsort
SELECT ALL + col2 * - 79 FROM tab1 cor0
----
-4661
-5372
-7584

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col1 * + 95 - + 53 * + + ( col2 ) col0 FROM tab0 AS cor0
----
-10186
-2525
-5342

onlyif mysql # aggregate syntax: 
query I rowsort label-3877
SELECT + - MIN( ALL + col2 ) FROM tab0 AS cor0
----
-10

skipif mysql # not compatible
query I rowsort label-3877
SELECT + - MIN ( ALL + col2 ) FROM tab0 AS cor0
----
-10

query I rowsort
SELECT ALL 67 FROM tab1 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to b56f8a4f1fcebc9802481256df61e97c

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-3879
SELECT DISTINCT + MAX( - 10 ) DIV + 12 - 61 FROM tab2, tab1 AS cor0
----
-61

skipif mysql # not compatible
query I rowsort label-3879
SELECT DISTINCT + MAX ( - 10 ) / + 12 - 61 FROM tab2, tab1 AS cor0
----
-61

query I rowsort
SELECT ALL 67 * - 71 AS col2 FROM tab1
----
-4757
-4757
-4757

query I rowsort
SELECT 5 AS col0 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to 6035628694bdea36f584f3649088551d

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT NULL >= + col2 / col0
----

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE col0 = NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3884
SELECT DISTINCT + - CAST( NULL AS SIGNED ) * + - col2 AS col1 FROM tab0 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3884
SELECT DISTINCT + - CAST ( NULL AS INTEGER ) * + - col2 AS col1 FROM tab0 cor0
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-3885
SELECT DISTINCT + + col0 DIV + col0 FROM tab2 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-3885
SELECT DISTINCT + + col0 / + col0 FROM tab2 AS cor0
----
1

query I rowsort
SELECT DISTINCT + ( + col1 ) * - 79 AS col1 FROM tab2 cor0
----
-4029
-5293
-6083

query I rowsort
SELECT - - 0 * + - 5 * + + 82 AS col2 FROM tab1 AS cor0
----
0
0
0

query I rowsort
SELECT ALL + + 8 AS col1 FROM tab2 AS cor0
----
8
8
8

onlyif mysql # DIV for integer division: 
query I rowsort label-3889
SELECT DISTINCT + 84 DIV - col1 col2 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-1
-16
-6

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3889
SELECT DISTINCT + 84 / - col1 col2 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-1
-16
-6

query I rowsort
SELECT col1 * col0 * 91 + col0 + + col1 FROM tab1
----
38765
389345
65039

query I rowsort
SELECT + + 75 FROM tab1 WHERE + + col0 / + + col0 + - col1 <> + col2 * - col1 + 36 + - - col1 * - 49 - 19 / + 86 * - 15
----
75
75
75

onlyif mysql # aggregate syntax: 
query I rowsort label-3892
SELECT DISTINCT MIN( DISTINCT 25 ) AS col0 FROM tab1
----
25

skipif mysql # not compatible
query I rowsort label-3892
SELECT DISTINCT MIN ( DISTINCT 25 ) AS col0 FROM tab1
----
25

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3893
SELECT ALL * FROM tab2 WHERE - col0 - CAST( ( - 56 ) AS SIGNED ) * + col2 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-3893
SELECT ALL * FROM tab2 WHERE - col0 - CAST ( ( - 56 ) AS INTEGER ) * + col2 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-3894
SELECT ALL MIN( + col1 ) FROM tab0
----
1

skipif mysql # not compatible
query I rowsort label-3894
SELECT ALL MIN ( + col1 ) FROM tab0
----
1

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + col1 + + col2 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - + col1 col1 FROM tab0 WHERE NULL >= NULL
----

query I rowsort
SELECT DISTINCT - col2 AS col1 FROM tab1 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT + col0 * - col2 / + 54 FROM tab1 WHERE NULL NOT IN ( + - col0, + 44 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3899
SELECT - ( + 64 ) DIV - - 64 col0 FROM tab1
----
-1
-1
-1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3899
SELECT - ( + 64 ) / - - 64 col0 FROM tab1
----
-1
-1
-1

query I rowsort
SELECT ALL 52 + + + 82 FROM tab1 WHERE NOT + - col2 IS NOT NULL
----

query I rowsort
SELECT DISTINCT + - 90 + col0 + - col1 FROM tab0 AS cor0 WHERE ( NOT + ( col0 ) IS NOT NULL )
----

query I rowsort
SELECT ALL 64 * + - col2 AS col1 FROM tab0 AS cor0
----
-3008
-6336
-640

query I rowsort
SELECT DISTINCT + + col1 + - + ( + 17 ) + - 71 - + + col0 AS col0 FROM tab1 AS cor0
----
-125
-132
-168

onlyif mysql # aggregate syntax: 
query II rowsort label-3904
SELECT DISTINCT - ( + + MAX( ALL + col0 ) ) AS col2, + 38 AS col1 FROM tab0
----
-97
38

skipif mysql # not compatible
query II rowsort label-3904
SELECT DISTINCT - ( + + MAX ( ALL + col0 ) ) AS col2, + 38 AS col1 FROM tab0
----
-97
38

onlyif mysql # aggregate syntax: 
query I rowsort label-3905
SELECT - COUNT( * ) * + - COUNT( * ) AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 cor1
----
81

skipif mysql # not compatible
query I rowsort label-3905
SELECT - COUNT ( * ) * + - COUNT ( * ) AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 cor1
----
81

query I rowsort
SELECT DISTINCT - ( - - col0 ) AS col0 FROM tab0
----
-15
-87
-97

onlyif mysql # aggregate syntax: 
query I rowsort label-3907
SELECT DISTINCT 44 * COUNT( * ) FROM tab2 AS cor0
----
132

skipif mysql # not compatible
query I rowsort label-3907
SELECT DISTINCT 44 * COUNT ( * ) FROM tab2 AS cor0
----
132

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3908
SELECT DISTINCT - COUNT( * ) + - CAST( NULL AS SIGNED ) + + + ( - COUNT( * ) ) AS col0 FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3908
SELECT DISTINCT - COUNT ( * ) + - CAST ( NULL AS INTEGER ) + + + ( - COUNT ( * ) ) AS col0 FROM tab1 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3909
SELECT - - COUNT( * ) AS col2 FROM tab0 cor0
----
3

skipif mysql # not compatible
query I rowsort label-3909
SELECT - - COUNT ( * ) AS col2 FROM tab0 cor0
----
3

query II rowsort
SELECT + col0 AS col1, col1 FROM tab1 AS cor0 WHERE ( + col2 ) IS NULL
----

query I rowsort
SELECT ALL + + col1 * - - col2 + - + 1 FROM tab0 AS cor0
----
209
3806
98

onlyif mysql # aggregate syntax: 
query I rowsort label-3912
SELECT DISTINCT - + MIN( + col0 ) AS col1 FROM tab1 AS cor0
----
-51

skipif mysql # not compatible
query I rowsort label-3912
SELECT DISTINCT - + MIN ( + col0 ) AS col1 FROM tab1 AS cor0
----
-51

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-3913
SELECT ALL MAX( DISTINCT col1 ) + + CAST( NULL AS DECIMAL ) AS col0 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-3913
SELECT ALL MAX ( DISTINCT col1 ) + + CAST ( NULL AS REAL ) AS col0 FROM tab0 AS cor0
----
NULL

query II rowsort
SELECT - - col1, col1 * 5 AS col1 FROM tab0 AS cor0
----
1
5
21
105
81
405

query I rowsort
SELECT ALL + 75 FROM tab2 AS cor0 WHERE NULL NOT IN ( col2, - col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3916
SELECT - - MIN( ALL col0 ) AS col0 FROM tab1 cor0
----
51

skipif mysql # not compatible
query I rowsort label-3916
SELECT - - MIN ( ALL col0 ) AS col0 FROM tab1 cor0
----
51

query II rowsort
SELECT DISTINCT + col2, + col1 FROM tab1 AS cor0
----
59
5
68
47
96
14

query IIIIII rowsort
SELECT ALL * FROM tab0, tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
54 values hashing to 9cf5329ae50920f4c6e297c9f5b652fd

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3919
SELECT ALL CAST( MIN( + 33 ) AS SIGNED ) AS col1 FROM tab0
----
33

skipif mysql # not compatible
query I rowsort label-3919
SELECT ALL CAST ( MIN ( + 33 ) AS INTEGER ) AS col1 FROM tab0
----
33

query I rowsort
SELECT - col1 * - - col2 FROM tab1
----
-1344
-295
-3196

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT + col0 IN ( - col1 * + 45 * - col1 * + + 47, + col1, 97, - + col0 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3922
SELECT ALL ( + CAST( - col2 AS SIGNED ) ) FROM tab0 AS cor0
----
-10
-47
-99

skipif mysql # not compatible
query I rowsort label-3922
SELECT ALL ( + CAST ( - col2 AS INTEGER ) ) FROM tab0 AS cor0
----
-10
-47
-99

query I rowsort
SELECT ALL + col1 FROM tab1 WHERE + col2 + col1 * col2 * + + 37 IS NOT NULL
----
14
47
5

onlyif mysql # aggregate syntax: 
query I rowsort label-3924
SELECT DISTINCT - 72 * - - COUNT( * ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-648

skipif mysql # not compatible
query I rowsort label-3924
SELECT DISTINCT - 72 * - - COUNT ( * ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-648

query I rowsort
SELECT ALL - col0 * col1 + - col2 + + col1 FROM tab0 AS cor0
----
-1181
-1816
-195

query II rowsort
SELECT ALL + - col0 AS col0, col2 AS col0 FROM tab2 AS cor0
----
-46
23
-64
40
-75
58

query I rowsort
SELECT AVG ( DISTINCT + col0 ) FROM tab2 AS cor0 WHERE - 12 * - col2 IS NULL
----
NULL

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT col1 <> 79 / 94 - + 76
----

query I rowsort
SELECT - col2 * - 62 * + 82 FROM tab1 AS cor0
----
299956
345712
488064

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3930
SELECT DISTINCT - col1 + col2 - + CAST( + col1 AS SIGNED ) + - col1 + - col0 AS col1 FROM tab1 AS cor0
----
-164
-41
3

skipif mysql # not compatible
query I rowsort label-3930
SELECT DISTINCT - col1 + col2 - + CAST ( + col1 AS INTEGER ) + - col1 + - col0 AS col1 FROM tab1 AS cor0
----
-164
-41
3

query I rowsort
SELECT DISTINCT - - col0 + - + 63 AS col1 FROM tab1 cor0
----
-12
22
28

query I rowsort
SELECT ALL col0 + - 66 AS col0 FROM tab0 AS cor0
----
-51
21
31

query I rowsort
SELECT ALL 82 * 10 FROM tab2 AS cor0
----
820
820
820

query II rowsort
SELECT DISTINCT - col0, - 71 AS col2 FROM tab0
----
-15
-71
-87
-71
-97
-71

query II rowsort
SELECT ALL 92, + col1 FROM tab2
----
92
51
92
67
92
77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3936
SELECT DISTINCT + CAST( NULL AS SIGNED ) * - 64 * 36 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-3936
SELECT DISTINCT + CAST ( NULL AS INTEGER ) * - 64 * 36 FROM tab1
----
NULL

query I rowsort
SELECT + 56 + 14 FROM tab0
----
70
70
70

query I rowsort
SELECT ALL col0 * + - 59 AS col0 FROM tab0
----
-5133
-5723
-885

query I rowsort
SELECT ALL - 30 * - + 92 FROM tab0
----
2760
2760
2760

query III rowsort
SELECT * FROM tab1 WHERE 62 IN ( - 40 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col1 + - 60 col0 FROM tab2
----
-9
17
7

query I rowsort
SELECT 90 + + col0 FROM tab1
----
141
175
181

query I rowsort
SELECT + + 48 AS col0 FROM tab2 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to 8b09cc2c99c2102036162d063e0e5a4b

onlyif mysql # aggregate syntax: 
query I rowsort label-3944
SELECT + 32 * - COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab0 cor1
----
-288

skipif mysql # not compatible
query I rowsort label-3944
SELECT + 32 * - COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab0 cor1
----
-288

query I rowsort
SELECT + col1 - - + col1 FROM tab2 AS cor0
----
102
134
154

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + 86 col1, 17 + col1 FROM tab2 AS cor0 WHERE NOT col2 / - - 1 - - col1 IS NULL
----
86
68
86
84
86
94

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 80 col1 FROM tab1 AS cor0
----
-80

query I rowsort
SELECT + 41 FROM tab2 AS cor0 WHERE NOT - col0 > - col1 * - col0 * - 59
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3949
SELECT DISTINCT MIN( ALL + 15 ) FROM tab0 AS cor0
----
15

skipif mysql # not compatible
query I rowsort label-3949
SELECT DISTINCT MIN ( ALL + 15 ) FROM tab0 AS cor0
----
15

onlyif mysql # DIV for integer division: 
query I rowsort label-3950
SELECT - + 46 DIV 13 AS col1 FROM tab0 AS cor0
----
-3
-3
-3

skipif mysql # not compatible
query I rowsort label-3950
SELECT - + 46 / 13 AS col1 FROM tab0 AS cor0
----
-3
-3
-3

onlyif mysql # aggregate syntax: DIV for integer division: 
query II rowsort label-3951
SELECT DISTINCT + 24 DIV + 65 * - - 47, COUNT( * ) AS col2 FROM tab1
----
0
3

skipif mysql # not compatible
query II rowsort label-3951
SELECT DISTINCT + 24 / + 65 * - - 47, COUNT ( * ) AS col2 FROM tab1
----
0
3

onlyif mysql # aggregate syntax: 
query I rowsort label-3952
SELECT ALL COUNT( DISTINCT - col0 ) AS col0 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-3952
SELECT ALL COUNT ( DISTINCT - col0 ) AS col0 FROM tab0
----
3

query II rowsort
SELECT DISTINCT + col0, col2 AS col1 FROM tab0
----
15
47
87
10
97
99

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - - 5 col2, ( - - 88 ) * col1 * - 98 AS col1 FROM tab2 WHERE NOT NULL NOT BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-3955
SELECT DISTINCT ( - COUNT( * ) ) FROM tab2 AS cor0 WHERE NOT col2 = NULL
----
0

skipif mysql # not compatible
query I rowsort label-3955
SELECT DISTINCT ( - COUNT ( * ) ) FROM tab2 AS cor0 WHERE NOT col2 = NULL
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-3956
SELECT + col0 DIV col2 * 78 FROM tab1
----
0
78
78

skipif mysql # not compatible
query I rowsort label-3956
SELECT + col0 / col2 * 78 FROM tab1
----
0
78
78

query I rowsort
SELECT DISTINCT col1 * + 60 FROM tab1
----
2820
300
840

onlyif mysql # aggregate syntax: 
query I rowsort label-3958
SELECT ALL COUNT( * ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1 WHERE NULL IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-3958
SELECT ALL COUNT ( * ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1 WHERE NULL IS NOT NULL
----
0

query I rowsort
SELECT ALL 14 + - 2 * + + col0 AS col1 FROM tab1
----
-156
-168
-88

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-3960
SELECT ALL * FROM tab2 AS cor0 WHERE NOT col0 * + col1 IS NULL AND NOT CAST( NULL AS SIGNED ) + - 41 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-3960
SELECT ALL * FROM tab2 AS cor0 WHERE NOT col0 * + col1 IS NULL AND NOT CAST ( NULL AS INTEGER ) + - 41 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT col1 FROM tab1 AS cor0 WHERE col0 >= - + col0 / - col1 * + 2 + - 7
----
14
47
5

query I rowsort
SELECT DISTINCT col2 + + 7 + + 39 FROM tab0 AS cor0
----
145
56
93

onlyif mysql # DIV for integer division: 
query I rowsort label-3963
SELECT DISTINCT + col0 DIV 81 + + col0 FROM tab0 AS cor0
----
15
88
98

skipif mysql # not compatible
query I rowsort label-3963
SELECT DISTINCT + col0 / 81 + + col0 FROM tab0 AS cor0
----
15
88
98

query II rowsort
SELECT ALL - col0 + col1 * - ( col2 ) AS col0, col2 + + 79 FROM tab2 AS cor0
----
-1219
102
-3144
119
-3961
137

query I rowsort
SELECT ( + + col1 ) + + + col1 FROM tab2 AS cor0
----
102
134
154

onlyif mysql # aggregate syntax: 
query I rowsort label-3966
SELECT ALL - - 0 + - COUNT( - + ( col1 ) ) FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3966
SELECT ALL - - 0 + - COUNT ( - + ( col1 ) ) FROM tab2 AS cor0
----
-3

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-3967
SELECT 31 col1, + SUM( ALL + CAST( NULL AS SIGNED ) ) AS col0 FROM tab2 WHERE - 26 <= - col0
----
31
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3967
SELECT 31 col1, + SUM ( ALL + CAST ( NULL AS INTEGER ) ) AS col0 FROM tab2 WHERE - 26 <= - col0
----
31
NULL

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE ( - col2 ) / col2 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT + 91 * + + col1 FROM tab0
----
1911
7371
91

onlyif mysql # aggregate syntax: 
query II rowsort label-3970
SELECT ALL COUNT( * ) col0, + MIN( DISTINCT ( + col1 ) ) FROM tab0
----
3
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-3970
SELECT ALL COUNT ( * ) col0, + MIN ( DISTINCT ( + col1 ) ) FROM tab0
----
3
1

query II rowsort
SELECT col2 AS col1, + col2 AS col2 FROM tab0
----
10
10
47
47
99
99

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3972
SELECT - CAST( NULL AS SIGNED ) * - col0 col0 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3972
SELECT - CAST ( NULL AS INTEGER ) * - col0 col0 FROM tab2
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT col1 * - ( - - col2 ) AS col2 FROM tab2
----
-1173
-3080
-3886

onlyif mysql # DIV for integer division: 
query I rowsort label-3974
SELECT ALL ( - + col1 ) DIV + 84 * - col0 AS col2 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-3974
SELECT ALL ( - + col1 ) / + 84 * - col0 AS col2 FROM tab1
----
0
0
0

query I rowsort
SELECT ALL - col2 + - + col2 * 41 * - 20 FROM tab0
----
38493
81081
8190

query I rowsort
SELECT ALL + - 85 * col0 + + - col2 FROM tab2 AS cor0
----
-3933
-5480
-6433

query I rowsort
SELECT DISTINCT - 1 + - 52 AS col0 FROM tab2 AS cor0
----
-53

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3978
SELECT ALL - CAST( NULL AS SIGNED ) * + CAST( - + col1 AS SIGNED ) + - - 99 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3978
SELECT ALL - CAST ( NULL AS INTEGER ) * + CAST ( - + col1 AS INTEGER ) + - - 99 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-3979
SELECT + col2 DIV - col0 - - - col0 AS col1 FROM tab2 cor0
----
-46
-64
-75

skipif mysql # not compatible
query I rowsort label-3979
SELECT + col2 / - col0 - - - col0 AS col1 FROM tab2 cor0
----
-46
-64
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-3980
SELECT COUNT( * ) col0 FROM tab1 AS cor0 WHERE 98 BETWEEN + col1 AND + 89
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-3980
SELECT COUNT ( * ) col0 FROM tab1 AS cor0 WHERE 98 BETWEEN + col1 AND + 89
----
0

query I rowsort
SELECT 32 + - ( - ( 42 ) ) AS col0 FROM tab2 AS cor0
----
74
74
74

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-3982
SELECT + CAST( NULL AS DECIMAL ) + col2 AS col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-3982
SELECT + CAST ( NULL AS REAL ) + col2 AS col2 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-3983
SELECT DISTINCT + MIN( DISTINCT - - col0 ) FROM tab1 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-3983
SELECT DISTINCT + MIN ( DISTINCT - - col0 ) FROM tab1 AS cor0
----
51

query II rowsort
SELECT ALL - col2 AS col0, col1 AS col1 FROM tab2 cor0
----
-23
51
-40
77
-58
67

query I rowsort
SELECT + - col2 * col0 * - col1 FROM tab2 AS cor0
----
197120
291450
53958

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-3986
SELECT ( - CAST( COUNT( * ) AS SIGNED ) ) FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3986
SELECT ( - CAST ( COUNT ( * ) AS INTEGER ) ) FROM tab0 AS cor0
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-3987
SELECT ALL - COUNT( ALL - col2 ) AS col1 FROM tab2 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-3987
SELECT ALL - COUNT ( ALL - col2 ) AS col1 FROM tab2 AS cor0
----
-3

query II rowsort
SELECT col1 AS col0, 1 AS col0 FROM tab2 cor0
----
51
1
67
1
77
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-3989
SELECT CAST( - 42 AS SIGNED ) AS col1 FROM tab2 AS cor0 WHERE NOT - col2 NOT BETWEEN col2 + col0 AND + col1
----

skipif mysql # not compatible
query I rowsort label-3989
SELECT CAST ( - 42 AS INTEGER ) AS col1 FROM tab2 AS cor0 WHERE NOT - col2 NOT BETWEEN col2 + col0 AND + col1
----

onlyif mysql # DIV for integer division: 
query I rowsort label-3990
SELECT 35 DIV - col0 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-3990
SELECT 35 / - col0 FROM tab2 AS cor0
----
0
0
0

query I rowsort
SELECT ALL + 63 * - - col2 * - col2 * + 26 AS col0 FROM tab0
----
-16054038
-163800
-3618342

onlyif mysql # DIV for integer division: 
query I rowsort label-3992
SELECT col2 DIV - + col1 FROM tab0
----
-99
0
0

skipif mysql # not compatible
query I rowsort label-3992
SELECT col2 / - + col1 FROM tab0
----
-99
0
0

onlyif mysql # DIV for integer division: 
query I rowsort label-3993
SELECT DISTINCT + 13 DIV - 94 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-3993
SELECT DISTINCT + 13 / - 94 FROM tab2
----
0

query I rowsort
SELECT col1 AS col2 FROM tab2 WHERE NOT 94 IS NULL
----
51
67
77

onlyif mysql # aggregate syntax: 
query I rowsort label-3995
SELECT DISTINCT - SUM( + + ( - 83 ) ) AS col1 FROM tab2 AS cor0
----
249

skipif mysql # not compatible
query I rowsort label-3995
SELECT DISTINCT - SUM ( + + ( - 83 ) ) AS col1 FROM tab2 AS cor0
----
249

query I rowsort
SELECT ALL - 27 * col1 * + - col1 * + col2 FROM tab0 AS cor0
----
119070
2673
8325909

onlyif mysql # aggregate syntax: 
query I rowsort label-3997
SELECT - COUNT( * ) * - 58 FROM tab1 cor0
----
174

skipif mysql # not compatible
query I rowsort label-3997
SELECT - COUNT ( * ) * - 58 FROM tab1 cor0
----
174

onlyif mysql # aggregate syntax: 
query I rowsort label-3998
SELECT - MAX( ALL - col2 ) + + COUNT( * ) FROM tab2 AS cor0
----
26

skipif mysql # not compatible
query I rowsort label-3998
SELECT - MAX ( ALL - col2 ) + + COUNT ( * ) FROM tab2 AS cor0
----
26

query I rowsort
SELECT - 37 - - + 8 * 48 + - col1 AS col2 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN ( - col2 ) AND NULL
----

query III rowsort
SELECT * FROM tab0 WHERE NOT + 61 IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 + 82 col1 FROM tab2
----
105
122
140

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4002
SELECT - SUM( ( - CAST( NULL AS SIGNED ) ) ) FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-4002
SELECT - SUM ( ( - CAST ( NULL AS INTEGER ) ) ) FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

query III rowsort
SELECT ALL * FROM tab0 WHERE - col0 / col2 IS NULL
----

query I rowsort
SELECT ALL ( 39 ) FROM tab1
----
39
39
39

query II rowsort
SELECT + col1, col0 FROM tab1 AS cor0
----
14
51
47
91
5
85

query II rowsort
SELECT DISTINCT + col0, col2 FROM tab0 AS cor0
----
15
47
87
10
97
99

query I rowsort
SELECT DISTINCT 4 * + + 24 FROM tab2 AS cor0 WHERE col1 IS NULL
----

query I rowsort
SELECT ALL + col0 + - 36 AS col2 FROM tab2 AS cor0
----
10
28
39

query I rowsort
SELECT DISTINCT col1 + - + col0 FROM tab1 AS cor0
----
-37
-44
-80

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col2 + - 79 + col1 col0 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT DISTINCT + - col0 + - 50 FROM tab0 cor0
----
-137
-147
-65

query II rowsort
SELECT ALL - col2 - col0 AS col2, - ( + 95 ) AS col1 FROM tab2 AS cor0 WHERE col2 IS NOT NULL
----
-104
-95
-133
-95
-69
-95

query I rowsort
SELECT ALL col0 + 2 FROM tab2
----
48
66
77

onlyif mysql # aggregate syntax: 
query II rowsort label-4014
SELECT COUNT( * ) + - - 69 - + COUNT( - col0 ) AS col2, - COUNT( ALL + col2 ) col2 FROM tab0
----
69
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4014
SELECT COUNT ( * ) + - - 69 - + COUNT ( - col0 ) AS col2, - COUNT ( ALL + col2 ) col2 FROM tab0
----
69
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-4015
SELECT ALL + MAX( - col2 ) FROM tab0
----
-10

skipif mysql # not compatible
query I rowsort label-4015
SELECT ALL + MAX ( - col2 ) FROM tab0
----
-10

onlyif mysql # aggregate syntax: 
query I rowsort label-4016
SELECT DISTINCT ( + + COUNT( * ) ) AS col1 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-4016
SELECT DISTINCT ( + + COUNT ( * ) ) AS col1 FROM tab0
----
3

query II rowsort
SELECT col0 + - + ( - 96 ) * + col0, + 57 AS col0 FROM tab1
----
4947
57
8245
57
8827
57

query I rowsort
SELECT ALL + 31 AS col0 FROM tab0
----
31
31
31

onlyif mysql # aggregate syntax: 
query I rowsort label-4019
SELECT COUNT( * ) * MIN( ALL - col1 ) + + 89 AS col1 FROM tab0
----
-154

skipif mysql # not compatible
query I rowsort label-4019
SELECT COUNT ( * ) * MIN ( ALL - col1 ) + + 89 AS col1 FROM tab0
----
-154

query I rowsort
SELECT ALL + col0 AS col2 FROM tab0 WHERE - col1 * - + col0 NOT BETWEEN - col2 * - - 2 AND NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4021
SELECT + + 59 DIV + col0 + - col1 + 12 + + 0 + + - col0 * + col2 FROM tab0 AS cor0
----
-771
-879
-9592

skipif mysql # not compatible
query I rowsort label-4021
SELECT + + 59 / + col0 + - col1 + 12 + + 0 + + - col0 * + col2 FROM tab0 AS cor0
----
-771
-879
-9592

query I rowsort
SELECT DISTINCT - - 77 AS col2 FROM tab0 AS cor0
----
77

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( col0 ) NOT BETWEEN col0 * - col1 AND + 99 + - - col2 + - col0
----
85
5
59
91
47
68

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4024
SELECT DISTINCT + - CAST( NULL AS DECIMAL ) - - col0 AS col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4024
SELECT DISTINCT + - CAST ( NULL AS REAL ) - - col0 AS col1 FROM tab0 AS cor0
----
NULL

query IIIIII rowsort
SELECT DISTINCT * FROM ( tab2 AS cor0 CROSS JOIN tab1 AS cor1 ) WHERE NOT NULL IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4026
SELECT ALL - COUNT( * ) FROM tab1 AS cor0 WHERE NOT NULL BETWEEN - 76 AND + - col1 / - col1 + + col1 + + - col2
----
0

skipif mysql # not compatible
query I rowsort label-4026
SELECT ALL - COUNT ( * ) FROM tab1 AS cor0 WHERE NOT NULL BETWEEN - 76 AND + - col1 / - col1 + + col1 + + - col2
----
0

query II rowsort
SELECT - col2 AS col0, + ( + - col0 ) / 19 * 11 * - col2 FROM tab0 AS cor0 WHERE NOT + col1 < NULL
----

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE + col1 NOT IN ( 4, - col0 - + col0 + + col2 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT - col1 NOT BETWEEN NULL AND col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4030
SELECT DISTINCT + + SUM( ALL + 32 ) AS col2 FROM tab1 AS cor0
----
96

skipif mysql # not compatible
query I rowsort label-4030
SELECT DISTINCT + + SUM ( ALL + 32 ) AS col2 FROM tab1 AS cor0
----
96

onlyif mysql # DIV for integer division: 
query I rowsort label-4031
SELECT + 47 DIV + col1 FROM tab0 AS cor0
----
0
2
47

skipif mysql # not compatible
query I rowsort label-4031
SELECT + 47 / + col1 FROM tab0 AS cor0
----
0
2
47

query I rowsort
SELECT ALL - col0 FROM tab1 AS cor0 WHERE + 57 >= + 30
----
-51
-85
-91

onlyif mysql # aggregate syntax: 
query I rowsort label-4033
SELECT ALL MIN( ALL + col2 ) AS col1 FROM tab0
----
10

skipif mysql # not compatible
query I rowsort label-4033
SELECT ALL MIN ( ALL + col2 ) AS col1 FROM tab0
----
10

onlyif mysql # aggregate syntax: 
query I rowsort label-4034
SELECT - - MAX( DISTINCT - col1 ) FROM tab1 WHERE NOT col2 IS NULL
----
-5

skipif mysql # not compatible
query I rowsort label-4034
SELECT - - MAX ( DISTINCT - col1 ) FROM tab1 WHERE NOT col2 IS NULL
----
-5

onlyif mysql # DIV for integer division: 
query I rowsort label-4035
SELECT 4 DIV - ( col1 ) FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4035
SELECT 4 / - ( col1 ) FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4036
SELECT + COUNT( * ) * 36 FROM tab0
----
108

skipif mysql # not compatible
query I rowsort label-4036
SELECT + COUNT ( * ) * 36 FROM tab0
----
108

onlyif mysql # aggregate syntax: 
query I rowsort label-4037
SELECT - COUNT( ALL col0 ) FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-4037
SELECT - COUNT ( ALL col0 ) FROM tab1
----
-3

query I rowsort
SELECT - ( - 18 ) FROM tab0
----
18
18
18

onlyif mysql # aggregate syntax: 
query I rowsort label-4039
SELECT DISTINCT COUNT( DISTINCT - - col2 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-4039
SELECT DISTINCT COUNT ( DISTINCT - - col2 ) FROM tab2
----
3

onlyif mysql # aggregate syntax: 
query II rowsort label-4040
SELECT DISTINCT - COUNT( * ), COUNT( * ) AS col1 FROM tab1
----
-3
3

skipif mysql # not compatible
query II rowsort label-4040
SELECT DISTINCT - COUNT ( * ), COUNT ( * ) AS col1 FROM tab1
----
-3
3

query I rowsort
SELECT DISTINCT 16 + + col0 + + col2 FROM tab1
----
160
163
175

query I rowsort
SELECT 85 FROM tab0 cor0 WHERE NOT + col2 * - ( 28 ) IN ( + - col2 )
----
85
85
85

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4043
SELECT ALL + CAST( NULL AS SIGNED ) col2, 39 * + - col1 FROM tab2 AS cor0
----
NULL
-1989
NULL
-2613
NULL
-3003

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4043
SELECT ALL + CAST ( NULL AS INTEGER ) col2, 39 * + - col1 FROM tab2 AS cor0
----
NULL
-1989
NULL
-2613
NULL
-3003

query I rowsort
SELECT - col0 AS col1 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4045
SELECT - col1 + col1 - - CAST( NULL AS SIGNED ) / + 81 * + + 92 / col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4045
SELECT - col1 + col1 - - CAST ( NULL AS INTEGER ) / + 81 * + + 92 / col2 FROM tab1 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT - + 16 * - col1, 6 FROM tab0 AS cor0 WHERE NULL NOT BETWEEN + col2 + + + 26 AND NULL
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE + 24 >= NULL
----

query I rowsort
SELECT ALL + col0 FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + + 38 + - col0 * 13 col0 FROM tab1 AS cor0
----
-1067
-1145
-625

query I rowsort
SELECT DISTINCT 37 - + col1 AS col1 FROM tab1 AS cor0
----
-10
23
32

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col1 BETWEEN - 96 AND - col2
----

query I rowsort
SELECT 46 * - col1 AS col0 FROM tab0
----
-3726
-46
-966

query III rowsort
SELECT * FROM tab0 WHERE - ( col1 ) >= 20 / - + col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4054
SELECT - - ( + 82 ) * COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NOT col2 IS NULL
----
246

skipif mysql # not compatible
query I rowsort label-4054
SELECT - - ( + 82 ) * COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NOT col2 IS NULL
----
246

query I rowsort
SELECT DISTINCT 67 AS col1 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
67

onlyif mysql # aggregate syntax: 
query I rowsort label-4056
SELECT COUNT( DISTINCT 71 ) + - + 95 col2 FROM tab0 cor0 CROSS JOIN tab0 AS cor1
----
-94

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4056
SELECT COUNT ( DISTINCT 71 ) + - + 95 col2 FROM tab0 cor0 CROSS JOIN tab0 AS cor1
----
-94

query I rowsort
SELECT ( + 41 ) * + col2 FROM tab2 AS cor0
----
1640
2378
943

query I rowsort
SELECT DISTINCT + 79 AS col1 FROM tab2 AS cor0 WHERE ( NULL ) IS NULL
----
79

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4059
SELECT * FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL OR + - CAST( NULL AS SIGNED ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-4059
SELECT * FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL OR + - CAST ( NULL AS INTEGER ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-4060
SELECT - MIN( col1 ) AS col2 FROM tab2 cor0
----
-51

skipif mysql # not compatible
query I rowsort label-4060
SELECT - MIN ( col1 ) AS col2 FROM tab2 cor0
----
-51

onlyif mysql # aggregate syntax: 
query I rowsort label-4061
SELECT ALL SUM( + 20 ) FROM tab2 cor0
----
60

skipif mysql # not compatible
query I rowsort label-4061
SELECT ALL SUM ( + 20 ) FROM tab2 cor0
----
60

query I rowsort
SELECT - 98 * col2 AS col1 FROM tab0
----
-4606
-9702
-980

query I rowsort
SELECT DISTINCT - ( - 83 ) AS col0 FROM tab0
----
83

query I rowsort
SELECT DISTINCT - 53 + col2 FROM tab1
----
15
43
6

query I rowsort
SELECT ALL col0 + + + col0 AS col2 FROM tab0 AS cor0
----
174
194
30

query II rowsort
SELECT DISTINCT - col0, col0 FROM tab0 cor0
----
-15
15
-87
87
-97
97

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE + 82 / - col1 < NULL
----

query III rowsort
SELECT * FROM tab2 WHERE ( - col0 ) + - col1 + - 40 >= + col1
----

query I rowsort
SELECT DISTINCT - 77 AS col0 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-77

query I rowsort
SELECT DISTINCT - + 62 FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
-62

onlyif mysql # aggregate syntax: 
query I rowsort label-4071
SELECT DISTINCT MIN( DISTINCT + ( - 21 ) ) FROM tab0
----
-21

skipif mysql # not compatible
query I rowsort label-4071
SELECT DISTINCT MIN ( DISTINCT + ( - 21 ) ) FROM tab0
----
-21

query II rowsort
SELECT ALL - col0, + col1 FROM tab0
----
-15
81
-87
21
-97
1

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col1 * + - 9 + + col1 * 94 col0 FROM tab2 AS cor0
----
4335
5695
6545

query I rowsort
SELECT ALL col2 * - - 65 + + - 82 + - ( + col1 ) * col0 * + 57 * 89 + - col1 * - col0 FROM tab2 AS cor0
----
-11897499
-24992298
-25483112

onlyif mysql # aggregate syntax: 
query I rowsort label-4075
SELECT DISTINCT + + COUNT( ALL + - col2 ) + 76 * + 52 AS col2 FROM tab0 AS cor0
----
3955

skipif mysql # not compatible
query I rowsort label-4075
SELECT DISTINCT + + COUNT ( ALL + - col2 ) + 76 * + 52 AS col2 FROM tab0 AS cor0
----
3955

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 50 + + col1 col2 FROM tab0 AS cor0
----
-29
-49
31

query I rowsort
SELECT ALL col2 * - + col2 + col0 AS col1 FROM tab2 AS cor0
----
-1536
-3289
-483

query II rowsort
SELECT ALL - col1 AS col0, col2 * col1 AS col1 FROM tab1 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT ALL - col1 * - + 35 FROM tab0
----
2835
35
735

query I rowsort
SELECT + 71 + + + 59 FROM tab2
----
130
130
130

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col1 - + col1 col2 FROM tab0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4082
SELECT ( - MIN( - col2 ) ) FROM tab1
----
96

skipif mysql # not compatible
query I rowsort label-4082
SELECT ( - MIN ( - col2 ) ) FROM tab1
----
96

onlyif mysql # aggregate syntax: 
query I rowsort label-4083
SELECT - COUNT( * ) FROM tab0 WHERE NOT ( NOT NULL < NULL )
----
0

skipif mysql # not compatible
query I rowsort label-4083
SELECT - COUNT ( * ) FROM tab0 WHERE NOT ( NOT NULL < NULL )
----
0

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4084
SELECT + ( + 39 ) DIV - - COUNT( * ) FROM tab0 AS cor0
----
13

skipif mysql # not compatible
query I rowsort label-4084
SELECT + ( + 39 ) / - - COUNT ( * ) FROM tab0 AS cor0
----
13

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - 52 * col2 col1, 97 FROM tab0 AS cor0
----
-2444
97
-5148
97
-520
97

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4086
SELECT col1 * - CAST( NULL AS DECIMAL ) - 84 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4086
SELECT col1 * - CAST ( NULL AS REAL ) - 84 FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4087
SELECT DISTINCT COUNT( DISTINCT col0 ) FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-4087
SELECT DISTINCT COUNT ( DISTINCT col0 ) FROM tab0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-4088
SELECT SUM( DISTINCT col1 ) AS col0 FROM tab1
----
66

skipif mysql # not compatible
query I rowsort label-4088
SELECT SUM ( DISTINCT col1 ) AS col0 FROM tab1
----
66

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + - 24 + col2 col2 FROM tab0 AS cor0
----
-14
23
75

onlyif mysql # aggregate syntax: 
query I rowsort label-4090
SELECT + + 37 + COUNT( * ) AS col1 FROM tab0 AS cor0
----
40

skipif mysql # not compatible
query I rowsort label-4090
SELECT + + 37 + COUNT ( * ) AS col1 FROM tab0 AS cor0
----
40

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query II rowsort label-4091
SELECT col2 + + 76 DIV - ( - + col1 ) AS col1, 71 + col0 DIV + - CAST( NULL AS SIGNED ) AS col2 FROM tab2
----
24
NULL
40
NULL
59
NULL

skipif mysql # not compatible
query II rowsort label-4091
SELECT col2 + + 76 / - ( - + col1 ) AS col1, 71 + col0 / + - CAST ( NULL AS INTEGER ) AS col2 FROM tab2
----
24
NULL
40
NULL
59
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4092
SELECT MIN( col0 ) AS col1 FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-4092
SELECT MIN ( col0 ) AS col1 FROM tab1
----
51

onlyif mysql # aggregate syntax: 
query I rowsort label-4093
SELECT ALL + MIN( DISTINCT + col0 ) col2 FROM tab2
----
46

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4093
SELECT ALL + MIN ( DISTINCT + col0 ) col2 FROM tab2
----
46

query I rowsort
SELECT - 55 * col0 * - col0 FROM tab2
----
116380
225280
309375

query I rowsort
SELECT ( col2 ) * + + col2 FROM tab0 WHERE - col0 IS NOT NULL
----
100
2209
9801

query I rowsort
SELECT DISTINCT - col2 + - - col0 * + - ( - 83 ) FROM tab0
----
1198
7211
7952

onlyif mysql # aggregate syntax: 
query I rowsort label-4097
SELECT ALL - COUNT( * ) * 56 FROM tab0
----
-168

skipif mysql # not compatible
query I rowsort label-4097
SELECT ALL - COUNT ( * ) * 56 FROM tab0
----
-168

query III rowsort
SELECT * FROM tab0 WHERE + 70 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-4099
SELECT ALL 77 DIV - 69 + CAST( + col0 AS SIGNED ) FROM tab0 AS cor0
----
14
86
96

skipif mysql # not compatible
query I rowsort label-4099
SELECT ALL 77 / - 69 + CAST ( + col0 AS INTEGER ) FROM tab0 AS cor0
----
14
86
96

onlyif mysql # aggregate syntax: 
query I rowsort label-4100
SELECT + COUNT( * ) FROM tab2 cor0 WHERE - ( col0 ) IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-4100
SELECT + COUNT ( * ) FROM tab2 cor0 WHERE - ( col0 ) IS NOT NULL
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-4101
SELECT DISTINCT COUNT( * ) - + 3 AS col1 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-4101
SELECT DISTINCT COUNT ( * ) - + 3 AS col1 FROM tab1
----
0

query IIIIII rowsort
SELECT DISTINCT * FROM ( tab0 cor0 CROSS JOIN tab0 cor1 )
----
54 values hashing to 42daa03e48aa6755defd0a3206e51d8e

query I rowsort
SELECT - 40 + - - col2 FROM tab1
----
19
28
56

query I rowsort
SELECT - 59 AS col1 FROM tab1 AS cor0 CROSS JOIN tab1 cor1
----
9 values hashing to 1e6537c922fa953e0fd2f59430803703

query I rowsort
SELECT ALL col2 * - col1 + - col0 + col2 AS col1 FROM tab0 AS cor0
----
-287
-3775
-97

query II rowsort
SELECT - + col1, 63 AS col0 FROM tab1 AS cor0
----
-14
63
-47
63
-5
63

query I rowsort
SELECT + + 78 * + 61 AS col1 FROM tab2 cor0
----
4758
4758
4758

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4108
SELECT ALL - ( CAST( NULL AS SIGNED ) ) - - + col1 + - - 47 * + col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4108
SELECT ALL - ( CAST ( NULL AS INTEGER ) ) - - + col1 + - - 47 * + col1 FROM tab0 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT - - ( + - 76 ) FROM tab1 cor0
----
-76
-76
-76

query I rowsort
SELECT ALL col0 + + + 4 AS col0 FROM tab0 cor0 WHERE ( NULL ) < - + 4
----

query I rowsort
SELECT - col1 - - col2 AS col0 FROM tab1
----
21
54
82

onlyif mysql # aggregate syntax: 
query I rowsort label-4112
SELECT DISTINCT COUNT( * ) * + - 9 AS col0 FROM tab1
----
-27

skipif mysql # not compatible
query I rowsort label-4112
SELECT DISTINCT COUNT ( * ) * + - 9 AS col0 FROM tab1
----
-27

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4113
SELECT + + COUNT( * ) * - 77 AS col0 FROM tab0 WHERE ( NULL ) IS NULL AND NOT CAST( NULL AS SIGNED ) * 44 IS NOT NULL
----
-231

skipif mysql # not compatible
query I rowsort label-4113
SELECT + + COUNT ( * ) * - 77 AS col0 FROM tab0 WHERE ( NULL ) IS NULL AND NOT CAST ( NULL AS INTEGER ) * 44 IS NOT NULL
----
-231

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT DISTINCT - col0 col1, col0 AS col2 FROM tab1
----
-51
51
-85
85
-91
91

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT + 67 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4116
SELECT * FROM tab1 WHERE NOT - 91 BETWEEN col0 AND - 12 + + CAST( + col1 AS SIGNED )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-4116
SELECT * FROM tab1 WHERE NOT - 91 BETWEEN col0 AND - 12 + + CAST ( + col1 AS INTEGER )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL + col2 * + 42 AS col1 FROM tab2 WHERE NOT + col2 * - col1 IS NOT NULL
----

query II rowsort
SELECT 25, - 2 AS col0 FROM tab0 AS cor0
----
25
-2
25
-2
25
-2

onlyif mysql # DIV for integer division: 
query II rowsort label-4119
SELECT ALL 30 DIV + 49 AS col0, + 61 AS col2 FROM tab1 AS cor0
----
0
61
0
61
0
61

skipif mysql # not compatible
query II rowsort label-4119
SELECT ALL 30 / + 49 AS col0, + 61 AS col2 FROM tab1 AS cor0
----
0
61
0
61
0
61

query II rowsort
SELECT ALL + 68, - 90 AS col2 FROM tab1 AS cor0
----
68
-90
68
-90
68
-90

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4121
SELECT - ( - - SUM( ALL + CAST( NULL AS SIGNED ) ) ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4121
SELECT - ( - - SUM ( ALL + CAST ( NULL AS INTEGER ) ) ) FROM tab0 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4122
SELECT + - 54 * + COUNT( * ) col1 FROM tab0 AS cor0
----
-162

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4122
SELECT + - 54 * + COUNT ( * ) col1 FROM tab0 AS cor0
----
-162

query II rowsort
SELECT - 11 AS col1, col2 AS col2 FROM tab1 AS cor0
----
-11
59
-11
68
-11
96

query II rowsort
SELECT ALL + - ( - col1 ) AS col1, + col2 FROM tab2 AS cor0
----
51
23
67
58
77
40

onlyif mysql # DIV for integer division: 
query I rowsort label-4125
SELECT 72 DIV + + col0 + + + col1 AS col1 FROM tab1 AS cor0
----
15
47
5

skipif mysql # not compatible
query I rowsort label-4125
SELECT 72 / + + col0 + + + col1 AS col1 FROM tab1 AS cor0
----
15
47
5

onlyif mysql # aggregate syntax: 
query I rowsort label-4126
SELECT DISTINCT - MAX( - col0 ) AS col0 FROM tab0 AS cor0
----
15

skipif mysql # not compatible
query I rowsort label-4126
SELECT DISTINCT - MAX ( - col0 ) AS col0 FROM tab0 AS cor0
----
15

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4127
SELECT ALL * FROM tab2 AS cor0 WHERE NOT NULL <> + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-4127
SELECT ALL * FROM tab2 AS cor0 WHERE NOT NULL <> + CAST ( NULL AS INTEGER )
----

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query III rowsort label-4128
SELECT * FROM tab2 AS cor0 WHERE NOT NULL < CAST( + 87 AS DECIMAL ) * + + col1 * + col1 + - col0 + col2 + col0 - + - col2 + + CAST( - col0 AS SIGNED ) / + 7 + - + col0 * - 47 * col0 / 14 + - + col2
----

skipif mysql # not compatible
query III rowsort label-4128
SELECT * FROM tab2 AS cor0 WHERE NOT NULL < CAST ( + 87 AS REAL ) * + + col1 * + col1 + - col0 + col2 + col0 - + - col2 + + CAST ( - col0 AS INTEGER ) / + 7 + - + col0 * - 47 * col0 / 14 + - + col2
----

query II rowsort
SELECT ALL col2 AS col1, + 20 AS col2 FROM tab0
----
10
20
47
20
99
20

query I rowsort
SELECT 65 + + col2 AS col1 FROM tab0
----
112
164
75

query I rowsort
SELECT + col1 + + 54 AS col1 FROM tab2
----
105
121
131

query II rowsort
SELECT DISTINCT + 83, - col0 AS col0 FROM tab2
----
83
-46
83
-64
83
-75

query III rowsort
SELECT ALL * FROM tab1 WHERE NULL NOT BETWEEN - col0 * 5 AND NULL
----

query I rowsort
SELECT DISTINCT col2 * + + col1 + - col0 FROM tab0 AS cor0
----
123
2
3792

query III rowsort
SELECT ALL * FROM tab2 cor0 WHERE col1 BETWEEN NULL AND NULL
----

query I rowsort
SELECT DISTINCT + col2 AS col2 FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4137
SELECT CAST( 38 AS SIGNED ) * + 24 + col1 FROM tab0
----
913
933
993

skipif mysql # not compatible
query I rowsort label-4137
SELECT CAST ( 38 AS INTEGER ) * + 24 + col1 FROM tab0
----
913
933
993

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT - 5 * col0 IN ( 9 * col1 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # DIV for integer division: 
query I rowsort label-4139
SELECT DISTINCT col2 DIV 65 AS col2 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-4139
SELECT DISTINCT col2 / 65 AS col2 FROM tab2
----
0

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT ( ( + col2 ) - ( 23 + - col0 ) ) IN ( - 97 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4141
SELECT DISTINCT + CAST( col1 AS SIGNED ) AS col1 FROM tab1
----
14
47
5

skipif mysql # not compatible
query I rowsort label-4141
SELECT DISTINCT + CAST ( col1 AS INTEGER ) AS col1 FROM tab1
----
14
47
5

query I rowsort
SELECT DISTINCT + col0 FROM tab0 WHERE NOT NULL IS NOT NULL
----
15
87
97

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4143
SELECT ALL 22 DIV COUNT( * ) AS col2 FROM tab0
----
7

skipif mysql # not compatible
query I rowsort label-4143
SELECT ALL 22 / COUNT ( * ) AS col2 FROM tab0
----
7

query I rowsort
SELECT DISTINCT 55 + - col1 AS col0 FROM tab0
----
-26
34
54

query I rowsort
SELECT DISTINCT col2 - + col1 * col1 AS col1 FROM tab2
----
-2578
-4431
-5889

query I rowsort
SELECT + 11 + 47 FROM tab2
----
58
58
58

query I rowsort
SELECT ALL 56 + + col2 FROM tab1
----
115
124
152

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-4148
SELECT - col2 DIV - CAST( - col2 AS SIGNED ) AS col2 FROM tab2
----
-1
-1
-1

skipif mysql # not compatible
query I rowsort label-4148
SELECT - col2 / - CAST ( - col2 AS INTEGER ) AS col2 FROM tab2
----
-1
-1
-1

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4149
SELECT COUNT( * ) FROM tab0 WHERE NOT col0 / + 93 < + CAST( 78 AS SIGNED ) * col2
----
0

skipif mysql # not compatible
query I rowsort label-4149
SELECT COUNT ( * ) FROM tab0 WHERE NOT col0 / + 93 < + CAST ( 78 AS INTEGER ) * col2
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4150
SELECT DISTINCT - COUNT( col1 ) FROM tab0 WHERE NULL IN ( - col2 )
----
0

skipif mysql # not compatible
query I rowsort label-4150
SELECT DISTINCT - COUNT ( col1 ) FROM tab0 WHERE NULL IN ( - col2 )
----
0

query I rowsort
SELECT ALL - 41 + - 35 FROM tab0
----
-76
-76
-76

query III rowsort
SELECT ALL * FROM tab0 WHERE ( col2 * col2 ) >= NULL
----

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE col1 = NULL
----

query I rowsort
SELECT ALL 11 * col1 + - col1 FROM tab1
----
140
470
50

query I rowsort
SELECT + col2 + ( + col2 ) FROM tab2
----
116
46
80

query I rowsort
SELECT + 8 + col0 FROM tab0
----
105
23
95

onlyif mysql # aggregate syntax: 
query I rowsort label-4157
SELECT DISTINCT - MIN( ALL + 44 ) FROM tab1 WHERE ( NULL ) <> + 74 + ( - col0 )
----
NULL

skipif mysql # not compatible
query I rowsort label-4157
SELECT DISTINCT - MIN ( ALL + 44 ) FROM tab1 WHERE ( NULL ) <> + 74 + ( - col0 )
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4158
SELECT col1 + + CAST( NULL AS SIGNED ) FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4158
SELECT col1 + + CAST ( NULL AS INTEGER ) FROM tab0
----
NULL
NULL
NULL

query III rowsort
SELECT * FROM tab1 WHERE NOT col0 * col2 < NULL
----

query III rowsort
SELECT * FROM tab0 WHERE col2 + col1 * col0 <> col0
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ( - 47 ) - - col1 FROM tab0
----
-26
-46
34

onlyif mysql # aggregate syntax: 
query I rowsort label-4162
SELECT COUNT( 33 ) AS col0 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-4162
SELECT COUNT ( 33 ) AS col0 FROM tab2
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-4163
SELECT ALL MIN( DISTINCT - 18 ) FROM tab2
----
-18

skipif mysql # not compatible
query I rowsort label-4163
SELECT ALL MIN ( DISTINCT - 18 ) FROM tab2
----
-18

query I rowsort
SELECT DISTINCT col0 FROM tab1 WHERE NOT col0 IS NULL
----
51
85
91

onlyif mysql # aggregate syntax: 
query I rowsort label-4165
SELECT COUNT( * ) + - 0 AS col2 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-4165
SELECT COUNT ( * ) + - 0 AS col2 FROM tab0
----
3

query I rowsort
SELECT ALL 70 AS col1 FROM tab1 WHERE NOT NULL IS NOT NULL
----
70
70
70

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col2 * col0 col0 FROM tab1 WHERE NOT col0 >= NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4168
SELECT + MIN( ALL + col2 ) + - CAST( NULL AS SIGNED ) AS col0 FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-4168
SELECT + MIN ( ALL + col2 ) + - CAST ( NULL AS INTEGER ) AS col0 FROM tab2
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - 62 col2 FROM tab0 WHERE NOT - col1 IS NULL
----
-62
-62
-62

query I rowsort
SELECT 23 AS col0 FROM tab2 AS cor0 WHERE NOT + 0 > ( ( ( - 37 ) ) )
----

query I rowsort
SELECT ALL 26 AS col1 FROM tab2 AS cor0
----
26
26
26

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4172
SELECT 26 * - CAST( NULL AS SIGNED ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

skipif mysql # not compatible
query I rowsort label-4172
SELECT 26 * - CAST ( NULL AS INTEGER ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE col0 * 63 + ( col1 - 68 ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT + 97 FROM tab1 AS cor0 WHERE NOT ( 15 ) < NULL
----

query I rowsort
SELECT col2 + col0 * - 93 AS col0 FROM tab1 AS cor0 WHERE NOT 66 < NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE + 26 + col0 < NULL
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE col0 = ( NULL )
----

query I rowsort
SELECT ALL col2 + - ( 70 ) AS col1 FROM tab2 AS cor0
----
-12
-30
-47

query I rowsort
SELECT DISTINCT + col2 * + 51 FROM tab1 cor0 WHERE NOT + 30 * - col0 IS NOT NULL
----

query I rowsort
SELECT col1 + + col0 * + 63 AS col0 FROM tab0 AS cor0
----
1026
5502
6112

onlyif mysql # aggregate syntax: 
query I rowsort label-4181
SELECT DISTINCT - 98 + ( COUNT( * ) - 20 ) FROM tab1 AS cor0
----
-115

skipif mysql # not compatible
query I rowsort label-4181
SELECT DISTINCT - 98 + ( COUNT ( * ) - 20 ) FROM tab1 AS cor0
----
-115

query I rowsort
SELECT 95 + 20 * - col2 FROM tab2 cor0
----
-1065
-365
-705

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4183
SELECT + 35 * + col0 + + CAST( NULL AS SIGNED ) AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4183
SELECT + 35 * + col0 + + CAST ( NULL AS INTEGER ) AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT col1 FROM tab2 cor0 WHERE NOT NULL = ( col0 )
----

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT + 53 < NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4186
SELECT ALL col1 * - col0 * col2 + + col0 DIV col2 col2 FROM tab0
----
-18262
-57105
-9603

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4186
SELECT ALL col1 * - col0 * col2 + + col0 / col2 col2 FROM tab0
----
-18262
-57105
-9603

query I rowsort
SELECT + ( col0 ) / col0 AS col0 FROM tab1 WHERE NULL <> NULL
----

query III rowsort
SELECT ALL * FROM tab2 WHERE NULL = ( col0 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4189
SELECT DISTINCT col0 + - CAST( NULL AS SIGNED ) AS col2 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-4189
SELECT DISTINCT col0 + - CAST ( NULL AS INTEGER ) AS col2 FROM tab1
----
NULL

query I rowsort
SELECT ALL - col1 * - 50 + + col2 * col2 FROM tab1 cor0
----
3731
6974
9916

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT + col2 < NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NULL NOT BETWEEN NULL AND - ( + ( ( col2 ) ) )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4193
SELECT DISTINCT + 0 * - col1 DIV - col0 + - col1 FROM tab0 AS cor0
----
-1
-21
-81

skipif mysql # not compatible
query I rowsort label-4193
SELECT DISTINCT + 0 * - col1 / - col0 + - col1 FROM tab0 AS cor0
----
-1
-21
-81

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4194
SELECT DISTINCT + + 32 + - col0 * CAST( NULL AS SIGNED ) FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4194
SELECT DISTINCT + + 32 + - col0 * CAST ( NULL AS INTEGER ) FROM tab0 AS cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4195
SELECT + CAST( CAST( NULL AS SIGNED ) AS SIGNED ) + ( - col2 ) AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4195
SELECT + CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) + ( - col2 ) AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT + 81 + 86 + col1 FROM tab2
----
218
234
244

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT NULL NOT IN ( + + 24 * col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4198
SELECT DISTINCT + + COUNT( * ) + COUNT( * ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
18

skipif mysql # not compatible
query I rowsort label-4198
SELECT DISTINCT + + COUNT ( * ) + COUNT ( * ) FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
18

query I rowsort
SELECT ALL col1 * 52 + - - 5 * - col2 AS col2 FROM tab2
----
2537
3194
3804

query I rowsort
SELECT DISTINCT - 83 FROM tab0 AS cor0 WHERE NOT + col2 * - - col2 / + col1 + col1 NOT IN ( + 31 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4201
SELECT - - 47 * + COUNT( 42 ) * 27 AS col0 FROM tab0 AS cor0
----
3807

skipif mysql # not compatible
query I rowsort label-4201
SELECT - - 47 * + COUNT ( 42 ) * 27 AS col0 FROM tab0 AS cor0
----
3807

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4202
SELECT - MAX( - col1 ) DIV - 94 FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-4202
SELECT - MAX ( - col1 ) / - 94 FROM tab0 AS cor0
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4203
SELECT ALL * FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( CAST( col0 AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-4203
SELECT ALL * FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( CAST ( col0 AS INTEGER ) )
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT ( 28 ) BETWEEN + col2 * + 10 AND ( 89 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-4205
SELECT MIN( DISTINCT + - col0 ) FROM tab1 cor0
----
-91

skipif mysql # not compatible
query I rowsort label-4205
SELECT MIN ( DISTINCT + - col0 ) FROM tab1 cor0
----
-91

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + 0 + + ( col1 ) + + col2 >= ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4207
SELECT DISTINCT * FROM tab0 cor0 WHERE ( 5 * + CAST( NULL AS SIGNED ) / 43 + + col0 ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-4207
SELECT DISTINCT * FROM tab0 cor0 WHERE ( 5 * + CAST ( NULL AS INTEGER ) / 43 + + col0 ) IS NOT NULL
----

query I rowsort
SELECT ALL + - col2 * - 26 * + + 54 AS col0 FROM tab0 AS cor0
----
138996
14040
65988

query I rowsort
SELECT DISTINCT - col0 * - - col1 + - col1 * col0 AS col0 FROM tab2 AS cor0
----
-10050
-4692
-9856

onlyif mysql # aggregate syntax: 
query I rowsort label-4210
SELECT + SUM( ALL 57 ) FROM tab2 WHERE NOT NULL IS NOT NULL
----
171

skipif mysql # not compatible
query I rowsort label-4210
SELECT + SUM ( ALL 57 ) FROM tab2 WHERE NOT NULL IS NOT NULL
----
171

query III rowsort
SELECT ALL * FROM tab2 WHERE + ( + col1 ) * ( 13 ) + - col1 IN ( - col1 + + col0 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4212
SELECT ALL COUNT( * ) AS col0 FROM tab2 WHERE col2 <= NULL
----
0

skipif mysql # not compatible
query I rowsort label-4212
SELECT ALL COUNT ( * ) AS col0 FROM tab2 WHERE col2 <= NULL
----
0

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT NULL >= - ( col1 )
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( NULL ) >= ( + col2 / + - col0 + 39 / col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4215
SELECT MAX( ALL + col2 ) * 7 AS col0 FROM tab2 WHERE NOT col0 * + - col2 + - 81 + + col2 + - 26 <> - col1
----
NULL

skipif mysql # not compatible
query I rowsort label-4215
SELECT MAX ( ALL + col2 ) * 7 AS col0 FROM tab2 WHERE NOT col0 * + - col2 + - 81 + + col2 + - 26 <> - col1
----
NULL

query I rowsort
SELECT ALL col0 FROM tab2 WHERE - col1 NOT IN ( + col1 + - 34 )
----
46
64
75

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( NULL ) BETWEEN + 61 AND + 40 - + + col2
----

query I rowsort
SELECT DISTINCT + - 41 + - col0 AS col0 FROM tab0 AS cor0
----
-128
-138
-56

onlyif mysql # DIV for integer division: 
query I rowsort label-4219
SELECT ALL - 70 DIV col1 AS col1 FROM tab2 AS cor0
----
-1
-1
0

skipif mysql # not compatible
query I rowsort label-4219
SELECT ALL - 70 / col1 AS col1 FROM tab2 AS cor0
----
-1
-1
0

query I rowsort
SELECT DISTINCT col1 + - + col2 FROM tab0 AS cor0
----
-98
11
34

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE - 56 <= - col2 + col1
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4222
SELECT ALL + COUNT( * ) + - COUNT( + - ( - ( + + 64 ) ) ) + CAST( NULL AS SIGNED ) FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4222
SELECT ALL + COUNT ( * ) + - COUNT ( + - ( - ( + + 64 ) ) ) + CAST ( NULL AS INTEGER ) FROM tab2 AS cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4223
SELECT ALL ( + COUNT( * ) ) AS col0 FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4223
SELECT ALL ( + COUNT ( * ) ) AS col0 FROM tab1 AS cor0
----
3

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE + col2 - 89 * + col1 IS NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-4225
SELECT ALL + 86 * - 62 * + COUNT( * ) - + + COUNT( * ), - COUNT( * ) AS col1 FROM tab1
----
-15999
-3

skipif mysql # not compatible
query II rowsort label-4225
SELECT ALL + 86 * - 62 * + COUNT ( * ) - + + COUNT ( * ), - COUNT ( * ) AS col1 FROM tab1
----
-15999
-3

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( - - 6 / - 45 ) BETWEEN NULL AND ( - col2 / - col2 )
----

query III rowsort
SELECT * FROM tab1 WHERE + 90 / + 2 + - col0 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT col2 + - 94 FROM tab2
----
-36
-54
-71

query I rowsort
SELECT + col2 + + + col1 AS col2 FROM tab0
----
100
128
31

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4230
SELECT ALL - col0 + + - CAST( - col1 AS SIGNED ) FROM tab2
----
-8
13
5

skipif mysql # not compatible
query I rowsort label-4230
SELECT ALL - col0 + + - CAST ( - col1 AS INTEGER ) FROM tab2
----
-8
13
5

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE + col2 < ( NULL )
----

query I rowsort
SELECT - col1 + - + 85 FROM tab2 AS cor0
----
-136
-152
-162

onlyif mysql # aggregate syntax: 
query I rowsort label-4233
SELECT DISTINCT 52 + + - COUNT( * ) AS col1 FROM tab0 AS cor0
----
49

skipif mysql # not compatible
query I rowsort label-4233
SELECT DISTINCT 52 + + - COUNT ( * ) AS col1 FROM tab0 AS cor0
----
49

onlyif mysql # DIV for integer division: 
query I rowsort label-4234
SELECT 31 DIV + + col0 - - - col1 - + 74 AS col0 FROM tab0
----
-153
-75
-95

skipif mysql # not compatible
query I rowsort label-4234
SELECT 31 / + + col0 - - - col1 - + 74 AS col0 FROM tab0
----
-153
-75
-95

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL col0 - ( - + col0 ) col2 FROM tab0
----
174
194
30

onlyif mysql # aggregate syntax: 
query I rowsort label-4236
SELECT COUNT( * ) FROM tab2 AS cor0 WHERE NOT NULL <= NULL
----
0

skipif mysql # not compatible
query I rowsort label-4236
SELECT COUNT ( * ) FROM tab2 AS cor0 WHERE NOT NULL <= NULL
----
0

query I rowsort
SELECT DISTINCT col0 AS col1 FROM tab1 AS cor0 WHERE NOT col2 + - col0 NOT IN ( 32 * - - col2, - col1 )
----

query I rowsort
SELECT ALL + - ( 18 ) FROM tab1 AS cor0
----
-18
-18
-18

onlyif mysql # aggregate syntax: 
query I rowsort label-4239
SELECT - SUM( ALL + + col0 ) FROM tab1
----
-227

skipif mysql # not compatible
query I rowsort label-4239
SELECT - SUM ( ALL + + col0 ) FROM tab1
----
-227

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL < - 17
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4241
SELECT + col1 DIV - ( - + col2 ) FROM tab0
----
0
1
2

skipif mysql # not compatible
query I rowsort label-4241
SELECT + col1 / - ( - + col2 ) FROM tab0
----
0
1
2

query I rowsort
SELECT col0 * + 85 AS col2 FROM tab2
----
3910
5440
6375

query II rowsort
SELECT col0 AS col1, col2 * 13 - + col1 FROM tab0
----
15
530
87
109
97
1286

onlyif mysql # aggregate syntax: 
query I rowsort label-4244
SELECT COUNT( + col0 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-4244
SELECT COUNT ( + col0 ) FROM tab1
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - col2 col0, col0 FROM tab0
----
-10
87
-47
15
-99
97

query I rowsort
SELECT DISTINCT 63 * - col1 FROM tab1
----
-2961
-315
-882

onlyif mysql # DIV for integer division: 
query I rowsort label-4247
SELECT + + col0 * col2 DIV + - col0 FROM tab2 AS cor0
----
-23
-40
-58

skipif mysql # not compatible
query I rowsort label-4247
SELECT + + col0 * col2 / + - col0 FROM tab2 AS cor0
----
-23
-40
-58

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT NULL <= ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4249
SELECT ALL COUNT( * ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-4249
SELECT ALL COUNT ( * ) AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4250
SELECT + AVG ( CAST( NULL AS SIGNED ) ) AS col0 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-4250
SELECT + AVG ( CAST ( NULL AS INTEGER ) ) AS col0 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4251
SELECT COUNT( * ) + COUNT( DISTINCT + + col1 ) FROM tab0
----
6

skipif mysql # not compatible
query I rowsort label-4251
SELECT COUNT ( * ) + COUNT ( DISTINCT + + col1 ) FROM tab0
----
6

query I rowsort
SELECT DISTINCT + col0 * + + 78 * - col2 AS col1 FROM tab0
----
-54990
-67860
-749034

query I rowsort
SELECT - 14 + + col0 AS col1 FROM tab2 AS cor0
----
32
50
61

query I rowsort
SELECT ALL 73 * col0 + col0 * + col1 AS col0 FROM tab1 AS cor0
----
10920
4437
6630

query I rowsort
SELECT ( - 56 ) FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT + 3 * + col0 AS col2 FROM tab0
----
261
291
45

query I rowsort
SELECT - col2 * 69 FROM tab1
----
-4071
-4692
-6624

onlyif mysql # aggregate syntax: 
query I rowsort label-4258
SELECT ALL COUNT( * ) - COUNT( * ) FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-4258
SELECT ALL COUNT ( * ) - COUNT ( * ) FROM tab0
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-4259
SELECT ALL col0 DIV + 70 AS col2 FROM tab2
----
0
0
1

skipif mysql # not compatible
query I rowsort label-4259
SELECT ALL col0 / + 70 AS col2 FROM tab2
----
0
0
1

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT ( + col1 ) IS NOT NULL
----

query II rowsort
SELECT DISTINCT col1, - col0 AS col0 FROM tab2
----
51
-46
67
-75
77
-64

query II rowsort
SELECT ALL 93 * col0 + - + col2 AS col1, - col0 AS col1 FROM tab1
----
4647
-51
7846
-85
8395
-91

onlyif mysql # DIV for integer division: 
query I rowsort label-4263
SELECT + col2 * + col0 + + - col1 DIV + col1 + + col0 FROM tab1 AS cor0
----
4946
5099
6278

skipif mysql # not compatible
query I rowsort label-4263
SELECT + col2 * + col0 + + - col1 / + col1 + + col0 FROM tab1 AS cor0
----
4946
5099
6278

query I rowsort
SELECT col0 + + col2 * + col0 FROM tab1 AS cor0
----
4947
5100
6279

query I rowsort
SELECT + col2 + - col1 AS col1 FROM tab0 AS cor0 WHERE NULL IS NULL
----
-11
-34
98

query I rowsort
SELECT col0 + 78 * + col0 FROM tab2 AS cor0
----
3634
5056
5925

query IIIIII rowsort
SELECT * FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1 WHERE NOT NULL = ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4268
SELECT DISTINCT - 53 AS col2 FROM tab0 AS cor0 WHERE NOT + col1 <= + CAST( + + col2 AS SIGNED ) * col0 * + 6 * - col2 / col2
----
-53

skipif mysql # not compatible
query I rowsort label-4268
SELECT DISTINCT - 53 AS col2 FROM tab0 AS cor0 WHERE NOT + col1 <= + CAST ( + + col2 AS INTEGER ) * col0 * + 6 * - col2 / col2
----
-53

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT - 58 + - col0 * + + col1 <> ( + + col1 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4270
SELECT * FROM tab0 cor0 WHERE NOT + ( - - 50 ) * col0 * + 70 + + + CAST( - col2 AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-4270
SELECT * FROM tab0 cor0 WHERE NOT + ( - - 50 ) * col0 * + 70 + + + CAST ( - col2 AS INTEGER ) IS NOT NULL
----

query II rowsort
SELECT + + col2 AS col1, 50 FROM tab0 AS cor0
----
10
50
47
50
99
50

onlyif mysql # aggregate syntax: 
query I rowsort label-4272
SELECT + + 20 * - COUNT( * ) FROM tab0 AS cor0
----
-60

skipif mysql # not compatible
query I rowsort label-4272
SELECT + + 20 * - COUNT ( * ) FROM tab0 AS cor0
----
-60

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 31 col2 FROM tab1 AS cor0
----
-31
-31
-31

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( ( NOT ( NOT + 1 IS NOT NULL ) ) )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-4275
SELECT SUM( DISTINCT + + col0 ) FROM tab0
----
199

skipif mysql # not compatible
query I rowsort label-4275
SELECT SUM ( DISTINCT + + col0 ) FROM tab0
----
199

query III rowsort
SELECT ALL * FROM tab1 WHERE ( NOT col0 < + - col2 - - col1 + + col1 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL - 60 * ( + + 78 ) FROM tab2
----
-4680
-4680
-4680

query I rowsort
SELECT - - col0 + col1 AS col1 FROM tab2 WHERE NOT NULL IS NOT NULL
----
141
142
97

query I rowsort
SELECT DISTINCT col1 * - ( - 28 ) FROM tab0
----
2268
28
588

query I rowsort
SELECT ALL + - 26 + 40 AS col1 FROM tab2 AS cor0
----
14
14
14

query I rowsort
SELECT + col1 * + ( - col0 ) * - col1 + - col1 + + 62 * + col2 + + col0 - 78 FROM tab1 cor0
----
15907
205201
5785

query I rowsort
SELECT - - col2 + + + col1 AS col2 FROM tab2 cor0
----
117
125
74

query I rowsort
SELECT - col1 + + + col2 AS col1 FROM tab2 AS cor0
----
-28
-37
-9

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT - 51 * col1 + - 76 + 3 + 23 NOT IN ( + + col0 )
----

query I rowsort
SELECT DISTINCT - 60 AS col2 FROM tab0 AS cor0 WHERE NULL >= - col0
----

query I rowsort
SELECT + col0 * - col0 AS col0 FROM tab0 AS cor0 WHERE + col2 + - + col2 <> col2
----
-225
-7569
-9409

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT + - col2 NOT IN ( - col2 * - + col1 * - 45 + 64 + + col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4288
SELECT 2 * + MAX( 55 ) * + COUNT( * ) - - COUNT( * ) FROM tab0
----
333

skipif mysql # not compatible
query I rowsort label-4288
SELECT 2 * + MAX ( 55 ) * + COUNT ( * ) - - COUNT ( * ) FROM tab0
----
333

query II rowsort
SELECT col1 AS col0, col2 FROM tab1
----
14
96
47
68
5
59

query I rowsort
SELECT DISTINCT 0 + + col2 AS col1 FROM tab1
----
59
68
96

query I rowsort
SELECT ALL col0 + - ( - - col1 ) * + col0 AS col1 FROM tab0 AS cor0
----
-1200
-1740
0

query I rowsort
SELECT DISTINCT + + col2 + + 73 FROM tab0 AS cor0
----
120
172
83

query I rowsort
SELECT - + col2 / col0 FROM tab1 AS cor0 WHERE ( NOT + - col0 = NULL )
----

query I rowsort
SELECT - + ( + - col0 ) AS col1 FROM tab0 AS cor0
----
15
87
97

query I rowsort
SELECT ALL + + 96 + col0 FROM tab2 AS cor0
----
142
160
171

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4296
SELECT DISTINCT + CAST( + ( - - col2 ) AS SIGNED ) AS col1 FROM tab1 AS cor0 WHERE ( - 72 IS NULL )
----

skipif mysql # not compatible
query I rowsort label-4296
SELECT DISTINCT + CAST ( + ( - - col2 ) AS INTEGER ) AS col1 FROM tab1 AS cor0 WHERE ( - 72 IS NULL )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col2 + col2 col1 FROM tab1 cor0
----
118
136
192

query I rowsort
SELECT DISTINCT + - 52 * - col1 FROM tab0 AS cor0
----
1092
4212
52

query I rowsort
SELECT ALL - + col1 + + col1 + col2 AS col2 FROM tab1 AS cor0
----
59
68
96

query I rowsort
SELECT + 77 + - + 94 AS col0 FROM tab2 AS cor0
----
-17
-17
-17

onlyif mysql # aggregate syntax: 
query II rowsort label-4301
SELECT ALL COUNT( * ) * - - COUNT( * ) AS col2, - COUNT( * ) AS col2 FROM tab2
----
9
-3

skipif mysql # not compatible
query II rowsort label-4301
SELECT ALL COUNT ( * ) * - - COUNT ( * ) AS col2, - COUNT ( * ) AS col2 FROM tab2
----
9
-3

query I rowsort
SELECT DISTINCT - ( + + col0 ) + + 61 AS col0 FROM tab0
----
-26
-36
46

query I rowsort
SELECT 91 + col0 * - 24 AS col0 FROM tab2
----
-1013
-1445
-1709

query I rowsort
SELECT + 52 + + - col2 FROM tab1
----
-16
-44
-7

query I rowsort
SELECT col2 + - 46 AS col0 FROM tab2
----
-23
-6
12

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4306
SELECT - 5 + - CAST( NULL AS SIGNED ) / - 52 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4306
SELECT - 5 + - CAST ( NULL AS INTEGER ) / - 52 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT ALL col2 + col0 AS col2 FROM tab0 AS cor0 WHERE ( NULL ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4308
SELECT ALL - COUNT( DISTINCT 20 ) AS col0 FROM tab2 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-4308
SELECT ALL - COUNT ( DISTINCT 20 ) AS col0 FROM tab2 AS cor0
----
-1

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL BETWEEN - 48 AND ( NULL )
----

query IIIIII rowsort
SELECT DISTINCT * FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1 WHERE 95 IS NULL
----

query III rowsort
SELECT * FROM tab2 cor0 WHERE NOT - col2 > col0 + + + col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4312
SELECT DISTINCT + COUNT( * ) * CAST( NULL AS SIGNED ) AS col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4312
SELECT DISTINCT + COUNT ( * ) * CAST ( NULL AS INTEGER ) AS col1 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT + col0 AS col1 FROM tab0 AS cor0 WHERE NOT - 72 IN ( col0, col2 * - col0 * - col1, + 85 )
----
15
87
97

query I rowsort
SELECT + 44 + - 48 FROM tab0 AS cor0
----
-4
-4
-4

query I rowsort
SELECT 68 + 10 FROM tab2 AS cor0
----
78
78
78

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT NULL NOT IN ( col0, 60 )
----

onlyif mysql # aggregate syntax: 
query II rowsort label-4317
SELECT + COUNT( * ) AS col0, - 65 FROM tab0
----
3
-65

skipif mysql # not compatible
query II rowsort label-4317
SELECT + COUNT ( * ) AS col0, - 65 FROM tab0
----
3
-65

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-4318
SELECT CAST( - 45 AS SIGNED ) DIV col0 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4318
SELECT CAST ( - 45 AS INTEGER ) / col0 FROM tab1
----
0
0
0

query II rowsort
SELECT DISTINCT 56, col1 AS col2 FROM tab0
----
56
1
56
21
56
81

query II rowsort
SELECT DISTINCT + col0 * 15 AS col1, - col0 AS col2 FROM tab2
----
1125
-75
690
-46
960
-64

onlyif mysql # aggregate syntax: 
query I rowsort label-4321
SELECT ALL SUM( ALL - - col2 ) AS col2 FROM tab2
----
121

skipif mysql # not compatible
query I rowsort label-4321
SELECT ALL SUM ( ALL - - col2 ) AS col2 FROM tab2
----
121

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE - 35 + + col0 * + - col2 * - - 38 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT - + ( - + 13 ) + 74 AS col0 FROM tab2 AS cor0
----
87
87
87

onlyif mysql # DIV for integer division: 
query I rowsort label-4324
SELECT - ( + + col1 ) DIV - col0 FROM tab1 cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4324
SELECT - ( + + col1 ) / - col0 FROM tab1 cor0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4325
SELECT MAX( DISTINCT - col1 ) AS col2 FROM tab2 AS cor0
----
-51

skipif mysql # not compatible
query I rowsort label-4325
SELECT MAX ( DISTINCT - col1 ) AS col2 FROM tab2 AS cor0
----
-51

onlyif mysql # aggregate syntax: 
query I rowsort label-4326
SELECT 75 * - AVG ( col1 ) / - SUM( col1 ) FROM tab0 AS cor0 WHERE - col1 = + col2 + - col0
----
NULL

skipif mysql # not compatible
query I rowsort label-4326
SELECT 75 * - AVG ( col1 ) / - SUM ( col1 ) FROM tab0 AS cor0 WHERE - col1 = + col2 + - col0
----
NULL

query I rowsort
SELECT DISTINCT - + 80 * + 49 FROM tab1 AS cor0
----
-3920

query I rowsort
SELECT + ( - - 29 ) FROM tab1 AS cor0
----
29
29
29

query I rowsort
SELECT DISTINCT col2 - - 66 FROM tab1 AS cor0
----
125
134
162

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE + 95 <> - - col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-4331
SELECT DISTINCT + 43 - + - 92 * - - 18 + + MAX( ALL + col0 ) * - COUNT( * ) AS col2 FROM tab1
----
1426

skipif mysql # not compatible
query I rowsort label-4331
SELECT DISTINCT + 43 - + - 92 * - - 18 + + MAX ( ALL + col0 ) * - COUNT ( * ) AS col2 FROM tab1
----
1426

query I rowsort
SELECT + ( + - col1 ) - - col1 AS col2 FROM tab2
----
0
0
0

query III rowsort
SELECT * FROM tab0 WHERE + 97 IS NULL
----

query I rowsort
SELECT ( col1 ) - + 35 FROM tab1
----
-21
-30
12

onlyif mysql # aggregate syntax: 
query I rowsort label-4335
SELECT ALL + COUNT( ALL + col2 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-4335
SELECT ALL + COUNT ( ALL + col2 ) FROM tab1
----
3

query III rowsort
SELECT * FROM tab1 WHERE NOT - + 6 + - col2 IS NOT NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4337
SELECT ALL - CAST( NULL AS SIGNED ) - + ( + 66 ) FROM tab1, tab1 AS cor0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

skipif mysql # not compatible
query I rowsort label-4337
SELECT ALL - CAST ( NULL AS INTEGER ) - + ( + 66 ) FROM tab1, tab1 AS cor0
----
9 values hashing to cd7a7901e47c15155404aff0d216fe0b

query I rowsort
SELECT 8 * 43 AS col0 FROM tab1
----
344
344
344

query I rowsort
SELECT DISTINCT + col1 * + - col0 AS col0 FROM tab1 AS cor0
----
-425
-4277
-714

onlyif mysql # aggregate syntax: 
query I rowsort label-4340
SELECT ALL COUNT( * ) * + 43 AS col1 FROM tab2
----
129

skipif mysql # not compatible
query I rowsort label-4340
SELECT ALL COUNT ( * ) * + 43 AS col1 FROM tab2
----
129

onlyif mysql # DIV for integer division: 
query II rowsort label-4341
SELECT DISTINCT col1 DIV - 53, + col1 DIV col0 FROM tab1
----
0
0

skipif mysql # not compatible
query II rowsort label-4341
SELECT DISTINCT col1 / - 53, + col1 / col0 FROM tab1
----
0
0

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT NULL < - 35
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT NULL <> ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4344
SELECT DISTINCT SUM( ALL + 62 ) AS col2 FROM tab0 AS cor0
----
186

skipif mysql # not compatible
query I rowsort label-4344
SELECT DISTINCT SUM ( ALL + 62 ) AS col2 FROM tab0 AS cor0
----
186

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + 54 * col0 * - ( 31 ) AS col0, + 69 col1 FROM tab2 AS cor0
----
-107136
69
-125550
69
-77004
69

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4346
SELECT - CAST( col1 AS SIGNED ) * 98 AS col2 FROM tab1 AS cor0
----
-1372
-4606
-490

skipif mysql # not compatible
query I rowsort label-4346
SELECT - CAST ( col1 AS INTEGER ) * 98 AS col2 FROM tab1 AS cor0
----
-1372
-4606
-490

query I rowsort
SELECT ALL - 30 + + - col0 FROM tab0 AS cor0
----
-117
-127
-45

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( NOT ( NULL ) <= NULL )
----

query I rowsort
SELECT DISTINCT + col1 FROM tab2 cor0 WHERE NOT col0 IS NOT NULL
----

query I rowsort
SELECT ALL - col2 - - col0 AS col2 FROM tab0 AS cor0 WHERE NOT ( NOT + 90 IS NULL )
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-4351
SELECT * FROM tab1 WHERE NOT col0 + - - CAST( + + col0 AS DECIMAL ) * col1 IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-4351
SELECT * FROM tab1 WHERE NOT col0 + - - CAST ( + + col0 AS REAL ) * col1 IS NOT NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4352
SELECT DISTINCT ( 91 ) DIV SUM( DISTINCT + 53 ) AS col1 FROM tab1
----
1

skipif mysql # not compatible
query I rowsort label-4352
SELECT DISTINCT ( 91 ) / SUM ( DISTINCT + 53 ) AS col1 FROM tab1
----
1

query II rowsort
SELECT ALL + col0, + col1 FROM tab1
----
51
14
85
5
91
47

query I rowsort
SELECT 76 * col0 + col1 * + col2 AS col1 FROM tab1
----
10112
5220
6755

onlyif mysql # CAST syntax: aggregate syntax: DECIMAL type: 
query I rowsort label-4355
SELECT - + MAX( ALL CAST( NULL AS DECIMAL ) ) + 55 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4355
SELECT - + MAX ( ALL CAST ( NULL AS REAL ) ) + 55 FROM tab0 AS cor0
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 11 * 27 / + col0 + 33 + 9 * - + 31 - + 68 col2 FROM tab2 AS cor0 WHERE col0 > - + col0 * - col1 * + 59
----

query I rowsort
SELECT ALL - + 40 * - 74 + 52 FROM tab0 cor0
----
3012
3012
3012

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4358
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( NULL ) > + CAST( NULL AS SIGNED )
----

skipif mysql # not compatible
query III rowsort label-4358
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( NULL ) > + CAST ( NULL AS INTEGER )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4359
SELECT - - CAST( NULL AS SIGNED ) + COUNT( ALL ( - - 35 ) ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4359
SELECT - - CAST ( NULL AS INTEGER ) + COUNT ( ALL ( - - 35 ) ) FROM tab1 AS cor0
----
NULL

query I rowsort
SELECT ALL col1 * + 15 + col0 + + col0 + + + col0 + col0 + + - col2 * - col1 * + col0 FROM tab2 cor0
----
198531
292755
54907

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL <= 97 * col1
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4362
SELECT DISTINCT + ( col1 ) + col2 * - 72 / - - ( + 57 ) + - - ( + CAST( NULL AS SIGNED ) ) FROM tab2 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4362
SELECT DISTINCT + ( col1 ) + col2 * - 72 / - - ( + 57 ) + - - ( + CAST ( NULL AS INTEGER ) ) FROM tab2 cor0
----
NULL

query I rowsort
SELECT 67 AS col1 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to b56f8a4f1fcebc9802481256df61e97c

query I rowsort
SELECT DISTINCT + 86 FROM tab0 AS cor0 WHERE NOT NULL >= - col2 * - 86
----

query II rowsort
SELECT DISTINCT + - col2, col2 * col2 AS col0 FROM tab0 AS cor0
----
-10
100
-47
2209
-99
9801

onlyif mysql # aggregate syntax: 
query I rowsort label-4366
SELECT DISTINCT + + 86 + COUNT( * ) AS col2 FROM tab2 AS cor0
----
89

skipif mysql # not compatible
query I rowsort label-4366
SELECT DISTINCT + + 86 + COUNT ( * ) AS col2 FROM tab2 AS cor0
----
89

query I rowsort
SELECT + - col2 - - 59 + + - 9 FROM tab1 AS cor0
----
-18
-46
-9

query I rowsort
SELECT + 21 - + col0 AS col0 FROM tab2 AS cor0
----
-25
-43
-54

query I rowsort
SELECT DISTINCT + + ( - col2 ) + - 84 FROM tab2 AS cor0
----
-107
-124
-142

query I rowsort
SELECT ALL - col0 * 96 - 94 - + col2 FROM tab0 AS cor0
----
-1581
-8456
-9505

onlyif mysql # aggregate syntax: 
query I rowsort label-4371
SELECT + + COUNT( + - 63 ) FROM tab0 WHERE NOT NULL IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-4371
SELECT + + COUNT ( + - 63 ) FROM tab0 WHERE NOT NULL IS NOT NULL
----
3

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4372
SELECT DISTINCT + col0 / - - col0 AS col0 FROM tab0 WHERE NOT 30 * + + col0 + + + CAST( 61 AS DECIMAL ) + - col2 * + - col2 > + col2
----

skipif mysql # not compatible
query I rowsort label-4372
SELECT DISTINCT + col0 / - - col0 AS col0 FROM tab0 WHERE NOT 30 * + + col0 + + + CAST ( 61 AS REAL ) + - col2 * + - col2 > + col2
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4373
SELECT ALL * FROM tab0 WHERE NOT + CAST( NULL AS SIGNED ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-4373
SELECT ALL * FROM tab0 WHERE NOT + CAST ( NULL AS INTEGER ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT - 40 * col0 AS col1 FROM tab2
----
-1840
-2560
-3000

query I rowsort
SELECT col2 * + - ( - + col1 ) FROM tab2
----
1173
3080
3886

query II rowsort
SELECT + ( + - col0 ), + col0 AS col0 FROM tab2
----
-46
46
-64
64
-75
75

query III rowsort
SELECT ALL * FROM tab2 WHERE col0 >= - - 4
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - 47 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query II rowsort label-4379
SELECT - col0 + + col2 / + CAST( NULL AS DECIMAL ) AS col0, CAST( NULL AS SIGNED ) AS col0 FROM tab1 WHERE NOT - col2 - + - col2 > NULL
----

skipif mysql # not compatible
query II rowsort label-4379
SELECT - col0 + + col2 / + CAST ( NULL AS REAL ) AS col0, CAST ( NULL AS INTEGER ) AS col0 FROM tab1 WHERE NOT - col2 - + - col2 > NULL
----

query I rowsort
SELECT DISTINCT - col2 AS col1 FROM tab1 WHERE NOT 44 + col2 <> col0
----

query I rowsort
SELECT ALL + - col2 * - col1 * - col2 FROM tab0 AS cor0
----
-178929
-2100
-9801

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4382
SELECT DISTINCT + COUNT( * ) DIV + 58 col2 FROM tab2 AS cor0
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4382
SELECT DISTINCT + COUNT ( * ) / + 58 col2 FROM tab2 AS cor0
----
0

query II rowsort
SELECT + col1 AS col1, + col0 FROM tab1
----
14
51
47
91
5
85

onlyif mysql # aggregate syntax: 
query I rowsort label-4384
SELECT COUNT( * ) + + + ( COUNT( * ) ) + + COUNT( * ) AS col1 FROM tab2 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-4384
SELECT COUNT ( * ) + + + ( COUNT ( * ) ) + + COUNT ( * ) AS col1 FROM tab2 AS cor0
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-4385
SELECT DISTINCT - + SUM( DISTINCT col1 ) FROM tab2 AS cor0
----
-195

skipif mysql # not compatible
query I rowsort label-4385
SELECT DISTINCT - + SUM ( DISTINCT col1 ) FROM tab2 AS cor0
----
-195

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4386
SELECT + COUNT( * ) DIV + - COUNT( * ) + COUNT( * ) * + 47 AS col2 FROM tab2 cor0
----
140

skipif mysql # not compatible
query I rowsort label-4386
SELECT + COUNT ( * ) / + - COUNT ( * ) + COUNT ( * ) * + 47 AS col2 FROM tab2 cor0
----
140

query I rowsort
SELECT + 51 + - col2 AS col0 FROM tab2
----
-7
11
28

query I rowsort
SELECT ALL + ( + col1 ) - + + col0 FROM tab0 WHERE NOT col1 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-4389
SELECT DISTINCT + ( + 70 ) AS col0, COUNT( * ) * - - 29 FROM tab1
----
70
87

skipif mysql # not compatible
query II rowsort label-4389
SELECT DISTINCT + ( + 70 ) AS col0, COUNT ( * ) * - - 29 FROM tab1
----
70
87

onlyif mysql # aggregate syntax: 
query I rowsort label-4390
SELECT ALL - SUM( ALL 18 ) AS col2 FROM tab2, tab1 AS cor0
----
-162

skipif mysql # not compatible
query I rowsort label-4390
SELECT ALL - SUM ( ALL 18 ) AS col2 FROM tab2, tab1 AS cor0
----
-162

query III rowsort
SELECT ALL * FROM tab1 WHERE ( col2 IS NOT NULL )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT - 85 * + col0 FROM tab1 AS cor0 WHERE col2 * - col0 * col1 BETWEEN NULL AND - + col0 * + col0
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4393
SELECT - ( + 75 ) * - + 25 + + + 63 * col2 DIV + col2 AS col2 FROM tab2
----
1938
1938
1938

skipif mysql # not compatible
query I rowsort label-4393
SELECT - ( + 75 ) * - + 25 + + + 63 * col2 / + col2 AS col2 FROM tab2
----
1938
1938
1938

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4394
SELECT CAST( - 62 AS SIGNED ) AS col0 FROM tab1 AS cor0
----
-62
-62
-62

skipif mysql # not compatible
query I rowsort label-4394
SELECT CAST ( - 62 AS INTEGER ) AS col0 FROM tab1 AS cor0
----
-62
-62
-62

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4395
SELECT DISTINCT - col0 + - CAST( NULL AS SIGNED ) AS col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4395
SELECT DISTINCT - col0 + - CAST ( NULL AS INTEGER ) AS col1 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT 57 AS col1 FROM tab2 cor0
----
57
57
57

onlyif mysql # DIV for integer division: 
query I rowsort label-4397
SELECT - 90 DIV - 37 FROM tab0 AS cor0
----
2
2
2

skipif mysql # not compatible
query I rowsort label-4397
SELECT - 90 / - 37 FROM tab0 AS cor0
----
2
2
2

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE - 10 / - 28 + 72 * + col0 - + col0 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT + + ( - + 39 ) FROM tab2 AS cor0
----
-39
-39
-39

query I rowsort
SELECT DISTINCT - col0 * - col2 * - - col0 AS col1 FROM tab2 AS cor0
----
163840
326250
48668

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4401
SELECT + COUNT( * ) DIV - 97 * 24 + 7 * - 37 FROM tab0 AS cor0
----
-259

skipif mysql # not compatible
query I rowsort label-4401
SELECT + COUNT ( * ) / - 97 * 24 + 7 * - 37 FROM tab0 AS cor0
----
-259

onlyif mysql # aggregate syntax: 
query I rowsort label-4402
SELECT ALL + MAX( ALL - col1 ) FROM tab1 AS cor0 WHERE NOT ( + + ( col0 ) IS NOT NULL )
----
NULL

skipif mysql # not compatible
query I rowsort label-4402
SELECT ALL + MAX ( ALL - col1 ) FROM tab1 AS cor0 WHERE NOT ( + + ( col0 ) IS NOT NULL )
----
NULL

query I rowsort
SELECT DISTINCT - + 68 FROM tab0 WHERE - col2 * + 86 IS NULL
----

query I rowsort
SELECT DISTINCT - ( - - col1 ) FROM tab0
----
-1
-21
-81

onlyif mysql # aggregate syntax: 
query I rowsort label-4405
SELECT DISTINCT MIN( + col0 ) AS col2 FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-4405
SELECT DISTINCT MIN ( + col0 ) AS col2 FROM tab1
----
51

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4406
SELECT DISTINCT ( - + CAST( NULL AS SIGNED ) ) FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-4406
SELECT DISTINCT ( - + CAST ( NULL AS INTEGER ) ) FROM tab1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4407
SELECT ALL COUNT( * ) * - 97 FROM tab0
----
-291

skipif mysql # not compatible
query I rowsort label-4407
SELECT ALL COUNT ( * ) * - 97 FROM tab0
----
-291

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT - 78 >= NULL
----

query I rowsort
SELECT ALL + + 13 * + 43 + + col1 FROM tab0 AS cor0
----
560
580
640

onlyif mysql # aggregate syntax: 
query I rowsort label-4410
SELECT SUM( + col2 ) FROM tab0 AS cor0
----
156

skipif mysql # not compatible
query I rowsort label-4410
SELECT SUM ( + col2 ) FROM tab0 AS cor0
----
156

query I rowsort
SELECT - 70 * - + col0 AS col0 FROM tab0 AS cor0
----
1050
6090
6790

query III rowsort
SELECT ALL * FROM tab0 cor0 WHERE NOT col2 > NULL
----

query I rowsort
SELECT ALL + - 41 FROM tab1 AS cor0
----
-41
-41
-41

onlyif mysql # aggregate syntax: 
query I rowsort label-4414
SELECT - - ( COUNT( * ) ) FROM tab2 cor0
----
3

skipif mysql # not compatible
query I rowsort label-4414
SELECT - - ( COUNT ( * ) ) FROM tab2 cor0
----
3

onlyif mysql # DIV for integer division: 
query I rowsort label-4415
SELECT + ( - 76 ) DIV - 37 FROM tab1 AS cor0
----
2
2
2

skipif mysql # not compatible
query I rowsort label-4415
SELECT + ( - 76 ) / - 37 FROM tab1 AS cor0
----
2
2
2

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4416
SELECT + ( + CAST( 87 AS SIGNED ) ) FROM tab2 AS cor0
----
87
87
87

skipif mysql # not compatible
query I rowsort label-4416
SELECT + ( + CAST ( 87 AS INTEGER ) ) FROM tab2 AS cor0
----
87
87
87

onlyif mysql # aggregate syntax: 
query I rowsort label-4417
SELECT DISTINCT - MIN( + col0 ) AS col2 FROM tab2 AS cor0
----
-46

skipif mysql # not compatible
query I rowsort label-4417
SELECT DISTINCT - MIN ( + col0 ) AS col2 FROM tab2 AS cor0
----
-46

onlyif mysql # aggregate syntax: 
query II rowsort label-4418
SELECT COUNT( * ) AS col1, - MAX( ALL 91 ) FROM tab2, tab0 AS cor0
----
9
-91

skipif mysql # not compatible
query II rowsort label-4418
SELECT COUNT ( * ) AS col1, - MAX ( ALL 91 ) FROM tab2, tab0 AS cor0
----
9
-91

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4419
SELECT DISTINCT * FROM tab1 WHERE NOT - CAST( NULL AS SIGNED ) >= + col0
----

skipif mysql # not compatible
query III rowsort label-4419
SELECT DISTINCT * FROM tab1 WHERE NOT - CAST ( NULL AS INTEGER ) >= + col0
----

query IIIIII rowsort
SELECT ALL * FROM tab0, tab1 cor0 WHERE - 99 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4421
SELECT + + COUNT( * ) FROM tab1 cor0 CROSS JOIN tab2 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-4421
SELECT + + COUNT ( * ) FROM tab1 cor0 CROSS JOIN tab2 AS cor1
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-4422
SELECT - MAX( - 2 ) * COUNT( * ) AS col0 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
18

skipif mysql # not compatible
query I rowsort label-4422
SELECT - MAX ( - 2 ) * COUNT ( * ) AS col0 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
18

query I rowsort
SELECT DISTINCT - - col2 + 30 - - col0 * ( - col1 ) FROM tab0 AS cor0
----
-1138
-1787
32

onlyif mysql # DIV for integer division: 
query I rowsort label-4424
SELECT ALL - col2 + + 99 * 39 * + col0 + + + col2 DIV - col1 AS col2 FROM tab2 AS cor0
----
177583
247064
289517

skipif mysql # not compatible
query I rowsort label-4424
SELECT ALL - col2 + + 99 * 39 * + col0 + + + col2 / - col1 AS col2 FROM tab2 AS cor0
----
177583
247064
289517

query I rowsort
SELECT ALL col1 FROM tab2 cor0 WHERE + 56 + - - col2 < NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4426
SELECT DISTINCT ( col0 ) + - + CAST( NULL AS SIGNED ) * + 5 + + 62 * - col1 + - col2 - + col2, + col2 AS col0 FROM tab2 AS cor0
----
NULL
23
NULL
40
NULL
58

skipif mysql # not compatible
query II rowsort label-4426
SELECT DISTINCT ( col0 ) + - + CAST ( NULL AS INTEGER ) * + 5 + + 62 * - col1 + - col2 - + col2, + col2 AS col0 FROM tab2 AS cor0
----
NULL
23
NULL
40
NULL
58

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4427
SELECT CAST( NULL AS SIGNED ) * - - col1, col1 FROM tab1 cor0
----
NULL
14
NULL
47
NULL
5

skipif mysql # not compatible
query II rowsort label-4427
SELECT CAST ( NULL AS INTEGER ) * - - col1, col1 FROM tab1 cor0
----
NULL
14
NULL
47
NULL
5

query II rowsort
SELECT - col0 * + + 82 AS col0, + 19 FROM tab2 AS cor0
----
-3772
19
-5248
19
-6150
19

onlyif mysql # aggregate syntax: 
query I rowsort label-4429
SELECT DISTINCT + COUNT( * ) AS col0 FROM tab0 AS cor0 WHERE NOT NULL <= ( - 77 )
----
0

skipif mysql # not compatible
query I rowsort label-4429
SELECT DISTINCT + COUNT ( * ) AS col0 FROM tab0 AS cor0 WHERE NOT NULL <= ( - 77 )
----
0

query III rowsort
SELECT * FROM tab2 WHERE NULL = - 13
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-4431
SELECT ALL + COUNT( * ) AS col0, 21 + + - CAST( ( - MAX( - - 76 ) ) AS SIGNED ) FROM tab2
----
3
97

skipif mysql # not compatible
query II rowsort label-4431
SELECT ALL + COUNT ( * ) AS col0, 21 + + - CAST ( ( - MAX ( - - 76 ) ) AS INTEGER ) FROM tab2
----
3
97

query III rowsort
SELECT * FROM tab2 WHERE NULL NOT BETWEEN NULL AND - col2 AND NULL NOT BETWEEN - 70 * + col0 AND + + 22
----

query I rowsort
SELECT DISTINCT + col1 * + + col0 FROM tab0
----
1215
1827
97

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4434
SELECT ALL - COUNT( * ) DIV COUNT( DISTINCT 96 ) * + SUM( + col1 ) FROM tab2
----
-585

skipif mysql # not compatible
query I rowsort label-4434
SELECT ALL - COUNT ( * ) / COUNT ( DISTINCT 96 ) * + SUM ( + col1 ) FROM tab2
----
-585

query I rowsort
SELECT - 60 + + col1 FROM tab2
----
-9
17
7

onlyif mysql # aggregate syntax: 
query I rowsort label-4436
SELECT ALL COUNT( * ) + + 93 col0 FROM tab1
----
96

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4436
SELECT ALL COUNT ( * ) + + 93 col0 FROM tab1
----
96

query I rowsort
SELECT + 27 + 98 AS col1 FROM tab2 cor0
----
125
125
125

query I rowsort
SELECT DISTINCT - col2 + + + col1 FROM tab1 AS cor0
----
-21
-54
-82

onlyif mysql # aggregate syntax: 
query I rowsort label-4439
SELECT ALL COUNT( * ) + - - 88 AS col2 FROM tab0 cor0
----
91

skipif mysql # not compatible
query I rowsort label-4439
SELECT ALL COUNT ( * ) + - - 88 AS col2 FROM tab0 cor0
----
91

query I rowsort
SELECT 67 FROM tab1 cor0 WHERE ( ( 58 IS NULL ) )
----

query I rowsort
SELECT ALL - col2 + - + col0 AS col2 FROM tab0
----
-196
-62
-97

query I rowsort
SELECT col0 * + - col0 FROM tab2
----
-2116
-4096
-5625

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT + col1 + + + col1 * - - col0 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4444
SELECT col2 - col0 DIV - col1 AS col1 FROM tab0
----
14
196
47

skipif mysql # not compatible
query I rowsort label-4444
SELECT col2 - col0 / - col1 AS col1 FROM tab0
----
14
196
47

onlyif mysql # aggregate syntax: 
query I rowsort label-4445
SELECT - COUNT( - - col1 ) FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-4445
SELECT - COUNT ( - - col1 ) FROM tab0 AS cor0
----
-3

query I rowsort
SELECT ALL + + col1 AS col0 FROM tab2 AS cor0 WHERE NOT + ( 83 ) >= NULL
----

query I rowsort
SELECT ALL - 70 AS col1 FROM tab2 AS cor0 WHERE NOT NULL IS NOT NULL
----
-70
-70
-70

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( NULL ) <> + ( col2 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4449
SELECT ALL + - CAST( + col0 AS SIGNED ) col1 FROM tab2 cor0
----
-46
-64
-75

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4449
SELECT ALL + - CAST ( + col0 AS INTEGER ) col1 FROM tab2 cor0
----
-46
-64
-75

query I rowsort
SELECT ALL + - 49 AS col0 FROM tab1 AS cor0
----
-49
-49
-49

query II rowsort
SELECT - col0, + 35 AS col0 FROM tab2
----
-46
35
-64
35
-75
35

onlyif mysql # aggregate syntax: 
query I rowsort label-4452
SELECT COUNT( + 50 ) AS col1 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-4452
SELECT COUNT ( + 50 ) AS col1 FROM tab0
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-4453
SELECT ALL - COUNT( * ) * 40 FROM tab2
----
-120

skipif mysql # not compatible
query I rowsort label-4453
SELECT ALL - COUNT ( * ) * 40 FROM tab2
----
-120

query III rowsort
SELECT * FROM tab1 WHERE NOT + + 3 NOT BETWEEN NULL AND NULL
----

query III rowsort
SELECT ALL * FROM tab2 WHERE ( + col2 IS NOT NULL )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE - 68 BETWEEN col1 AND + 77
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4457
SELECT ALL + SUM( + col1 ) FROM tab2 AS cor0
----
195

skipif mysql # not compatible
query I rowsort label-4457
SELECT ALL + SUM ( + col1 ) FROM tab2 AS cor0
----
195

onlyif mysql # DIV for integer division: 
query II rowsort label-4458
SELECT + col1 DIV + 62 - - + col2 AS col0, - 79 AS col0 FROM tab1 AS cor0
----
59
-79
68
-79
96
-79

skipif mysql # not compatible
query II rowsort label-4458
SELECT + col1 / + 62 - - + col2 AS col0, - 79 AS col0 FROM tab1 AS cor0
----
59
-79
68
-79
96
-79

onlyif mysql # DIV for integer division: 
query I rowsort label-4459
SELECT DISTINCT + col1 * col0 DIV - 17 AS col0 FROM tab2 AS cor0
----
-138
-289
-295

skipif mysql # not compatible
query I rowsort label-4459
SELECT DISTINCT + col1 * col0 / - 17 AS col0 FROM tab2 AS cor0
----
-138
-289
-295

onlyif mysql # aggregate syntax: 
query I rowsort label-4460
SELECT DISTINCT - COUNT( * ) + + COUNT( * ) FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-4460
SELECT DISTINCT - COUNT ( * ) + + COUNT ( * ) FROM tab0 AS cor0
----
0

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE 71 / + + ( - col0 ) IS NULL
----

query III rowsort
SELECT DISTINCT - col0, - 71 * - - 49 * + + col2 AS col1, + ( + col1 ) * col0 + col2 AS col1 FROM tab2 AS cor0
----
9 values hashing to 6e7efe95a54bd2862baa586793d4e89f

onlyif mysql # aggregate syntax: 
query I rowsort label-4463
SELECT DISTINCT + COUNT( * ) AS col0 FROM tab0 AS cor0 WHERE NOT NULL IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-4463
SELECT DISTINCT + COUNT ( * ) AS col0 FROM tab0 AS cor0 WHERE NOT NULL IS NULL
----
0

query I rowsort
SELECT DISTINCT - 50 FROM tab1 AS cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT DISTINCT + col1 * - 45 AS col2 FROM tab0 AS cor0
----
-3645
-45
-945

query I rowsort
SELECT - col1 * - 18 * 45 FROM tab0
----
17010
65610
810

onlyif mysql # aggregate syntax: 
query I rowsort label-4467
SELECT DISTINCT COUNT( * ) * - COUNT( * ) * - + 92 FROM tab0
----
828

skipif mysql # not compatible
query I rowsort label-4467
SELECT DISTINCT COUNT ( * ) * - COUNT ( * ) * - + 92 FROM tab0
----
828

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4468
SELECT - CAST( NULL AS SIGNED ) * AVG ( DISTINCT col1 ) * + + 51 AS col1 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-4468
SELECT - CAST ( NULL AS INTEGER ) * AVG ( DISTINCT col1 ) * + + 51 AS col1 FROM tab0
----
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + 27 - + - col0 col1 FROM tab0
----
114
124
42

query I rowsort
SELECT ( ( + 91 ) ) FROM tab2
----
91
91
91

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - 60 + - - 40 * + col1 * + col0 + - col0 * - 85 * - 34 * + col1 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4472
SELECT - col1 DIV - col2 - - + col0 * - + 80 DIV 40 * - 25 FROM tab0 AS cor0
----
4352
4850
751

skipif mysql # not compatible
query I rowsort label-4472
SELECT - col1 / - col2 - - + col0 * - + 80 / 40 * - 25 FROM tab0 AS cor0
----
4352
4850
751

onlyif mysql # DIV for integer division: 
query I rowsort label-4473
SELECT DISTINCT - - 76 - col2 DIV - col2 AS col2 FROM tab1 AS cor0
----
77

skipif mysql # not compatible
query I rowsort label-4473
SELECT DISTINCT - - 76 - col2 / - col2 AS col2 FROM tab1 AS cor0
----
77

query I rowsort
SELECT ALL 36 AS col1 FROM tab0
----
36
36
36

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4475
SELECT DISTINCT COUNT( ALL - - CAST( NULL AS SIGNED ) ) col0 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4475
SELECT DISTINCT COUNT ( ALL - - CAST ( NULL AS INTEGER ) ) col0 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----
0

query I rowsort
SELECT - 90 * - col2 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT 85 AS col0 FROM tab2 AS cor0 WHERE NOT ( - col0 ) * 96 / - + ( col2 ) * + ( + - col1 ) = NULL
----

query I rowsort
SELECT DISTINCT 66 * + col1 FROM tab1 AS cor0
----
3102
330
924

onlyif mysql # aggregate syntax: 
query I rowsort label-4479
SELECT - - COUNT( * ) * 92 FROM tab1 AS cor0
----
276

skipif mysql # not compatible
query I rowsort label-4479
SELECT - - COUNT ( * ) * 92 FROM tab1 AS cor0
----
276

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NULL = - 21
----

query I rowsort
SELECT - 74 * + + col0 * + col0 * 93 FROM tab2
----
-14562312
-28188672
-38711250

query III rowsort
SELECT ALL * FROM tab1 WHERE + col0 + - col2 / + + col1 = col2
----

query III rowsort
SELECT * FROM tab0 WHERE NOT 54 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # DIV for integer division: 
query I rowsort label-4484
SELECT ALL - 26 DIV 49 FROM tab0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4484
SELECT ALL - 26 / 49 FROM tab0
----
0
0
0

query I rowsort
SELECT - + 4 AS col1 FROM tab0 WHERE NOT NULL IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4486
SELECT ALL - 76 DIV 14 AS col2 FROM tab2
----
-5
-5
-5

skipif mysql # not compatible
query I rowsort label-4486
SELECT ALL - 76 / 14 AS col2 FROM tab2
----
-5
-5
-5

onlyif mysql # aggregate syntax: 
query I rowsort label-4487
SELECT DISTINCT COUNT( + 95 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-4487
SELECT DISTINCT COUNT ( + 95 ) FROM tab2
----
3

query I rowsort
SELECT + - 50 AS col0 FROM tab0 AS cor0
----
-50
-50
-50

query I rowsort
SELECT ALL + 9 FROM tab1 cor0 WHERE - col2 IS NOT NULL
----
9
9
9

onlyif mysql # aggregate syntax: 
query I rowsort label-4490
SELECT DISTINCT MIN( DISTINCT - 83 ) FROM tab2 AS cor0
----
-83

skipif mysql # not compatible
query I rowsort label-4490
SELECT DISTINCT MIN ( DISTINCT - 83 ) FROM tab2 AS cor0
----
-83

onlyif mysql # aggregate syntax: 
query I rowsort label-4491
SELECT + ( - COUNT( * ) ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

skipif mysql # not compatible
query I rowsort label-4491
SELECT + ( - COUNT ( * ) ) AS col2 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

query II rowsort
SELECT ALL 21, + col0 FROM tab1
----
21
51
21
85
21
91

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - 73 col1 FROM tab0 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to 84ab9db5468b4a1781bd8d5c8e0e77fc

query I rowsort
SELECT DISTINCT col0 + 44 FROM tab2 AS cor0
----
108
119
90

query I rowsort
SELECT DISTINCT + 36 + - 15 + + col2 * 36 AS col2 FROM tab1 AS cor0
----
2145
2469
3477

query I rowsort
SELECT ALL - 86 + + col0 + + 51 * + - col2 * col1 FROM tab2 AS cor0
----
-157102
-198197
-59863

query I rowsort
SELECT DISTINCT col1 + - 84 - + col0 * + - col1 FROM tab1 AS cor0
----
346
4240
644

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4498
SELECT - + CAST( NULL AS SIGNED ) * + - 18 AS col2 FROM tab1 cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4498
SELECT - + CAST ( NULL AS INTEGER ) * + - 18 AS col2 FROM tab1 cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4499
SELECT DISTINCT + COUNT( * ) + - 41 * COUNT( * ) AS col2 FROM tab0 AS cor0
----
-120

skipif mysql # not compatible
query I rowsort label-4499
SELECT DISTINCT + COUNT ( * ) + - 41 * COUNT ( * ) AS col2 FROM tab0 AS cor0
----
-120

query I rowsort
SELECT DISTINCT - ( + - 16 ) * 44 + col1 FROM tab0 AS cor0
----
705
725
785

query I rowsort
SELECT - col2 + + + 10 * + col2 AS col1 FROM tab1
----
531
612
864

query II rowsort
SELECT DISTINCT col2 AS col2, - col0 FROM tab0
----
10
-87
47
-15
99
-97

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4503
SELECT DISTINCT + 57 / + CAST( NULL AS SIGNED ) FROM tab2, tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4503
SELECT DISTINCT + 57 / + CAST ( NULL AS INTEGER ) FROM tab2, tab2 AS cor0
----
NULL

query I rowsort
SELECT + col2 + - 97 FROM tab0
----
-50
-87
2

onlyif mysql # aggregate syntax: 
query I rowsort label-4505
SELECT SUM( + 27 ) * + - COUNT( * ) AS col2 FROM tab0 cor0
----
-243

skipif mysql # not compatible
query I rowsort label-4505
SELECT SUM ( + 27 ) * + - COUNT ( * ) AS col2 FROM tab0 cor0
----
-243

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4506
SELECT ALL - COUNT( + col0 ) * - + 44 + 92 + CAST( 71 AS SIGNED ) col0 FROM tab2 AS cor0
----
295

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4506
SELECT ALL - COUNT ( + col0 ) * - + 44 + 92 + CAST ( 71 AS INTEGER ) col0 FROM tab2 AS cor0
----
295

onlyif mysql # aggregate syntax: 
query I rowsort label-4507
SELECT DISTINCT - MIN( DISTINCT + col0 ) * + MIN( + col2 ) AS col0 FROM tab0 AS cor0
----
-150

skipif mysql # not compatible
query I rowsort label-4507
SELECT DISTINCT - MIN ( DISTINCT + col0 ) * + MIN ( + col2 ) AS col0 FROM tab0 AS cor0
----
-150

onlyif mysql # DIV for integer division: 
query II rowsort label-4508
SELECT DISTINCT col1 DIV 27 AS col0, + col2 col0 FROM tab1
----
0
59
0
96
1
68

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4508
SELECT DISTINCT col1 / 27 AS col0, + col2 col0 FROM tab1
----
0
59
0
96
1
68

onlyif mysql # aggregate syntax: 
query I rowsort label-4509
SELECT DISTINCT + COUNT( * ) FROM tab0 cor0 CROSS JOIN tab0 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-4509
SELECT DISTINCT + COUNT ( * ) FROM tab0 cor0 CROSS JOIN tab0 AS cor1
----
9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-4510
SELECT DISTINCT CAST( + - ( - - 41 ) AS SIGNED ) AS col0, COUNT( * ) AS col1 FROM tab2
----
-41
3

skipif mysql # not compatible
query II rowsort label-4510
SELECT DISTINCT CAST ( + - ( - - 41 ) AS INTEGER ) AS col0, COUNT ( * ) AS col1 FROM tab2
----
-41
3

query I rowsort
SELECT DISTINCT - col0 * - 78 FROM tab2
----
3588
4992
5850

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT + col2 <> NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4513
SELECT DISTINCT + ( - MAX( - 94 ) ) FROM tab1 cor0
----
94

skipif mysql # not compatible
query I rowsort label-4513
SELECT DISTINCT + ( - MAX ( - 94 ) ) FROM tab1 cor0
----
94

query I rowsort
SELECT DISTINCT - col0 * ( + col2 ) + + col2 FROM tab0 AS cor0
----
-658
-860
-9504

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col0 + - - 9 col1 FROM tab1 AS cor0 WHERE NOT ( NULL ) <= col2
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NOT - col1 IS NULL )
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT ( + 69 IS NOT NULL )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4518
SELECT + ( + COUNT( * ) ) DIV + 16 * + MIN( ALL col1 ) FROM tab2 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-4518
SELECT + ( + COUNT ( * ) ) / + 16 * + MIN ( ALL col1 ) FROM tab2 AS cor0
----
0

query II rowsort
SELECT DISTINCT + 6 AS col1, col2 FROM tab0
----
6
10
6
47
6
99

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4520
SELECT - CAST( NULL AS SIGNED ) * + col2 AS col2 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4520
SELECT - CAST ( NULL AS INTEGER ) * + col2 AS col2 FROM tab0
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-4521
SELECT - 25 DIV - col0 FROM tab2
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4521
SELECT - 25 / - col0 FROM tab2
----
0
0
0

query I rowsort
SELECT col0 FROM tab0 WHERE NOT + col1 <> ( - - 9 + + + col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4523
SELECT DISTINCT - COUNT( * ) + + - COUNT( * ) + + + COUNT( * ) AS col2 FROM tab0 WHERE NULL <= NULL
----
0

skipif mysql # not compatible
query I rowsort label-4523
SELECT DISTINCT - COUNT ( * ) + + - COUNT ( * ) + + + COUNT ( * ) AS col2 FROM tab0 WHERE NULL <= NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4524
SELECT ALL + 77 + + MIN( + + col1 ) AS col2 FROM tab0
----
78

skipif mysql # not compatible
query I rowsort label-4524
SELECT ALL + 77 + + MIN ( + + col1 ) AS col2 FROM tab0
----
78

query I rowsort
SELECT DISTINCT - 37 * + 17 + col2 AS col0 FROM tab2
----
-571
-589
-606

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4526
SELECT DISTINCT + ( - - col1 ) + + + CAST( NULL AS SIGNED ) AS col0 FROM tab2 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4526
SELECT DISTINCT + ( - - col1 ) + + + CAST ( NULL AS INTEGER ) AS col0 FROM tab2 AS cor0
----
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-4527
SELECT ALL 59 DIV - col1 + 34 * + + col1 AS col2 FROM tab2 AS cor0
----
1733
2278
2618

skipif mysql # not compatible
query I rowsort label-4527
SELECT ALL 59 / - col1 + 34 * + + col1 AS col2 FROM tab2 AS cor0
----
1733
2278
2618

query I rowsort
SELECT 44 * - 31 FROM tab2 AS cor0
----
-1364
-1364
-1364

onlyif mysql # aggregate syntax: 
query I rowsort label-4529
SELECT COUNT( * ) AS col1 FROM ( tab0 cor0 CROSS JOIN tab0 AS cor1 )
----
9

skipif mysql # not compatible
query I rowsort label-4529
SELECT COUNT ( * ) AS col1 FROM ( tab0 cor0 CROSS JOIN tab0 AS cor1 )
----
9

query I rowsort
SELECT ALL + 89 + + 44 FROM tab2 AS cor0
----
133
133
133

query II rowsort
SELECT + col1 + col1, - 19 AS col1 FROM tab1 AS cor0
----
10
-19
28
-19
94
-19

onlyif mysql # aggregate syntax: 
query I rowsort label-4532
SELECT SUM( DISTINCT - col1 ) FROM tab1 AS cor0
----
-66

skipif mysql # not compatible
query I rowsort label-4532
SELECT SUM ( DISTINCT - col1 ) FROM tab1 AS cor0
----
-66

query I rowsort
SELECT ALL col2 AS col0 FROM tab1 AS cor0 WHERE col1 IS NOT NULL
----
59
68
96

query I rowsort
SELECT ALL - 41 - col1 FROM tab0 AS cor0
----
-122
-42
-62

onlyif mysql # aggregate syntax: 
query I rowsort label-4535
SELECT ALL + COUNT( ALL - 47 ) - 72 * + ( - ( + ( - 70 ) ) ) FROM tab2
----
-5037

skipif mysql # not compatible
query I rowsort label-4535
SELECT ALL + COUNT ( ALL - 47 ) - 72 * + ( - ( + ( - 70 ) ) ) FROM tab2
----
-5037

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4536
SELECT DISTINCT MIN( - CAST( + ( + + col1 ) AS SIGNED ) ) AS col2 FROM tab1
----
-47

skipif mysql # not compatible
query I rowsort label-4536
SELECT DISTINCT MIN ( - CAST ( + ( + + col1 ) AS INTEGER ) ) AS col2 FROM tab1
----
-47

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 70 col2 FROM tab2 AS cor0
----
70
70
70

query I rowsort
SELECT - 8 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to 47f43f23dcd23959d97d8e3b0aab692e

onlyif mysql # aggregate syntax: 
query I rowsort label-4539
SELECT SUM( DISTINCT - + ( + 94 ) ) AS col0 FROM tab1
----
-94

skipif mysql # not compatible
query I rowsort label-4539
SELECT SUM ( DISTINCT - + ( + 94 ) ) AS col0 FROM tab1
----
-94

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4540
SELECT ALL CAST( - - col2 AS SIGNED ) FROM tab0 AS cor0
----
10
47
99

skipif mysql # not compatible
query I rowsort label-4540
SELECT ALL CAST ( - - col2 AS INTEGER ) FROM tab0 AS cor0
----
10
47
99

query I rowsort
SELECT ALL - 45 * - - 44 FROM tab2 AS cor0
----
-1980
-1980
-1980

onlyif mysql # aggregate syntax: 
query I rowsort label-4542
SELECT + MAX( - ( + col2 ) ) FROM tab1 AS cor0
----
-59

skipif mysql # not compatible
query I rowsort label-4542
SELECT + MAX ( - ( + col2 ) ) FROM tab1 AS cor0
----
-59

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT NULL NOT IN ( + col1 )
----

query I rowsort
SELECT ALL - + col1 * + + col0 AS col1 FROM tab1 AS cor0
----
-425
-4277
-714

query I rowsort
SELECT + col0 * + + col0 * col2 FROM tab0 AS cor0
----
10575
75690
931491

onlyif mysql # aggregate syntax: 
query II rowsort label-4546
SELECT ALL + 76 * + + 45 + - SUM( - - 71 ) AS col2, + 49 AS col2 FROM tab1 AS cor0
----
3207
49

skipif mysql # not compatible
query II rowsort label-4546
SELECT ALL + 76 * + + 45 + - SUM ( - - 71 ) AS col2, + 49 AS col2 FROM tab1 AS cor0
----
3207
49

query I rowsort
SELECT - 12 * + col0 + + 58 - 54 FROM tab2 AS cor0 WHERE NOT col2 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4548
SELECT + MIN( DISTINCT - + col1 ) AS col1 FROM tab2 cor0
----
-77

skipif mysql # not compatible
query I rowsort label-4548
SELECT + MIN ( DISTINCT - + col1 ) AS col1 FROM tab2 cor0
----
-77

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT col2 NOT BETWEEN + col1 AND ( - col2 ) * - 60
----
97
1
99

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4550
SELECT - 76 DIV SUM( - col1 ) FROM tab1 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-4550
SELECT - 76 / SUM ( - col1 ) FROM tab1 AS cor0
----
1

query I rowsort
SELECT DISTINCT + col1 FROM tab1 AS cor0 WHERE - 54 + col1 IS NOT NULL
----
14
47
5

query I rowsort
SELECT col0 + 23 AS col2 FROM tab1
----
108
114
74

query I rowsort
SELECT + + 81 + col1 + - - col1 * col2 * ( + + col2 ) AS col1 FROM tab2 AS cor0
----
123358
225536
27111

query IIIIII rowsort
SELECT ALL * FROM tab2 cor0 CROSS JOIN tab2 AS cor1 WHERE NOT + 66 * - + 2 <= NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-4555
SELECT ALL - 37 * 25 * - - COUNT( * ) AS col2, + COUNT( ALL + 56 ) FROM tab0
----
-2775
3

skipif mysql # not compatible
query II rowsort label-4555
SELECT ALL - 37 * 25 * - - COUNT ( * ) AS col2, + COUNT ( ALL + 56 ) FROM tab0
----
-2775
3

query I rowsort
SELECT + col2 * - 44 FROM tab1
----
-2596
-2992
-4224

query I rowsort
SELECT col0 - - col1 AS col0 FROM tab1 cor0
----
138
65
90

query I rowsort
SELECT col0 - + col0 + - 30 AS col0 FROM tab1 AS cor0
----
-30
-30
-30

query I rowsort
SELECT DISTINCT - col2 - + 7 + + - col1 * - col2 AS col2 FROM tab2 AS cor0
----
1143
3033
3821

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE 47 * + + col2 * - 28 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4561
SELECT ALL + 73 - + COUNT( * ) AS col2 FROM tab1 cor0
----
70

skipif mysql # not compatible
query I rowsort label-4561
SELECT ALL + 73 - + COUNT ( * ) AS col2 FROM tab1 cor0
----
70

onlyif mysql # aggregate syntax: 
query I rowsort label-4562
SELECT DISTINCT - COUNT( * ) - SUM( 3 ) FROM tab0
----
-12

skipif mysql # not compatible
query I rowsort label-4562
SELECT DISTINCT - COUNT ( * ) - SUM ( 3 ) FROM tab0
----
-12

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE + col1 NOT BETWEEN NULL AND + 44
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT 71 + col2 AS col1 FROM tab0
----
118
170
81

query III rowsort
SELECT * FROM tab1 WHERE NULL BETWEEN - 38 AND - - col1
----

query II rowsort
SELECT - ( col0 ), col1 AS col0 FROM tab1
----
-51
14
-85
5
-91
47

onlyif mysql # aggregate syntax: 
query I rowsort label-4567
SELECT ALL MIN( DISTINCT - 36 ) FROM tab1
----
-36

skipif mysql # not compatible
query I rowsort label-4567
SELECT ALL MIN ( DISTINCT - 36 ) FROM tab1
----
-36

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT 29 BETWEEN NULL AND - + col1 - + 5
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-4569
SELECT DISTINCT - COUNT( DISTINCT + + CAST( NULL AS SIGNED ) ) AS col0, COUNT( * ) AS col0 FROM tab2 AS cor0
----
0
3

skipif mysql # not compatible
query II rowsort label-4569
SELECT DISTINCT - COUNT ( DISTINCT + + CAST ( NULL AS INTEGER ) ) AS col0, COUNT ( * ) AS col0 FROM tab2 AS cor0
----
0
3

query II rowsort
SELECT 83, col0 AS col0 FROM tab2
----
83
46
83
64
83
75

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4571
SELECT - 8 - CAST( NULL AS SIGNED ) * SUM( 84 ) FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

skipif mysql # not compatible
query I rowsort label-4571
SELECT - 8 - CAST ( NULL AS INTEGER ) * SUM ( 84 ) FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4572
SELECT ALL - COUNT( * ) * - + 97 AS col2 FROM tab0 AS cor0
----
291

skipif mysql # not compatible
query I rowsort label-4572
SELECT ALL - COUNT ( * ) * - + 97 AS col2 FROM tab0 AS cor0
----
291

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4573
SELECT * FROM tab2 AS cor0 WHERE NOT CAST( - 52 AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-4573
SELECT * FROM tab2 AS cor0 WHERE NOT CAST ( - 52 AS INTEGER ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4574
SELECT DISTINCT 60 + COUNT( * ) AS col0 FROM tab2 AS cor0
----
63

skipif mysql # not compatible
query I rowsort label-4574
SELECT DISTINCT 60 + COUNT ( * ) AS col0 FROM tab2 AS cor0
----
63

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - + 65 col2 FROM tab2 AS cor0
----
-65

query I rowsort
SELECT 11 + + col2 FROM tab1 cor0
----
107
70
79

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4577
SELECT CAST( NULL AS SIGNED ) + + COUNT( * ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4577
SELECT CAST ( NULL AS INTEGER ) + + COUNT ( * ) FROM tab1 AS cor0
----
NULL

query I rowsort
SELECT DISTINCT - - col2 AS col1 FROM tab0 AS cor0 WHERE NOT col2 > + col2
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-4579
SELECT DISTINCT 77 * + + COUNT( * ) AS col2 FROM tab1
----
231

skipif mysql # not compatible
query I rowsort label-4579
SELECT DISTINCT 77 * + + COUNT ( * ) AS col2 FROM tab1
----
231

query III rowsort
SELECT * FROM tab1 WHERE NULL <= - - col2
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4581
SELECT col0 DIV - ( - col0 ) FROM tab2
----
1
1
1

skipif mysql # not compatible
query I rowsort label-4581
SELECT col0 / - ( - col0 ) FROM tab2
----
1
1
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4582
SELECT DISTINCT col1 * + CAST( NULL AS SIGNED ) * col0 col0 FROM tab1
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4582
SELECT DISTINCT col1 * + CAST ( NULL AS INTEGER ) * col0 col0 FROM tab1
----
NULL

query I rowsort
SELECT DISTINCT + col0 + + - col0 * - 64 AS col1 FROM tab0
----
5655
6305
975

query III rowsort
SELECT * FROM tab1 WHERE - ( + 99 ) IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT - col1 + 20 * + - col2 AS col1 FROM tab2 AS cor0
----
-1227
-511
-877

onlyif mysql # aggregate syntax: 
query I rowsort label-4586
SELECT + ( + SUM( DISTINCT - - col0 ) ) FROM tab2 AS cor0
----
185

skipif mysql # not compatible
query I rowsort label-4586
SELECT + ( + SUM ( DISTINCT - - col0 ) ) FROM tab2 AS cor0
----
185

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4587
SELECT ALL - - ( - ( + AVG ( ALL + col2 ) ) ) * - - 59 * + CAST( + + 15 AS SIGNED ) * COUNT( * ) col1 FROM tab0 AS cor0 WHERE - col2 + + col2 > NULL
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4587
SELECT ALL - - ( - ( + AVG ( ALL + col2 ) ) ) * - - 59 * + CAST ( + + 15 AS INTEGER ) * COUNT ( * ) col1 FROM tab0 AS cor0 WHERE - col2 + + col2 > NULL
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4588
SELECT DISTINCT MAX( ALL - ( + - col0 ) ) * + - 17 FROM tab1 AS cor0
----
-1547

skipif mysql # not compatible
query I rowsort label-4588
SELECT DISTINCT MAX ( ALL - ( + - col0 ) ) * + - 17 FROM tab1 AS cor0
----
-1547

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL NOT BETWEEN ( col2 ) AND col0
----

query I rowsort
SELECT 82 FROM tab2 AS cor0 CROSS JOIN tab1 cor1 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT - col2 AS col2 FROM tab2 WHERE col0 IS NOT NULL
----
-23
-40
-58

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4592
SELECT DISTINCT - col2 + 6 AS col2, 91 - + ( + CAST( + col2 AS SIGNED ) ) * - CAST( NULL AS SIGNED ) AS col0 FROM tab2 AS cor0
----
-17
NULL
-34
NULL
-52
NULL

skipif mysql # not compatible
query II rowsort label-4592
SELECT DISTINCT - col2 + 6 AS col2, 91 - + ( + CAST ( + col2 AS INTEGER ) ) * - CAST ( NULL AS INTEGER ) AS col0 FROM tab2 AS cor0
----
-17
NULL
-34
NULL
-52
NULL

query I rowsort
SELECT - + col2 FROM tab2 AS cor0 WHERE - col1 * + - 27 + ( col0 ) IS NOT NULL
----
-23
-40
-58

onlyif mysql # DIV for integer division: 
query I rowsort label-4594
SELECT DISTINCT col1 DIV + 24 FROM tab1 AS cor0
----
0
1

skipif mysql # not compatible
query I rowsort label-4594
SELECT DISTINCT col1 / + 24 FROM tab1 AS cor0
----
0
1

query I rowsort
SELECT DISTINCT - 40 + 9 + + - col2 * - 69 AS col1 FROM tab0 AS cor0
----
3212
659
6800

query I rowsort
SELECT ALL col1 - + col2 AS col0 FROM tab0 AS cor0
----
-98
11
34

query I rowsort
SELECT ALL + 57 AS col0 FROM tab2 cor0 WHERE ( NULL ) < 72
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4598
SELECT DISTINCT - + col0 - + + col0 DIV - 67 + col2 AS col2 FROM tab2 AS cor0
----
-16
-23
-24

skipif mysql # not compatible
query I rowsort label-4598
SELECT DISTINCT - + col0 - + + col0 / - 67 + col2 AS col2 FROM tab2 AS cor0
----
-16
-23
-24

query I rowsort
SELECT col1 * col2 + - + col2 - - + 17 FROM tab2 AS cor0
----
1167
3057
3845

query I rowsort
SELECT 72 * col1 - 84 + col0 - + col0 FROM tab0 AS cor0
----
-12
1428
5748

query III rowsort
SELECT ALL * FROM tab2 WHERE ( - 5 ) BETWEEN - col0 AND NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 * - + 48 col0 FROM tab2
----
-1104
-1920
-2784

query I rowsort
SELECT DISTINCT - col0 FROM tab0 AS cor0 WHERE NOT col1 < col0
----
-15

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE NOT NULL >= NULL
----

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT 92 + - col0 IN ( - 8 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( + col0 * col1 ) IS NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4607
SELECT DISTINCT 18 + - col2 DIV col1 AS col0 FROM tab2
----
18

skipif mysql # not compatible
query I rowsort label-4607
SELECT DISTINCT 18 + - col2 / col1 AS col0 FROM tab2
----
18

query I rowsort
SELECT - ( - 82 ) FROM tab0
----
82
82
82

query III rowsort
SELECT * FROM tab2 WHERE col2 - col2 >= ( NULL )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4610
SELECT ( col1 ) FROM tab0 WHERE NOT 59 IN ( CAST( + ( - 43 ) AS SIGNED ) )
----
1
21
81

skipif mysql # not compatible
query I rowsort label-4610
SELECT ( col1 ) FROM tab0 WHERE NOT 59 IN ( CAST ( + ( - 43 ) AS INTEGER ) )
----
1
21
81

query I rowsort
SELECT ALL - col0 + 67 FROM tab0
----
-20
-30
52

onlyif mysql # aggregate syntax: 
query I rowsort label-4612
SELECT MIN( ALL col0 ) AS col0 FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-4612
SELECT MIN ( ALL col0 ) AS col0 FROM tab1
----
51

query III rowsort
SELECT * FROM tab1 WHERE ( col0 + - col2 * 63 ) IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4614
SELECT - COUNT( * ) + CAST( NULL AS SIGNED ) FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-4614
SELECT - COUNT ( * ) + CAST ( NULL AS INTEGER ) FROM tab0
----
NULL

query III rowsort
SELECT * FROM tab2 WHERE NOT ( - col0 ) IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT + 84 / - col2 - col1 <= - col1 + 18
----

query I rowsort
SELECT DISTINCT + col2 AS col2 FROM tab1 WHERE NOT - 64 <= ( + 13 + 21 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4618
SELECT ALL + COUNT( * ) + + 71 FROM tab1
----
74

skipif mysql # not compatible
query I rowsort label-4618
SELECT ALL + COUNT ( * ) + + 71 FROM tab1
----
74

query I rowsort
SELECT col0 * 82 + - col1 AS col1 FROM tab2 WHERE NOT ( 18 * + ( ( col1 ) ) ) IS NOT NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 57 * 54 col1 FROM tab2
----
3078

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4621
SELECT ALL CAST( 81 AS SIGNED ) AS col1 FROM tab1 WHERE NOT ( - col2 * col1 ) <> col0
----

skipif mysql # not compatible
query I rowsort label-4621
SELECT ALL CAST ( 81 AS INTEGER ) AS col1 FROM tab1 WHERE NOT ( - col2 * col1 ) <> col0
----

query I rowsort
SELECT col0 + 22 AS col1 FROM tab2
----
68
86
97

onlyif mysql # aggregate syntax: 
query I rowsort label-4623
SELECT ALL MAX( DISTINCT + 87 ) AS col1 FROM tab2
----
87

skipif mysql # not compatible
query I rowsort label-4623
SELECT ALL MAX ( DISTINCT + 87 ) AS col1 FROM tab2
----
87

query I rowsort
SELECT - col0 + 39 * + col1 FROM tab1
----
110
1742
495

onlyif mysql # aggregate syntax: 
query I rowsort label-4625
SELECT - 81 * COUNT( * ) FROM tab0
----
-243

skipif mysql # not compatible
query I rowsort label-4625
SELECT - 81 * COUNT ( * ) FROM tab0
----
-243

onlyif mysql # aggregate syntax: 
query I rowsort label-4626
SELECT DISTINCT + COUNT( * ) - ( - 76 + MAX( - col1 - 0 ) ) FROM tab2
----
130

skipif mysql # not compatible
query I rowsort label-4626
SELECT DISTINCT + COUNT ( * ) - ( - 76 + MAX ( - col1 - 0 ) ) FROM tab2
----
130

query I rowsort
SELECT 28 AS col1 FROM tab0 WHERE NOT NULL <= col2 * col2 + - ( col1 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4628
SELECT * FROM tab1 WHERE ( - CAST( + col0 AS SIGNED ) ) <> + col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-4628
SELECT * FROM tab1 WHERE ( - CAST ( + col0 AS INTEGER ) ) <> + col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-4629
SELECT + COUNT( * ) + COUNT( * ) FROM tab2 WHERE NOT NULL = NULL
----
0

skipif mysql # not compatible
query I rowsort label-4629
SELECT + COUNT ( * ) + COUNT ( * ) FROM tab2 WHERE NOT NULL = NULL
----
0

query I rowsort
SELECT col0 * - ( - col2 ) AS col2 FROM tab1
----
4896
5015
6188

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4631
SELECT + CAST( + col0 AS SIGNED ) * + 5 AS col2 FROM tab0
----
435
485
75

skipif mysql # not compatible
query I rowsort label-4631
SELECT + CAST ( + col0 AS INTEGER ) * + 5 AS col2 FROM tab0
----
435
485
75

onlyif mysql # DIV for integer division: 
query I rowsort label-4632
SELECT DISTINCT col1 DIV - 62 + + col0 AS col0 FROM tab2 AS cor0
----
46
63
74

skipif mysql # not compatible
query I rowsort label-4632
SELECT DISTINCT col1 / - 62 + + col0 AS col0 FROM tab2 AS cor0
----
46
63
74

query III rowsort
SELECT * FROM tab0 WHERE col1 <= ( ( col2 ) )
----
97
1
99

query I rowsort
SELECT ALL - 44 * col2 AS col1 FROM tab1
----
-2596
-2992
-4224

query I rowsort
SELECT ALL + col2 + - col1 * 19 FROM tab0 AS cor0
----
-1492
-389
80

onlyif mysql # DIV for integer division: 
query I rowsort label-4636
SELECT 12 DIV col0 + 80 * 72 AS col2 FROM tab2 cor0
----
5760
5760
5760

skipif mysql # not compatible
query I rowsort label-4636
SELECT 12 / col0 + 80 * 72 AS col2 FROM tab2 cor0
----
5760
5760
5760

query I rowsort
SELECT DISTINCT + 63 + col2 FROM tab2 AS cor0
----
103
121
86

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT ( 83 + 95 ) IS NOT NULL
----

query I rowsort
SELECT DISTINCT + ( 76 ) AS col1 FROM tab2 AS cor0
----
76

query I rowsort
SELECT DISTINCT ( + 11 ) FROM tab2 cor0
----
11

onlyif mysql # aggregate syntax: 
query I rowsort label-4641
SELECT ALL - COUNT( * ) * 50 FROM tab1 AS cor0
----
-150

skipif mysql # not compatible
query I rowsort label-4641
SELECT ALL - COUNT ( * ) * 50 FROM tab1 AS cor0
----
-150

onlyif mysql # aggregate syntax: 
query I rowsort label-4642
SELECT ALL COUNT( * ) AS col2 FROM tab0 AS cor0 WHERE ( + col2 ) IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-4642
SELECT ALL COUNT ( * ) AS col2 FROM tab0 AS cor0 WHERE ( + col2 ) IS NOT NULL
----
3

query I rowsort
SELECT ( col0 ) AS col2 FROM tab0 WHERE NOT ( NULL ) = ( + col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4644
SELECT ALL + COUNT( - - col2 ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-4644
SELECT ALL + COUNT ( - - col2 ) FROM tab2
----
3

onlyif mysql # aggregate syntax: 
query I rowsort label-4645
SELECT COUNT( + col0 ) AS col1 FROM tab0
----
3

skipif mysql # not compatible
query I rowsort label-4645
SELECT COUNT ( + col0 ) AS col1 FROM tab0
----
3

query III rowsort
SELECT ALL * FROM tab0 WHERE NULL < + 35 * + 48
----

query I rowsort
SELECT ( - - 75 ) FROM tab2
----
75
75
75

query I rowsort
SELECT - col2 + + col2 FROM tab0 WHERE NOT col0 IS NULL
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4649
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN CAST( col0 AS SIGNED ) * col1 AND ( NULL )
----

skipif mysql # not compatible
query III rowsort label-4649
SELECT DISTINCT * FROM tab1 WHERE NULL NOT BETWEEN CAST ( col0 AS INTEGER ) * col1 AND ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4650
SELECT - COUNT( * ) * + 55 FROM tab1
----
-165

skipif mysql # not compatible
query I rowsort label-4650
SELECT - COUNT ( * ) * + 55 FROM tab1
----
-165

query I rowsort
SELECT ALL col0 AS col0 FROM tab0 WHERE ( NULL ) IN ( - col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4652
SELECT - MIN( ALL col1 ) AS col0 FROM tab2
----
-51

skipif mysql # not compatible
query I rowsort label-4652
SELECT - MIN ( ALL col1 ) AS col0 FROM tab2
----
-51

query I rowsort
SELECT col0 * - - col0 FROM tab1
----
2601
7225
8281

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4654
SELECT + col1 * + 39 AS col2 FROM tab0 AS cor0 WHERE NOT + CAST( col0 AS SIGNED ) = ( NULL )
----

skipif mysql # not compatible
query I rowsort label-4654
SELECT + col1 * + 39 AS col2 FROM tab0 AS cor0 WHERE NOT + CAST ( col0 AS INTEGER ) = ( NULL )
----

query I rowsort
SELECT DISTINCT col0 * + col0 * + col0 FROM tab1 AS cor0
----
132651
614125
753571

query I rowsort
SELECT col2 * + + 84 AS col1 FROM tab0
----
3948
8316
840

onlyif mysql # aggregate syntax: 
query I rowsort label-4657
SELECT - COUNT( + col1 ) AS col1 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-4657
SELECT - COUNT ( + col1 ) AS col1 FROM tab2
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-4658
SELECT + ( - ( COUNT( * ) ) ) AS col2 FROM tab0
----
-3

skipif mysql # not compatible
query I rowsort label-4658
SELECT + ( - ( COUNT ( * ) ) ) AS col2 FROM tab0
----
-3

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE + 63 IS NULL
----

query I rowsort
SELECT ALL col2 * col1 + col1 * ( + col0 ) FROM tab2 AS cor0
----
3519
8008
8911

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4661
SELECT DISTINCT + CAST( col2 AS SIGNED ) AS col2 FROM tab0 AS cor0
----
10
47
99

skipif mysql # not compatible
query I rowsort label-4661
SELECT DISTINCT + CAST ( col2 AS INTEGER ) AS col2 FROM tab0 AS cor0
----
10
47
99

query I rowsort
SELECT - - 60 + - 15 FROM tab0 AS cor0
----
45
45
45

query I rowsort
SELECT DISTINCT col0 AS col2 FROM tab1 AS cor0 WHERE NULL BETWEEN ( NULL ) AND NULL
----

query I rowsort
SELECT ALL + - col2 + + + col2 AS col1 FROM tab1 AS cor0
----
0
0
0

query I rowsort
SELECT ALL + col0 * col0 - - 89 FROM tab0 AS cor0 WHERE ( col2 ) IS NOT NULL
----
314
7658
9498

onlyif mysql # aggregate syntax: 
query I rowsort label-4666
SELECT + + COUNT( * ) + - 8 AS col0 FROM tab2 AS cor0
----
-5

skipif mysql # not compatible
query I rowsort label-4666
SELECT + + COUNT ( * ) + - 8 AS col0 FROM tab2 AS cor0
----
-5

query III rowsort
SELECT * FROM tab2 cor0 WHERE ( col1 ) = + col0 - - 19
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4668
SELECT * FROM tab0 AS cor0 WHERE CAST( NULL AS SIGNED ) * - col2 - + col0 NOT IN ( col2 )
----

skipif mysql # not compatible
query III rowsort label-4668
SELECT * FROM tab0 AS cor0 WHERE CAST ( NULL AS INTEGER ) * - col2 - + col0 NOT IN ( col2 )
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col1 + - col0 - - 24 * + col1 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4670
SELECT DISTINCT + 91 + COUNT( * ) FROM tab0 AS cor0
----
94

skipif mysql # not compatible
query I rowsort label-4670
SELECT DISTINCT + 91 + COUNT ( * ) FROM tab0 AS cor0
----
94

query I rowsort
SELECT DISTINCT + col1 * 24 FROM tab2
----
1224
1608
1848

onlyif mysql # DIV for integer division: 
query I rowsort label-4672
SELECT ALL col1 DIV + - 43 + - col2 AS col1 FROM tab2
----
-24
-41
-59

skipif mysql # not compatible
query I rowsort label-4672
SELECT ALL col1 / + - 43 + - col2 AS col1 FROM tab2
----
-24
-41
-59

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4673
SELECT - 82 + 66 col1 FROM tab2 WHERE NULL IN ( - + CAST( NULL AS SIGNED ) + - ( col1 ) + col1 * CAST( NULL AS SIGNED ) * col1 )
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4673
SELECT - 82 + 66 col1 FROM tab2 WHERE NULL IN ( - + CAST ( NULL AS INTEGER ) + - ( col1 ) + col1 * CAST ( NULL AS INTEGER ) * col1 )
----

query I rowsort
SELECT DISTINCT - 36 AS col1 FROM tab1
----
-36

query III rowsort
SELECT * FROM tab0 WHERE + 84 NOT BETWEEN 70 / - col0 AND col2 / - 38
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT 26 * 8 * + 92 FROM tab1
----
19136
19136
19136

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4677
SELECT + COUNT( * ) * - CAST( NULL AS SIGNED ) FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-4677
SELECT + COUNT ( * ) * - CAST ( NULL AS INTEGER ) FROM tab2
----
NULL

query I rowsort
SELECT - - 46 FROM tab0 WHERE NULL IS NULL
----
46
46
46

onlyif mysql # aggregate syntax: 
query I rowsort label-4679
SELECT DISTINCT 9 + COUNT( * ) FROM tab2 WHERE ( + + 38 * 96 + col1 * - col0 ) >= - 30
----
10

skipif mysql # not compatible
query I rowsort label-4679
SELECT DISTINCT 9 + COUNT ( * ) FROM tab2 WHERE ( + + 38 * 96 + col1 * - col0 ) >= - 30
----
10

onlyif mysql # aggregate syntax: 
query I rowsort label-4680
SELECT DISTINCT COUNT( * ) + + - COUNT( + - col1 ) * + COUNT( * ) FROM tab0 AS cor0
----
-6

skipif mysql # not compatible
query I rowsort label-4680
SELECT DISTINCT COUNT ( * ) + + - COUNT ( + - col1 ) * + COUNT ( * ) FROM tab0 AS cor0
----
-6

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query I rowsort label-4681
SELECT ALL col2 DIV + col0 + - CAST( + 14 AS SIGNED ) + - 37 * 19 FROM tab2 AS cor0
----
-717
-717
-717

skipif mysql # not compatible
query I rowsort label-4681
SELECT ALL col2 / + col0 + - CAST ( + 14 AS INTEGER ) + - 37 * 19 FROM tab2 AS cor0
----
-717
-717
-717

onlyif mysql # aggregate syntax: 
query I rowsort label-4682
SELECT + + COUNT( * ) FROM tab1 AS cor0 WHERE col2 NOT BETWEEN - 71 AND NULL
----
0

skipif mysql # not compatible
query I rowsort label-4682
SELECT + + COUNT ( * ) FROM tab1 AS cor0 WHERE col2 NOT BETWEEN - 71 AND NULL
----
0

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE ( + col0 * 72 IS NOT NULL )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT - col0 + - 53 FROM tab2 AS cor0
----
-117
-128
-99

query I rowsort
SELECT - col0 + - 0 + ( - - 62 ) AS col1 FROM tab1 cor0
----
-23
-29
11

query I rowsort
SELECT - col1 + 31 + - + ( - + col1 ) FROM tab0 AS cor0
----
31
31
31

onlyif mysql # aggregate syntax: 
query I rowsort label-4687
SELECT + COUNT( * ) + - COUNT( * ) - 80 * - COUNT( * ) AS col1 FROM tab1 AS cor0
----
240

skipif mysql # not compatible
query I rowsort label-4687
SELECT + COUNT ( * ) + - COUNT ( * ) - 80 * - COUNT ( * ) AS col1 FROM tab1 AS cor0
----
240

onlyif mysql # aggregate syntax: 
query I rowsort label-4688
SELECT ALL + 77 + + COUNT( * ) + - ( - COUNT( * ) ) FROM tab1 AS cor0
----
83

skipif mysql # not compatible
query I rowsort label-4688
SELECT ALL + 77 + + COUNT ( * ) + - ( - COUNT ( * ) ) FROM tab1 AS cor0
----
83

onlyif mysql # aggregate syntax: 
query I rowsort label-4689
SELECT DISTINCT + + COUNT( * ) FROM tab1 AS cor0 CROSS JOIN tab2 cor1
----
9

skipif mysql # not compatible
query I rowsort label-4689
SELECT DISTINCT + + COUNT ( * ) FROM tab1 AS cor0 CROSS JOIN tab2 cor1
----
9

query II rowsort
SELECT 22 * - 18, - col0 FROM tab2 AS cor0 WHERE NOT NULL < NULL
----

query II rowsort
SELECT - + col0 * col1 * + + 8, 28 AS col1 FROM tab0 AS cor0
----
-14616
28
-776
28
-9720
28

query I rowsort
SELECT DISTINCT col0 * col0 * - - ( + col1 ) AS col1 FROM tab1 AS cor0
----
36125
36414
389207

query I rowsort
SELECT ALL - + ( 99 ) FROM tab1 AS cor0
----
-99
-99
-99

query I rowsort
SELECT ALL - + ( + - col1 ) FROM tab1 cor0
----
14
47
5

query I rowsort
SELECT ALL - col0 * + - col1 - col1 + + 71 + + 34 FROM tab0 AS cor0
----
1239
1911
201

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4696
SELECT + CAST( NULL AS SIGNED ) * - SUM( ALL + col0 ) FROM tab1 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4696
SELECT + CAST ( NULL AS INTEGER ) * - SUM ( ALL + col0 ) FROM tab1 AS cor0
----
NULL

query II rowsort
SELECT - 40 AS col1, + col0 AS col0 FROM tab2 AS cor0
----
-40
46
-40
64
-40
75

query I rowsort
SELECT + col1 * col1 AS col1 FROM tab2 AS cor0 WHERE col0 + - col1 + - col0 / 67 BETWEEN NULL AND col0 AND NOT col2 * col2 <= ( + 6 + col2 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4699
SELECT ALL 11 DIV + - col0 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4699
SELECT ALL 11 / + - col0 FROM tab1
----
0
0
0

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE + col0 + - col1 * + col2 + + col2 - ( 25 ) IS NULL
----

query III rowsort
SELECT * FROM tab0 WHERE NOT NULL <= - 83 * 27 * - col1 + 56 * 13
----

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query II rowsort label-4702
SELECT DISTINCT - CAST( NULL AS SIGNED ) AS col2, 6 DIV - - col1 FROM tab1
----
NULL
0
NULL
1

skipif mysql # not compatible
query II rowsort label-4702
SELECT DISTINCT - CAST ( NULL AS INTEGER ) AS col2, 6 / - - col1 FROM tab1
----
NULL
0
NULL
1

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4703
SELECT + CAST( NULL AS SIGNED ), - 36 + + - 94 AS col1 FROM tab0
----
NULL
-130
NULL
-130
NULL
-130

skipif mysql # not compatible
query II rowsort label-4703
SELECT + CAST ( NULL AS INTEGER ), - 36 + + - 94 AS col1 FROM tab0
----
NULL
-130
NULL
-130
NULL
-130

onlyif mysql # aggregate syntax: 
query I rowsort label-4704
SELECT COUNT( * ) AS col2 FROM tab1, tab0 AS cor0
----
9

skipif mysql # not compatible
query I rowsort label-4704
SELECT COUNT ( * ) AS col2 FROM tab1, tab0 AS cor0
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-4705
SELECT ALL + - ( ( - COUNT( * ) ) ) FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4705
SELECT ALL + - ( ( - COUNT ( * ) ) ) FROM tab1 AS cor0
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT col1 col0, - 30 * col2 * + col1 AS col2 FROM tab2 AS cor0
----
51
-35190
67
-116580
77
-92400

query II rowsort
SELECT ALL + 55 AS col0, 61 * + col1 AS col1 FROM tab0 AS cor0
----
55
1281
55
4941
55
61

onlyif mysql # aggregate syntax: 
query I rowsort label-4708
SELECT ALL + + COUNT( * ) AS col2 FROM tab0 cor0 CROSS JOIN tab1 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-4708
SELECT ALL + + COUNT ( * ) AS col2 FROM tab0 cor0 CROSS JOIN tab1 AS cor1
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-4709
SELECT + COUNT( - + col0 ) FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4709
SELECT + COUNT ( - + col0 ) FROM tab0 AS cor0
----
3

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE + col1 BETWEEN + 81 AND + - 63
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4711
SELECT DISTINCT + col2 AS col0 FROM tab0 AS cor0 WHERE + col1 + - + CAST( NULL AS SIGNED ) <> - 59
----

skipif mysql # not compatible
query I rowsort label-4711
SELECT DISTINCT + col2 AS col0 FROM tab0 AS cor0 WHERE + col1 + - + CAST ( NULL AS INTEGER ) <> - 59
----

query I rowsort
SELECT DISTINCT - col2 * - 61 + + col2 + + col1 AS col2 FROM tab0 AS cor0
----
2995
6139
641

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 53 col0 FROM tab0 AS cor0
----
53
53
53

onlyif mysql # aggregate syntax: 
query I rowsort label-4714
SELECT MAX( + col0 ) FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-4714
SELECT MAX ( + col0 ) FROM tab2 AS cor0 WHERE NULL IS NOT NULL
----
NULL

query I rowsort
SELECT ALL + + col0 + - 25 FROM tab1 cor0
----
26
60
66

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-4716
SELECT * FROM tab1 AS cor0 WHERE NULL NOT IN ( CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-4716
SELECT * FROM tab1 AS cor0 WHERE NULL NOT IN ( CAST ( NULL AS INTEGER ) )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4717
SELECT DISTINCT - ( + COUNT( * ) ) - - + CAST( + + MIN( + 63 ) AS SIGNED ) FROM tab0
----
60

skipif mysql # not compatible
query I rowsort label-4717
SELECT DISTINCT - ( + COUNT ( * ) ) - - + CAST ( + + MIN ( + 63 ) AS INTEGER ) FROM tab0
----
60

onlyif mysql # aggregate syntax: 
query I rowsort label-4718
SELECT - COUNT( * ) + + COUNT( 26 ) + 40 FROM tab2
----
40

skipif mysql # not compatible
query I rowsort label-4718
SELECT - COUNT ( * ) + + COUNT ( 26 ) + 40 FROM tab2
----
40

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - + col2 * col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # DIV for integer division: 
query II rowsort label-4720
SELECT ALL col0 AS col1, - 2 DIV - col2 - - - col0 + + + col0 + - col1 * col0 * - 60 AS col2 FROM tab1
----
51
42840
85
25500
91
256620

skipif mysql # not compatible
query II rowsort label-4720
SELECT ALL col0 AS col1, - 2 / - col2 - - - col0 + + + col0 + - col1 * col0 * - 60 AS col2 FROM tab1
----
51
42840
85
25500
91
256620

query III rowsort
SELECT * FROM tab0 WHERE ( NOT - col1 / + col2 + - + col0 - col0 + col1 IS NULL ) OR + 92 BETWEEN NULL AND + col2 + ( col1 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4722
SELECT DISTINCT CAST( - col1 AS SIGNED ) AS col0 FROM tab0
----
-1
-21
-81

skipif mysql # not compatible
query I rowsort label-4722
SELECT DISTINCT CAST ( - col1 AS INTEGER ) AS col0 FROM tab0
----
-1
-21
-81

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col1 + + 73 col1 FROM tab0
----
-8
52
72

onlyif mysql # aggregate syntax: 
query I rowsort label-4724
SELECT - - COUNT( ALL + - col0 ) AS col0 FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4724
SELECT - - COUNT ( ALL + - col0 ) AS col0 FROM tab1 AS cor0
----
3

query I rowsort
SELECT col1 AS col2 FROM tab0 WHERE NOT ( + 71 + - 30 ) >= NULL
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT col2 IN ( + 22 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT + 78 < + + col0
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT + - 73 AS col0 FROM tab2 AS cor0 WHERE NOT 89 * - col0 > + col2
----
-73
-73
-73

onlyif mysql # aggregate syntax: 
query I rowsort label-4729
SELECT DISTINCT - COUNT( + col2 ) AS col1 FROM tab1 cor0
----
-3

skipif mysql # not compatible
query I rowsort label-4729
SELECT DISTINCT - COUNT ( + col2 ) AS col1 FROM tab1 cor0
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-4730
SELECT ALL + + COUNT( * ) AS col1 FROM tab1 AS cor0 WHERE - ( + col2 ) IN ( - col1, ( col1 ) + + - col0 )
----
0

skipif mysql # not compatible
query I rowsort label-4730
SELECT ALL + + COUNT ( * ) AS col1 FROM tab1 AS cor0 WHERE - ( + col2 ) IN ( - col1, ( col1 ) + + - col0 )
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-4731
SELECT DISTINCT - col2 DIV + + col1 FROM tab1 AS cor0
----
-1
-11
-6

skipif mysql # not compatible
query I rowsort label-4731
SELECT DISTINCT - col2 / + + col1 FROM tab1 AS cor0
----
-1
-11
-6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4732
SELECT + CAST( + CAST( - CAST( NULL AS SIGNED ) AS SIGNED ) AS SIGNED ) AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4732
SELECT + CAST ( + CAST ( - CAST ( NULL AS INTEGER ) AS INTEGER ) AS INTEGER ) AS col0 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT + + 55 * 1 FROM tab2 AS cor0
----
55
55
55

skipif postgresql # PostgreSQL requires AS when renaming output columns
query III rowsort
SELECT DISTINCT 15 col0, col1 * + col2, - col2 AS col0 FROM tab2
----
9 values hashing to 3367038e942e104e8196040bff63ebd9

query I rowsort
SELECT + col1 * - - 71 * - col1 FROM tab2
----
-184671
-318719
-420959

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4736
SELECT + COUNT( DISTINCT - ( - CAST( NULL AS SIGNED ) ) ) AS col1 FROM tab0
----
0

skipif mysql # not compatible
query I rowsort label-4736
SELECT + COUNT ( DISTINCT - ( - CAST ( NULL AS INTEGER ) ) ) AS col1 FROM tab0
----
0

query I rowsort
SELECT ALL col0 * + + 36 FROM tab0
----
3132
3492
540

query I rowsort
SELECT ALL 94 * 55 * + 70 FROM tab2
----
361900
361900
361900

query II rowsort
SELECT + 84, + col2 AS col2 FROM tab2
----
84
23
84
40
84
58

onlyif mysql # DIV for integer division: 
query I rowsort label-4740
SELECT ALL - col2 * - - col1 DIV col1 AS col0 FROM tab1
----
-59
-68
-96

skipif mysql # not compatible
query I rowsort label-4740
SELECT ALL - col2 * - - col1 / col1 AS col0 FROM tab1
----
-59
-68
-96

onlyif mysql # aggregate syntax: 
query I rowsort label-4741
SELECT DISTINCT + 65 * + COUNT( * ) AS col1 FROM tab2 AS cor0
----
195

skipif mysql # not compatible
query I rowsort label-4741
SELECT DISTINCT + 65 * + COUNT ( * ) AS col1 FROM tab2 AS cor0
----
195

onlyif mysql # aggregate syntax: 
query I rowsort label-4742
SELECT ALL COUNT( * ) + - 21 AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----
-21

skipif mysql # not compatible
query I rowsort label-4742
SELECT ALL COUNT ( * ) + - 21 AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----
-21

query I rowsort
SELECT ALL ( - - 90 ) FROM tab2
----
90
90
90

query I rowsort
SELECT DISTINCT col2 * col0 + col0 AS col2 FROM tab0
----
720
957
9700

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( NULL ) > - col1
----

query I rowsort
SELECT DISTINCT - - col1 + - col2 - - col1 FROM tab1 AS cor0
----
-49
-68
26

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4747
SELECT ALL - CAST( ( + 79 ) AS SIGNED ) + 84 * 50 AS col1 FROM tab1 cor0
----
4121
4121
4121

skipif mysql # not compatible
query I rowsort label-4747
SELECT ALL - CAST ( ( + 79 ) AS INTEGER ) + 84 * 50 AS col1 FROM tab1 cor0
----
4121
4121
4121

query I rowsort
SELECT - col1 FROM tab1 cor0 WHERE col0 + + col2 + + - 51 IS NULL
----

query I rowsort
SELECT DISTINCT col2 + - - col2 + - col2 AS col0 FROM tab0 AS cor0
----
10
47
99

query II rowsort
SELECT - 92, - 52 * - - 34 + - col2 AS col0 FROM tab1 AS cor0
----
-92
-1827
-92
-1836
-92
-1864

onlyif mysql # aggregate syntax: 
query I rowsort label-4751
SELECT ALL COUNT( * ) + - 42 FROM tab2 AS cor0
----
-39

skipif mysql # not compatible
query I rowsort label-4751
SELECT ALL COUNT ( * ) + - 42 FROM tab2 AS cor0
----
-39

query I rowsort
SELECT ALL col0 * - 25 * + 42 * + ( 89 ) FROM tab1 AS cor0
----
-4765950
-7943250
-8503950

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4753
SELECT + CAST( + + SUM( DISTINCT 85 ) AS SIGNED ) * + MIN( DISTINCT - - col0 ) AS col2 FROM tab2 AS cor0
----
3910

skipif mysql # not compatible
query I rowsort label-4753
SELECT + CAST ( + + SUM ( DISTINCT 85 ) AS INTEGER ) * + MIN ( DISTINCT - - col0 ) AS col2 FROM tab2 AS cor0
----
3910

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT - - col0 > ( - 18 )
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - 44 + col0 * + - 69 * col2 col1 FROM tab0
----
-48689
-60074
-662651

onlyif mysql # DIV for integer division: 
query I rowsort label-4756
SELECT DISTINCT - 60 + + - 20 DIV + - 87 FROM tab2 AS cor0
----
-60

skipif mysql # not compatible
query I rowsort label-4756
SELECT DISTINCT - 60 + + - 20 / + - 87 FROM tab2 AS cor0
----
-60

onlyif mysql # DIV for integer division: 
query I rowsort label-4757
SELECT + - col0 + - + col1 DIV + col2 FROM tab1 AS cor0
----
-51
-85
-91

skipif mysql # not compatible
query I rowsort label-4757
SELECT + - col0 + - + col1 / + col2 FROM tab1 AS cor0
----
-51
-85
-91

query I rowsort
SELECT ALL - + 17 AS col1 FROM tab2 AS cor0
----
-17
-17
-17

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4759
SELECT DISTINCT - + CAST( + col2 AS SIGNED ) * - 30 AS col1 FROM tab1 WHERE NULL IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-4759
SELECT DISTINCT - + CAST ( + col2 AS INTEGER ) * - 30 AS col1 FROM tab1 WHERE NULL IS NOT NULL
----

query III rowsort
SELECT * FROM tab1 WHERE NOT ( - col2 * - col2 * + 8 + + 84 + - col1 ) >= 45
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4761
SELECT SUM( - - 1 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-4761
SELECT SUM ( - - 1 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4762
SELECT ( + + MIN( - CAST( - col0 AS SIGNED ) ) ) AS col0 FROM tab1
----
51

skipif mysql # not compatible
query I rowsort label-4762
SELECT ( + + MIN ( - CAST ( - col0 AS INTEGER ) ) ) AS col0 FROM tab1
----
51

query II rowsort
SELECT DISTINCT col1 AS col1, + col1 * - - 0 FROM tab2
----
51
0
67
0
77
0

onlyif mysql # DIV for integer division: 
query I rowsort label-4764
SELECT - col2 DIV col0 + 30 AS col0 FROM tab1 AS cor0
----
29
30
30

skipif mysql # not compatible
query I rowsort label-4764
SELECT - col2 / col0 + 30 AS col0 FROM tab1 AS cor0
----
29
30
30

query I rowsort
SELECT + 90 * + col2 * + col0 FROM tab0 AS cor0
----
63450
78300
864270

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4766
SELECT col2 * - ( + + col1 ) AS col0, CAST( NULL AS SIGNED ) * + 35 + + col0 * - + col1 * col0 * - 68 AS col2 FROM tab1 AS cor0
----
-1344
NULL
-295
NULL
-3196
NULL

skipif mysql # not compatible
query II rowsort label-4766
SELECT col2 * - ( + + col1 ) AS col0, CAST ( NULL AS INTEGER ) * + 35 + + col0 * - + col1 * col0 * - 68 AS col2 FROM tab1 AS cor0
----
-1344
NULL
-295
NULL
-3196
NULL

query I rowsort
SELECT col0 + - + ( col2 ) FROM tab2 AS cor0 WHERE NOT col1 / + col0 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4768
SELECT ALL - COUNT( * ) AS col1 FROM tab2 AS cor0 WHERE NOT col0 NOT IN ( + col1 / + - 45 )
----
0

skipif mysql # not compatible
query I rowsort label-4768
SELECT ALL - COUNT ( * ) AS col1 FROM tab2 AS cor0 WHERE NOT col0 NOT IN ( + col1 / + - 45 )
----
0

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT ( NULL NOT BETWEEN col2 AND - col1 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4770
SELECT - + ( - CAST( NULL AS SIGNED ) ) AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4770
SELECT - + ( - CAST ( NULL AS INTEGER ) ) AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT ALL + 28 AS col1 FROM tab1 cor0
----
28
28
28

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL NOT BETWEEN NULL AND 63 + col0 OR NOT - col1 * - - 43 + - col2 / + - col1 + + col1 * + col0 * col2 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4773
SELECT - 5 + - CAST( NULL AS SIGNED ) * - + col1 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4773
SELECT - 5 + - CAST ( NULL AS INTEGER ) * - + col1 FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT - 26 + - 50 * + col0 AS col2 FROM tab2 AS cor0
----
-2326
-3226
-3776

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col1 * col1 + - col2 col0 FROM tab1 AS cor0
----
-2277
-292
-84

onlyif mysql # aggregate syntax: 
query I rowsort label-4776
SELECT DISTINCT - COUNT( * ) * + 80 FROM tab1
----
-240

skipif mysql # not compatible
query I rowsort label-4776
SELECT DISTINCT - COUNT ( * ) * + 80 FROM tab1
----
-240

query I rowsort
SELECT ALL 22 * - - ( - + col1 ) * - col1 AS col2 FROM tab2
----
130438
57222
98758

onlyif mysql # aggregate syntax: 
query I rowsort label-4778
SELECT - 10 * + COUNT( col0 ) * + 14 AS col2 FROM tab1
----
-420

skipif mysql # not compatible
query I rowsort label-4778
SELECT - 10 * + COUNT ( col0 ) * + 14 AS col2 FROM tab1
----
-420

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4779
SELECT ALL 49 DIV + + COUNT( * ) AS col0 FROM tab1 AS cor0
----
16

skipif mysql # not compatible
query I rowsort label-4779
SELECT ALL 49 / + + COUNT ( * ) AS col0 FROM tab1 AS cor0
----
16

query II rowsort
SELECT - col2 * - 65, col2 FROM tab2 AS cor0 WHERE NULL IS NULL
----
1495
23
2600
40
3770
58

query I rowsort
SELECT ALL + col1 - + + 18 AS col1 FROM tab1 AS cor0
----
-13
-4
29

onlyif mysql # aggregate syntax: 
query I rowsort label-4782
SELECT + 37 + + SUM( + - 95 ) AS col2 FROM tab2 AS cor0
----
-248

skipif mysql # not compatible
query I rowsort label-4782
SELECT + 37 + + SUM ( + - 95 ) AS col2 FROM tab2 AS cor0
----
-248

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4783
SELECT ALL + CAST( NULL AS SIGNED ) - + COUNT( * ) * - - SUM( + + col2 ) / - COUNT( * ) AS col1 FROM tab0 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4783
SELECT ALL + CAST ( NULL AS INTEGER ) - + COUNT ( * ) * - - SUM ( + + col2 ) / - COUNT ( * ) AS col1 FROM tab0 cor0
----
NULL

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE ( NULL ) < + 68
----

query I rowsort
SELECT DISTINCT + 48 * + - 61 + + col1 + + + 13 FROM tab0 AS cor0
----
-2834
-2894
-2914

onlyif mysql # aggregate syntax: 
query I rowsort label-4786
SELECT ALL MIN( ALL - col2 ) - 85 FROM tab2
----
-143

skipif mysql # not compatible
query I rowsort label-4786
SELECT ALL MIN ( ALL - col2 ) - 85 FROM tab2
----
-143

onlyif mysql # aggregate syntax: 
query I rowsort label-4787
SELECT DISTINCT + COUNT( * ) + + COUNT( * ) AS col2 FROM tab2 WHERE + 27 NOT IN ( - col0, - col0 / - + col2 )
----
6

skipif mysql # not compatible
query I rowsort label-4787
SELECT DISTINCT + COUNT ( * ) + + COUNT ( * ) AS col2 FROM tab2 WHERE + 27 NOT IN ( - col0, - col0 / - + col2 )
----
6

onlyif mysql # aggregate syntax: 
query II rowsort label-4788
SELECT ALL 25, COUNT( * ) AS col2 FROM tab1
----
25
3

skipif mysql # not compatible
query II rowsort label-4788
SELECT ALL 25, COUNT ( * ) AS col2 FROM tab1
----
25
3

query I rowsort
SELECT DISTINCT + 41 - + + 42 AS col1 FROM tab1
----
-1

query I rowsort
SELECT ALL - col1 * + + col2 - col0 AS col2 FROM tab1
----
-1395
-3287
-380

query II rowsort
SELECT ALL 33 AS col2, - col2 FROM tab2
----
33
-23
33
-40
33
-58

query I rowsort
SELECT - col0 * + 82 FROM tab1
----
-4182
-6970
-7462

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4793
SELECT CAST( NULL AS SIGNED ), + col2 AS col2 FROM tab0
----
NULL
10
NULL
47
NULL
99

skipif mysql # not compatible
query II rowsort label-4793
SELECT CAST ( NULL AS INTEGER ), + col2 AS col2 FROM tab0
----
NULL
10
NULL
47
NULL
99

onlyif mysql # aggregate syntax: 
query I rowsort label-4794
SELECT DISTINCT + MIN( ALL + col2 ) FROM tab2 AS cor0
----
23

skipif mysql # not compatible
query I rowsort label-4794
SELECT DISTINCT + MIN ( ALL + col2 ) FROM tab2 AS cor0
----
23

onlyif mysql # aggregate syntax: 
query I rowsort label-4795
SELECT DISTINCT + ( - - COUNT( * ) ) FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4795
SELECT DISTINCT + ( - - COUNT ( * ) ) FROM tab0 AS cor0
----
3

query I rowsort
SELECT ALL + - col2 * - - 0 - + col2 AS col1 FROM tab0 AS cor0
----
-10
-47
-99

onlyif mysql # DIV for integer division: 
query I rowsort label-4797
SELECT + col1 DIV col0 * col2 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4797
SELECT + col1 / col0 * col2 FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query II rowsort label-4798
SELECT 69 AS col0, - COUNT( - 72 ) col2 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
69
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4798
SELECT 69 AS col0, - COUNT ( - 72 ) col2 FROM tab1 AS cor0 CROSS JOIN tab2 AS cor1
----
69
-9

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4799
SELECT + - MAX( ALL - + 22 ) + + CAST( + - COUNT( * ) AS SIGNED ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
13

skipif mysql # not compatible
query I rowsort label-4799
SELECT + - MAX ( ALL - + 22 ) + + CAST ( + - COUNT ( * ) AS INTEGER ) AS col2 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
13

onlyif mysql # aggregate syntax: 
query I rowsort label-4800
SELECT ALL + + COUNT( * ) * 43 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
387

skipif mysql # not compatible
query I rowsort label-4800
SELECT ALL + + COUNT ( * ) * 43 FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1
----
387

query I rowsort
SELECT 47 * + ( + + col0 ) + + col0 AS col2 FROM tab1 AS cor0
----
2448
4080
4368

query I rowsort
SELECT DISTINCT - 58 * - col1 FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
2726
290
812

query I rowsort
SELECT ALL - ( - ( + col1 ) ) FROM tab0 AS cor0
----
1
21
81

query I rowsort
SELECT + col0 * - 68 AS col1 FROM tab1 AS cor0
----
-3468
-5780
-6188

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-4805
SELECT ALL * FROM tab2 AS cor0 WHERE NOT - CAST( NULL AS DECIMAL ) - col1 + col2 IN ( - col2 )
----

skipif mysql # not compatible
query III rowsort label-4805
SELECT ALL * FROM tab2 AS cor0 WHERE NOT - CAST ( NULL AS REAL ) - col1 + col2 IN ( - col2 )
----

query I rowsort
SELECT - + col2 + + - 88 * - 12 FROM tab1 AS cor0 WHERE NOT + col0 IS NOT NULL AND + col0 IS NULL
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT NULL > 7
----

query I rowsort
SELECT col0 FROM tab0 WHERE NOT - col1 IN ( + + col2 * - 33 )
----
15
87
97

onlyif mysql # aggregate syntax: 
query I rowsort label-4809
SELECT MAX( ALL - - col2 ) col2 FROM tab2
----
58

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4809
SELECT MAX ( ALL - - col2 ) col2 FROM tab2
----
58

query I rowsort
SELECT DISTINCT ( - - 71 ) FROM tab2
----
71

onlyif mysql # DIV for integer division: 
query I rowsort label-4811
SELECT + 95 DIV col1 FROM tab0
----
1
4
95

skipif mysql # not compatible
query I rowsort label-4811
SELECT + 95 / col1 FROM tab0
----
1
4
95

onlyif mysql # aggregate syntax: 
query I rowsort label-4812
SELECT - COUNT( ALL + col1 ) AS col0 FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-4812
SELECT - COUNT ( ALL + col1 ) AS col0 FROM tab1
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-4813
SELECT MAX( + col2 ) AS col1 FROM tab2
----
58

skipif mysql # not compatible
query I rowsort label-4813
SELECT MAX ( + col2 ) AS col1 FROM tab2
----
58

query I rowsort
SELECT ALL + 0 + + col2 AS col1 FROM tab0
----
10
47
99

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL col0 col1, col2 AS col0 FROM tab1 WHERE + - col0 IS NULL
----

query I rowsort
SELECT DISTINCT + - col2 + + - col0 AS col1 FROM tab0 AS cor0
----
-196
-62
-97

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4817
SELECT ALL - 60 DIV + MIN( - 15 ) + + - 17 FROM tab2 cor0
----
-13

skipif mysql # not compatible
query I rowsort label-4817
SELECT ALL - 60 / + MIN ( - 15 ) + + - 17 FROM tab2 cor0
----
-13

query II rowsort
SELECT ALL col0 + - 57 AS col0, col2 FROM tab2 AS cor0 WHERE NULL BETWEEN NULL AND ( NULL )
----

query I rowsort
SELECT + + 91 * - + 85 * 30 - col0 + - ( col0 ) AS col1 FROM tab1 cor0
----
-232152
-232220
-232232

query I rowsort
SELECT + - col1 + - col1 + + + col0 * + + ( + + 39 ) * col1 * + + 23 FROM tab0 AS cor0
----
1089693
1638777
87007

query II rowsort
SELECT DISTINCT col0 + col2 AS col2, - col2 + + 21 AS col2 FROM tab0
----
196
-78
62
-26
97
11

query I rowsort
SELECT DISTINCT - ( 78 ) FROM tab1
----
-78

query I rowsort
SELECT col1 + - col2 + + + col1 + + - col2 FROM tab2
----
18
56
74

onlyif mysql # DIV for integer division: 
query I rowsort label-4824
SELECT 24 + + - 35 + - col1 DIV col1 AS col0 FROM tab0
----
-12
-12
-12

skipif mysql # not compatible
query I rowsort label-4824
SELECT 24 + + - 35 + - col1 / col1 AS col0 FROM tab0
----
-12
-12
-12

onlyif mysql # aggregate syntax: 
query I rowsort label-4825
SELECT ALL - COUNT( - 98 ) AS col2 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-4825
SELECT ALL - COUNT ( - 98 ) AS col2 FROM tab2
----
-3

query II rowsort
SELECT DISTINCT col2 + - + 31 AS col2, + col1 AS col0 FROM tab1 cor0
----
28
5
37
47
65
14

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4827
SELECT ALL + CAST( NULL AS SIGNED ) + + + 12 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4827
SELECT ALL + CAST ( NULL AS INTEGER ) + + + 12 FROM tab1 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4828
SELECT ALL + COUNT( ALL - 18 ) AS col0 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-4828
SELECT ALL + COUNT ( ALL - 18 ) AS col0 FROM tab0 AS cor0 WHERE ( NULL ) IS NULL
----
3

query I rowsort
SELECT ALL 26 + - col2 FROM tab0 AS cor0
----
-21
-73
16

query I rowsort
SELECT DISTINCT + col1 + - + col2 * - col1 FROM tab0 AS cor0
----
100
231
3888

onlyif mysql # DIV for integer division: 
query III rowsort label-4831
SELECT ALL * FROM tab2 AS cor0 WHERE + 60 DIV + + col0 + - col1 <= - col1
----
64
77
40
75
67
58

skipif mysql # not compatible
query III rowsort label-4831
SELECT ALL * FROM tab2 AS cor0 WHERE + 60 / + + col0 + - col1 <= - col1
----
64
77
40
75
67
58

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4832
SELECT + COUNT( * ) FROM tab1 AS cor0 WHERE 46 * - ( + + col1 ) + + col1 * + CAST( NULL AS SIGNED ) >= NULL
----
0

skipif mysql # not compatible
query I rowsort label-4832
SELECT + COUNT ( * ) FROM tab1 AS cor0 WHERE 46 * - ( + + col1 ) + + col1 * + CAST ( NULL AS INTEGER ) >= NULL
----
0

query II rowsort
SELECT ALL 34 + - + 57, + col0 AS col0 FROM tab2 AS cor0
----
-23
46
-23
64
-23
75

onlyif mysql # aggregate syntax: 
query I rowsort label-4834
SELECT + COUNT( * ) * - SUM( ( - - 68 ) ) col0 FROM tab0 AS cor0
----
-612

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4834
SELECT + COUNT ( * ) * - SUM ( ( - - 68 ) ) col0 FROM tab0 AS cor0
----
-612

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 64 col1 FROM tab1 cor0
----
64
64
64

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4836
SELECT - CAST( + - COUNT( * ) AS SIGNED ) - - + 61 * + 19 AS col2 FROM tab2
----
1162

skipif mysql # not compatible
query I rowsort label-4836
SELECT - CAST ( + - COUNT ( * ) AS INTEGER ) - - + 61 * + 19 AS col2 FROM tab2
----
1162

query I rowsort
SELECT ALL - 55 * + + col0 FROM tab2
----
-2530
-3520
-4125

query II rowsort
SELECT - col0 * + 36 * - 88 AS col0, col1 + + - col1 FROM tab2
----
145728
0
202752
0
237600
0

query II rowsort
SELECT ALL 80, - 77 AS col1 FROM tab0
----
80
-77
80
-77
80
-77

query I rowsort
SELECT DISTINCT + 83 * + col2 + col1 AS col1 FROM tab2 AS cor0
----
1960
3397
4881

query I rowsort
SELECT ALL col1 FROM tab0 AS cor0 WHERE NOT - col1 IS NULL
----
1
21
81

onlyif mysql # DIV for integer division: 
query I rowsort label-4842
SELECT ALL - 45 DIV col0 * col0 AS col2 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-4842
SELECT ALL - 45 / col0 * col0 AS col2 FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4843
SELECT ALL - ( MAX( - + col2 ) ) FROM tab0 AS cor0
----
10

skipif mysql # not compatible
query I rowsort label-4843
SELECT ALL - ( MAX ( - + col2 ) ) FROM tab0 AS cor0
----
10

onlyif mysql # aggregate syntax: 
query I rowsort label-4844
SELECT - MAX( - col0 ) AS col2 FROM tab1 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-4844
SELECT - MAX ( - col0 ) AS col2 FROM tab1 AS cor0
----
51

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NOT col0 <= 20
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-4846
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT NULL NOT BETWEEN + CAST( + ( + + col1 ) AS DECIMAL ) + + col2 AND + 50
----

skipif mysql # not compatible
query III rowsort label-4846
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT NULL NOT BETWEEN + CAST ( + ( + + col1 ) AS REAL ) + + col2 AND + 50
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4847
SELECT ALL COUNT( 81 ) FROM tab1 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-4847
SELECT ALL COUNT ( 81 ) FROM tab1 AS cor0
----
3

query I rowsort
SELECT DISTINCT + col1 AS col2 FROM tab0 AS cor0 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query I rowsort label-4849
SELECT - col2 / - CAST( NULL AS SIGNED ) col2 FROM tab0 WHERE NOT - col1 NOT IN ( + 17, col0, - col0 - col0 / + CAST( NULL AS DECIMAL ), + col1 + + col0 * - col1 )
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4849
SELECT - col2 / - CAST ( NULL AS INTEGER ) col2 FROM tab0 WHERE NOT - col1 NOT IN ( + 17, col0, - col0 - col0 / + CAST ( NULL AS REAL ), + col1 + + col0 * - col1 )
----

query I rowsort
SELECT DISTINCT col1 + - col1 FROM tab2 WHERE NOT + + col1 < - col2
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4851
SELECT 14 FROM tab1 WHERE CAST( NULL AS SIGNED ) + col1 IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-4851
SELECT 14 FROM tab1 WHERE CAST ( NULL AS INTEGER ) + col1 IS NOT NULL
----

query II rowsort
SELECT - ( + 24 ), + col1 * - col2 AS col1 FROM tab2
----
-24
-1173
-24
-3080
-24
-3886

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4853
SELECT col1, - col1 * + 48 FROM tab0 WHERE ( CAST( NULL AS SIGNED ) * - col2 ) IS NULL
----
1
-48
21
-1008
81
-3888

skipif mysql # not compatible
query II rowsort label-4853
SELECT col1, - col1 * + 48 FROM tab0 WHERE ( CAST ( NULL AS INTEGER ) * - col2 ) IS NULL
----
1
-48
21
-1008
81
-3888

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4854
SELECT DISTINCT CAST( - + 11 AS SIGNED ) col2, 22 FROM tab0
----
-11
22

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4854
SELECT DISTINCT CAST ( - + 11 AS INTEGER ) col2, 22 FROM tab0
----
-11
22

query III rowsort
SELECT * FROM tab2 WHERE NULL <= NULL AND NOT ( NOT + col2 * + 27 IS NULL )
----

query I rowsort
SELECT - col0 + + 8 AS col1 FROM tab1 cor0
----
-43
-77
-83

onlyif mysql # aggregate syntax: 
query I rowsort label-4857
SELECT DISTINCT - ( - - COUNT( * ) ) + - - 96 FROM tab2 AS cor0
----
93

skipif mysql # not compatible
query I rowsort label-4857
SELECT DISTINCT - ( - - COUNT ( * ) ) + - - 96 FROM tab2 AS cor0
----
93

onlyif mysql # aggregate syntax: 
query I rowsort label-4858
SELECT DISTINCT MAX( + - 6 ) AS col2 FROM tab1 AS cor0
----
-6

skipif mysql # not compatible
query I rowsort label-4858
SELECT DISTINCT MAX ( + - 6 ) AS col2 FROM tab1 AS cor0
----
-6

query IIIIII rowsort
SELECT ALL * FROM tab1 AS cor0 CROSS JOIN tab2 cor1 WHERE ( NULL ) IS NULL
----
54 values hashing to c419dc2a653bccd84f7a2da103315187

query I rowsort
SELECT col1 * ( - + 51 ) * col2 AS col0 FROM tab2
----
-157080
-198186
-59823

query II rowsort
SELECT DISTINCT col0 AS col0, - 2 AS col2 FROM tab1
----
51
-2
85
-2
91
-2

query I rowsort
SELECT DISTINCT - col1 * + col1 + - + col2 AS col0 FROM tab2
----
-2624
-4547
-5969

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col2 + + - col0 col2 FROM tab2 AS cor0
----
-104
-133
-69

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4864
SELECT + col0 + + col1 - CAST( NULL AS DECIMAL ) + + - 23 - - col0 col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4864
SELECT + col0 + + col1 - CAST ( NULL AS REAL ) + + - 23 - - col0 col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT ALL - 29 - - - col0 + 39 AS col1, col2 FROM tab0 AS cor0
----
-5
47
-77
10
-87
99

query I rowsort
SELECT DISTINCT + col2 + 78 FROM tab0 cor0
----
125
177
88

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4867
SELECT DISTINCT + - COUNT( * ) DIV - COUNT( * ) - + 56 AS col0 FROM tab2 AS cor0
----
-55

skipif mysql # not compatible
query I rowsort label-4867
SELECT DISTINCT + - COUNT ( * ) / - COUNT ( * ) - + 56 AS col0 FROM tab2 AS cor0
----
-55

onlyif mysql # aggregate syntax: 
query I rowsort label-4868
SELECT - ( COUNT( * ) ) FROM tab1 AS cor0 WHERE ( - + 76 ) + - col2 IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-4868
SELECT - ( COUNT ( * ) ) FROM tab1 AS cor0 WHERE ( - + 76 ) + - col2 IS NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4869
SELECT + COUNT( * ) FROM tab2 AS cor0 WHERE NOT - 93 * - + 34 IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-4869
SELECT + COUNT ( * ) FROM tab2 AS cor0 WHERE NOT - 93 * - + 34 IS NULL
----
3

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE + col2 + - - ( - col2 ) + 95 NOT BETWEEN col1 - - col0 * - 72 AND + col1
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: DECIMAL type: 
query II rowsort label-4871
SELECT DISTINCT - CAST( NULL AS DECIMAL ) * col1, 80 AS col2 FROM tab1
----
NULL
80

skipif mysql # not compatible
query II rowsort label-4871
SELECT DISTINCT - CAST ( NULL AS REAL ) * col1, 80 AS col2 FROM tab1
----
NULL
80

query I rowsort
SELECT - 50 * + + col2 FROM tab0
----
-2350
-4950
-500

query I rowsort
SELECT DISTINCT + col2 AS col2 FROM tab0 WHERE - col1 NOT BETWEEN NULL AND 6
----

query I rowsort
SELECT - ( + 15 ) AS col0 FROM tab2
----
-15
-15
-15

onlyif mysql # aggregate syntax: 
query I rowsort label-4875
SELECT DISTINCT MAX( ALL + ( + + col0 ) ) AS col2 FROM tab2
----
75

skipif mysql # not compatible
query I rowsort label-4875
SELECT DISTINCT MAX ( ALL + ( + + col0 ) ) AS col2 FROM tab2
----
75

query I rowsort
SELECT - ( + 60 ) FROM tab2
----
-60
-60
-60

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT + 88 <> - col0
----

query I rowsort
SELECT + ( + 58 ) * + + col2 FROM tab1
----
3422
3944
5568

query I rowsort
SELECT DISTINCT col2 FROM tab1 WHERE - 28 * col1 NOT IN ( + + 29 )
----
59
68
96

query I rowsort
SELECT + 84 * col0 * + col0 FROM tab0
----
18900
635796
790356

onlyif mysql # aggregate syntax: 
query I rowsort label-4881
SELECT ALL + COUNT( * ) * + 31 FROM tab1
----
93

skipif mysql # not compatible
query I rowsort label-4881
SELECT ALL + COUNT ( * ) * + 31 FROM tab1
----
93

query I rowsort
SELECT ALL 54 + + col2 + + 44 FROM tab2 AS cor0 WHERE NOT NULL BETWEEN + ( + + 38 ) * - col1 AND NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4883
SELECT + ( - 78 ) DIV - MIN( ALL + - col1 ) FROM tab1 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-4883
SELECT + ( - 78 ) / - MIN ( ALL + - col1 ) FROM tab1 AS cor0
----
-1

query III rowsort
SELECT ALL * FROM tab1 WHERE col2 < - col1
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4885
SELECT + CAST( NULL AS SIGNED ) AS col2, 32 FROM tab2
----
NULL
32
NULL
32
NULL
32

skipif mysql # not compatible
query II rowsort label-4885
SELECT + CAST ( NULL AS INTEGER ) AS col2, 32 FROM tab2
----
NULL
32
NULL
32
NULL
32

query III rowsort
SELECT * FROM tab2 WHERE NOT - 78 - 73 + - + col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL - col0 + + 60 FROM tab2
----
-15
-4
14

query I rowsort
SELECT + col1 FROM tab0 cor0 WHERE NOT + 88 * - col0 * col1 <> - col0 - col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4889
SELECT ALL MIN( - + col0 ) + 35 FROM tab0 AS cor0
----
-62

skipif mysql # not compatible
query I rowsort label-4889
SELECT ALL MIN ( - + col0 ) + 35 FROM tab0 AS cor0
----
-62

query I rowsort
SELECT DISTINCT + 89 AS col2 FROM tab2 cor0
----
89

onlyif mysql # aggregate syntax: 
query I rowsort label-4891
SELECT + + 66 + - - MIN( 69 ) AS col0 FROM tab0 AS cor0
----
135

skipif mysql # not compatible
query I rowsort label-4891
SELECT + + 66 + - - MIN ( 69 ) AS col0 FROM tab0 AS cor0
----
135

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( NOT - + 79 <> NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4893
SELECT - + 12 + 68 * - MIN( DISTINCT - 39 ) FROM tab1 AS cor0
----
2640

skipif mysql # not compatible
query I rowsort label-4893
SELECT - + 12 + 68 * - MIN ( DISTINCT - 39 ) FROM tab1 AS cor0
----
2640

query I rowsort
SELECT col2 * + col2 * + col1 FROM tab0 AS cor0
----
178929
2100
9801

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4895
SELECT 19 / + CAST( NULL AS SIGNED ) AS col1 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4895
SELECT 19 / + CAST ( NULL AS INTEGER ) AS col1 FROM tab1
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4896
SELECT - 41 * - ( + COUNT( * ) ) AS col1 FROM tab2
----
123

skipif mysql # not compatible
query I rowsort label-4896
SELECT - 41 * - ( + COUNT ( * ) ) AS col1 FROM tab2
----
123

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-4897
SELECT + CAST( + COUNT( * ) AS SIGNED ) AS col1 FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-4897
SELECT + CAST ( + COUNT ( * ) AS INTEGER ) AS col1 FROM tab1
----
3

query III rowsort
SELECT * FROM tab0 WHERE ( NULL ) > + col0 OR NOT NULL < col1
----

query III rowsort
SELECT * FROM tab2 WHERE NULL BETWEEN ( - - col0 ) AND col2
----

query I rowsort
SELECT DISTINCT 54 + + - col1 FROM tab0
----
-27
33
53

query II rowsort
SELECT ALL col0, - 71 AS col0 FROM tab0
----
15
-71
87
-71
97
-71

query I rowsort
SELECT + 94 AS col0 FROM tab2 AS cor0 CROSS JOIN tab0 cor1
----
9 values hashing to b0ffb7527f4fbf44f30945e1ccb58c24

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4903
SELECT DISTINCT - - CAST( NULL AS SIGNED ) col2 FROM tab1 cor0
----
NULL

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4903
SELECT DISTINCT - - CAST ( NULL AS INTEGER ) col2 FROM tab1 cor0
----
NULL

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE + col2 BETWEEN - - col0 / - col2 / + + col1 * 99 - + + 57 * - + col0 AND NULL
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4905
SELECT + COUNT( + - 26 ) DIV + + 63 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-4905
SELECT + COUNT ( + - 26 ) / + + 63 FROM tab1 AS cor0
----
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4906
SELECT col2 AS col2 FROM tab1 AS cor0 WHERE NOT + col1 - - CAST( + - ( - 88 ) AS SIGNED ) / + - col1 * col0 IS NULL
----
59
68
96

skipif mysql # not compatible
query I rowsort label-4906
SELECT col2 AS col2 FROM tab1 AS cor0 WHERE NOT + col1 - - CAST ( + - ( - 88 ) AS INTEGER ) / + - col1 * col0 IS NULL
----
59
68
96

query I rowsort
SELECT ALL + col2 * + - col2 FROM tab2 AS cor0
----
-1600
-3364
-529

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4908
SELECT + - 74 AS col0 FROM tab1 AS cor0 WHERE NOT - CAST( CAST( NULL AS SIGNED ) AS SIGNED ) IS NOT NULL
----
-74
-74
-74

skipif mysql # not compatible
query I rowsort label-4908
SELECT + - 74 AS col0 FROM tab1 AS cor0 WHERE NOT - CAST ( CAST ( NULL AS INTEGER ) AS INTEGER ) IS NOT NULL
----
-74
-74
-74

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-4909
SELECT + + CAST( col1 AS SIGNED ), col0 col1 FROM tab2 AS cor0
----
51
46
67
75
77
64

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4909
SELECT + + CAST ( col1 AS INTEGER ), col0 col1 FROM tab2 AS cor0
----
51
46
67
75
77
64

onlyif mysql # aggregate syntax: 
query I rowsort label-4910
SELECT DISTINCT + COUNT( * ) FROM tab2 WHERE - ( + col2 ) / 76 NOT BETWEEN col2 AND + ( col1 ) * + - 60
----
3

skipif mysql # not compatible
query I rowsort label-4910
SELECT DISTINCT + COUNT ( * ) FROM tab2 WHERE - ( + col2 ) / 76 NOT BETWEEN col2 AND + ( col1 ) * + - 60
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4911
SELECT - 58 + + + ( - - col1 ) AS col0 FROM tab1 WHERE NOT + + CAST( + col2 AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-4911
SELECT - 58 + + + ( - - col1 ) AS col0 FROM tab1 WHERE NOT + + CAST ( + col2 AS INTEGER ) IS NOT NULL
----

query II rowsort
SELECT ALL 51, col0 * - + col0 AS col0 FROM tab1
----
51
-2601
51
-7225
51
-8281

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE - 59 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query II rowsort
SELECT ALL col1 AS col0, + 86 FROM tab2
----
51
86
67
86
77
86

query II rowsort
SELECT + 19, + col2 * + 48 + col0 AS col1 FROM tab0 AS cor0
----
19
2271
19
4849
19
567

query I rowsort
SELECT + 33 * + - col2 * - - col2 AS col1 FROM tab1 AS cor0
----
-114873
-152592
-304128

onlyif mysql # aggregate syntax: 
query II rowsort label-4917
SELECT - 19, - COUNT( * ) AS col1 FROM tab2 AS cor0
----
-19
-3

skipif mysql # not compatible
query II rowsort label-4917
SELECT - 19, - COUNT ( * ) AS col1 FROM tab2 AS cor0
----
-19
-3

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE NOT + 16 IS NOT NULL
----

query I rowsort
SELECT 73 AS col0 FROM tab2 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to e5fbf5d129b181bacd6113bbc8732496

query III rowsort
SELECT * FROM tab1 WHERE NOT + 27 + - + 78 <> NULL
----

query II rowsort
SELECT - ( + col1 ), col2 FROM tab0 AS cor0
----
-1
99
-21
10
-81
47

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE + col0 + 66 <= + 26
----

query I rowsort
SELECT - - col1 * - col1 * col0 FROM tab2 AS cor0
----
-119646
-336675
-379456

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4924
SELECT ALL - + col1 * + - CAST( NULL AS SIGNED ) + + col1 AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4924
SELECT ALL - + col1 * + - CAST ( NULL AS INTEGER ) + + col1 AS col1 FROM tab2 AS cor0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-4925
SELECT DISTINCT - COUNT( - col2 ) FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-4925
SELECT DISTINCT - COUNT ( - col2 ) FROM tab0 AS cor0
----
-3

query I rowsort
SELECT 42 + 73 AS col1 FROM tab0 cor0 WHERE ( NULL ) IS NOT NULL
----

query I rowsort
SELECT ALL - col0 * + + col1 * - col2 + col0 AS col1 FROM tab0 cor0
----
18357
57120
9700

onlyif mysql # aggregate syntax: 
query I rowsort label-4928
SELECT ALL COUNT( + ( - col2 ) ) FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( col1 )
----
0

skipif mysql # not compatible
query I rowsort label-4928
SELECT ALL COUNT ( + ( - col2 ) ) FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( col1 )
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4929
SELECT - COUNT( * ) * - 22 FROM tab1 AS cor0
----
66

skipif mysql # not compatible
query I rowsort label-4929
SELECT - COUNT ( * ) * - 22 FROM tab1 AS cor0
----
66

query III rowsort
SELECT * FROM tab2 WHERE ( - col2 IS NOT NULL )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-4931
SELECT ALL + COUNT( * ) * + + 22 FROM tab1
----
66

skipif mysql # not compatible
query I rowsort label-4931
SELECT ALL + COUNT ( * ) * + + 22 FROM tab1
----
66

query I rowsort
SELECT 88 + 13 FROM tab2
----
101
101
101

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT - - col1 * - - col2 * + - col0 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query II rowsort label-4934
SELECT DISTINCT + ( - MIN( col2 ) ), SUM( ALL + - col0 ) AS col0 FROM tab0
----
-10
-199

skipif mysql # not compatible
query II rowsort label-4934
SELECT DISTINCT + ( - MIN ( col2 ) ), SUM ( ALL + - col0 ) AS col0 FROM tab0
----
-10
-199

query I rowsort
SELECT DISTINCT - 0 FROM tab2 WHERE NULL IS NULL
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-4936
SELECT 29 + - 70 + - - 38 DIV + + col2 AS col0 FROM tab1
----
-41
-41
-41

skipif mysql # not compatible
query I rowsort label-4936
SELECT 29 + - 70 + - - 38 / + + col2 AS col0 FROM tab1
----
-41
-41
-41

query I rowsort
SELECT DISTINCT + col1 * - - col1 FROM tab2
----
2601
4489
5929

onlyif mysql # DIV for integer division: 
query I rowsort label-4938
SELECT - 32 + col2 DIV col2 AS col2 FROM tab0 AS cor0
----
-31
-31
-31

skipif mysql # not compatible
query I rowsort label-4938
SELECT - 32 + col2 / col2 AS col2 FROM tab0 AS cor0
----
-31
-31
-31

query II rowsort
SELECT - 22 * + col1 * - - col0 - - 29, col1 FROM tab0
----
-2105
1
-26701
81
-40165
21

onlyif mysql # DIV for integer division: 
query I rowsort label-4940
SELECT 52 - 45 + + col1 - + col2 DIV - col1 FROM tab2
----
58
74
84

skipif mysql # not compatible
query I rowsort label-4940
SELECT 52 - 45 + + col1 - + col2 / - col1 FROM tab2
----
58
74
84

query III rowsort
SELECT * FROM tab1 cor0 WHERE NOT - col0 IS NOT NULL
----

query I rowsort
SELECT DISTINCT 82 - col1 + - col1 AS col0 FROM tab1 AS cor0 WHERE NOT - col2 * - col2 / + - 86 - + + 59 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4943
SELECT ALL - COUNT( + - col2 ) AS col0 FROM tab0 AS cor0
----
-3

skipif mysql # not compatible
query I rowsort label-4943
SELECT ALL - COUNT ( + - col2 ) AS col0 FROM tab0 AS cor0
----
-3

query I rowsort
SELECT DISTINCT + 59 * + col2 FROM tab0 AS cor0 WHERE NOT - col0 * + col2 + - 97 >= ( - col0 )
----
2773
5841
590

query II rowsort
SELECT DISTINCT - - col0, 86 + - col2 + + - col2 * + col1 AS col1 FROM tab2 cor0
----
46
-1110
64
-3034
75
-3858

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL < ( NULL )
----

query I rowsort
SELECT DISTINCT + + col0 + - 25 * + + 28 * + col0 / - col0 FROM tab1 AS cor0 WHERE ( NULL ) IS NOT NULL
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE 19 = - + col2
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL - + 49, 0 * 64 col0 FROM tab1 AS cor0
----
-49
0
-49
0
-49
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4950
SELECT ALL + COUNT( ALL + + col2 ) * - COUNT( * ) FROM tab2
----
-9

skipif mysql # not compatible
query I rowsort label-4950
SELECT ALL + COUNT ( ALL + + col2 ) * - COUNT ( * ) FROM tab2
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-4951
SELECT MIN( DISTINCT + + col1 ) AS col1 FROM tab1
----
5

skipif mysql # not compatible
query I rowsort label-4951
SELECT MIN ( DISTINCT + + col1 ) AS col1 FROM tab1
----
5

query I rowsort
SELECT DISTINCT + - col2 * col1 * + col2 FROM tab1 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4953
SELECT + col2 / + - col2 * - 79 * + + col1 / + + col1 - CAST( - + col0 AS DECIMAL ) col0 FROM tab0 WHERE NOT NULL <> + 30
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4953
SELECT + col2 / + - col2 * - 79 * + + col1 / + + col1 - CAST ( - + col0 AS REAL ) col0 FROM tab0 WHERE NOT NULL <> + 30
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4954
SELECT ALL MAX( DISTINCT + - col2 ) AS col1 FROM tab0
----
-10

skipif mysql # not compatible
query I rowsort label-4954
SELECT ALL MAX ( DISTINCT + - col2 ) AS col1 FROM tab0
----
-10

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT col1 + - col0 IS NOT NULL
----

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + 10 < - + col1
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-4957
SELECT DISTINCT + SUM( - col1 ) AS col0 FROM tab0
----
-103

skipif mysql # not compatible
query I rowsort label-4957
SELECT DISTINCT + SUM ( - col1 ) AS col0 FROM tab0
----
-103

query I rowsort
SELECT col0 + - col2 + - 93 FROM tab0
----
-125
-16
-95

query I rowsort
SELECT + 76 + + - col1 AS col0 FROM tab1
----
29
62
71

onlyif mysql # aggregate syntax: 
query I rowsort label-4960
SELECT - 43 + + + COUNT( * ) * 15 FROM tab2
----
2

skipif mysql # not compatible
query I rowsort label-4960
SELECT - 43 + + + COUNT ( * ) * 15 FROM tab2
----
2

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT col1 + + + col2 col1 FROM tab0 AS cor0
----
100
128
31

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE 89 + - 53 + + col1 * + - col2 IS NULL
----

query II rowsort
SELECT DISTINCT + col0 AS col2, 91 AS col2 FROM tab1 AS cor0
----
51
91
85
91
91
91

query I rowsort
SELECT - col1 * - 45 AS col0 FROM tab1 AS cor0
----
2115
225
630

onlyif mysql # aggregate syntax: 
query II rowsort label-4965
SELECT - - 98 AS col1, COUNT( * ) + - 33 FROM tab2 AS cor0
----
98
-30

skipif mysql # not compatible
query II rowsort label-4965
SELECT - - 98 AS col1, COUNT ( * ) + - 33 FROM tab2 AS cor0
----
98
-30

query I rowsort
SELECT ALL 28 * + col1 AS col0 FROM tab2
----
1428
1876
2156

onlyif mysql # DIV for integer division: 
query II rowsort label-4967
SELECT DISTINCT col1 DIV - 75 col1, + 30 FROM tab2
----
-1
30
0
30

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-4967
SELECT DISTINCT col1 / - 75 col1, + 30 FROM tab2
----
-1
30
0
30

query I rowsort
SELECT - col0 * - + col1 * + ( + col1 ) * + 8 AS col1 FROM tab1
----
1608152
17000
79968

onlyif mysql # DIV for integer division: 
query I rowsort label-4969
SELECT ALL + ( col0 ) DIV - col2 AS col2 FROM tab1
----
-1
-1
0

skipif mysql # not compatible
query I rowsort label-4969
SELECT ALL + ( col0 ) / - col2 AS col2 FROM tab1
----
-1
-1
0

onlyif mysql # aggregate syntax: 
query I rowsort label-4970
SELECT MAX( - 1 ) col0 FROM tab1
----
-1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4970
SELECT MAX ( - 1 ) col0 FROM tab1
----
-1

query I rowsort
SELECT ALL col1 * - 69 FROM tab0
----
-1449
-5589
-69

query III rowsort
SELECT * FROM tab0 WHERE - + col0 NOT BETWEEN NULL AND - + col1
----
15
81
47

query I rowsort
SELECT DISTINCT 1 * + col0 AS col1 FROM tab0
----
15
87
97

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + - col2 * col1 * + - col2 + + 12 col0 FROM tab0 WHERE + - col2 IS NOT NULL
----
178941
2112
9813

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( NOT - col1 * 75 + - col1 >= - col2 )
----
15
81
47
87
21
10

onlyif mysql # aggregate syntax: 
query I rowsort label-4976
SELECT ALL + + MIN( + col1 ) FROM tab0 AS cor0 WHERE ( - 10 ) >= - 33
----
1

skipif mysql # not compatible
query I rowsort label-4976
SELECT ALL + + MIN ( + col1 ) FROM tab0 AS cor0 WHERE ( - 10 ) >= - 33
----
1

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4977
SELECT - ( + col0 ) + + CAST( NULL AS SIGNED ) AS col0 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-4977
SELECT - ( + col0 ) + + CAST ( NULL AS INTEGER ) AS col0 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - ( 29 ) + + col2 col1 FROM tab0 AS cor0
----
-19
18
70

query II rowsort
SELECT ALL - 72 AS col2, col1 * 22 * + + col1 FROM tab0
----
-72
144342
-72
22
-72
9702

onlyif mysql # aggregate syntax: 
query I rowsort label-4980
SELECT DISTINCT - ( + COUNT( * ) ) col1 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
-9

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-4980
SELECT DISTINCT - ( + COUNT ( * ) ) col1 FROM tab2 AS cor0 CROSS JOIN tab0 AS cor1
----
-9

query II rowsort
SELECT ALL + col2, - col2 FROM tab2 AS cor0
----
23
-23
40
-40
58
-58

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-4982
SELECT COUNT( DISTINCT + - ( - 9 ) ) DIV 6 AS col0 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-4982
SELECT COUNT ( DISTINCT + - ( - 9 ) ) / 6 AS col0 FROM tab1 AS cor0
----
0

query I rowsort
SELECT - 32 * col2 * + col1 AS col1 FROM tab0 AS cor0
----
-121824
-3168
-6720

query I rowsort
SELECT - - 88 * col0 AS col1 FROM tab1 AS cor0
----
4488
7480
8008

query I rowsort
SELECT - col1 FROM tab0 WHERE NOT - - ( + col1 ) IS NOT NULL
----

query I rowsort
SELECT - 1 / + - col2 FROM tab1 AS cor0 WHERE NOT NULL = ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-4987
SELECT + 82 + ( - COUNT( * ) ) FROM tab0 AS cor0
----
79

skipif mysql # not compatible
query I rowsort label-4987
SELECT + 82 + ( - COUNT ( * ) ) FROM tab0 AS cor0
----
79

query III rowsort
SELECT * FROM tab1 WHERE NULL NOT BETWEEN 69 * + col0 * - col2 / 43 AND - 48
----

query I rowsort
SELECT - 91 FROM tab1 cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to 745d1c3a09d935465cad552325c5c945

query I rowsort
SELECT ALL + - col1 + + - col1 + ( 41 ) FROM tab1 AS cor0 WHERE NULL BETWEEN NULL AND ( NULL )
----

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-4991
SELECT DISTINCT - 72 * CAST( NULL AS DECIMAL ) * + col0 + col0 - col0 AS col1 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-4991
SELECT DISTINCT - 72 * CAST ( NULL AS REAL ) * + col0 + col0 - col0 AS col1 FROM tab0 AS cor0
----
NULL

query I rowsort
SELECT ALL col2 + - col2 * - - col1 FROM tab0 cor0
----
-200
-3760
0

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE NULL < - ( + col0 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-4994
SELECT DISTINCT + ( 35 ) DIV - col1 AS col1 FROM tab0
----
-1
-35
0

skipif mysql # not compatible
query I rowsort label-4994
SELECT DISTINCT + ( 35 ) / - col1 AS col1 FROM tab0
----
-1
-35
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-4995
SELECT DISTINCT col0 - CAST( - col1 AS SIGNED ) FROM tab1
----
138
65
90

skipif mysql # not compatible
query I rowsort label-4995
SELECT DISTINCT col0 - CAST ( - col1 AS INTEGER ) FROM tab1
----
138
65
90

query I rowsort
SELECT ALL 38 - 47 * + + col1 AS col1 FROM tab0
----
-3769
-9
-949

query II rowsort
SELECT + 78 + + col2 * + ( + 1 ) + - - 85 + - col1 + - col0 * 83 * + col1, col2 FROM tab1
----
-35058
59
-354807
68
-59017
96

query I rowsort
SELECT + col2 AS col2 FROM tab2 WHERE - - col0 + - + col0 IS NOT NULL
----
23
40
58

query I rowsort
SELECT + 11 + - + col1 FROM tab1 WHERE NULL IS NULL
----
-3
-36
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5000
SELECT ALL + CAST( + 62 AS SIGNED ) FROM tab2
----
62
62
62

skipif mysql # not compatible
query I rowsort label-5000
SELECT ALL + CAST ( + 62 AS INTEGER ) FROM tab2
----
62
62
62

onlyif mysql # aggregate syntax: 
query I rowsort label-5001
SELECT DISTINCT COUNT( * ) FROM tab1 WHERE NOT NULL = NULL
----
0

skipif mysql # not compatible
query I rowsort label-5001
SELECT DISTINCT COUNT ( * ) FROM tab1 WHERE NOT NULL = NULL
----
0

query I rowsort
SELECT 29 * - - col2 AS col2 FROM tab0
----
1363
2871
290

query II rowsort
SELECT DISTINCT + col0 AS col0, col1 + - col0 - 87 AS col0 FROM tab1
----
51
-124
85
-167
91
-131

query I rowsort
SELECT + col0 * - ( + 59 ) AS col1 FROM tab1
----
-3009
-5015
-5369

query I rowsort
SELECT - col2 * - - col0 AS col1 FROM tab1 AS cor0
----
-4896
-5015
-6188

query II rowsort
SELECT col0, col0 * 57 - + + col0 + + 86 * + + 45 + - + col2 + col2 AS col2 FROM tab0 AS cor0
----
15
4710
87
8742
97
9302

query I rowsort
SELECT ALL - 53 AS col1 FROM tab2 AS cor0 WHERE + 56 NOT BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5008
SELECT ALL MAX( ALL + + 20 ) AS col1 FROM tab0 WHERE NOT NULL = NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-5008
SELECT ALL MAX ( ALL + + 20 ) AS col1 FROM tab0 WHERE NOT NULL = NULL
----
NULL

query I rowsort
SELECT - col1 + - 3 AS col1 FROM tab2 WHERE NOT + col1 NOT BETWEEN - 99 + - - col2 / - col1 AND 54 + - - 52
----
-54
-70
-80

query I rowsort
SELECT ALL + col0 * + ( + + col1 ) AS col0 FROM tab0 AS cor0
----
1215
1827
97

query I rowsort
SELECT DISTINCT + col2 AS col1 FROM tab2 AS cor0 WHERE NOT + 39 IS NULL
----
23
40
58

onlyif mysql # aggregate syntax: 
query I rowsort label-5012
SELECT ALL + + COUNT( * ) col1 FROM tab2 AS cor0 WHERE NOT col2 / + + col1 IS NOT NULL
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5012
SELECT ALL + + COUNT ( * ) col1 FROM tab2 AS cor0 WHERE NOT col2 / + + col1 IS NOT NULL
----
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + ( - col1 ) col0 FROM tab1 cor0
----
-14
-47
-5

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5014
SELECT - CAST( - COUNT( ALL - ( - col0 ) ) AS SIGNED ) FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-5014
SELECT - CAST ( - COUNT ( ALL - ( - col0 ) ) AS INTEGER ) FROM tab2
----
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5015
SELECT - CAST( - col0 AS SIGNED ) AS col0 FROM tab0
----
15
87
97

skipif mysql # not compatible
query I rowsort label-5015
SELECT - CAST ( - col0 AS INTEGER ) AS col0 FROM tab0
----
15
87
97

query III rowsort
SELECT * FROM tab0 WHERE NOT + + 34 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5017
SELECT DISTINCT - col1 DIV - 87 AS col1 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-5017
SELECT DISTINCT - col1 / - 87 AS col1 FROM tab2
----
0

query III rowsort
SELECT * FROM tab0 WHERE NOT - + col2 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE - col1 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5020
SELECT - + CAST( + 92 AS SIGNED ) * - COUNT( * ) FROM tab1 AS cor0
----
276

skipif mysql # not compatible
query I rowsort label-5020
SELECT - + CAST ( + 92 AS INTEGER ) * - COUNT ( * ) FROM tab1 AS cor0
----
276

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-5021
SELECT DISTINCT * FROM tab1 WHERE NOT + - CAST( + 1 AS DECIMAL ) >= + col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-5021
SELECT DISTINCT * FROM tab1 WHERE NOT + - CAST ( + 1 AS REAL ) >= + col2
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-5022
SELECT COUNT( * ) + + COUNT( + 56 ) AS col2 FROM tab0
----
6

skipif mysql # not compatible
query I rowsort label-5022
SELECT COUNT ( * ) + + COUNT ( + 56 ) AS col2 FROM tab0
----
6

onlyif mysql # aggregate syntax: 
query I rowsort label-5023
SELECT + COUNT( * ) * + 83 + - COUNT( * ) FROM tab1
----
246

skipif mysql # not compatible
query I rowsort label-5023
SELECT + COUNT ( * ) * + 83 + - COUNT ( * ) FROM tab1
----
246

query I rowsort
SELECT - 56 * + col0 AS col0 FROM tab2 WHERE - col0 >= NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5025
SELECT ALL CAST( - 90 AS SIGNED ) FROM tab0 AS cor0 WHERE NULL NOT BETWEEN NULL AND ( NULL )
----

skipif mysql # not compatible
query I rowsort label-5025
SELECT ALL CAST ( - 90 AS INTEGER ) FROM tab0 AS cor0 WHERE NULL NOT BETWEEN NULL AND ( NULL )
----

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE col0 + + col1 >= col2
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE col2 * - col0 * + + col0 <= NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5028
SELECT DISTINCT MAX( DISTINCT + col1 ) + - CAST( + 95 AS SIGNED ) FROM tab0 cor0
----
-14

skipif mysql # not compatible
query I rowsort label-5028
SELECT DISTINCT MAX ( DISTINCT + col1 ) + - CAST ( + 95 AS INTEGER ) FROM tab0 cor0
----
-14

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5029
SELECT + CAST( + col2 AS SIGNED ) col0 FROM tab2 AS cor0
----
23
40
58

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5029
SELECT + CAST ( + col2 AS INTEGER ) col0 FROM tab2 AS cor0
----
23
40
58

query I rowsort
SELECT ALL col0 - - col1 * + - col1 * - col1 + + col2 AS col1 FROM tab0 AS cor0
----
197
531503
9358

onlyif mysql # aggregate syntax: 
query I rowsort label-5031
SELECT - MAX( ALL - 79 ) AS col1 FROM tab2 AS cor0
----
79

skipif mysql # not compatible
query I rowsort label-5031
SELECT - MAX ( ALL - 79 ) AS col1 FROM tab2 AS cor0
----
79

onlyif mysql # aggregate syntax: 
query I rowsort label-5032
SELECT ( + COUNT( * ) ) AS col0 FROM tab0 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-5032
SELECT ( + COUNT ( * ) ) AS col0 FROM tab0 AS cor0
----
3

query I rowsort
SELECT - 86 * ( col2 ) AS col1 FROM tab1 AS cor0
----
-5074
-5848
-8256

query III rowsort
SELECT * FROM tab2 WHERE - - 81 * - col1 IS NULL
----

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT - - 75 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5036
SELECT 13 * + 8 - + 30 + + - COUNT( * ) FROM tab0
----
71

skipif mysql # not compatible
query I rowsort label-5036
SELECT 13 * + 8 - + 30 + + - COUNT ( * ) FROM tab0
----
71

onlyif mysql # aggregate syntax: 
query I rowsort label-5037
SELECT ALL - ( + 73 ) * + COUNT( * ) FROM tab0, tab0 AS cor0
----
-657

skipif mysql # not compatible
query I rowsort label-5037
SELECT ALL - ( + 73 ) * + COUNT ( * ) FROM tab0, tab0 AS cor0
----
-657

onlyif mysql # aggregate syntax: 
query I rowsort label-5038
SELECT - COUNT( * ) AS col0 FROM tab0, tab2 cor0
----
-9

skipif mysql # not compatible
query I rowsort label-5038
SELECT - COUNT ( * ) AS col0 FROM tab0, tab2 cor0
----
-9

onlyif mysql # aggregate syntax: 
query I rowsort label-5039
SELECT DISTINCT + MIN( + col0 ) col0 FROM tab2
----
46

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5039
SELECT DISTINCT + MIN ( + col0 ) col0 FROM tab2
----
46

query II rowsort
SELECT col0 * + 19 AS col0, col1 AS col0 FROM tab2 WHERE NOT ( NULL IS NULL )
----

query I rowsort
SELECT - 45 * - ( col1 ) FROM tab0 AS cor0
----
3645
45
945

onlyif mysql # DIV for integer division: 
query I rowsort label-5042
SELECT ALL - 58 * 51 DIV col2 * - 99 FROM tab2 AS cor0
----
12672
5049
7227

skipif mysql # not compatible
query I rowsort label-5042
SELECT ALL - 58 * 51 / col2 * - 99 FROM tab2 AS cor0
----
12672
5049
7227

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5043
SELECT + CAST( + - col0 AS SIGNED ) AS col2 FROM tab1 AS cor0
----
-51
-85
-91

skipif mysql # not compatible
query I rowsort label-5043
SELECT + CAST ( + - col0 AS INTEGER ) AS col2 FROM tab1 AS cor0
----
-51
-85
-91

onlyif mysql # aggregate syntax: 
query II rowsort label-5044
SELECT DISTINCT SUM( ALL - 42 ), COUNT( * ) + - COUNT( * ) AS col2 FROM tab0 AS cor0
----
-126
0

skipif mysql # not compatible
query II rowsort label-5044
SELECT DISTINCT SUM ( ALL - 42 ), COUNT ( * ) + - COUNT ( * ) AS col2 FROM tab0 AS cor0
----
-126
0

query I rowsort
SELECT - col0 + + - col1 * + + col0 FROM tab0 AS cor0 WHERE NOT 42 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5046
SELECT - col2 * - + col0 DIV - - col0 FROM tab0 AS cor0
----
10
47
99

skipif mysql # not compatible
query I rowsort label-5046
SELECT - col2 * - + col0 / - - col0 FROM tab0 AS cor0
----
10
47
99

query IIIIII rowsort
SELECT ALL * FROM tab1 AS cor0 CROSS JOIN tab0 AS cor1 WHERE ( NULL ) BETWEEN NULL AND NULL
----

query II rowsort
SELECT ALL col2 AS col0, ( + col0 ) + col1 AS col2 FROM tab2
----
23
97
40
141
58
142

query III rowsort
SELECT ALL * FROM tab2 WHERE NULL < 26
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5050
SELECT ALL - COUNT( * ) * CAST( NULL AS SIGNED ) FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-5050
SELECT ALL - COUNT ( * ) * CAST ( NULL AS INTEGER ) FROM tab2
----
NULL

query I rowsort
SELECT + 79 * - - col1 FROM tab1 AS cor0
----
1106
3713
395

onlyif mysql # aggregate syntax: 
query I rowsort label-5052
SELECT COUNT( * ) * 42 AS col0 FROM tab2 AS cor0
----
126

skipif mysql # not compatible
query I rowsort label-5052
SELECT COUNT ( * ) * 42 AS col0 FROM tab2 AS cor0
----
126

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT ( NOT ( NULL IS NOT NULL ) )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5054
SELECT ALL + + COUNT( * ) DIV - COUNT( * ) AS col1 FROM tab0 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-5054
SELECT ALL + + COUNT ( * ) / - COUNT ( * ) AS col1 FROM tab0 AS cor0
----
-1

query I rowsort
SELECT DISTINCT col1 FROM tab1 AS cor0 WHERE ( - col1 NOT BETWEEN NULL AND + 19 )
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5056
SELECT + + 49 DIV + col1 AS col0 FROM tab2 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5056
SELECT + + 49 / + col1 AS col0 FROM tab2 AS cor0
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5057
SELECT ALL - + COUNT( * ) + 93 FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( col2, col0 )
----
93

skipif mysql # not compatible
query I rowsort label-5057
SELECT ALL - + COUNT ( * ) + 93 FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( col2, col0 )
----
93

query I rowsort
SELECT - col2 AS col0 FROM tab1 AS cor0 WHERE NOT col1 IS NULL
----
-59
-68
-96

query III rowsort
SELECT ALL * FROM tab2 cor0 WHERE NOT NULL NOT BETWEEN ( + col0 ) + col0 AND - 2
----

onlyif mysql # aggregate syntax: 
query II rowsort label-5060
SELECT COUNT( * ), SUM( ALL col0 ) AS col1 FROM tab2 AS cor0
----
3
185

skipif mysql # not compatible
query II rowsort label-5060
SELECT COUNT ( * ), SUM ( ALL col0 ) AS col1 FROM tab2 AS cor0
----
3
185

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - 23 col0 FROM tab0
----
-23
-23
-23

query I rowsort
SELECT + 47 + - ( + - col0 ) FROM tab1
----
132
138
98

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5063
SELECT DISTINCT - CAST( + col0 AS SIGNED ) + - + col0 FROM tab1 AS cor0
----
-102
-170
-182

skipif mysql # not compatible
query I rowsort label-5063
SELECT DISTINCT - CAST ( + col0 AS INTEGER ) + - + col0 FROM tab1 AS cor0
----
-102
-170
-182

onlyif mysql # aggregate syntax: 
query I rowsort label-5064
SELECT DISTINCT + + COUNT( col2 ) AS col0 FROM tab2 AS cor0
----
3

skipif mysql # not compatible
query I rowsort label-5064
SELECT DISTINCT + + COUNT ( col2 ) AS col0 FROM tab2 AS cor0
----
3

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT 97 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5066
SELECT ALL COUNT( * ) * - - COUNT( * ) AS col2 FROM tab2
----
9

skipif mysql # not compatible
query I rowsort label-5066
SELECT ALL COUNT ( * ) * - - COUNT ( * ) AS col2 FROM tab2
----
9

onlyif mysql # aggregate syntax: 
query I rowsort label-5067
SELECT ALL - COUNT( - 54 ) * + + 35 FROM tab2 WHERE NOT NULL IS NULL
----
0

skipif mysql # not compatible
query I rowsort label-5067
SELECT ALL - COUNT ( - 54 ) * + + 35 FROM tab2 WHERE NOT NULL IS NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5068
SELECT - COUNT( * ) - + + COUNT( * ) FROM tab2 AS cor0
----
-6

skipif mysql # not compatible
query I rowsort label-5068
SELECT - COUNT ( * ) - + + COUNT ( * ) FROM tab2 AS cor0
----
-6

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + col2 - + - col2 col1 FROM tab0 AS cor0
----
198
20
94

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 80 col0 FROM tab1 AS cor0
----
80
80
80

query I rowsort
SELECT + + 75 + col1 - - col1 FROM tab2 cor0
----
177
209
229

query I rowsort
SELECT ALL - col1 + - - ( 16 ) AS col1 FROM tab2 AS cor0
----
-35
-51
-61

query II rowsort
SELECT DISTINCT + - ( + col0 ) - + - col0 AS col2, col1 + ( + + col1 ) + - + col0 AS col0 FROM tab0 AS cor0
----
0
-45
0
-95
0
147

query II rowsort
SELECT - + col0 AS col2, col1 FROM tab0 WHERE + col1 IS NOT NULL
----
-15
81
-87
21
-97
1

query I rowsort
SELECT - - ( + col1 ) AS col2 FROM tab0 WHERE - col0 >= NULL
----

query I rowsort
SELECT + 70 * + ( + col1 ) FROM tab2
----
3570
4690
5390

query I rowsort
SELECT DISTINCT - 17 FROM tab2 WHERE - 19 + + col0 IS NOT NULL
----
-17

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - col1 col2, - col0 + - col0 AS col2 FROM tab1
----
-14
-102
-47
-182
-5
-170

query III rowsort
SELECT ALL * FROM tab1 WHERE - - 87 * ( + 78 ) IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-5080
SELECT - CAST( NULL AS SIGNED ) col2, MAX( - col2 ) AS col1 FROM tab1
----
NULL
-59

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-5080
SELECT - CAST ( NULL AS INTEGER ) col2, MAX ( - col2 ) AS col1 FROM tab1
----
NULL
-59

onlyif mysql # DIV for integer division: 
query II rowsort label-5081
SELECT 89 AS col0, - 33 DIV - 30 FROM tab0
----
89
1
89
1
89
1

skipif mysql # not compatible
query II rowsort label-5081
SELECT 89 AS col0, - 33 / - 30 FROM tab0
----
89
1
89
1
89
1

onlyif mysql # aggregate syntax: 
query II rowsort label-5082
SELECT SUM( - - col2 ), 24 AS col1 FROM tab0
----
156
24

skipif mysql # not compatible
query II rowsort label-5082
SELECT SUM ( - - col2 ), 24 AS col1 FROM tab0
----
156
24

query I rowsort
SELECT + col2 FROM tab0 WHERE NOT NULL > 40
----

query III rowsort
SELECT ALL * FROM tab0 WHERE NULL BETWEEN + 24 * - col2 AND 86 + + 6 + col1 + - 70
----

query I rowsort
SELECT ALL + - 80 AS col2 FROM tab2 AS cor0
----
-80
-80
-80

query I rowsort
SELECT + 17 * col0 AS col2 FROM tab1 AS cor0
----
1445
1547
867

query I rowsort
SELECT 2 * + 30 AS col2 FROM tab2
----
60
60
60

query I rowsort
SELECT DISTINCT 69 * 52 AS col2 FROM tab1
----
3588

onlyif mysql # DIV for integer division: 
query I rowsort label-5089
SELECT + 57 DIV + 19 FROM tab0
----
3
3
3

skipif mysql # not compatible
query I rowsort label-5089
SELECT + 57 / + 19 FROM tab0
----
3
3
3

query II rowsort
SELECT ALL - col2, col1 FROM tab1
----
-59
5
-68
47
-96
14

onlyif mysql # CAST syntax: DECIMAL type: 
query I rowsort label-5091
SELECT DISTINCT - CAST( NULL AS DECIMAL ) AS col2 FROM tab2 WHERE - col2 IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-5091
SELECT DISTINCT - CAST ( NULL AS REAL ) AS col2 FROM tab2 WHERE - col2 IS NOT NULL
----
NULL

query I rowsort
SELECT ALL + col2 + + col1 * - 88 FROM tab2
----
-4465
-5838
-6736

onlyif mysql # aggregate syntax: 
query I rowsort label-5093
SELECT DISTINCT COUNT( * ) + + 31 col1 FROM tab1
----
34

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5093
SELECT DISTINCT COUNT ( * ) + + 31 col1 FROM tab1
----
34

onlyif mysql # aggregate syntax: 
query I rowsort label-5094
SELECT DISTINCT + COUNT( * ) * 1 * + - COUNT( * ) FROM tab2
----
-9

skipif mysql # not compatible
query I rowsort label-5094
SELECT DISTINCT + COUNT ( * ) * 1 * + - COUNT ( * ) FROM tab2
----
-9

query I rowsort
SELECT + - col2 * + + col0 + + - 90 FROM tab0 AS cor0
----
-795
-960
-9693

query I rowsort
SELECT ALL + col1 * - col0 FROM tab1 AS cor0 WHERE NOT - 64 = NULL
----

query I rowsort
SELECT + col0 + - col2 + - 78 + + + col1 + - - col0 FROM tab2 cor0
----
42
81
87

onlyif mysql # aggregate syntax: 
query I rowsort label-5098
SELECT ( - COUNT( * ) ) * + COUNT( * ) AS col0 FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-5098
SELECT ( - COUNT ( * ) ) * + COUNT ( * ) AS col0 FROM tab1
----
-9

query I rowsort
SELECT DISTINCT + col2 + + 20 FROM tab1
----
116
79
88

onlyif mysql # aggregate syntax: 
query I rowsort label-5100
SELECT COUNT( * ) * 63 FROM tab0
----
189

skipif mysql # not compatible
query I rowsort label-5100
SELECT COUNT ( * ) * 63 FROM tab0
----
189

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5101
SELECT ALL CAST( NULL AS SIGNED ) AS col2 FROM tab1 WHERE NOT NULL NOT IN ( col2 )
----

skipif mysql # not compatible
query I rowsort label-5101
SELECT ALL CAST ( NULL AS INTEGER ) AS col2 FROM tab1 WHERE NOT NULL NOT IN ( col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5102
SELECT DISTINCT + MAX( ALL + col1 ) AS col0 FROM tab1
----
47

skipif mysql # not compatible
query I rowsort label-5102
SELECT DISTINCT + MAX ( ALL + col1 ) AS col0 FROM tab1
----
47

query I rowsort
SELECT ALL - col1 * 0 FROM tab0
----
0
0
0

query I rowsort
SELECT DISTINCT + col2 * + col2 AS col0 FROM tab0 WHERE NOT - col2 * - col0 <> ( NULL )
----

query III rowsort
SELECT * FROM tab1 WHERE NOT 41 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT + col2 + + col0 * + ( col0 ) AS col2 FROM tab0
----
272
7579
9508

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5107
SELECT - ( COUNT( - 1 ) ) * ( - ( - ( + MAX( col1 ) ) ) - + 79 ) + SUM( 28 + col1 ) * COUNT( DISTINCT + col0 DIV 73 ) AS col1 FROM tab0
----
368

skipif mysql # not compatible
query I rowsort label-5107
SELECT - ( COUNT ( - 1 ) ) * ( - ( - ( + MAX ( col1 ) ) ) - + 79 ) + SUM ( 28 + col1 ) * COUNT ( DISTINCT + col0 / 73 ) AS col1 FROM tab0
----
368

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT col1 BETWEEN ( NULL ) AND NULL
----

query I rowsort
SELECT ALL 64 * - col0 FROM tab1
----
-3264
-5440
-5824

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5110
SELECT DISTINCT col0 * + CAST( NULL AS SIGNED ) FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-5110
SELECT DISTINCT col0 * + CAST ( NULL AS INTEGER ) FROM tab1
----
NULL

query I rowsort
SELECT + 93 + 71 AS col2 FROM tab2
----
164
164
164

query I rowsort
SELECT - ( col2 ) + 18 AS col2 FROM tab0
----
-29
-81
8

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5113
SELECT ALL * FROM tab2 WHERE col0 * + CAST( CAST( - 16 AS SIGNED ) * + ( 8 ) AS SIGNED ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

skipif mysql # not compatible
query III rowsort label-5113
SELECT ALL * FROM tab2 WHERE col0 * + CAST ( CAST ( - 16 AS INTEGER ) * + ( 8 ) AS INTEGER ) IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # DIV for integer division: 
query I rowsort label-5114
SELECT - 82 + col1 DIV col0 FROM tab2
----
-81
-81
-82

skipif mysql # not compatible
query I rowsort label-5114
SELECT - 82 + col1 / col0 FROM tab2
----
-81
-81
-82

query III rowsort
SELECT ALL * FROM tab1 WHERE + col2 >= ( NULL )
----

query I rowsort
SELECT ALL + ( + 81 ) - - col2 * - col0 FROM tab1
----
-4815
-4934
-6107

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5117
SELECT DISTINCT CAST( NULL AS SIGNED ) + - COUNT( * ) AS col0 FROM tab1
----
NULL

skipif mysql # not compatible
query I rowsort label-5117
SELECT DISTINCT CAST ( NULL AS INTEGER ) + - COUNT ( * ) AS col0 FROM tab1
----
NULL

query I rowsort
SELECT - col1 + 80 * 73 FROM tab0
----
5759
5819
5839

query I rowsort
SELECT ALL col1 * - col2 AS col2 FROM tab1 WHERE NOT col2 + + col1 IS NOT NULL
----

query I rowsort
SELECT ALL - 38 * col1 + - 92 FROM tab0
----
-130
-3170
-890

onlyif mysql # aggregate syntax: 
query I rowsort label-5121
SELECT - COUNT( * ) * 76 AS col1 FROM tab1 AS cor0
----
-228

skipif mysql # not compatible
query I rowsort label-5121
SELECT - COUNT ( * ) * 76 AS col1 FROM tab1 AS cor0
----
-228

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT col2 + - 27 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # aggregate syntax: 
query I rowsort label-5123
SELECT + MIN( col1 ) * + 9 FROM tab2 AS cor0
----
459

skipif mysql # not compatible
query I rowsort label-5123
SELECT + MIN ( col1 ) * + 9 FROM tab2 AS cor0
----
459

query I rowsort
SELECT ALL + col0 - col0 FROM tab2 AS cor0 WHERE NOT ( ( col1 ) ) IS NULL
----
0
0
0

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT + ( col1 ) IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5126
SELECT ( + 69 ) DIV 98 FROM tab1 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5126
SELECT ( + 69 ) / 98 FROM tab1 AS cor0
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5127
SELECT + CAST( col1 AS SIGNED ) * + col1 FROM tab0 cor0
----
1
441
6561

skipif mysql # not compatible
query I rowsort label-5127
SELECT + CAST ( col1 AS INTEGER ) * + col1 FROM tab0 cor0
----
1
441
6561

onlyif mysql # aggregate syntax: 
query I rowsort label-5128
SELECT ALL + SUM( ALL col0 ) AS col1 FROM tab0 AS cor0
----
199

skipif mysql # not compatible
query I rowsort label-5128
SELECT ALL + SUM ( ALL col0 ) AS col1 FROM tab0 AS cor0
----
199

onlyif mysql # aggregate syntax: 
query I rowsort label-5129
SELECT - COUNT( * ) FROM tab1 AS cor0 CROSS JOIN tab2
----
-9

skipif mysql # not compatible
query I rowsort label-5129
SELECT - COUNT ( * ) FROM tab1 AS cor0 CROSS JOIN tab2
----
-9

query I rowsort
SELECT 0 FROM tab0 AS cor0 CROSS JOIN tab2
----
9 values hashing to 8b75136b2b51c77345c03804ec1cda5c

onlyif mysql # aggregate syntax: 
query I rowsort label-5131
SELECT MIN( DISTINCT - col2 ) AS col2 FROM tab0
----
-99

skipif mysql # not compatible
query I rowsort label-5131
SELECT MIN ( DISTINCT - col2 ) AS col2 FROM tab0
----
-99

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE ( NULL ) = ( ( + 16 ) * - col1 )
----

query I rowsort
SELECT col1 * + col1 FROM tab0 AS cor0 WHERE NOT col2 IS NULL
----
1
441
6561

query I rowsort
SELECT DISTINCT + ( + col1 ) + + 73 FROM tab1 AS cor0
----
120
78
87

query III rowsort
SELECT DISTINCT * FROM tab1 cor0 WHERE ( NULL ) BETWEEN 16 AND - col0
----

query I rowsort
SELECT ALL - col0 + - col0 * - 85 FROM tab0 AS cor0 WHERE col1 * 82 IS NOT NULL
----
1260
7308
8148

query I rowsort
SELECT ALL + 50 + col1 AS col2 FROM tab2 AS cor0
----
101
117
127

query I rowsort
SELECT 33 + - 23 FROM tab1
----
10
10
10

query I rowsort
SELECT col1 + - col1 + - col2 FROM tab0
----
-10
-47
-99

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT 35 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT + col2 AS col1 FROM tab1 WHERE NOT ( - col0 + + 24 ) < NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-5142
SELECT * FROM tab0 WHERE - 10 / + CAST( NULL AS DECIMAL ) - 47 BETWEEN col2 + 97 AND + col1
----

skipif mysql # not compatible
query III rowsort label-5142
SELECT * FROM tab0 WHERE - 10 / + CAST ( NULL AS REAL ) - 47 BETWEEN col2 + 97 AND + col1
----

query I rowsort
SELECT ALL - col2 AS col2 FROM tab0 WHERE ( col2 ) BETWEEN 96 AND 96
----

query I rowsort
SELECT col0 AS col0 FROM tab1 WHERE + 93 IS NOT NULL
----
51
85
91

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5145
SELECT ALL - ( CAST( - MIN( DISTINCT + col2 ) AS SIGNED ) ) + - 87 AS col0 FROM tab2
----
-64

skipif mysql # not compatible
query I rowsort label-5145
SELECT ALL - ( CAST ( - MIN ( DISTINCT + col2 ) AS INTEGER ) ) + - 87 AS col0 FROM tab2
----
-64

onlyif mysql # aggregate syntax: 
query I rowsort label-5146
SELECT - MIN( + + col0 ) * + COUNT( * ) + ( + 98 - + 52 ) * 39 AS col0 FROM tab1 AS cor0
----
1641

skipif mysql # not compatible
query I rowsort label-5146
SELECT - MIN ( + + col0 ) * + COUNT ( * ) + ( + 98 - + 52 ) * 39 AS col0 FROM tab1 AS cor0
----
1641

onlyif mysql # aggregate syntax: 
query I rowsort label-5147
SELECT DISTINCT - COUNT( * ) + MIN( DISTINCT - col2 ) AS col0 FROM tab1 AS cor0
----
-99

skipif mysql # not compatible
query I rowsort label-5147
SELECT DISTINCT - COUNT ( * ) + MIN ( DISTINCT - col2 ) AS col0 FROM tab1 AS cor0
----
-99

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE ( + 26 * + col1 + - col0 ) = ( NULL )
----

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE col2 * col1 < NULL
----

query I rowsort
SELECT 27 AS col0 FROM tab1 cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to 701bf12d86392cb1585d9e4f3c72e9a8

query III rowsort
SELECT * FROM tab2 WHERE ( + ( + col2 ) ) IN ( - 18 * 68 )
----

query I rowsort
SELECT DISTINCT 29 - 11 AS col1 FROM tab1 WHERE - + 60 IS NOT NULL
----
18

query I rowsort
SELECT 9 - 42 AS col1 FROM tab2
----
-33
-33
-33

query I rowsort
SELECT 40 AS col0 FROM tab0 cor0 CROSS JOIN tab2 cor1
----
9 values hashing to b1e8ffeef334b4a2b01b2f91e649c2d3

onlyif mysql # DIV for integer division: 
query I rowsort label-5155
SELECT DISTINCT col0 DIV - 70 AS col2 FROM tab2
----
-1
0

skipif mysql # not compatible
query I rowsort label-5155
SELECT DISTINCT col0 / - 70 AS col2 FROM tab2
----
-1
0

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5156
SELECT ( + CAST( NULL AS SIGNED ) ) - + 40 AS col1 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5156
SELECT ( + CAST ( NULL AS INTEGER ) ) - + 40 AS col1 FROM tab0
----
NULL
NULL
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-5157
SELECT + SUM( ALL 60 ) FROM tab0 AS cor0 CROSS JOIN tab2 cor1
----
540

skipif mysql # not compatible
query I rowsort label-5157
SELECT + SUM ( ALL 60 ) FROM tab0 AS cor0 CROSS JOIN tab2 cor1
----
540

onlyif mysql # aggregate syntax: 
query I rowsort label-5158
SELECT DISTINCT - SUM( DISTINCT col1 ) FROM tab2
----
-195

skipif mysql # not compatible
query I rowsort label-5158
SELECT DISTINCT - SUM ( DISTINCT col1 ) FROM tab2
----
-195

query IIIIII rowsort
SELECT DISTINCT * FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1 WHERE NOT + 24 * + 63 IS NOT NULL
----

query I rowsort
SELECT DISTINCT - ( + ( + col1 ) ) FROM tab0 AS cor0
----
-1
-21
-81

query I rowsort
SELECT 39 + + col0 FROM tab1 AS cor0
----
124
130
90

onlyif mysql # aggregate syntax: 
query I rowsort label-5162
SELECT DISTINCT - + SUM( ALL + - col1 ) AS col1 FROM tab0 cor0
----
103

skipif mysql # not compatible
query I rowsort label-5162
SELECT DISTINCT - + SUM ( ALL + - col1 ) AS col1 FROM tab0 cor0
----
103

query II rowsort
SELECT ALL - col2 AS col2, 50 FROM tab2 AS cor0
----
-23
50
-40
50
-58
50

query I rowsort
SELECT ALL 90 + 94 FROM tab1 AS cor0 WHERE ( - col1 * + col1 ) <> 86
----
184
184
184

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - col0 * col0 + 56 col2 FROM tab1 AS cor0
----
-2545
-7169
-8225

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT NULL <= 34
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT ( - + col1 ) IN ( col2 / + col2 ) OR NULL IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-5168
SELECT MIN( - - col1 ) AS col2 FROM tab1 AS cor0
----
5

skipif mysql # not compatible
query I rowsort label-5168
SELECT MIN ( - - col1 ) AS col2 FROM tab1 AS cor0
----
5

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT ( NULL ) NOT BETWEEN NULL AND + - col0 * + col1
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT + ( - col0 ) <= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5171
SELECT MAX( DISTINCT col2 ) FROM tab1 cor0
----
96

skipif mysql # not compatible
query I rowsort label-5171
SELECT MAX ( DISTINCT col2 ) FROM tab1 cor0
----
96

onlyif mysql # aggregate syntax: 
query I rowsort label-5172
SELECT ALL COUNT( DISTINCT - col1 ) AS col2 FROM tab2 WHERE - 55 * + - col0 + col1 IS NOT NULL
----
3

skipif mysql # not compatible
query I rowsort label-5172
SELECT ALL COUNT ( DISTINCT - col1 ) AS col2 FROM tab2 WHERE - 55 * + - col0 + col1 IS NOT NULL
----
3

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5173
SELECT ALL COUNT( * ) DIV + + 51 FROM tab1
----
0

skipif mysql # not compatible
query I rowsort label-5173
SELECT ALL COUNT ( * ) / + + 51 FROM tab1
----
0

query I rowsort
SELECT DISTINCT col2 * - ( - - 85 ) * - + col2 FROM tab1
----
295885
393040
783360

onlyif mysql # aggregate syntax: 
query I rowsort label-5175
SELECT - COUNT( * ) * COUNT( * ) FROM tab2
----
-9

skipif mysql # not compatible
query I rowsort label-5175
SELECT - COUNT ( * ) * COUNT ( * ) FROM tab2
----
-9

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5176
SELECT * FROM tab1 WHERE NOT - CAST( NULL AS SIGNED ) BETWEEN NULL AND NULL
----

skipif mysql # not compatible
query III rowsort label-5176
SELECT * FROM tab1 WHERE NOT - CAST ( NULL AS INTEGER ) BETWEEN NULL AND NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-5177
SELECT - SUM( ALL - col1 ), + 15 AS col1 FROM tab1
----
66
15

skipif mysql # not compatible
query II rowsort label-5177
SELECT - SUM ( ALL - col1 ), + 15 AS col1 FROM tab1
----
66
15

query I rowsort
SELECT ALL + + 75 FROM tab1 cor0
----
75
75
75

onlyif mysql # aggregate syntax: 
query I rowsort label-5179
SELECT + - MAX( 44 ) * COUNT( * ) AS col0 FROM tab0 AS cor0
----
-132

skipif mysql # not compatible
query I rowsort label-5179
SELECT + - MAX ( 44 ) * COUNT ( * ) AS col0 FROM tab0 AS cor0
----
-132

onlyif mysql # aggregate syntax: 
query I rowsort label-5180
SELECT DISTINCT - + COUNT( * ) FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

skipif mysql # not compatible
query I rowsort label-5180
SELECT DISTINCT - + COUNT ( * ) FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
-9

query I rowsort
SELECT ALL + col2 + - + 4 FROM tab2 AS cor0
----
19
36
54

query I rowsort
SELECT ALL + + col1 + 86 * col2 * - - col2 AS col0 FROM tab2 AS cor0
----
137677
289371
45545

query I rowsort
SELECT DISTINCT - 89 AS col2 FROM tab1 AS cor0 WHERE NOT col1 NOT BETWEEN + 62 AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5184
SELECT DISTINCT + + ( + 52 ) + - CAST( + col2 AS SIGNED ) FROM tab1 AS cor0
----
-16
-44
-7

skipif mysql # not compatible
query I rowsort label-5184
SELECT DISTINCT + + ( + 52 ) + - CAST ( + col2 AS INTEGER ) FROM tab1 AS cor0
----
-16
-44
-7

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5185
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( + col0 * + - CAST( col2 AS SIGNED ) ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-5185
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT ( + col0 * + - CAST ( col2 AS INTEGER ) ) IS NOT NULL
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE + 33 * - col1 = ( col0 * + - col1 * col2 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5187
SELECT - SUM( 88 ) FROM tab1 AS cor0
----
-264

skipif mysql # not compatible
query I rowsort label-5187
SELECT - SUM ( 88 ) FROM tab1 AS cor0
----
-264

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE 72 NOT BETWEEN NULL AND col0
----
46
51
23
64
77
40

query I rowsort
SELECT DISTINCT - + col0 * + - col1 / 36 * col0 AS col2 FROM tab1 AS cor0 WHERE NOT - col1 = NULL
----

query I rowsort
SELECT col0 * - col0 - col2 FROM tab1 AS cor0 WHERE 24 NOT BETWEEN - col2 AND - col0 - col2
----
-2697
-7284
-8349

query II rowsort
SELECT ALL + col1, + 35 FROM tab1
----
14
35
47
35
5
35

onlyif mysql # aggregate syntax: 
query I rowsort label-5192
SELECT + MIN( DISTINCT 31 ) FROM tab1
----
31

skipif mysql # not compatible
query I rowsort label-5192
SELECT + MIN ( DISTINCT 31 ) FROM tab1
----
31

onlyif mysql # aggregate syntax: 
query I rowsort label-5193
SELECT - COUNT( * ) * + COUNT( * ) * - - 85 AS col2 FROM tab2
----
-765

skipif mysql # not compatible
query I rowsort label-5193
SELECT - COUNT ( * ) * + COUNT ( * ) * - - 85 AS col2 FROM tab2
----
-765

onlyif mysql # aggregate syntax: 
query I rowsort label-5194
SELECT - MAX( - + col1 ) col0 FROM tab2
----
51

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5194
SELECT - MAX ( - + col1 ) col0 FROM tab2
----
51

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5195
SELECT ALL * FROM tab2 WHERE NOT NULL NOT IN ( + CAST( NULL AS SIGNED ) )
----

skipif mysql # not compatible
query III rowsort label-5195
SELECT ALL * FROM tab2 WHERE NOT NULL NOT IN ( + CAST ( NULL AS INTEGER ) )
----

query I rowsort
SELECT DISTINCT col2 AS col1 FROM tab0 WHERE col0 / - col0 + - col1 + col2 + + col0 IS NULL
----

query II rowsort
SELECT DISTINCT col1 AS col2, - ( + col0 ) + - - 85 FROM tab1
----
14
34
47
-6
5
0

query I rowsort
SELECT DISTINCT + 52 + + 44 FROM tab0 AS cor0
----
96

query I rowsort
SELECT - + ( + col1 ) + + + col0 FROM tab0 AS cor0
----
-66
66
96

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + + col2 + - 15 col0 FROM tab1 AS cor0
----
44
53
81

query I rowsort
SELECT ALL + + col1 * col2 + 69 * - - col0 - - - col0 FROM tab1 AS cor0
----
4812
6075
9384

query I rowsort
SELECT + 28 + 88 AS col1 FROM tab0 cor0
----
116
116
116

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5203
SELECT + CAST( NULL AS SIGNED ) FROM tab1 AS cor0 WHERE - 18 IN ( col2 )
----

skipif mysql # not compatible
query I rowsort label-5203
SELECT + CAST ( NULL AS INTEGER ) FROM tab1 AS cor0 WHERE - 18 IN ( col2 )
----

query I rowsort
SELECT col2 * - - 23 FROM tab0 WHERE NOT - col2 IS NOT NULL
----

query II rowsort
SELECT DISTINCT 16 * + 27, col1 FROM tab1
----
432
14
432
47
432
5

query I rowsort
SELECT + col1 FROM tab2 AS cor0 WHERE NOT ( ( NULL ) = - col2 * - 18 / 99 )
----

query I rowsort
SELECT ALL + + col0 * 55 AS col1 FROM tab0 AS cor0
----
4785
5335
825

query I rowsort
SELECT - 93 * - + col1 * - - col1 + col2 * - - col1 FROM tab1 AS cor0
----
19572
208633
2620

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + 14 col2 FROM tab0 AS cor0
----
14
14
14

onlyif mysql # DIV for integer division: 
query II rowsort label-5210
SELECT - + 59 DIV - 42 col0, - ( - - 43 ) * - + 67 * col0 + + 13 * + ( + 38 ) FROM tab1 cor0
----
1
147425
1
245379
1
262665

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-5210
SELECT - + 59 / - 42 col0, - ( - - 43 ) * - + 67 * col0 + + 13 * + ( + 38 ) FROM tab1 cor0
----
1
147425
1
245379
1
262665

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5211
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( ( - ( 66 ) + + - col2 * - CAST( NULL AS SIGNED ) ) NOT IN ( col2 ) )
----

skipif mysql # not compatible
query III rowsort label-5211
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( ( - ( 66 ) + + - col2 * - CAST ( NULL AS INTEGER ) ) NOT IN ( col2 ) )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5212
SELECT DISTINCT + MAX( + col0 ) DIV + + ( - COUNT( - col2 ) ) AS col0 FROM tab1 AS cor0
----
-30

skipif mysql # not compatible
query I rowsort label-5212
SELECT DISTINCT + MAX ( + col0 ) / + + ( - COUNT ( - col2 ) ) AS col0 FROM tab1 AS cor0
----
-30

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + - 85 * col0 col0 FROM tab1 AS cor0
----
-4335
-7225
-7735

query I rowsort
SELECT DISTINCT - + col2 AS col0 FROM tab0 WHERE + col0 IS NULL
----

query II rowsort
SELECT col1 AS col1, - col2 FROM tab1
----
14
-96
47
-68
5
-59

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5216
SELECT DISTINCT CAST( + COUNT( ALL - col2 ) AS SIGNED ) AS col1 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-5216
SELECT DISTINCT CAST ( + COUNT ( ALL - col2 ) AS INTEGER ) AS col1 FROM tab2
----
3

query I rowsort
SELECT ALL + col2 AS col2 FROM tab2 WHERE col2 * col0 + + col2 + col0 * + + 94 IS NULL
----

query III rowsort
SELECT * FROM tab2 WHERE NOT col0 * col1 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5219
SELECT ALL CAST( - + col0 AS SIGNED ) FROM tab1
----
-51
-85
-91

skipif mysql # not compatible
query I rowsort label-5219
SELECT ALL CAST ( - + col0 AS INTEGER ) FROM tab1
----
-51
-85
-91

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5220
SELECT DISTINCT - CAST( NULL AS SIGNED ) * - - 79 AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-5220
SELECT DISTINCT - CAST ( NULL AS INTEGER ) * - - 79 AS col0 FROM tab0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-5221
SELECT - COUNT( DISTINCT - 83 ) AS col2 FROM tab2
----
-1

skipif mysql # not compatible
query I rowsort label-5221
SELECT - COUNT ( DISTINCT - 83 ) AS col2 FROM tab2
----
-1

query II rowsort
SELECT DISTINCT col1 AS col2, + col2 AS col1 FROM tab0
----
1
99
21
10
81
47

query I rowsort
SELECT col2 * + - col2 FROM tab2 AS cor0 WHERE NOT NULL < NULL
----

query I rowsort
SELECT 7 AS col0 FROM tab0 AS cor0 WHERE NOT - col1 NOT BETWEEN - + col2 * + ( - col0 ) AND NULL
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NOT - col0 * 11 * - - ( - 81 ) IN ( col0 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL + 87 FROM tab1 AS cor0 CROSS JOIN tab1 AS cor1
----
9 values hashing to fa0cdd86483844cda3bb806e032d5c64

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5227
SELECT ALL * FROM tab0 WHERE NOT ( NULL ) <> CAST( NULL AS SIGNED ) * + 17 * - ( + - col2 )
----

skipif mysql # not compatible
query III rowsort label-5227
SELECT ALL * FROM tab0 WHERE NOT ( NULL ) <> CAST ( NULL AS INTEGER ) * + 17 * - ( + - col2 )
----

query III rowsort
SELECT * FROM tab1 WHERE - col0 <> col2 / - - col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-5229
SELECT ALL MIN( DISTINCT col2 ) + + + 65 FROM tab1 AS cor0
----
124

skipif mysql # not compatible
query I rowsort label-5229
SELECT ALL MIN ( DISTINCT col2 ) + + + 65 FROM tab1 AS cor0
----
124

query III rowsort
SELECT DISTINCT * FROM tab0 cor0 WHERE ( NULL ) <> NULL
----

query II rowsort
SELECT DISTINCT - col1 + - col1 AS col0, 30 * + + col2 AS col1 FROM tab0 AS cor0
----
-162
1410
-2
2970
-42
300

query II rowsort
SELECT ( - col1 ), col2 AS col0 FROM tab1 AS cor0
----
-14
96
-47
68
-5
59

query I rowsort
SELECT ALL + + col2 + col2 * + 95 FROM tab2 AS cor0
----
2208
3840
5568

onlyif mysql # DIV for integer division: 
query I rowsort label-5234
SELECT DISTINCT col2 DIV + - col2 + - col1 AS col2 FROM tab1 AS cor0
----
-15
-48
-6

skipif mysql # not compatible
query I rowsort label-5234
SELECT DISTINCT col2 / + - col2 + - col1 AS col2 FROM tab1 AS cor0
----
-15
-48
-6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5235
SELECT - CAST( NULL AS SIGNED ) + + + 20 / + col2 + + 31 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5235
SELECT - CAST ( NULL AS INTEGER ) + + + 20 / + col2 + + 31 FROM tab1 AS cor0
----
NULL
NULL
NULL

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE + ( col1 ) IS NULL
----

query III rowsort
SELECT * FROM tab1 cor0 WHERE NULL NOT BETWEEN ( NULL ) AND col1
----

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE - col1 NOT BETWEEN - + col1 + + - col1 AND + col2
----

query II rowsort
SELECT DISTINCT col2 + - 3, - col1 * + 14 AS col2 FROM tab1 AS cor0
----
56
-70
65
-658
93
-196

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ( - - col2 ) + col2 col1 FROM tab1
----
118
136
192

query I rowsort
SELECT ALL - col1 - - + col2 FROM tab1
----
21
54
82

onlyif mysql # aggregate syntax: 
query I rowsort label-5242
SELECT DISTINCT MIN( 94 ) FROM tab0
----
94

skipif mysql # not compatible
query I rowsort label-5242
SELECT DISTINCT MIN ( 94 ) FROM tab0
----
94

query I rowsort
SELECT - 25 + + 60 FROM tab1
----
35
35
35

onlyif mysql # DIV for integer division: 
query I rowsort label-5244
SELECT col1 DIV - col1 + + ( + - col0 ) FROM tab1
----
-52
-86
-92

skipif mysql # not compatible
query I rowsort label-5244
SELECT col1 / - col1 + + ( + - col0 ) FROM tab1
----
-52
-86
-92

query I rowsort
SELECT + 61 + - ( col0 ) AS col0 FROM tab0
----
-26
-36
46

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5246
SELECT ALL + col0 FROM tab2 WHERE NOT col1 + + 8 > 71 * + col1 + + col0 / + 83 * CAST( col0 AS SIGNED ) * col2 + - 66
----
46
64
75

skipif mysql # not compatible
query I rowsort label-5246
SELECT ALL + col0 FROM tab2 WHERE NOT col1 + + 8 > 71 * + col1 + + col0 / + 83 * CAST ( col0 AS INTEGER ) * col2 + - 66
----
46
64
75

onlyif mysql # aggregate syntax: 
query I rowsort label-5247
SELECT SUM( + - col1 ) FROM tab1 AS cor0
----
-66

skipif mysql # not compatible
query I rowsort label-5247
SELECT SUM ( + - col1 ) FROM tab1 AS cor0
----
-66

query I rowsort
SELECT DISTINCT - - col0 * - + col2 + + + 97 AS col0 FROM tab0 AS cor0 WHERE NOT ( - col2 IS NOT NULL )
----

query I rowsort
SELECT DISTINCT - 22 + + col1 AS col0 FROM tab2 AS cor0
----
29
45
55

query I rowsort
SELECT DISTINCT + col0 FROM tab0 WHERE + col1 IS NULL
----

query I rowsort
SELECT + ( col2 ) * 97 AS col0 FROM tab0 AS cor0
----
4559
9603
970

query II rowsort
SELECT ALL - ( col2 ) * - 96 * - - 35 AS col2, 87 AS col1 FROM tab2 AS cor0
----
134400
87
194880
87
77280
87

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NOT - col2 * + 38 + + col2 NOT IN ( - col2, + col0, col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5254
SELECT DISTINCT - COUNT( * ) * + 18 FROM tab0 cor0
----
-54

skipif mysql # not compatible
query I rowsort label-5254
SELECT DISTINCT - COUNT ( * ) * + 18 FROM tab0 cor0
----
-54

onlyif mysql # aggregate syntax: 
query I rowsort label-5255
SELECT ALL - COUNT( * ) FROM tab2 AS cor0 WHERE NULL IS NULL
----
-3

skipif mysql # not compatible
query I rowsort label-5255
SELECT ALL - COUNT ( * ) FROM tab2 AS cor0 WHERE NULL IS NULL
----
-3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5256
SELECT ALL 46 * - CAST( NULL AS SIGNED ) + + + col2 AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5256
SELECT ALL 46 * - CAST ( NULL AS INTEGER ) + + + col2 AS col0 FROM tab0 AS cor0
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5257
SELECT + CAST( - 69 AS SIGNED ) AS col0 FROM tab1
----
-69
-69
-69

skipif mysql # not compatible
query I rowsort label-5257
SELECT + CAST ( - 69 AS INTEGER ) AS col0 FROM tab1
----
-69
-69
-69

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5258
SELECT ALL CAST( NULL AS SIGNED ) * + 83 AS col0 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5258
SELECT ALL CAST ( NULL AS INTEGER ) * + 83 AS col0 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5259
SELECT - 39 AS col1 FROM tab2 AS cor0 WHERE NOT + col1 + - 54 + col2 * + col1 NOT IN ( - CAST( NULL AS SIGNED ) * + 20, + col1 )
----

skipif mysql # not compatible
query I rowsort label-5259
SELECT - 39 AS col1 FROM tab2 AS cor0 WHERE NOT + col1 + - 54 + col2 * + col1 NOT IN ( - CAST ( NULL AS INTEGER ) * + 20, + col1 )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5260
SELECT ALL MAX( ALL - + col1 ) FROM tab0 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-5260
SELECT ALL MAX ( ALL - + col1 ) FROM tab0 AS cor0
----
-1

onlyif mysql # DIV for integer division: 
query I rowsort label-5261
SELECT + - col1 DIV ( ( 70 ) ) * + col2 + - col0 FROM tab2 AS cor0
----
-104
-46
-75

skipif mysql # not compatible
query I rowsort label-5261
SELECT + - col1 / ( ( 70 ) ) * + col2 + - col0 FROM tab2 AS cor0
----
-104
-46
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-5262
SELECT ALL ( + + 76 ) * COUNT( * ) col0 FROM tab0
----
228

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5262
SELECT ALL ( + + 76 ) * COUNT ( * ) col0 FROM tab0
----
228

onlyif mysql # aggregate syntax: 
query I rowsort label-5263
SELECT DISTINCT - 3 + 46 * + - COUNT( ALL + col1 ) AS col2 FROM tab1 cor0
----
-141

skipif mysql # not compatible
query I rowsort label-5263
SELECT DISTINCT - 3 + 46 * + - COUNT ( ALL + col1 ) AS col2 FROM tab1 cor0
----
-141

query I rowsort
SELECT DISTINCT - - 58 + col0 FROM tab0 AS cor0
----
145
155
73

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5265
SELECT DISTINCT + - 49 col2 FROM tab2 AS cor0 WHERE NOT - col1 NOT BETWEEN NULL AND - col0 / - + col2 * + col2 * CAST( NULL AS SIGNED ) * + col2
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5265
SELECT DISTINCT + - 49 col2 FROM tab2 AS cor0 WHERE NOT - col1 NOT BETWEEN NULL AND - col0 / - + col2 * + col2 * CAST ( NULL AS INTEGER ) * + col2
----

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE 50 + + + col1 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT ALL col0 + - - col2 FROM tab2 AS cor0
----
104
133
69

query II rowsort
SELECT + - 77, col1 FROM tab0 AS cor0
----
-77
1
-77
21
-77
81

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + + col2 - - col2 col1 FROM tab1 AS cor0
----
118
136
192

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE 79 / - - col1 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + 37, col2 col1 FROM tab1 AS cor0
----
37
59
37
68
37
96

query I rowsort
SELECT + 3 - + col1 AS col2 FROM tab1
----
-11
-2
-44

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5273
SELECT * FROM tab1 WHERE - - CAST( + col0 AS SIGNED ) > - col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

skipif mysql # not compatible
query III rowsort label-5273
SELECT * FROM tab1 WHERE - - CAST ( + col0 AS INTEGER ) > - col0
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT - 69 - - 84 AS col0 FROM tab1
----
15
15
15

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL + col0 * col1 col1, 79 AS col1 FROM tab1
----
425
79
4277
79
714
79

query I rowsort
SELECT 47 * - - 27 AS col0 FROM tab1 WHERE 23 * col0 * - + 45 <> NULL
----

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT ( 78 ) IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-5278
SELECT - SUM( - col2 ) FROM tab0 AS cor0 WHERE NOT - col0 IS NULL
----
156

skipif mysql # not compatible
query I rowsort label-5278
SELECT - SUM ( - col2 ) FROM tab0 AS cor0 WHERE NOT - col0 IS NULL
----
156

query I rowsort
SELECT DISTINCT col1 * + - 67 FROM tab1 AS cor0
----
-3149
-335
-938

query II rowsort
SELECT ALL + 6 AS col2, col0 AS col1 FROM tab1 cor0
----
6
51
6
85
6
91

query I rowsort
SELECT 20 * - col2 + + col1 * + col0 + - 32 - + 81 FROM tab1 AS cor0
----
-1319
-868
2804

query I rowsort
SELECT - 47 * - 32 AS col0 FROM tab2 cor0
----
1504
1504
1504

query III rowsort
SELECT * FROM tab1 WHERE NOT NULL < ( ( + col0 ) + - 58 )
----

query I rowsort
SELECT DISTINCT 60 AS col2 FROM tab1 WHERE - col0 BETWEEN NULL AND NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-5285
SELECT CAST( + COUNT( * ) AS SIGNED ), - ( - SUM( 65 ) ) AS col0 FROM tab1
----
3
195

skipif mysql # not compatible
query II rowsort label-5285
SELECT CAST ( + COUNT ( * ) AS INTEGER ), - ( - SUM ( 65 ) ) AS col0 FROM tab1
----
3
195

query I rowsort
SELECT ALL col1 FROM tab0 WHERE NULL NOT BETWEEN NULL AND ( + 82 )
----

query II rowsort
SELECT col1, - col0 - - col2 AS col1 FROM tab2
----
51
-23
67
-17
77
-24

query II rowsort
SELECT - 14 + - 22 AS col2, col0 AS col0 FROM tab1
----
-36
51
-36
85
-36
91

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5289
SELECT ALL - CAST( + 46 AS SIGNED ) + col2 * - col2 AS col0 FROM tab2
----
-1646
-3410
-575

skipif mysql # not compatible
query I rowsort label-5289
SELECT ALL - CAST ( + 46 AS INTEGER ) + col2 * - col2 AS col0 FROM tab2
----
-1646
-3410
-575

query I rowsort
SELECT DISTINCT + 99 + - 76 FROM tab1 AS cor0
----
23

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE - col2 - + col2 - col2 * col2 IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT + - col0 + + 55 col0 FROM tab2 cor0
----
-20
-9
9

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + 10 + + - col1 col1 FROM tab0 AS cor0
----
-11
-71
9

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( NOT + - 5 IS NULL )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query III rowsort
SELECT * FROM tab2 AS cor0 WHERE ( col0 ) + - col1 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query II rowsort
SELECT ALL col0, - 97 FROM tab1 AS cor0
----
51
-97
85
-97
91
-97

query I rowsort
SELECT ALL + col2 FROM tab1 WHERE NOT col2 <> - col0
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5298
SELECT ALL 48 * + + CAST( NULL AS SIGNED ) AS col0 FROM tab0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5298
SELECT ALL 48 * + + CAST ( NULL AS INTEGER ) AS col0 FROM tab0
----
NULL
NULL
NULL

query I rowsort
SELECT ALL - col1 FROM tab2 WHERE NOT col2 IS NULL
----
-51
-67
-77

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5300
SELECT CAST( 45 AS SIGNED ) AS col1 FROM tab1
----
45
45
45

skipif mysql # not compatible
query I rowsort label-5300
SELECT CAST ( 45 AS INTEGER ) AS col1 FROM tab1
----
45
45
45

query I rowsort
SELECT - col2 * col2 - - col2 * - col2 FROM tab0 AS cor0
----
-19602
-200
-4418

query I rowsort
SELECT DISTINCT - 75 * - ( - col1 ) + + - col0 + col1 + col0 * col1 AS col2 FROM tab0 AS cor0
----
-4794
-74
186

onlyif mysql # aggregate syntax: 
query I rowsort label-5303
SELECT + - SUM( DISTINCT + - col1 ) - - 35 FROM tab2 AS cor0
----
230

skipif mysql # not compatible
query I rowsort label-5303
SELECT + - SUM ( DISTINCT + - col1 ) - - 35 FROM tab2 AS cor0
----
230

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL + + col2 + + 99 col2 FROM tab2 AS cor0
----
122
139
157

query I rowsort
SELECT - col2 - + - col2 FROM tab0 AS cor0
----
0
0
0

query I rowsort
SELECT DISTINCT + 96 + col1 FROM tab1 AS cor0
----
101
110
143

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5307
SELECT - 83 * - CAST( - - col2 AS SIGNED ) + col0 col0 FROM tab0 AS cor0
----
3916
8314
917

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5307
SELECT - 83 * - CAST ( - - col2 AS INTEGER ) + col0 col0 FROM tab0 AS cor0
----
3916
8314
917

query I rowsort
SELECT ALL + col2 + + col1 * + col1 FROM tab1 AS cor0
----
2277
292
84

query I rowsort
SELECT + 9 + + - col1 + col2 AS col1 FROM tab1 AS cor0
----
30
63
91

onlyif mysql # aggregate syntax: 
query I rowsort label-5310
SELECT 63 * MIN( + col2 ) AS col1 FROM tab0
----
630

skipif mysql # not compatible
query I rowsort label-5310
SELECT 63 * MIN ( + col2 ) AS col1 FROM tab0
----
630

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5311
SELECT ALL CAST( NULL AS SIGNED ) / col1 AS col2 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5311
SELECT ALL CAST ( NULL AS INTEGER ) / col1 AS col2 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # DIV for integer division: 
query I rowsort label-5312
SELECT - 87 DIV + col1 FROM tab1
----
-1
-17
-6

skipif mysql # not compatible
query I rowsort label-5312
SELECT - 87 / + col1 FROM tab1
----
-1
-17
-6

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT - 82 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5314
SELECT ALL - col1 DIV col2 * + 29 AS col1 FROM tab2
----
-29
-29
-58

skipif mysql # not compatible
query I rowsort label-5314
SELECT ALL - col1 / col2 * + 29 AS col1 FROM tab2
----
-29
-29
-58

query I rowsort
SELECT DISTINCT col0 AS col1 FROM tab1 AS cor0 WHERE NOT - col1 IS NULL
----
51
85
91

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + ( - - 36 ) col0 FROM tab0 AS cor0
----
36

onlyif mysql # aggregate syntax: 
query I rowsort label-5317
SELECT ALL - MIN( col1 ) FROM tab0 AS cor0
----
-1

skipif mysql # not compatible
query I rowsort label-5317
SELECT ALL - MIN ( col1 ) FROM tab0 AS cor0
----
-1

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5318
SELECT * FROM tab0 AS cor0 WHERE NOT CAST( - col0 AS SIGNED ) IS NOT NULL
----

skipif mysql # not compatible
query III rowsort label-5318
SELECT * FROM tab0 AS cor0 WHERE NOT CAST ( - col0 AS INTEGER ) IS NOT NULL
----

query II rowsort
SELECT + - 87, + col1 FROM tab2 AS cor0
----
-87
51
-87
67
-87
77

onlyif mysql # aggregate syntax: 
query I rowsort label-5320
SELECT + - COUNT( ALL - - col0 ) * + - COUNT( * ) FROM tab1 WHERE NOT NULL BETWEEN - - col2 AND NULL
----
0

skipif mysql # not compatible
query I rowsort label-5320
SELECT + - COUNT ( ALL - - col0 ) * + - COUNT ( * ) FROM tab1 WHERE NOT NULL BETWEEN - - col2 AND NULL
----
0

query I rowsort
SELECT DISTINCT col1 * + 50 FROM tab0
----
1050
4050
50

query I rowsort
SELECT ALL - ( 43 ) AS col0 FROM tab1 AS cor0
----
-43
-43
-43

query I rowsort
SELECT ALL - + 26 FROM tab1 cor0
----
-26
-26
-26

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE NOT - col0 * - col1 / col0 NOT BETWEEN + col0 AND NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5325
SELECT - COUNT( * ) * + COUNT( * ) FROM tab0 AS cor0 WHERE NOT ( NULL > - 68 * 81 )
----
0

skipif mysql # not compatible
query I rowsort label-5325
SELECT - COUNT ( * ) * + COUNT ( * ) FROM tab0 AS cor0 WHERE NOT ( NULL > - 68 * 81 )
----
0

query I rowsort
SELECT + - col1 * - - col2 FROM tab0 AS cor0
----
-210
-3807
-99

query I rowsort
SELECT + 59 * 96 * col0 AS col2 FROM tab0
----
492768
549408
84960

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5328
SELECT - CAST( - + 90 AS SIGNED ) FROM tab2 WHERE NOT col0 IN ( + - 18 * + col2, - col0 + + - col1 * - + col2, - col0, + col1 )
----
90
90
90

skipif mysql # not compatible
query I rowsort label-5328
SELECT - CAST ( - + 90 AS INTEGER ) FROM tab2 WHERE NOT col0 IN ( + - 18 * + col2, - col0 + + - col1 * - + col2, - col0, + col1 )
----
90
90
90

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5329
SELECT - col1 AS col2 FROM tab2 WHERE NOT + CAST( NULL AS SIGNED ) <= - - col0
----

skipif mysql # not compatible
query I rowsort label-5329
SELECT - col1 AS col2 FROM tab2 WHERE NOT + CAST ( NULL AS INTEGER ) <= - - col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5330
SELECT MAX( DISTINCT - col1 ) AS col2 FROM tab2
----
-51

skipif mysql # not compatible
query I rowsort label-5330
SELECT MAX ( DISTINCT - col1 ) AS col2 FROM tab2
----
-51

query I rowsort
SELECT ALL - + col1 AS col0 FROM tab2 WHERE NULL IS NULL
----
-51
-67
-77

onlyif mysql # DIV for integer division: 
query I rowsort label-5332
SELECT col0 DIV + 30 FROM tab1
----
1
2
3

skipif mysql # not compatible
query I rowsort label-5332
SELECT col0 / + 30 FROM tab1
----
1
2
3

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5333
SELECT DISTINCT - col2 + + 33 FROM tab1 WHERE CAST( 29 AS SIGNED ) * - - col1 IS NOT NULL
----
-26
-35
-63

skipif mysql # not compatible
query I rowsort label-5333
SELECT DISTINCT - col2 + + 33 FROM tab1 WHERE CAST ( 29 AS INTEGER ) * - - col1 IS NOT NULL
----
-26
-35
-63

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5334
SELECT DISTINCT - col0 * CAST( + 10 AS SIGNED ) AS col0 FROM tab0 AS cor0
----
-150
-870
-970

skipif mysql # not compatible
query I rowsort label-5334
SELECT DISTINCT - col0 * CAST ( + 10 AS INTEGER ) AS col0 FROM tab0 AS cor0
----
-150
-870
-970

onlyif mysql # aggregate syntax: 
query I rowsort label-5335
SELECT DISTINCT + COUNT( * ) + + 35 AS col0 FROM tab1 AS cor0
----
38

skipif mysql # not compatible
query I rowsort label-5335
SELECT DISTINCT + COUNT ( * ) + + 35 AS col0 FROM tab1 AS cor0
----
38

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + col2 col0, - 12 AS col0 FROM tab2 AS cor0
----
23
-12
40
-12
58
-12

query I rowsort
SELECT - col2 * + + col0 FROM tab2 AS cor0 WHERE NULL = ( NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5338
SELECT ALL 66 + + COUNT( * ) FROM tab0 AS cor0
----
69

skipif mysql # not compatible
query I rowsort label-5338
SELECT ALL 66 + + COUNT ( * ) FROM tab0 AS cor0
----
69

query I rowsort
SELECT DISTINCT + col1 * - - col2 AS col1 FROM tab0
----
210
3807
99

onlyif mysql # aggregate syntax: 
query I rowsort label-5340
SELECT ALL + COUNT( * ) * - 0 AS col1 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-5340
SELECT ALL + COUNT ( * ) * - 0 AS col1 FROM tab2
----
0

query I rowsort
SELECT ALL col0 * - 32 + col0 FROM tab1
----
-1581
-2635
-2821

onlyif mysql # DIV for integer division: 
query II rowsort label-5342
SELECT ALL - + 25 DIV + - col0 AS col0, - col0 * 26 FROM tab0 AS cor0 WHERE col0 IS NOT NULL
----
0
-2262
0
-2522
1
-390

skipif mysql # not compatible
query II rowsort label-5342
SELECT ALL - + 25 / + - col0 AS col0, - col0 * 26 FROM tab0 AS cor0 WHERE col0 IS NOT NULL
----
0
-2262
0
-2522
1
-390

query II rowsort
SELECT ALL + col0 AS col0, + 32 AS col2 FROM tab1 AS cor0
----
51
32
85
32
91
32

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT - + 19 col1, col1 FROM tab0 cor0
----
-19
1
-19
21
-19
81

onlyif mysql # aggregate syntax: 
query I rowsort label-5345
SELECT DISTINCT MAX( + - ( col1 ) ) + + + 63 + + COUNT( * ) * + MAX( - + col2 ) FROM tab2 AS cor0
----
-57

skipif mysql # not compatible
query I rowsort label-5345
SELECT DISTINCT MAX ( + - ( col1 ) ) + + + 63 + + COUNT ( * ) * + MAX ( - + col2 ) FROM tab2 AS cor0
----
-57

onlyif mysql # aggregate syntax: 
query I rowsort label-5346
SELECT - ( + MAX( DISTINCT + + col2 ) ) AS col2 FROM tab2 AS cor0
----
-58

skipif mysql # not compatible
query I rowsort label-5346
SELECT - ( + MAX ( DISTINCT + + col2 ) ) AS col2 FROM tab2 AS cor0
----
-58

onlyif mysql # DIV for integer division: 
query I rowsort label-5347
SELECT ALL col0 DIV + col0 col0 FROM tab1 cor0 WHERE ( NULL ) IS NULL
----
1
1
1

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5347
SELECT ALL col0 / + col0 col0 FROM tab1 cor0 WHERE ( NULL ) IS NULL
----
1
1
1

query I rowsort
SELECT ALL - col2 - + 12 FROM tab0 AS cor0
----
-111
-22
-59

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query II rowsort label-5349
SELECT - 82 - - col1, + col2 * + col0 * - CAST( + - CAST( NULL AS DECIMAL ) AS SIGNED ) + - col2 * col1 + + col0 AS col0 FROM tab0 AS cor0
----
-1
NULL
-61
NULL
-81
NULL

skipif mysql # not compatible
query II rowsort label-5349
SELECT - 82 - - col1, + col2 * + col0 * - CAST ( + - CAST ( NULL AS REAL ) AS INTEGER ) + - col2 * col1 + + col0 AS col0 FROM tab0 AS cor0
----
-1
NULL
-61
NULL
-81
NULL

query I rowsort
SELECT DISTINCT - col0 - + 77 AS col0 FROM tab0 AS cor0
----
-164
-174
-92

query I rowsort
SELECT - col0 - - col0 - col0 FROM tab2 cor0
----
-46
-64
-75

query I rowsort
SELECT ALL col1 * - - col1 AS col2 FROM tab2
----
2601
4489
5929

onlyif mysql # aggregate syntax: 
query II rowsort label-5353
SELECT DISTINCT + SUM( col1 ) AS col0, - 6 AS col0 FROM tab0
----
103
-6

skipif mysql # not compatible
query II rowsort label-5353
SELECT DISTINCT + SUM ( col1 ) AS col0, - 6 AS col0 FROM tab0
----
103
-6

onlyif mysql # DIV for integer division: 
query I rowsort label-5354
SELECT DISTINCT - 55 DIV + + col1 AS col1 FROM tab1 AS cor0
----
-1
-11
-3

skipif mysql # not compatible
query I rowsort label-5354
SELECT DISTINCT - 55 / + + col1 AS col1 FROM tab1 AS cor0
----
-1
-11
-3

onlyif mysql # aggregate syntax: 
query II rowsort label-5355
SELECT COUNT( * ) AS col2, 10 FROM tab1
----
3
10

skipif mysql # not compatible
query II rowsort label-5355
SELECT COUNT ( * ) AS col2, 10 FROM tab1
----
3
10

query II rowsort
SELECT ALL col0, 80 + + + 25 * - col2 FROM tab0
----
15
-1095
87
-170
97
-2395

query III rowsort
SELECT ALL * FROM tab0 AS cor0 WHERE 0 BETWEEN col2 * + 73 AND - col2
----

query I rowsort
SELECT DISTINCT + col0 + - col2 * + col0 * + - col0 + + + col2 * - - col0 FROM tab0 AS cor0
----
11295
76647
941191

query II rowsort
SELECT DISTINCT - - 2, + col2 AS col0 FROM tab1 AS cor0
----
2
59
2
68
2
96

onlyif mysql # aggregate syntax: 
query I rowsort label-5360
SELECT DISTINCT + - MIN( ALL 27 ) FROM tab0 AS cor0
----
-27

skipif mysql # not compatible
query I rowsort label-5360
SELECT DISTINCT + - MIN ( ALL 27 ) FROM tab0 AS cor0
----
-27

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT 44 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT col0 * - col1 + col1 * - col1 + + ( + col0 ) FROM tab0 WHERE + - col1 NOT BETWEEN NULL AND + + col2 / + + col1 + col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5363
SELECT SUM( DISTINCT + + col0 ) + - 68 + - 0 + - COUNT( * ) FROM tab1
----
156

skipif mysql # not compatible
query I rowsort label-5363
SELECT SUM ( DISTINCT + + col0 ) + - 68 + - 0 + - COUNT ( * ) FROM tab1
----
156

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5364
SELECT + col1 FROM tab1 WHERE + + ( - + ( CAST( NULL AS SIGNED ) ) ) IS NOT NULL
----

skipif mysql # not compatible
query I rowsort label-5364
SELECT + col1 FROM tab1 WHERE + + ( - + ( CAST ( NULL AS INTEGER ) ) ) IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5365
SELECT ALL + MAX( DISTINCT col0 ) + COUNT( DISTINCT - + 14 ) AS col2 FROM tab1
----
92

skipif mysql # not compatible
query I rowsort label-5365
SELECT ALL + MAX ( DISTINCT col0 ) + COUNT ( DISTINCT - + 14 ) AS col2 FROM tab1
----
92

query III rowsort
SELECT * FROM tab2 WHERE + 42 IS NULL
----

onlyif mysql # CAST syntax: DECIMAL type: 
query III rowsort label-5367
SELECT * FROM tab0 WHERE - + CAST( NULL AS DECIMAL ) * + 64 + - col0 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

skipif mysql # not compatible
query III rowsort label-5367
SELECT * FROM tab0 WHERE - + CAST ( NULL AS REAL ) * + 64 + - col0 IS NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-5368
SELECT + 65 * COUNT( * ) col0 FROM tab2 AS cor0 WHERE - 50 * 55 >= - col1
----
0

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5368
SELECT + 65 * COUNT ( * ) col0 FROM tab2 AS cor0 WHERE - 50 * 55 >= - col1
----
0

query I rowsort
SELECT ALL - + 44 FROM tab2 AS cor0 CROSS JOIN tab2 AS cor1
----
9 values hashing to 07457d9e571e036a9a3a0f5a5a2e1ef2

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5370
SELECT * FROM tab2 AS cor0 WHERE + 61 >= col1 + - - CAST( NULL AS SIGNED ) + 15 / + - 89
----

skipif mysql # not compatible
query III rowsort label-5370
SELECT * FROM tab2 AS cor0 WHERE + 61 >= col1 + - - CAST ( NULL AS INTEGER ) + 15 / + - 89
----

query II rowsort
SELECT col1 + - 4 * 17 AS col1, - col0 * + 55 FROM tab0 AS cor0
----
-47
-4785
-67
-5335
13
-825

onlyif mysql # aggregate syntax: 
query I rowsort label-5372
SELECT DISTINCT + - COUNT( * ) + - 82 AS col0 FROM tab1 AS cor0
----
-85

skipif mysql # not compatible
query I rowsort label-5372
SELECT DISTINCT + - COUNT ( * ) + - 82 AS col0 FROM tab1 AS cor0
----
-85

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5373
SELECT - + col1 FROM tab2 AS cor0 WHERE NOT ( NOT ( ( NOT + 85 * + 46 * - CAST( NULL AS SIGNED ) + - col1 IS NULL ) ) )
----

skipif mysql # not compatible
query I rowsort label-5373
SELECT - + col1 FROM tab2 AS cor0 WHERE NOT ( NOT ( ( NOT + 85 * + 46 * - CAST ( NULL AS INTEGER ) + - col1 IS NULL ) ) )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5374
SELECT MIN( + + 35 ) AS col2 FROM tab0
----
35

skipif mysql # not compatible
query I rowsort label-5374
SELECT MIN ( + + 35 ) AS col2 FROM tab0
----
35

query II rowsort
SELECT ALL col2 AS col2, - col1 * + 76 AS col1 FROM tab0
----
10
-1596
47
-6156
99
-76

query I rowsort
SELECT DISTINCT - col2 * + 64 * - 40 FROM tab0
----
120320
253440
25600

query II rowsort
SELECT + 98, + col2 AS col1 FROM tab0
----
98
10
98
47
98
99

onlyif mysql # DIV for integer division: 
query II rowsort label-5378
SELECT col1 * + - 91 AS col0, + col0 DIV + col0 FROM tab2
----
-4641
1
-6097
1
-7007
1

skipif mysql # not compatible
query II rowsort label-5378
SELECT col1 * + - 91 AS col0, + col0 / + col0 FROM tab2
----
-4641
1
-6097
1
-7007
1

query II rowsort
SELECT ALL - 96, col1 AS col0 FROM tab1
----
-96
14
-96
47
-96
5

onlyif mysql # DIV for integer division: 
query I rowsort label-5380
SELECT ALL 54 * + + col1 DIV - col1 col1 FROM tab1
----
-54
-54
-54

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5380
SELECT ALL 54 * + + col1 / - col1 col1 FROM tab1
----
-54
-54
-54

onlyif mysql # aggregate syntax: 
query II rowsort label-5381
SELECT DISTINCT - COUNT( * ) AS col2, 76 FROM tab0
----
-3
76

skipif mysql # not compatible
query II rowsort label-5381
SELECT DISTINCT - COUNT ( * ) AS col2, 76 FROM tab0
----
-3
76

onlyif mysql # aggregate syntax: 
query I rowsort label-5382
SELECT DISTINCT - - 88 * COUNT( * ) AS col2 FROM tab1 cor0
----
264

skipif mysql # not compatible
query I rowsort label-5382
SELECT DISTINCT - - 88 * COUNT ( * ) AS col2 FROM tab1 cor0
----
264

query II rowsort
SELECT DISTINCT 52, col2 FROM tab2 cor0
----
52
23
52
40
52
58

query I rowsort
SELECT DISTINCT + + col2 + + 9 AS col0 FROM tab0 cor0
----
108
19
56

onlyif mysql # aggregate syntax: 
query I rowsort label-5385
SELECT - COUNT( * ) AS col0 FROM tab0 AS cor0 WHERE NOT + col0 * + col2 < NULL
----
0

skipif mysql # not compatible
query I rowsort label-5385
SELECT - COUNT ( * ) AS col0 FROM tab0 AS cor0 WHERE NOT + col0 * + col2 < NULL
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5386
SELECT ALL - MAX( + 43 ) FROM tab2 AS cor0
----
-43

skipif mysql # not compatible
query I rowsort label-5386
SELECT ALL - MAX ( + 43 ) FROM tab2 AS cor0
----
-43

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT col0 * + col0 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5388
SELECT ALL - COUNT( * ) + + 90 + - 66 + CAST( NULL AS SIGNED ) * MAX( ALL 67 ) AS col1 FROM tab1 cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-5388
SELECT ALL - COUNT ( * ) + + 90 + - 66 + CAST ( NULL AS INTEGER ) * MAX ( ALL 67 ) AS col1 FROM tab1 cor0
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-5389
SELECT SUM( ALL - 85 ) FROM tab0 AS cor0
----
-255

skipif mysql # not compatible
query I rowsort label-5389
SELECT SUM ( ALL - 85 ) FROM tab0 AS cor0
----
-255

query I rowsort
SELECT col2 FROM tab0 cor0 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT - 48 * + + 20 * + - col2 FROM tab0 AS cor0
----
45120
95040
9600

query I rowsort
SELECT + 55 FROM tab1 AS cor0 WHERE col1 * - col1 IN ( 21 * - col1 * - - col1, col2 )
----

query III rowsort
SELECT * FROM tab1 WHERE + + col1 * - col0 - + col2 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5394
SELECT ALL + MAX( ALL + + col1 ) FROM tab1
----
47

skipif mysql # not compatible
query I rowsort label-5394
SELECT ALL + MAX ( ALL + + col1 ) FROM tab1
----
47

query I rowsort
SELECT DISTINCT col0 * - + col1 AS col1 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-425
-4277
-714

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT NULL IN ( + col1 / + + col2 * + col2, col2 + - col1, + col2 )
----

query III rowsort
SELECT * FROM tab0 WHERE - - col2 > ( NULL )
----

query I rowsort
SELECT ALL + 45 * - - col1 - - col2 + - 56 FROM tab1 AS cor0
----
2127
228
670

query I rowsort
SELECT DISTINCT + - col1 - - - col1 AS col2 FROM tab0 AS cor0
----
-162
-2
-42

query I rowsort
SELECT DISTINCT - 15 + - 34 FROM tab2 AS cor0
----
-49

onlyif mysql # DIV for integer division: 
query I rowsort label-5401
SELECT - col1 + col1 + + col0 + 23 DIV 74 FROM tab0 AS cor0
----
15
87
97

skipif mysql # not compatible
query I rowsort label-5401
SELECT - col1 + col1 + + col0 + 23 / 74 FROM tab0 AS cor0
----
15
87
97

query I rowsort
SELECT DISTINCT + 52 AS col1 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
52

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 60 col1 FROM tab1 WHERE col2 <= NULL
----

query I rowsort
SELECT ALL + ( + col0 ) * col1 FROM tab2 AS cor0
----
2346
4928
5025

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE NULL IS NOT NULL AND NULL IS NULL
----

query I rowsort
SELECT + + col1 * + + col0 FROM tab2 AS cor0
----
2346
4928
5025

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-5407
SELECT - - CAST( col1 AS SIGNED ) AS col2, + 97 * - col0 * - + col0 AS col0 FROM tab0 AS cor0
----
1
912673
21
734193
81
21825

skipif mysql # not compatible
query II rowsort label-5407
SELECT - - CAST ( col1 AS INTEGER ) AS col2, + 97 * - col0 * - + col0 AS col0 FROM tab0 AS cor0
----
1
912673
21
734193
81
21825

query I rowsort
SELECT - - 28 AS col0 FROM tab0 cor0
----
28
28
28

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5409
SELECT + COUNT( * ) DIV 71 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-5409
SELECT + COUNT ( * ) / 71 FROM tab1 AS cor0
----
0

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NULL = col0 / + + col0
----

onlyif mysql # aggregate syntax: 
query II rowsort label-5411
SELECT + 94 AS col1, MIN( ALL col0 ) FROM tab2
----
94
46

skipif mysql # not compatible
query II rowsort label-5411
SELECT + 94 AS col1, MIN ( ALL col0 ) FROM tab2
----
94
46

onlyif mysql # aggregate syntax: 
query I rowsort label-5412
SELECT ALL + COUNT( ALL col1 ) FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-5412
SELECT ALL + COUNT ( ALL col1 ) FROM tab1
----
3

query I rowsort
SELECT DISTINCT ( ( + col1 ) ) FROM tab2
----
51
67
77

onlyif mysql # aggregate syntax: 
query I rowsort label-5414
SELECT - 24 * - SUM( 13 ) FROM tab0
----
936

skipif mysql # not compatible
query I rowsort label-5414
SELECT - 24 * - SUM ( 13 ) FROM tab0
----
936

query I rowsort
SELECT - 91 * - - 94 AS col0 FROM tab0
----
-8554
-8554
-8554

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5416
SELECT ALL - - col0 * + col1 * + ( CAST( - 11 AS SIGNED ) ) * - col0 AS col2 FROM tab0 cor0
----
103499
1748439
200475

skipif mysql # not compatible
query I rowsort label-5416
SELECT ALL - - col0 * + col1 * + ( CAST ( - 11 AS INTEGER ) ) * - col0 AS col2 FROM tab0 cor0
----
103499
1748439
200475

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT col1, + 11 - - - col0 col1 FROM tab0 AS cor0
----
1
-86
21
-76
81
-4

onlyif mysql # aggregate syntax: 
query I rowsort label-5418
SELECT DISTINCT - SUM( DISTINCT - col2 ) AS col0 FROM tab1 cor0
----
223

skipif mysql # not compatible
query I rowsort label-5418
SELECT DISTINCT - SUM ( DISTINCT - col2 ) AS col0 FROM tab1 cor0
----
223

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-5419
SELECT ALL CAST( NULL AS SIGNED ) AS col2, 94 - - 69 * - col2 AS col2 FROM tab2
----
NULL
-1493
NULL
-2666
NULL
-3908

skipif mysql # not compatible
query II rowsort label-5419
SELECT ALL CAST ( NULL AS INTEGER ) AS col2, 94 - - 69 * - col2 AS col2 FROM tab2
----
NULL
-1493
NULL
-2666
NULL
-3908

query II rowsort
SELECT DISTINCT + ( col2 ), + col2 FROM tab2
----
23
23
40
40
58
58

query I rowsort
SELECT ALL 32 AS col2 FROM ( tab0 AS cor0 CROSS JOIN tab2 AS cor1 )
----
9 values hashing to d30a2acbf33c88274474306936d3227b

query I rowsort
SELECT ALL - + 11 + + col1 + + 51 FROM tab2 AS cor0
----
107
117
91

query II rowsort
SELECT ALL - col2 AS col1, - col0 AS col0 FROM tab1 AS cor0
----
-59
-85
-68
-91
-96
-51

onlyif mysql # aggregate syntax: 
query I rowsort label-5424
SELECT ( + - COUNT( * ) ) AS col2 FROM tab1 cor0 WHERE NULL IS NOT NULL
----
0

skipif mysql # not compatible
query I rowsort label-5424
SELECT ( + - COUNT ( * ) ) AS col2 FROM tab1 cor0 WHERE NULL IS NOT NULL
----
0

query I rowsort
SELECT - - 46 * - 13 * - + col0 AS col2 FROM tab1 AS cor0
----
30498
50830
54418

query II rowsort
SELECT col0 AS col2, + col1 FROM tab2 AS cor0
----
46
51
64
77
75
67

onlyif mysql # aggregate syntax: 
query I rowsort label-5427
SELECT - - SUM( - + col2 ) * + ( + - 16 ) AS col2 FROM tab2 cor0
----
1936

skipif mysql # not compatible
query I rowsort label-5427
SELECT - - SUM ( - + col2 ) * + ( + - 16 ) AS col2 FROM tab2 cor0
----
1936

query I rowsort
SELECT ALL - - col2 + ( + col0 ) AS col0 FROM tab0 AS cor0
----
196
62
97

onlyif mysql # DIV for integer division: 
query II rowsort label-5429
SELECT ALL + col0, + ( - col2 ) DIV + col0 FROM tab2 AS cor0
----
46
0
64
0
75
0

skipif mysql # not compatible
query II rowsort label-5429
SELECT ALL + col0, + ( - col2 ) / + col0 FROM tab2 AS cor0
----
46
0
64
0
75
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5430
SELECT 94 * - - COUNT( * ) + 70 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----
70

skipif mysql # not compatible
query I rowsort label-5430
SELECT 94 * - - COUNT ( * ) + 70 FROM tab0 AS cor0 WHERE NULL IS NOT NULL
----
70

query I rowsort
SELECT ALL + - col2 * + + 28 AS col1 FROM tab1 AS cor0
----
-1652
-1904
-2688

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT NULL IN ( col2, col2, + col0 * - ( 17 ) + 92, + - col2 + - col0 * - col2 )
----

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query II rowsort label-5433
SELECT - col1 * + + col0 + + col0 DIV - - ( + + 67 ), CAST( + - col0 AS SIGNED ) * 16 AS col2 FROM tab0
----
-1215
-240
-1826
-1392
-96
-1552

skipif mysql # not compatible
query II rowsort label-5433
SELECT - col1 * + + col0 + + col0 / - - ( + + 67 ), CAST ( + - col0 AS INTEGER ) * 16 AS col2 FROM tab0
----
-1215
-240
-1826
-1392
-96
-1552

query III rowsort
SELECT * FROM tab0 WHERE NULL = col2
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5435
SELECT ALL CAST( + CAST( NULL AS SIGNED ) AS SIGNED ) / 53 AS col2 FROM tab2 WHERE NOT - + 54 = + col1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5435
SELECT ALL CAST ( + CAST ( NULL AS INTEGER ) AS INTEGER ) / 53 AS col2 FROM tab2 WHERE NOT - + 54 = + col1
----
NULL
NULL
NULL

query I rowsort
SELECT + col2 + - + 88 FROM tab1
----
-20
-29
8

onlyif mysql # aggregate syntax: 
query I rowsort label-5437
SELECT ALL - COUNT( * ) * - - ( COUNT( * ) ) FROM tab1
----
-9

skipif mysql # not compatible
query I rowsort label-5437
SELECT ALL - COUNT ( * ) * - - ( COUNT ( * ) ) FROM tab1
----
-9

query I rowsort
SELECT DISTINCT - + col0 FROM tab1 WHERE NOT + col2 + - 65 * col0 + - 19 IS NULL
----
-51
-85
-91

onlyif mysql # aggregate syntax: 
query I rowsort label-5439
SELECT COUNT( + col2 ) AS col1 FROM tab1
----
3

skipif mysql # not compatible
query I rowsort label-5439
SELECT COUNT ( + col2 ) AS col1 FROM tab1
----
3

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query II rowsort label-5440
SELECT ALL - col2 + + + CAST( NULL AS SIGNED ) AS col0, CAST( - col0 AS DECIMAL ) * - CAST( NULL AS SIGNED ) + - col1 FROM tab2 AS cor0
----
NULL
NULL
NULL
NULL
NULL
NULL

skipif mysql # not compatible
query II rowsort label-5440
SELECT ALL - col2 + + + CAST ( NULL AS INTEGER ) AS col0, CAST ( - col0 AS REAL ) * - CAST ( NULL AS INTEGER ) + - col1 FROM tab2 AS cor0
----
NULL
NULL
NULL
NULL
NULL
NULL

query III rowsort
SELECT ALL * FROM tab1 cor0 WHERE NULL >= ( - 28 )
----

query IIIIII rowsort
SELECT * FROM tab1 cor0 CROSS JOIN tab2 AS cor1 WHERE NOT 62 IS NULL
----
54 values hashing to c419dc2a653bccd84f7a2da103315187

query I rowsort
SELECT + col0 FROM tab2 cor0 WHERE NOT + 89 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query II rowsort label-5444
SELECT + COUNT( * ) AS col0, - 47 FROM tab2 AS cor0
----
3
-47

skipif mysql # not compatible
query II rowsort label-5444
SELECT + COUNT ( * ) AS col0, - 47 FROM tab2 AS cor0
----
3
-47

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE NOT + ( col2 ) - + - col0 <> - col0 * col0 + col2
----

query I rowsort
SELECT col0 AS col1 FROM tab1 AS cor0 WHERE NOT NULL IS NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT 77 col2 FROM tab1 AS cor0 WHERE NOT - col1 + + 99 < NULL
----

query II rowsort
SELECT + 99 AS col1, col2 AS col0 FROM tab2 AS cor0
----
99
23
99
40
99
58

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5449
SELECT CAST( 34 AS SIGNED ) FROM tab1
----
34
34
34

skipif mysql # not compatible
query I rowsort label-5449
SELECT CAST ( 34 AS INTEGER ) FROM tab1
----
34
34
34

query III rowsort
SELECT ALL * FROM tab2 WHERE - 87 / + 40 = NULL
----

query I rowsort
SELECT col1 * - + col1 FROM tab2
----
-2601
-4489
-5929

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT col1 + + col1 NOT BETWEEN - 88 AND - col1 * + col2
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5453
SELECT DISTINCT + MIN( ALL - 65 ) AS col0 FROM tab2 AS cor0 WHERE ( NULL < col2 )
----
NULL

skipif mysql # not compatible
query I rowsort label-5453
SELECT DISTINCT + MIN ( ALL - 65 ) AS col0 FROM tab2 AS cor0 WHERE ( NULL < col2 )
----
NULL

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE ( NULL IS NULL )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-5455
SELECT DISTINCT + ( SUM( + - col0 ) ) AS col0 FROM tab0 AS cor0
----
-199

skipif mysql # not compatible
query I rowsort label-5455
SELECT DISTINCT + ( SUM ( + - col0 ) ) AS col0 FROM tab0 AS cor0
----
-199

onlyif mysql # aggregate syntax: 
query I rowsort label-5456
SELECT DISTINCT + MAX( + - ( + col1 ) ) AS col1 FROM tab2 AS cor0
----
-51

skipif mysql # not compatible
query I rowsort label-5456
SELECT DISTINCT + MAX ( + - ( + col1 ) ) AS col1 FROM tab2 AS cor0
----
-51

query I rowsort
SELECT ALL + + 53 * + 65 + + 86 AS col0 FROM tab1 cor0 WHERE NOT NULL < col0
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5458
SELECT - 45 DIV + COUNT( * ) + - - 10 * 92 * + - COUNT( * ) AS col2 FROM tab2 WHERE col0 = col0
----
-2775

skipif mysql # not compatible
query I rowsort label-5458
SELECT - 45 / + COUNT ( * ) + - - 10 * 92 * + - COUNT ( * ) AS col2 FROM tab2 WHERE col0 = col0
----
-2775

query I rowsort
SELECT DISTINCT col0 FROM tab1 WHERE NULL IS NOT NULL
----

query I rowsort
SELECT ALL col0 AS col0 FROM tab0 AS cor0 WHERE NULL NOT BETWEEN NULL AND col2 * + col1
----

query I rowsort
SELECT ALL col1 * + - col0 + - col2 * - col1 * - - 46 AS col0 FROM tab0 AS cor0
----
173907
4457
7833

query I rowsort
SELECT DISTINCT + col1 + 8 AS col1 FROM tab0 AS cor0
----
29
89
9

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE - 11 IS NOT NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT - 3 * + col0 AS col1 FROM tab2 AS cor0
----
-138
-192
-225

onlyif mysql # DIV for integer division: 
query I rowsort label-5465
SELECT ALL - + ( - + col2 ) - col2 - - + col0 DIV 42 FROM tab0 AS cor0
----
0
2
2

skipif mysql # not compatible
query I rowsort label-5465
SELECT ALL - + ( - + col2 ) - col2 - - + col0 / 42 FROM tab0 AS cor0
----
0
2
2

query I rowsort
SELECT ALL - col0 AS col0 FROM tab1 AS cor0 WHERE col2 < NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5467
SELECT ALL 16 + - + SUM( DISTINCT - 35 ) AS col0 FROM tab0 AS cor0
----
51

skipif mysql # not compatible
query I rowsort label-5467
SELECT ALL 16 + - + SUM ( DISTINCT - 35 ) AS col0 FROM tab0 AS cor0
----
51

query I rowsort
SELECT ALL - + col0 - 58 FROM tab0 AS cor0
----
-145
-155
-73

query I rowsort
SELECT - col1 * 10 * - 53 FROM tab0
----
11130
42930
530

query II rowsort
SELECT col0, col2 + + col1 FROM tab2
----
46
74
64
117
75
125

query I rowsort
SELECT DISTINCT col1 * + - col0 FROM tab1
----
-425
-4277
-714

query I rowsort
SELECT - 5 * + col0 FROM tab1
----
-255
-425
-455

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT - + 27 * + 54 IS NULL
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

onlyif mysql # aggregate syntax: 
query I rowsort label-5474
SELECT - COUNT( * ) - + 14 FROM tab2
----
-17

skipif mysql # not compatible
query I rowsort label-5474
SELECT - COUNT ( * ) - + 14 FROM tab2
----
-17

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT ( NOT NULL <= NULL )
----

query I rowsort
SELECT col2 - - - col0 AS col0 FROM tab0
----
-77
2
32

query I rowsort
SELECT ALL + 29 + col1 * col1 * - col0 FROM tab1 AS cor0
----
-200990
-2096
-9967

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL <= - 80 + + - 50
----

query I rowsort
SELECT DISTINCT + ( + col0 ) + + col1 + - 28 * + + col2 * + 64 FROM tab2 AS cor0
----
-103794
-41119
-71539

onlyif mysql # aggregate syntax: 
query I rowsort label-5480
SELECT DISTINCT MAX( - col1 ) AS col1 FROM tab2 AS cor0 WHERE NULL IS NULL
----
-51

skipif mysql # not compatible
query I rowsort label-5480
SELECT DISTINCT MAX ( - col1 ) AS col1 FROM tab2 AS cor0 WHERE NULL IS NULL
----
-51

onlyif mysql # DIV for integer division: 
query I rowsort label-5481
SELECT col2 DIV + + col0 + 59 + - col1 FROM tab1 AS cor0
----
12
46
54

skipif mysql # not compatible
query I rowsort label-5481
SELECT col2 / + + col0 + 59 + - col1 FROM tab1 AS cor0
----
12
46
54

query I rowsort
SELECT - - 1 AS col0 FROM tab1 cor0
----
1
1
1

query I rowsort
SELECT 72 * 92 FROM tab0
----
6624
6624
6624

query I rowsort
SELECT + + 0 AS col2 FROM tab0 AS cor0 CROSS JOIN tab0 AS cor1
----
9 values hashing to 8b75136b2b51c77345c03804ec1cda5c

query I rowsort
SELECT - col1 FROM tab1 WHERE NOT NULL IS NOT NULL
----
-14
-47
-5

onlyif mysql # DIV for integer division: 
query I rowsort label-5486
SELECT ALL 14 DIV col0 FROM tab0 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5486
SELECT ALL 14 / col0 FROM tab0 AS cor0
----
0
0
0

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5487
SELECT ALL * FROM tab1 AS cor0 WHERE NOT + CAST( NULL AS SIGNED ) IS NULL
----

skipif mysql # not compatible
query III rowsort label-5487
SELECT ALL * FROM tab1 AS cor0 WHERE NOT + CAST ( NULL AS INTEGER ) IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5488
SELECT + - MIN( DISTINCT - 87 ) col0 FROM tab2 cor0
----
87

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5488
SELECT + - MIN ( DISTINCT - 87 ) col0 FROM tab2 cor0
----
87

onlyif mysql # aggregate syntax: 
query I rowsort label-5489
SELECT - MIN( DISTINCT - 16 ) AS col0 FROM tab2 AS cor0
----
16

skipif mysql # not compatible
query I rowsort label-5489
SELECT - MIN ( DISTINCT - 16 ) AS col0 FROM tab2 AS cor0
----
16

query I rowsort
SELECT + - 76 FROM tab2 cor0
----
-76
-76
-76

query I rowsort
SELECT DISTINCT + 53 + - col0 FROM tab0 AS cor0 WHERE NOT - 86 + col1 * + col1 IS NULL
----
-34
-44
38

onlyif mysql # aggregate syntax: 
query II rowsort label-5492
SELECT ALL - ( + COUNT( * ) ) AS col2, + ( 11 ) AS col1 FROM tab0 AS cor0
----
-3
11

skipif mysql # not compatible
query II rowsort label-5492
SELECT ALL - ( + COUNT ( * ) ) AS col2, + ( 11 ) AS col1 FROM tab0 AS cor0
----
-3
11

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL 30 * + col0 col2 FROM tab2
----
1380
1920
2250

onlyif mysql # CAST syntax: SIGNED type: DECIMAL type: 
query I rowsort label-5494
SELECT DISTINCT CAST( - ( - CAST( NULL AS SIGNED ) ) AS DECIMAL ) AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-5494
SELECT DISTINCT CAST ( - ( - CAST ( NULL AS INTEGER ) ) AS REAL ) AS col0 FROM tab0
----
NULL

query I rowsort
SELECT ( 16 ) * + 34 + - - col0 FROM tab1 WHERE NOT + col1 IS NULL
----
595
629
635

query II rowsort
SELECT ALL col1, + 14 AS col2 FROM tab2
----
51
14
67
14
77
14

query II rowsort
SELECT DISTINCT + 73 AS col0, col0 AS col2 FROM tab2
----
73
46
73
64
73
75

query I rowsort
SELECT DISTINCT - col1 + + col2 + + 33 - - col1 - - col1 * + + 38 FROM tab1
----
1887
282
661

query I rowsort
SELECT DISTINCT + 35 + col1 FROM tab1 WHERE - col0 IS NULL
----

query I rowsort
SELECT - col1 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

query I rowsort
SELECT DISTINCT + col2 + + col2 FROM tab2 AS cor0 WHERE + col2 NOT BETWEEN NULL AND - + 0
----
116
46
80

onlyif mysql # DIV for integer division: 
query II rowsort label-5502
SELECT DISTINCT - col1 AS col2, col0 DIV - - 85 FROM tab0 AS cor0
----
-1
1
-21
1
-81
0

skipif mysql # not compatible
query II rowsort label-5502
SELECT DISTINCT - col1 AS col2, col0 / - - 85 FROM tab0 AS cor0
----
-1
1
-21
1
-81
0

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT NULL <= - col2
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5504
SELECT 96 * - col0 - - CAST( NULL AS SIGNED ) AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5504
SELECT 96 * - col0 - - CAST ( NULL AS INTEGER ) AS col2 FROM tab2 AS cor0
----
NULL
NULL
NULL

query II rowsort
SELECT + 18 - + col0 AS col0, 47 + ( - col2 ) AS col1 FROM tab0 AS cor0
----
-69
37
-79
-52
3
0

query I rowsort
SELECT DISTINCT 20 * - col2 + - + 37 FROM tab0 AS cor0
----
-2017
-237
-977

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT 65 * - col2 * col1 / - - col2 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5508
SELECT col2 * + col1 DIV col1 + - col2 FROM tab1
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5508
SELECT col2 * + col1 / col1 + - col2 FROM tab1
----
0
0
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5509
SELECT SUM( col0 ) FROM tab0 WHERE + + col0 NOT BETWEEN NULL AND + col2
----
87

skipif mysql # not compatible
query I rowsort label-5509
SELECT SUM ( col0 ) FROM tab0 WHERE + + col0 NOT BETWEEN NULL AND + col2
----
87

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT - col0 col0 FROM tab1 WHERE NOT + 40 IS NOT NULL
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5511
SELECT ALL col1 DIV - 15 FROM tab1
----
-3
0
0

skipif mysql # not compatible
query I rowsort label-5511
SELECT ALL col1 / - 15 FROM tab1
----
-3
0
0

query I rowsort
SELECT - 21 * col1 * - ( - + col2 ) * - + col0 + + 4 * - 40 + 62 FROM tab2
----
1133020
4139422
6120352

query I rowsort
SELECT ALL - col1 * - - col0 AS col2 FROM tab0 cor0
----
-1215
-1827
-97

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5514
SELECT ALL 29 DIV + - COUNT( * ) AS col1 FROM tab2 AS cor0
----
-9

skipif mysql # not compatible
query I rowsort label-5514
SELECT ALL 29 / + - COUNT ( * ) AS col1 FROM tab2 AS cor0
----
-9

onlyif mysql # DIV for integer division: 
query I rowsort label-5515
SELECT DISTINCT + 69 DIV - - 66 AS col1 FROM tab1 cor0
----
1

skipif mysql # not compatible
query I rowsort label-5515
SELECT DISTINCT + 69 / - - 66 AS col1 FROM tab1 cor0
----
1

query II rowsort
SELECT 29 AS col1, 62 * + - col0 AS col0 FROM tab0
----
29
-5394
29
-6014
29
-930

onlyif mysql # aggregate syntax: 
query I rowsort label-5517
SELECT - COUNT( + col2 ) AS col0 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-5517
SELECT - COUNT ( + col2 ) AS col0 FROM tab2
----
-3

onlyif mysql # CAST syntax: SIGNED type: DIV for integer division: 
query II rowsort label-5518
SELECT ALL + + 55 DIV - 1, 91 * - - col2 * 79 * + 60 AS col1 FROM tab1 WHERE - - CAST( NULL AS SIGNED ) - col0 IS NULL
----
-55
25449060
-55
29331120
-55
41408640

skipif mysql # not compatible
query II rowsort label-5518
SELECT ALL + + 55 / - 1, 91 * - - col2 * 79 * + 60 AS col1 FROM tab1 WHERE - - CAST ( NULL AS INTEGER ) - col0 IS NULL
----
-55
25449060
-55
29331120
-55
41408640

onlyif mysql # aggregate syntax: 
query I rowsort label-5519
SELECT ALL + - SUM( DISTINCT - col1 ) FROM tab0 AS cor0
----
103

skipif mysql # not compatible
query I rowsort label-5519
SELECT ALL + - SUM ( DISTINCT - col1 ) FROM tab0 AS cor0
----
103

onlyif mysql # aggregate syntax: 
query I rowsort label-5520
SELECT ALL - - COUNT( ALL - col0 ) FROM tab2 cor0
----
3

skipif mysql # not compatible
query I rowsort label-5520
SELECT ALL - - COUNT ( ALL - col0 ) FROM tab2 cor0
----
3

onlyif mysql # aggregate syntax: 
query II rowsort label-5521
SELECT - + COUNT( * ) AS col2, - COUNT( DISTINCT + col0 ) col2 FROM tab1 cor0
----
-3
-3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort label-5521
SELECT - + COUNT ( * ) AS col2, - COUNT ( DISTINCT + col0 ) col2 FROM tab1 cor0
----
-3
-3

query II rowsort
SELECT DISTINCT - + col0, + col0 FROM tab1 cor0
----
-51
51
-85
85
-91
91

query I rowsort
SELECT DISTINCT 8 FROM tab0 AS cor0 WHERE NOT ( NULL ) IS NULL
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT NULL > + col1
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5525
SELECT + + 85 DIV col1 col2 FROM tab1 AS cor0
----
1
17
6

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5525
SELECT + + 85 / col1 col2 FROM tab1 AS cor0
----
1
17
6

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5526
SELECT - CAST( NULL AS SIGNED ) / + col1 FROM tab2
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5526
SELECT - CAST ( NULL AS INTEGER ) / + col1 FROM tab2
----
NULL
NULL
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5527
SELECT + col0 + - - CAST( col1 AS SIGNED ) FROM tab1 WHERE NOT + 29 - + - col2 * - + col0 IS NULL
----
138
65
90

skipif mysql # not compatible
query I rowsort label-5527
SELECT + col0 + - - CAST ( col1 AS INTEGER ) FROM tab1 WHERE NOT + 29 - + - col2 * - + col0 IS NULL
----
138
65
90

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5528
SELECT ALL + - 64 * col1 + CAST( NULL AS SIGNED ) FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5528
SELECT ALL + - 64 * col1 + CAST ( NULL AS INTEGER ) FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT + 15 * - - col2 + 29 FROM tab0 AS cor0
----
1514
179
734

onlyif mysql # aggregate syntax: 
query I rowsort label-5530
SELECT + MIN( ALL + + 36 ) + + COUNT( * ) AS col2 FROM tab0 AS cor0
----
39

skipif mysql # not compatible
query I rowsort label-5530
SELECT + MIN ( ALL + + 36 ) + + COUNT ( * ) AS col2 FROM tab0 AS cor0
----
39

onlyif mysql # aggregate syntax: 
query I rowsort label-5531
SELECT ( + MAX( + col1 ) ) + - - 71 * + + COUNT( * ) AS col1 FROM tab0 AS cor0
----
294

skipif mysql # not compatible
query I rowsort label-5531
SELECT ( + MAX ( + col1 ) ) + - - 71 * + + COUNT ( * ) AS col1 FROM tab0 AS cor0
----
294

query IIIIII rowsort
SELECT * FROM tab0 AS cor0 CROSS JOIN tab1 cor1 WHERE NOT ( NULL ) <= + 94
----

query I rowsort
SELECT - col1 + - 26 FROM tab0
----
-107
-27
-47

query III rowsort
SELECT DISTINCT * FROM tab0 AS cor0 WHERE NOT 51 < NULL
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE + ( + 85 ) + - - col0 BETWEEN NULL AND + col1 / col0
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE - col1 + - 27 IS NULL
----

query II rowsort
SELECT - col0 AS col0, + col2 AS col0 FROM tab1 AS cor0
----
-51
96
-85
59
-91
68

query II rowsort
SELECT col0, col0 FROM tab0 AS cor0
----
15
15
87
87
97
97

query I rowsort
SELECT DISTINCT 52 + + + 31 FROM tab2 AS cor0
----
83

onlyif mysql # aggregate syntax: 
query I rowsort label-5540
SELECT MAX( ALL - col1 ) - COUNT( * ) AS col2 FROM tab1
----
-8

skipif mysql # not compatible
query I rowsort label-5540
SELECT MAX ( ALL - col1 ) - COUNT ( * ) AS col2 FROM tab1
----
-8

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query II rowsort label-5541
SELECT DISTINCT ( 80 ) * + 21 - - - 62 AS col0, MAX( DISTINCT CAST( NULL AS SIGNED ) ) + + COUNT( * ) FROM tab1
----
1618
NULL

skipif mysql # not compatible
query II rowsort label-5541
SELECT DISTINCT ( 80 ) * + 21 - - - 62 AS col0, MAX ( DISTINCT CAST ( NULL AS INTEGER ) ) + + COUNT ( * ) FROM tab1
----
1618
NULL

query I rowsort
SELECT - 74 * + + 36 - col0 * + + col1 FROM tab0
----
-2761
-3879
-4491

query I rowsort
SELECT ALL - 41 * - 93 - - - col0 AS col1 FROM tab0
----
3716
3726
3798

onlyif mysql # aggregate syntax: 
query I rowsort label-5544
SELECT ALL + ( - - COUNT( * ) ) - + 98 AS col1 FROM tab0
----
-95

skipif mysql # not compatible
query I rowsort label-5544
SELECT ALL + ( - - COUNT ( * ) ) - + 98 AS col1 FROM tab0
----
-95

query I rowsort
SELECT DISTINCT ( - - ( + + 37 ) ) AS col1 FROM tab1
----
37

onlyif mysql # aggregate syntax: 
query I rowsort label-5546
SELECT - SUM( ALL col2 ) AS col1 FROM tab2 AS cor0
----
-121

skipif mysql # not compatible
query I rowsort label-5546
SELECT - SUM ( ALL col2 ) AS col1 FROM tab2 AS cor0
----
-121

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5547
SELECT - col1 * + col0 / CAST( NULL AS SIGNED ) - + 23 + + - col0 col1 FROM tab0 AS cor0 WHERE NOT NULL <> + 97
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5547
SELECT - col1 * + col0 / CAST ( NULL AS INTEGER ) - + 23 + + - col0 col1 FROM tab0 AS cor0 WHERE NOT NULL <> + 97
----

query I rowsort
SELECT DISTINCT - 2 * col0 AS col0 FROM tab1 AS cor0
----
-102
-170
-182

query III rowsort
SELECT ALL * FROM tab2 WHERE col2 + - 85 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query III rowsort
SELECT * FROM tab2 WHERE NOT - - col2 * + 18 - + + 22 IS NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL - - 96 * 19 + col2 FROM tab2 AS cor0
----
1847
1864
1882

onlyif mysql # DIV for integer division: 
query I rowsort label-5552
SELECT ALL - col1 DIV + - col0 FROM tab1 AS cor0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5552
SELECT ALL - col1 / + - col0 FROM tab1 AS cor0
----
0
0
0

query I rowsort
SELECT ALL col1 * + - 48 FROM tab0 AS cor0
----
-1008
-3888
-48

query III rowsort
SELECT * FROM tab0 cor0 WHERE NOT ( NULL ) >= NULL
----

query I rowsort
SELECT + col0 * + ( + - 93 ) FROM tab1 AS cor0
----
-4743
-7905
-8463

query I rowsort
SELECT - + col2 * + 35 AS col2 FROM tab1 AS cor0
----
-2065
-2380
-3360

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5557
SELECT - COUNT( * ) DIV 16 AS col2 FROM tab1 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-5557
SELECT - COUNT ( * ) / 16 AS col2 FROM tab1 AS cor0
----
0

onlyif mysql # DIV for integer division: 
query I rowsort label-5558
SELECT DISTINCT - col2 * + col1 * + col0 * + col2 + ( - col1 ) DIV + col0 col2 FROM tab2 AS cor0
----
-1241035
-16904100
-7884801

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5558
SELECT DISTINCT - col2 * + col1 * + col0 * + col2 + ( - col1 ) / + col0 col2 FROM tab2 AS cor0
----
-1241035
-16904100
-7884801

onlyif mysql # aggregate syntax: 
query I rowsort label-5559
SELECT 58 * + MIN( DISTINCT 94 ) FROM tab1
----
5452

skipif mysql # not compatible
query I rowsort label-5559
SELECT 58 * + MIN ( DISTINCT 94 ) FROM tab1
----
5452

onlyif mysql # aggregate syntax: 
query II rowsort label-5560
SELECT ALL COUNT( * ), - COUNT( * ) AS col2 FROM tab0
----
3
-3

skipif mysql # not compatible
query II rowsort label-5560
SELECT ALL COUNT ( * ), - COUNT ( * ) AS col2 FROM tab0
----
3
-3

query II rowsort
SELECT DISTINCT - 7, col1 FROM tab0
----
-7
1
-7
21
-7
81

query II rowsort
SELECT DISTINCT - col1, col2 FROM tab2
----
-51
23
-67
58
-77
40

query I rowsort
SELECT col2 * - 30 FROM tab1
----
-1770
-2040
-2880

query II rowsort
SELECT ALL 8 AS col1, + col2 FROM tab1
----
8
59
8
68
8
96

query I rowsort
SELECT + 70 + - col2 * + col1 AS col0 FROM tab0
----
-140
-29
-3737

onlyif mysql # aggregate syntax: 
query I rowsort label-5566
SELECT DISTINCT COUNT( * ) + + 40 AS col0 FROM tab2
----
43

skipif mysql # not compatible
query I rowsort label-5566
SELECT DISTINCT COUNT ( * ) + + 40 AS col0 FROM tab2
----
43

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5567
SELECT - CAST( NULL AS SIGNED ) + - col0 * + - col0 FROM tab1
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5567
SELECT - CAST ( NULL AS INTEGER ) + - col0 * + - col0 FROM tab1
----
NULL
NULL
NULL

query I rowsort
SELECT - col1 + + 94 FROM tab2 AS cor0
----
17
27
43

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5569
SELECT - - 66 + COUNT( * ) * + CAST( - 92 AS SIGNED ) FROM tab0 AS cor0
----
-210

skipif mysql # not compatible
query I rowsort label-5569
SELECT - - 66 + COUNT ( * ) * + CAST ( - 92 AS INTEGER ) FROM tab0 AS cor0
----
-210

onlyif mysql # aggregate syntax: 
query I rowsort label-5570
SELECT - - 51 + + SUM( ALL - 12 ) FROM tab2 AS cor0
----
15

skipif mysql # not compatible
query I rowsort label-5570
SELECT - - 51 + + SUM ( ALL - 12 ) FROM tab2 AS cor0
----
15

onlyif mysql # aggregate syntax: 
query I rowsort label-5571
SELECT ALL - SUM( DISTINCT - 64 ) FROM tab2 AS cor0
----
64

skipif mysql # not compatible
query I rowsort label-5571
SELECT ALL - SUM ( DISTINCT - 64 ) FROM tab2 AS cor0
----
64

onlyif mysql # aggregate syntax: 
query I rowsort label-5572
SELECT DISTINCT COUNT( * ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
9

skipif mysql # not compatible
query I rowsort label-5572
SELECT DISTINCT COUNT ( * ) AS col2 FROM tab0 AS cor0 CROSS JOIN tab2 AS cor1
----
9

query I rowsort
SELECT + 55 + - col2 + + 6 * 38 AS col1 FROM tab2 AS cor0
----
225
243
260

query I rowsort
SELECT - 59 + + + col1 FROM tab0 AS cor0
----
-38
-58
22

query I rowsort
SELECT ALL col0 + - 98 + - col1 AS col1 FROM tab2 AS cor0
----
-103
-111
-90

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NULL IS NOT NULL AND NOT ( col2 ) * - 5 + + col2 <= NULL
----

query I rowsort
SELECT ALL + 55 * + + col1 - + 62 * - col1 + - col1 FROM tab1 cor0
----
1624
5452
580

onlyif mysql # aggregate syntax: 
query I rowsort label-5578
SELECT DISTINCT - + COUNT( * ) AS col0 FROM tab1 AS cor0 WHERE NULL >= col0
----
0

skipif mysql # not compatible
query I rowsort label-5578
SELECT DISTINCT - + COUNT ( * ) AS col0 FROM tab1 AS cor0 WHERE NULL >= col0
----
0

query III rowsort
SELECT * FROM tab0 cor0 WHERE 84 / - col2 IS NULL
----

query III rowsort
SELECT * FROM tab0 cor0 WHERE + col1 IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5581
SELECT CAST( + + 61 AS SIGNED ) FROM tab0
----
61
61
61

skipif mysql # not compatible
query I rowsort label-5581
SELECT CAST ( + + 61 AS INTEGER ) FROM tab0
----
61
61
61

onlyif mysql # aggregate syntax: 
query I rowsort label-5582
SELECT + COUNT( * ) FROM tab0 WHERE NOT ( + col1 IS NULL )
----
3

skipif mysql # not compatible
query I rowsort label-5582
SELECT + COUNT ( * ) FROM tab0 WHERE NOT ( + col1 IS NULL )
----
3

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT ALL + 79 col1, - col1 FROM tab2
----
79
-51
79
-67
79
-77

onlyif mysql # aggregate syntax: 
query I rowsort label-5584
SELECT - MAX( ALL - - 31 ) AS col0 FROM tab1 AS cor0
----
-31

skipif mysql # not compatible
query I rowsort label-5584
SELECT - MAX ( ALL - - 31 ) AS col0 FROM tab1 AS cor0
----
-31

query I rowsort
SELECT - + 44 * col0 FROM tab2 AS cor0
----
-2024
-2816
-3300

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT - - 66 col2 FROM tab2 cor0
----
66
66
66

query I rowsort
SELECT 74 FROM tab1 WHERE NOT ( - col2 ) >= NULL
----

query I rowsort
SELECT ALL 96 FROM tab0 WHERE NOT col2 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5589
SELECT MIN( col1 ) col1 FROM tab2
----
51

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5589
SELECT MIN ( col1 ) col1 FROM tab2
----
51

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT NULL >= ( 41 )
----

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5591
SELECT ALL - AVG ( DISTINCT 26 ) FROM tab1 WHERE NOT col1 > ( CAST( NULL AS SIGNED ) )
----
NULL

skipif mysql # not compatible
query I rowsort label-5591
SELECT ALL - AVG ( DISTINCT 26 ) FROM tab1 WHERE NOT col1 > ( CAST ( NULL AS INTEGER ) )
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-5592
SELECT - COUNT( * ) + - COUNT( * ) AS col1 FROM tab0 WHERE NOT NULL NOT BETWEEN - 14 AND + 14 - col2 * col2
----
0

skipif mysql # not compatible
query I rowsort label-5592
SELECT - COUNT ( * ) + - COUNT ( * ) AS col1 FROM tab0 WHERE NOT NULL NOT BETWEEN - 14 AND + 14 - col2 * col2
----
0

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( col0 ) NOT BETWEEN NULL AND col2 * col2
----

query III rowsort
SELECT * FROM tab0 WHERE NOT - col0 IN ( 95 + - 65 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT ALL 17 * - 3 AS col0 FROM tab2
----
-51
-51
-51

query I rowsort
SELECT - 87 * col0 + col2 AS col2 FROM tab0
----
-1258
-7559
-8340

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5597
SELECT DISTINCT + 56 - - col0 col2 FROM tab1 WHERE + CAST( + col2 AS SIGNED ) IS NULL
----

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5597
SELECT DISTINCT + 56 - - col0 col2 FROM tab1 WHERE + CAST ( + col2 AS INTEGER ) IS NULL
----

query III rowsort
SELECT ALL * FROM tab1 WHERE NULL NOT BETWEEN + col2 AND NULL
----

query I rowsort
SELECT + ( 56 ) AS col1 FROM tab0
----
56
56
56

query I rowsort
SELECT ALL - ( 44 ) + - col2 FROM tab2
----
-102
-67
-84

onlyif mysql # aggregate syntax: 
query I rowsort label-5601
SELECT + COUNT( * ) + 70 FROM tab1
----
73

skipif mysql # not compatible
query I rowsort label-5601
SELECT + COUNT ( * ) + 70 FROM tab1
----
73

query I rowsort
SELECT + ( 71 ) FROM tab0
----
71
71
71

query I rowsort
SELECT - col0 + - ( + col2 ) FROM tab0
----
-196
-62
-97

query I rowsort
SELECT ALL ( - col0 ) + col1 * - col1 FROM tab0
----
-528
-6576
-98

query III rowsort
SELECT ALL * FROM tab0 WHERE NOT ( col0 ) = NULL
----

query I rowsort
SELECT col1 + + 89 AS col1 FROM tab0
----
110
170
90

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT NULL NOT BETWEEN NULL AND ( col1 )
----

query III rowsort
SELECT ALL * FROM tab1 WHERE NOT ( col2 ) BETWEEN NULL AND ( col2 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5609
SELECT DISTINCT + CAST( NULL AS SIGNED ) + COUNT( col1 + col1 * col1 ) AS col2 FROM tab0 AS cor0
----
NULL

skipif mysql # not compatible
query I rowsort label-5609
SELECT DISTINCT + CAST ( NULL AS INTEGER ) + COUNT ( col1 + col1 * col1 ) AS col2 FROM tab0 AS cor0
----
NULL

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5610
SELECT + col2 + - ( CAST( NULL AS SIGNED ) ) * + 41 FROM tab1 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5610
SELECT + col2 + - ( CAST ( NULL AS INTEGER ) ) * + 41 FROM tab1 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT + 53 + - 42 FROM tab2 AS cor0
----
11
11
11

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE ( 67 ) < NULL
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT col1 * - 66 + - col1 * - 82 col1 FROM tab2 AS cor0
----
1072
1232
816

query I rowsort
SELECT - 77 FROM tab1 WHERE NULL >= ( - col0 )
----

query I rowsort
SELECT - col1 AS col2 FROM tab0 WHERE ( + col1 ) = NULL
----

query I rowsort
SELECT col1 + 41 AS col2 FROM tab0 WHERE col2 BETWEEN col0 AND col0 * col2
----
122
42

query I rowsort
SELECT - 72 + col0 * col2 AS col0 FROM tab2 WHERE NULL BETWEEN ( 94 ) AND ( NULL )
----

query III rowsort
SELECT * FROM tab0 WHERE col0 NOT BETWEEN col0 + - col1 * col2 AND ( NULL )
----

query I rowsort
SELECT ALL - 34 * col0 AS col1 FROM tab2 AS cor0
----
-1564
-2176
-2550

onlyif mysql # DIV for integer division: 
query I rowsort label-5620
SELECT DISTINCT + + col1 DIV 47 AS col0 FROM tab2 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-5620
SELECT DISTINCT + + col1 / 47 AS col0 FROM tab2 AS cor0
----
1

query I rowsort
SELECT + col1 - col2 AS col2 FROM tab2 AS cor0 WHERE - 37 IS NOT NULL
----
28
37
9

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE NOT ( NULL ) <= col1 - col1
----

query III rowsort
SELECT ALL * FROM tab1 AS cor0 WHERE NOT + col2 / - col2 + - col2 IS NOT NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5624
SELECT + MAX( - col0 ) AS col0 FROM tab2 AS cor0
----
-46

skipif mysql # not compatible
query I rowsort label-5624
SELECT + MAX ( - col0 ) AS col0 FROM tab2 AS cor0
----
-46

onlyif mysql # aggregate syntax: 
query I rowsort label-5625
SELECT + COUNT( * ) AS col2 FROM tab2 AS cor0 WHERE col2 IN ( - ( - col2 ) * - 46 )
----
0

skipif mysql # not compatible
query I rowsort label-5625
SELECT + COUNT ( * ) AS col2 FROM tab2 AS cor0 WHERE col2 IN ( - ( - col2 ) * - 46 )
----
0

query I rowsort
SELECT col2 - ( - col0 ) AS col0 FROM tab1 AS cor0
----
144
147
159

query I rowsort
SELECT ALL + 97 AS col2 FROM tab0 AS cor0 WHERE col1 * - col2 > NULL
----

query I rowsort
SELECT - - 14 AS col2 FROM tab2 AS cor0
----
14
14
14

query I rowsort
SELECT ALL 59 * 88 AS col1 FROM tab2 AS cor0 WHERE NULL <> ( + col1 * - col0 )
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5630
SELECT CAST( MAX( ALL col1 ) AS SIGNED ) FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
47

skipif mysql # not compatible
query I rowsort label-5630
SELECT CAST ( MAX ( ALL col1 ) AS INTEGER ) FROM tab1 AS cor0 WHERE NOT NULL IS NOT NULL
----
47

onlyif mysql # aggregate syntax: 
query I rowsort label-5631
SELECT 29 * COUNT( * ) FROM tab2 AS cor0
----
87

skipif mysql # not compatible
query I rowsort label-5631
SELECT 29 * COUNT ( * ) FROM tab2 AS cor0
----
87

onlyif mysql # aggregate syntax: 
query I rowsort label-5632
SELECT - ( - - COUNT( * ) ) FROM tab1
----
-3

skipif mysql # not compatible
query I rowsort label-5632
SELECT - ( - - COUNT ( * ) ) FROM tab1
----
-3

onlyif mysql # aggregate syntax: 
query I rowsort label-5633
SELECT DISTINCT - SUM( - col1 ) AS col2 FROM tab1
----
66

skipif mysql # not compatible
query I rowsort label-5633
SELECT DISTINCT - SUM ( - col1 ) AS col2 FROM tab1
----
66

onlyif mysql # aggregate syntax: 
query I rowsort label-5634
SELECT ALL COUNT( - col0 ) * + ( COUNT( * ) + 91 ) FROM tab2
----
282

skipif mysql # not compatible
query I rowsort label-5634
SELECT ALL COUNT ( - col0 ) * + ( COUNT ( * ) + 91 ) FROM tab2
----
282

query III rowsort
SELECT * FROM tab0 WHERE NOT ( col0 ) <> ( + col0 )
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

onlyif mysql # aggregate syntax: 
query I rowsort label-5636
SELECT DISTINCT COUNT( * ) + COUNT( * ) * - COUNT( * ) AS col2 FROM tab2 WHERE NOT NULL IS NOT NULL
----
-6

skipif mysql # not compatible
query I rowsort label-5636
SELECT DISTINCT COUNT ( * ) + COUNT ( * ) * - COUNT ( * ) AS col2 FROM tab2 WHERE NOT NULL IS NOT NULL
----
-6

onlyif mysql # aggregate syntax: 
query I rowsort label-5637
SELECT DISTINCT + MAX( ALL + col0 ) FROM tab2
----
75

skipif mysql # not compatible
query I rowsort label-5637
SELECT DISTINCT + MAX ( ALL + col0 ) FROM tab2
----
75

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5638
SELECT DISTINCT - col1 + + 14 AS col2 FROM tab1 WHERE ( CAST( col0 AS SIGNED ) ) IS NOT NULL
----
-33
0
9

skipif mysql # not compatible
query I rowsort label-5638
SELECT DISTINCT - col1 + + 14 AS col2 FROM tab1 WHERE ( CAST ( col0 AS INTEGER ) ) IS NOT NULL
----
-33
0
9

query I rowsort
SELECT - col2 FROM tab1 WHERE NOT ( 78 ) <> - col1 + - col0
----

query I rowsort
SELECT - col2 FROM tab0 WHERE NOT NULL IN ( + ( - col2 ) )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5641
SELECT DISTINCT COUNT( * ) FROM tab0 WHERE NOT col0 * 71 IS NULL
----
3

skipif mysql # not compatible
query I rowsort label-5641
SELECT DISTINCT COUNT ( * ) FROM tab0 WHERE NOT col0 * 71 IS NULL
----
3

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE col0 IS NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5643
SELECT MIN( + col0 ) * - COUNT( * ) AS col0 FROM tab1 AS cor0
----
-153

skipif mysql # not compatible
query I rowsort label-5643
SELECT MIN ( + col0 ) * - COUNT ( * ) AS col0 FROM tab1 AS cor0
----
-153

query I rowsort
SELECT ALL 53 * 5 FROM tab1 WHERE ( NULL IS NOT NULL )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5645
SELECT ALL + COUNT( DISTINCT + 86 ) + + 21 AS col1 FROM tab2
----
22

skipif mysql # not compatible
query I rowsort label-5645
SELECT ALL + COUNT ( DISTINCT + 86 ) + + 21 AS col1 FROM tab2
----
22

onlyif mysql # aggregate syntax: 
query I rowsort label-5646
SELECT DISTINCT - COUNT( * ) * - 12 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
108

skipif mysql # not compatible
query I rowsort label-5646
SELECT DISTINCT - COUNT ( * ) * - 12 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
108

query I rowsort
SELECT 15 FROM tab2 WHERE NOT ( col0 ) IS NULL
----
15
15
15

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT ALL - - 98 + + col2 * - + col2 + + col2 col2 FROM tab0 AS cor0
----
-2064
-9604
8

query I rowsort
SELECT DISTINCT + col2 * col0 + col2 + + col2 * col2 AS col0 FROM tab0 AS cor0
----
19503
2961
980

query III rowsort
SELECT * FROM tab0 AS cor0 WHERE ( 2 ) IS NOT NULL
----
9 values hashing to c4b42765dff94eaaa46040e537fb43b7

query I rowsort
SELECT + col1 * ( col2 ) AS col0 FROM tab1 AS cor0
----
1344
295
3196

onlyif mysql # aggregate syntax: 
query I rowsort label-5652
SELECT ALL COUNT( * ) AS col1 FROM tab1 cor0 WHERE NOT ( NULL ) IN ( - ( - col0 ) * col2 )
----
0

skipif mysql # not compatible
query I rowsort label-5652
SELECT ALL COUNT ( * ) AS col1 FROM tab1 cor0 WHERE NOT ( NULL ) IN ( - ( - col0 ) * col2 )
----
0

skipif postgresql # PostgreSQL requires AS when renaming output columns
query II rowsort
SELECT + 63 col0, - col2 + - 40 AS col2 FROM tab2 AS cor0
----
63
-63
63
-80
63
-98

onlyif mysql # aggregate syntax: 
query I rowsort label-5654
SELECT - SUM( DISTINCT + + 70 ) AS col0 FROM tab1 AS cor0
----
-70

skipif mysql # not compatible
query I rowsort label-5654
SELECT - SUM ( DISTINCT + + 70 ) AS col0 FROM tab1 AS cor0
----
-70

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5655
SELECT ALL - col0 * CAST( NULL AS SIGNED ) AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

skipif mysql # not compatible
query I rowsort label-5655
SELECT ALL - col0 * CAST ( NULL AS INTEGER ) AS col2 FROM tab0 AS cor0
----
NULL
NULL
NULL

query I rowsort
SELECT DISTINCT ( + + col1 ) FROM tab0
----
1
21
81

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5657
SELECT - 14 AS col0 FROM tab1 WHERE NULL >= + - CAST( - 8 AS SIGNED ) - col0
----

skipif mysql # not compatible
query I rowsort label-5657
SELECT - 14 AS col0 FROM tab1 WHERE NULL >= + - CAST ( - 8 AS INTEGER ) - col0
----

query III rowsort
SELECT * FROM tab1 WHERE + 32 * - 75 BETWEEN ( 72 ) AND ( - col2 )
----

query III rowsort
SELECT ALL * FROM tab2 WHERE NOT + - 24 <= ( - + 42 * col1 )
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

query I rowsort
SELECT ALL - ( + 98 ) FROM tab1 WHERE NOT ( NULL ) <= NULL
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5661
SELECT - MIN( col0 ) + 82 + - - 64 AS col0 FROM tab1
----
95

skipif mysql # not compatible
query I rowsort label-5661
SELECT - MIN ( col0 ) + 82 + - - 64 AS col0 FROM tab1
----
95

query I rowsort
SELECT ALL - col0 * + - 2 FROM tab1
----
102
170
182

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5663
SELECT COUNT( * ) FROM tab1 WHERE - 34 * - CAST( col2 AS SIGNED ) NOT IN ( col1 * 78 )
----
3

skipif mysql # not compatible
query I rowsort label-5663
SELECT COUNT ( * ) FROM tab1 WHERE - 34 * - CAST ( col2 AS INTEGER ) NOT IN ( col1 * 78 )
----
3

query III rowsort
SELECT DISTINCT * FROM tab0 WHERE NOT ( 87 ) >= + col0 / 82
----

onlyif mysql # DIV for integer division: 
query I rowsort label-5665
SELECT ALL 10 DIV + - col0 FROM tab0
----
0
0
0

skipif mysql # not compatible
query I rowsort label-5665
SELECT ALL 10 / + - col0 FROM tab0
----
0
0
0

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5666
SELECT 46 + - MIN( DISTINCT - - col1 ) DIV + COUNT( * ) AS col2 FROM tab2 AS cor0
----
29

skipif mysql # not compatible
query I rowsort label-5666
SELECT 46 + - MIN ( DISTINCT - - col1 ) / + COUNT ( * ) AS col2 FROM tab2 AS cor0
----
29

onlyif mysql # aggregate syntax: 
query I rowsort label-5667
SELECT DISTINCT SUM( DISTINCT 16 ) FROM tab1 cor0 WHERE NULL IS NOT NULL
----
NULL

skipif mysql # not compatible
query I rowsort label-5667
SELECT DISTINCT SUM ( DISTINCT 16 ) FROM tab1 cor0 WHERE NULL IS NOT NULL
----
NULL

query I rowsort
SELECT DISTINCT col2 + + - 29 FROM tab0 AS cor0
----
-19
18
70

query III rowsort
SELECT ALL * FROM tab2 AS cor0 WHERE - col0 = NULL
----

query I rowsort
SELECT ALL col1 + + + col2 FROM tab2 cor0
----
117
125
74

query I rowsort
SELECT DISTINCT col1 + - col0 * + col2 FROM tab0
----
-624
-849
-9602

onlyif mysql # aggregate syntax: 
query I rowsort label-5672
SELECT + COUNT( * ) * + 93 FROM tab0 WHERE NULL IS NULL
----
279

skipif mysql # not compatible
query I rowsort label-5672
SELECT + COUNT ( * ) * + 93 FROM tab0 WHERE NULL IS NULL
----
279

query I rowsort
SELECT 37 * - - col0 FROM tab1 AS cor0
----
1887
3145
3367

onlyif mysql # DIV for integer division: 
query I rowsort label-5674
SELECT DISTINCT - col2 DIV - + col2 AS col2 FROM tab0 AS cor0
----
1

skipif mysql # not compatible
query I rowsort label-5674
SELECT DISTINCT - col2 / - + col2 AS col2 FROM tab0 AS cor0
----
1

onlyif mysql # aggregate syntax: 
query I rowsort label-5675
SELECT COUNT( * ) col1 FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5675
SELECT COUNT ( * ) col1 FROM tab0 AS cor0 WHERE NOT NULL IS NOT NULL
----
3

query II rowsort
SELECT DISTINCT - col2, - 11 * 4 AS col1 FROM tab2 AS cor0
----
-23
-44
-40
-44
-58
-44

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE NOT col1 * + 93 NOT BETWEEN - col2 / + - 10 + col1 + col2 AND NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5678
SELECT DISTINCT * FROM tab1 AS cor0 WHERE col2 / + CAST( - ( 59 ) AS SIGNED ) NOT BETWEEN NULL AND - CAST( NULL AS SIGNED ) + col1
----

skipif mysql # not compatible
query III rowsort label-5678
SELECT DISTINCT * FROM tab1 AS cor0 WHERE col2 / + CAST ( - ( 59 ) AS INTEGER ) NOT BETWEEN NULL AND - CAST ( NULL AS INTEGER ) + col1
----

query II rowsort
SELECT + + col1 * + col1 - + - col0 AS col2, - col1 AS col0 FROM tab1 AS cor0
----
110
-5
2300
-47
247
-14

query I rowsort
SELECT ALL + 15 + - 79 FROM tab1 cor0 WHERE NOT ( - col0 ) NOT BETWEEN col0 AND ( col2 - - - col2 )
----

query III rowsort
SELECT * FROM tab2 cor0 WHERE NOT ( NULL ) <= - col2
----

skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort
SELECT DISTINCT + col0 * + 55 * 8 col1 FROM tab0 AS cor0
----
38280
42680
6600

query I rowsort
SELECT DISTINCT col0 * - 56 AS col1 FROM tab0 AS cor0
----
-4872
-5432
-840

onlyif mysql # DIV for integer division: 
query I rowsort label-5684
SELECT ALL col2 DIV 88 FROM tab1 cor0
----
0
0
1

skipif mysql # not compatible
query I rowsort label-5684
SELECT ALL col2 / 88 FROM tab1 cor0
----
0
0
1

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE ( + ( + col1 ) + - col1 IN ( - col2 + col1 ) )
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5686
SELECT DISTINCT - SUM( col1 ) DIV - 9 FROM tab1
----
7

skipif mysql # not compatible
query I rowsort label-5686
SELECT DISTINCT - SUM ( col1 ) / - 9 FROM tab1
----
7

query II rowsort
SELECT col2 AS col2, col2 + + + col1 FROM tab0
----
10
31
47
128
99
100

onlyif mysql # CAST syntax: SIGNED type: 
query III rowsort label-5688
SELECT DISTINCT * FROM tab0 WHERE + 79 + - 71 * - ( - col2 ) NOT BETWEEN ( + CAST( - col1 AS SIGNED ) * 99 ) AND NULL
----
97
1
99

skipif mysql # not compatible
query III rowsort label-5688
SELECT DISTINCT * FROM tab0 WHERE + 79 + - 71 * - ( - col2 ) NOT BETWEEN ( + CAST ( - col1 AS INTEGER ) * 99 ) AND NULL
----
97
1
99

query II rowsort
SELECT DISTINCT + col2, 95 FROM tab2
----
23
95
40
95
58
95

onlyif mysql # aggregate syntax: 
query II rowsort label-5690
SELECT ALL ( - COUNT( * ) ), + COUNT( * ) AS col0 FROM tab0
----
-3
3

skipif mysql # not compatible
query II rowsort label-5690
SELECT ALL ( - COUNT ( * ) ), + COUNT ( * ) AS col0 FROM tab0
----
-3
3

onlyif mysql # aggregate syntax: 
query I rowsort label-5691
SELECT DISTINCT ( - COUNT( + 71 ) ) AS col2 FROM tab2
----
-3

skipif mysql # not compatible
query I rowsort label-5691
SELECT DISTINCT ( - COUNT ( + 71 ) ) AS col2 FROM tab2
----
-3

query I rowsort
SELECT DISTINCT col2 / + + 68 - 92 / col2 FROM tab2 AS cor0 WHERE NOT NULL IS NULL
----

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5693
SELECT COUNT( * ) * - - CAST( NULL AS SIGNED ) * + MAX( - 44 ) FROM tab2
----
NULL

skipif mysql # not compatible
query I rowsort label-5693
SELECT COUNT ( * ) * - - CAST ( NULL AS INTEGER ) * + MAX ( - 44 ) FROM tab2
----
NULL

query I rowsort
SELECT col2 + + - col2 + - 39 * + 72 FROM tab0
----
-2808
-2808
-2808

query I rowsort
SELECT DISTINCT col2 + - - col0 / + + col1 AS col2 FROM tab1 AS cor0 WHERE + col1 BETWEEN NULL AND NULL
----

query II rowsort
SELECT DISTINCT - col0 + + col2, col2 FROM tab1 AS cor0
----
-23
68
-26
59
45
96

query III rowsort
SELECT DISTINCT * FROM tab1 AS cor0 WHERE ( - col2 + + col0 ) NOT IN ( - col1 )
----
9 values hashing to c6c0a4111b36d04dbc811a11e4d54cad

query I rowsort
SELECT DISTINCT - 35 + 69 FROM tab1 AS cor0
----
34

query I rowsort
SELECT DISTINCT - col1 + 52 FROM tab0 AS cor0
----
-29
31
51

onlyif mysql # aggregate syntax: 
query I rowsort label-5700
SELECT DISTINCT - MAX( ALL + + col1 ) AS col1 FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( - col2 + - 8 )
----
NULL

skipif mysql # not compatible
query I rowsort label-5700
SELECT DISTINCT - MAX ( ALL + + col1 ) AS col1 FROM tab2 AS cor0 WHERE NOT NULL NOT IN ( - col2 + - 8 )
----
NULL

onlyif mysql # aggregate syntax: 
query I rowsort label-5701
SELECT + - MIN( 46 ) AS col2 FROM tab2 AS cor0
----
-46

skipif mysql # not compatible
query I rowsort label-5701
SELECT + - MIN ( 46 ) AS col2 FROM tab2 AS cor0
----
-46

query III rowsort
SELECT DISTINCT * FROM tab2 AS cor0 WHERE ( NULL ) <> - col2 + - col0
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5703
SELECT + ( - COUNT( * ) ) * - 45 FROM tab2 AS cor0
----
135

skipif mysql # not compatible
query I rowsort label-5703
SELECT + ( - COUNT ( * ) ) * - 45 FROM tab2 AS cor0
----
135

onlyif mysql # aggregate syntax: 
query I rowsort label-5704
SELECT MIN( + col1 ) AS col2 FROM tab0
----
1

skipif mysql # not compatible
query I rowsort label-5704
SELECT MIN ( + col1 ) AS col2 FROM tab0
----
1

onlyif mysql # CAST syntax: aggregate syntax: SIGNED type: 
query I rowsort label-5705
SELECT ALL COUNT( * ) * - CAST( NULL AS SIGNED ) AS col0 FROM tab0
----
NULL

skipif mysql # not compatible
query I rowsort label-5705
SELECT ALL COUNT ( * ) * - CAST ( NULL AS INTEGER ) AS col0 FROM tab0
----
NULL

query I rowsort
SELECT ALL 8 + + col2 FROM tab2
----
31
48
66

query I rowsort
SELECT DISTINCT - 61 * - - 18 FROM tab2
----
-1098

query III rowsort
SELECT DISTINCT * FROM tab1 WHERE NOT NULL >= + col2 + col2
----

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5709
SELECT ALL 40 DIV - 64 * - MAX( + col0 ) AS col1 FROM tab2
----
0

skipif mysql # not compatible
query I rowsort label-5709
SELECT ALL 40 / - 64 * - MAX ( + col0 ) AS col1 FROM tab2
----
0

onlyif mysql # aggregate syntax: 
query I rowsort label-5710
SELECT DISTINCT + SUM( ALL col1 ) AS col1 FROM tab0
----
103

skipif mysql # not compatible
query I rowsort label-5710
SELECT DISTINCT + SUM ( ALL col1 ) AS col1 FROM tab0
----
103

query I rowsort
SELECT col2 + col2 AS col2 FROM tab1 WHERE + - col2 IS NULL
----

onlyif mysql # CAST syntax: SIGNED type: 
query II rowsort label-5712
SELECT ALL + + col1, - CAST( NULL AS SIGNED ) AS col0 FROM tab2 AS cor0
----
51
NULL
67
NULL
77
NULL

skipif mysql # not compatible
query II rowsort label-5712
SELECT ALL + + col1, - CAST ( NULL AS INTEGER ) AS col0 FROM tab2 AS cor0
----
51
NULL
67
NULL
77
NULL

onlyif mysql # DIV for integer division: 
query II rowsort label-5713
SELECT + col1 + + col0 - - 52 AS col1, + 23 DIV + - col0 + col0 FROM tab2 AS cor0
----
149
46
193
64
194
75

skipif mysql # not compatible
query II rowsort label-5713
SELECT + col1 + + col0 - - 52 AS col1, + 23 / + - col0 + col0 FROM tab2 AS cor0
----
149
46
193
64
194
75

query I rowsort
SELECT - col2 * - - col1 AS col0 FROM tab2
----
-1173
-3080
-3886

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5715
SELECT ALL + 21 DIV + COUNT( * ) AS col1 FROM tab2 AS cor0
----
7

skipif mysql # not compatible
query I rowsort label-5715
SELECT ALL + 21 / + COUNT ( * ) AS col1 FROM tab2 AS cor0
----
7

query I rowsort
SELECT - + col1 * - 75 - - 12 AS col1 FROM tab0 AS cor0
----
1587
6087
87

query I rowsort
SELECT DISTINCT - col1 * + 14 AS col1 FROM tab1 AS cor0
----
-196
-658
-70

query I rowsort
SELECT + + col2 * 20 FROM tab1 AS cor0
----
1180
1360
1920

onlyif mysql # aggregate syntax: 
query I rowsort label-5719
SELECT MIN( ALL - col0 ) AS col2 FROM tab2 AS cor0
----
-75

skipif mysql # not compatible
query I rowsort label-5719
SELECT MIN ( ALL - col0 ) AS col2 FROM tab2 AS cor0
----
-75

onlyif mysql # aggregate syntax: 
query I rowsort label-5720
SELECT DISTINCT + + SUM( DISTINCT + col2 ) * 8 FROM tab1 AS cor0
----
1784

skipif mysql # not compatible
query I rowsort label-5720
SELECT DISTINCT + + SUM ( DISTINCT + col2 ) * 8 FROM tab1 AS cor0
----
1784

onlyif mysql # aggregate syntax: DIV for integer division: 
query I rowsort label-5721
SELECT ALL - MIN( - - col1 ) DIV - MAX( + - col0 ) AS col2 FROM tab0 AS cor0
----
0

skipif mysql # not compatible
query I rowsort label-5721
SELECT ALL - MIN ( - - col1 ) / - MAX ( + - col0 ) AS col2 FROM tab0 AS cor0
----
0

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE + 16 * 37 / - + col2 IS NOT NULL
----
9 values hashing to 75c998aa53ac83218cbf2feb962d0a49

onlyif mysql # CAST syntax: SIGNED type: 
query I rowsort label-5723
SELECT DISTINCT + col0 AS col0 FROM tab1 WHERE ( - col2 * + CAST( NULL AS SIGNED ) - + 57 ) IN ( + col0, - CAST( col1 AS SIGNED ) )
----

skipif mysql # not compatible
query I rowsort label-5723
SELECT DISTINCT + col0 AS col0 FROM tab1 WHERE ( - col2 * + CAST ( NULL AS INTEGER ) - + 57 ) IN ( + col0, - CAST ( col1 AS INTEGER ) )
----

onlyif mysql # aggregate syntax: 
query I rowsort label-5724
SELECT DISTINCT SUM( ALL - + col2 ) col0 FROM tab2
----
-121

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5724
SELECT DISTINCT SUM ( ALL - + col2 ) col0 FROM tab2
----
-121

query II rowsort
SELECT col1, - 29 FROM tab1
----
14
-29
47
-29
5
-29

query I rowsort
SELECT DISTINCT + 68 + + col0 FROM tab0 cor0
----
155
165
83

query I rowsort
SELECT - col1 * - - 83 FROM tab2 AS cor0
----
-4233
-5561
-6391

query I rowsort
SELECT DISTINCT col2 + - col0 + col2 FROM tab1 WHERE NOT + 83 + col1 * - + 68 IS NULL
----
141
33
45

query I rowsort
SELECT + col2 FROM tab0 WHERE col0 IS NOT NULL
----
10
47
99

onlyif mysql # aggregate syntax: 
query I rowsort label-5730
SELECT - ( - COUNT( * ) ) AS col1 FROM tab2
----
3

skipif mysql # not compatible
query I rowsort label-5730
SELECT - ( - COUNT ( * ) ) AS col1 FROM tab2
----
3

query III rowsort
SELECT * FROM tab1 AS cor0 WHERE NULL = ( col0 )
----

query I rowsort
SELECT 98 + - ( + col0 ) FROM tab0 cor0
----
1
11
83

onlyif mysql # DIV for integer division: 
query I rowsort label-5733
SELECT col0 + col2 DIV - col0 col1 FROM tab0 cor0
----
12
87
96

skipif mysql # not compatible
skipif postgresql # PostgreSQL requires AS when renaming output columns
query I rowsort label-5733
SELECT col0 + col2 / - col0 col1 FROM tab0 cor0
----
12
87
96

query III rowsort
SELECT DISTINCT * FROM tab2 WHERE NOT + col1 BETWEEN NULL AND - - ( + + col1 )
----

query I rowsort
SELECT + col1 * - col2 + ( 65 ) AS col0 FROM tab1
----
-1279
-230
-3131

onlyif mysql # aggregate syntax: 
query I rowsort label-5736
SELECT COUNT( * ) * + 65 FROM tab0
----
195

skipif mysql # not compatible
query I rowsort label-5736
SELECT COUNT ( * ) * + 65 FROM tab0
----
195

query I rowsort
SELECT DISTINCT col2 + + 53 FROM tab0 AS cor0
----
100
152
63

onlyif mysql # aggregate syntax: 
query I rowsort label-5738
SELECT COUNT( * ) - - + MIN( - 19 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
-10

skipif mysql # not compatible
query I rowsort label-5738
SELECT COUNT ( * ) - - + MIN ( - 19 ) AS col1 FROM tab0 AS cor0 CROSS JOIN tab1 AS cor1
----
-10

query I rowsort
SELECT ALL col0 AS col0 FROM tab1 WHERE 42 + + col2 * + ( - 66 ) IS NULL
----

query I rowsort label-5740
