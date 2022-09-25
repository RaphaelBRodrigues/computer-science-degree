.code
LOOP: LDA pont1,I
      STA pontres,I
      LDA pont2,I
      ADD pontres,I
      STA pontres,I       
      LDA pont1 
      ADD #01h
      STA pont1
      LDA pont2
      ADD #01h       
      STA pont2
      LDA pontres         
      ADD #01h
      STA pontres       
      LDA tam        
      ADD #0FFh
      STA tam
      JZ  FIM
      JMP LOOP
FIM:  HLT            
.endcode

.data
      vet1: DB #07h
            DB #05h  
      vet2: DB #06h  
            DB #09h  
      pont1: DB vet1
      pont2: DB vet2
      res:  DB #00h
            DB #00h
      pontres: DB res
      tam:  DB #02h 
.enddata