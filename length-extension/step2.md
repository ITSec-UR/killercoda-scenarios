Es wurden eine Nachricht m<sub>1</sub> und ein MAC abgefangen.

Lesen Sie die Werte der Variablen `m1`{{}} und `mac1`{{}} aus:

- `echo $m1`{{execute}}
- `echo $mac1`{{execute}}

Lassen Sie sich die Nachricht in Hexadezimalschreibweise ausgeben.

`echo -n $m1 | hexdump -C`{{exec}}

>1: Kopieren Sie den Hexadezimalstring (inklusive der Leerzeichen) in das Antwortfeld.

>2: Wie viele Bytes umfasst die Nachricht?