Nun soll die Signatur der Root CA (ISRG Root X1) auf dem Zertifikat `intermediate.cer`{{}} (R3) überprüft werden.

Dazu wird im ersten Schritt die im Zertifikat enthaltene Signatur ausgelesen und der öffentliche Testschlüssel der Root CA angewandt, 
um den Hashwert des Zertifikats zu erhalten. 

Im zweiten Schritt wird überprüft, ob bei der Anwendung der Hashfunktion auf das ursprüngliche Zertifikat derselbe Hashwert berechnet wird.

Stimmen die beiden Hashwerte überein, ist die Signatur authentisch. Das vorliegende Zertifikat von Let's Encrypt (R3) 
wurde also tatsächlich von der Internet Secure Research Group (ISRG) ausgestellt.