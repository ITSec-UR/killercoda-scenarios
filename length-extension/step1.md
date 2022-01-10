#### Hinweise und Lösungen
Für diese Aufgabe stehen Ihnen Lösungen bereit unter https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/.

Es wurden eine Nachricht m<sub>1</sub> und ein MAC abgefangen.<br>
Lesen Sie die Werte der Variablen `m1` und `mac1` aus:
- `echo $m1`{{execute}}
- `echo $mac1`{{execute}}

<br>
Lassen Sie sich die Nachricht in Hexadezimalschreibweise ausgeben.<br>
`echo -n $m1 | hexdump -C`{{execute}}
<br>
>>1) Kopieren Sie den Hexadezimalstring (inklusive der Leerzeichen) in das Antwortfeld.<< 
=== 62 75 73 3d 31

>>2) Wie viele Bytes umfasst die Nachricht?<<
=== 5