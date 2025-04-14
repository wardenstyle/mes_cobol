       IDENTIFICATION DIVISION.
       PROGRAM-ID. tableau.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  tableau.
           05 nombre PIC 9(2) OCCURS 99 INDEXED BY ws-index.      
       PROCEDURE DIVISION.
           SET ws-index TO 1
           SEARCH nombre
              AT END
                 DISPLAY 'Le nombre n''a pas été trouvé'
               WHEN nombre(ws-index) = 21
                 DISPLAY 'Le nombre ' nombre(ws-index) 'a été trouvé'
           END-SEARCH.
           GOBACK.
       END PROGRAM tableau.