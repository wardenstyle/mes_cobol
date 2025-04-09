       program-id. solde.

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 SOLDE PIC S9(4).
       linkage section.

       procedure division.
           MOVE +1968 TO SOLDE.
           DISPLAY 'solde:' SOLDE.           
           goback.

       end program solde.