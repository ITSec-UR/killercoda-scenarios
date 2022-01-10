<style>
/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: #555;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;

  /* Position the tooltip text */
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -60px;

  /* Fade in tooltip */
  opacity: 0;
  transition: opacity 0.3s;
}

/* Tooltip arrow */
.tooltip .tooltiptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}
</style>

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

<div class="tooltip">Lösung
  <span class="tooltiptext">Zählen Sie die Anzahl der Bytes, ohne Leerzeichen, beginnend mit der 62.</span>
</div>