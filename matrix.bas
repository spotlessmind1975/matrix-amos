Rem Definiamo uno schermo da 320x256 a 32 colori 
Rem Define a screen of a resolution of 320x256 with 32 colors

Screen Open 1,320,256,32,Lowres

Rem Disattiviamo il lampeggiamento del cursore 
Rem We disable the cursor flashing 

Flash Off 

Rem Carichiamo l'immagine disegnata in precedenza. 
Rem Load the image we drawn previously.

Load Iff "DH0:matrix.iff",1

Rem Loop principale
Rem Main loop

Do 

   Rem Cicliamo la palette: tuti i colori (1..31) sono spostati di un 
   Rem indice in avanti, tranne il primo (0) perche' e' lo sfondo.
   Rem Palette Cycle: all colors (1...31) are moved forward by 1, while 
   Rem the first color at index 0 is not moved since it is the
   Rem background color.  

   Colour 31,Colour(1)
   For J=1 To 30
      Colour J,Colour(J+1)
   Next J

   Rem Rallentiamo il prossimo frame, per apprezzare l'animazione.
   Rem Slow down next frame, to see animation ad a regular speed. 

   Wait 4

Loop 
