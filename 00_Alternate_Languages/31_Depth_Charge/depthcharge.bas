2 PRINT TAB(30);"DEPTH CHARGE"
4 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT: PRINT: PRINT
20 INPUT "DIMENSION OF SEARCH AREA";G: PRINT
30 N=INT(LOG(G)/LOG(2))+1
40 PRINT "YOU ARE THE CAPTAIN OF THE DESTROYER USS COMPUTER"
50 PRINT "AN ENEMY SUB HAS BEEN CAUSING YOU TROUBLE.  YOUR"
60 PRINT "MISSION IS TO DESTROY IT.  YOU HAVE";N;"SHOTS."
70 PRINT "SPECIFY DEPTH CHARGE EXPLOSION POINT WITH A"
80 PRINT "TRIO OF NUMBERS -- THE FIRST TWO ARE THE"
90 PRINT "SURFACE COORDINATES; THE THIRD IS THE DEPTH."
100 PRINT : PRINT "GOOD LUCK !": PRINT
110 A=INT(G*RND(1)) : B=INT(G*RND(1)) : C=INT(G*RND(1))
120 FOR D=1 TO N : PRINT : PRINT "TRIAL #";D; : INPUT X,Y,Z
130 IF ABS(X-A)+ABS(Y-B)+ABS(Z-C)=0 THEN 300
140 GOSUB 500 : PRINT : NEXT D
200 PRINT : PRINT "YOU HAVE BEEN TORPEDOED!  ABANDON SHIP!"
210 PRINT "THE SUBMARINE WAS AT";A;",";B;",";C : GOTO 400
300 PRINT : PRINT "B O O M ! ! YOU FOUND IT IN";D;"TRIES!"
400 PRINT : PRINT: INPUT "ANOTHER GAME (Y OR N)";A$
410 IF A$="Y" THEN 100
420 PRINT "OK.  HOPE YOU ENJOYED YOURSELF." : GOTO 600
500 PRINT "SONAR REPORTS SHOT WAS ";
510 IF Y>B THEN PRINT "NORTH";
520 IF Y<B THEN PRINT "SOUTH";
530 IF X>A THEN PRINT "EAST";
540 IF X<A THEN PRINT "WEST";
550 IF Y<>B OR X<>A THEN PRINT " AND";
560 IF Z>C THEN PRINT " TOO LOW."
570 IF Z<C THEN PRINT " TOO HIGH."
580 IF Z=C THEN PRINT " DEPTH OK."
590 RETURN
600 END
