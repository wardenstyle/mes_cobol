       IDENTIFICATION DIVISION.
       PROGRAM-ID. tableau.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
   
       01  ws-tableau.
           05 FILLER PIC X(7) VALUE 'David' .
           05 FILLER PIC X(7) VALUE 'Antoine' .
           05 FILLER PIC X(7) VALUE 'Marie' .
       01  ws-tableau-prenom REDEFINES ws-tableau.
           05 ws-prenom PIC x(7) OCCURS 3 TIMES.

       01  I PIC 9 VALUE 1.
       
       PROCEDURE DIVISION.
           
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
               DISPLAY ws-prenom(I)
           END-PERFORM
           
           GOBACK.
       END PROGRAM tableau.