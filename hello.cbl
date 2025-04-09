       program-id. hello.

       environment division.
       configuration section.

       data division.
       working-storage section.
       77  WS-NOM PIC X(12).
       01  WS-GENRE PIC X.
           88 FEMME VALUE "F".
           88 HOMME VALUE "H".
       linkage section.

       procedure division.
           DISPLAY 'Hello world'.
           DISPLAY 'Quel est ton nom ? '.

           ACCEPT WS-NOM.
           DISPLAY 'Bonjour...' WS-NOM.

           SET HOMME TO TRUE.
           IF FEMME
              DISPLAY "Vous êtes une femme."
           ELSE IF HOMME
              DISPLAY "Vous êtes un homme."
           END-IF.

           DISPLAY WS-GENRE.
           
           goback.

       end program hello.
