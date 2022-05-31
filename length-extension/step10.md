Der Server erhält eine Nachricht `m_rec = m_ext`{{}} und einen MAC. Er kennt zudem auch den gemeinsamen Schlüssel k.<br>
Lesen Sie die Werte der Variablen  `k`{{}}, `m_rec`{{}} und `mac`{{}} aus:
- 
- `echo $k`{{execute}}
- `echo $m_rec`{{execute}}
- `echo $mac`{{execute}}

Zur Prüfung der Integrität der Nachricht berechnet der Server den MAC als

h(k || m<sub>rec</sub>):

`echo -n -e $k$m_rec | sha1sum`{{execute}}

Vergleichen Sie die Ausgabe des Python-Skripts (MAC des Angreifers) mit dem vom Server berechneten Hashwert aus Schlüssel und erhaltener Nachricht.