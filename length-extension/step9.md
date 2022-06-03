Die Berechnung des neuen MAC erfolgt über ein Python-Skript `sha1.py`, das eine initialisierbare Implementierung des SHA-1 Algorithmus beinhaltet.

Berechnen Sie den neuen MAC, indem Sie das Skript mit den folgenden Parametern ausführen:
- Nachricht m
- Initialisierungsvektor i 
- Länge der erweiterten Nachricht l 

`python3 sha1.py -m "&bus=50" -i 5e1498cb e5a89b61 4c66fc3d e25092a0 e62ab006 -l 71`{{execute}}
