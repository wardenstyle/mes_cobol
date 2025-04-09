       program-id. nombre_premier.

       environment division.
       configuration section.
      *--------------
       data division.
      *-------------- 
       working-storage section.
      * déclaration entier N initialisé à 0
       01  N        PIC 9(3) VALUE ZERO.
      * déclaration de notre diviseur
       01  ENT      PIC 9(3) VALUE ZERO.
      * déclaration du reste de notre division
       01  RESTE    PIC 9(3) VALUE ZERO.
      * le résultat
       01  RESULT    PIC 9(3) VALUE ZERO.

       procedure division.
      * décomposition en 3 paragraphes 
           PERFORM RECUEILLIR-NB.
           PERFORM TRAITEMENT.
           PERFORM AFFICHAGE.
           STOP RUN.


       RECUEILLIR-NB.
           DISPLAY 'Veuillez entrer un entier naturel:'
           ACCEPT N.
       TRAITEMENT.
      * Le diviseur commence obligatoirement par 2
           MOVE 2 TO ENT.
      * Traitement avec la boucle while
      * en php:for($i = 2; $i <= $num/2; $i++){if ($num%$i ==0)}
           PERFORM UNTIL ENT >= N
              DIVIDE N BY ENT GIVING RESULT REMAINDER RESTE
                  IF RESTE = 0 THEN
                    DISPLAY 'ce n''est pas un nombre premier'
                    STOP RUN
                  END-IF
      * incrémenter de 1 notre diviseur a chaque tour de boucle
              ADD 1 TO ENT
           END-PERFORM.
      
       AFFICHAGE.
           IF N = ENT THEN
                DISPLAY 'c''est un nombre permier' 
           END-IF.  