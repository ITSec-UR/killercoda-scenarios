Docker ist eine Plattform für Entwickler und Systemadministratoren zum Entwickeln, Bereitstellen und Ausführen von Anwendungen mit Containern. 
Die Verwendung von Linux-Containern zum Bereitstellen von Anwendungen wird als _Containerization_ bezeichnet.

Containerization wird immer beliebter, denn Container sind:

- Flexibel: Selbst die komplexesten Anwendungen können containerisiert werden.
- Leichtgewicht: Container nutzen den Host-Kernel und teilen ihn.
- Austauschbar: Sie können Updates und Upgrades im laufenden Betrieb bereitstellen.
- Portabel: Sie können lokal erstellen, in der Cloud bereitstellen und überall ausführen.
- Skalierbar: Sie können Container-Replikate erhöhen und automatisch verteilen.
- Stapelbar: Sie können Dienste vertikal und im laufenden Betrieb stapeln.

Docker ist eine Container-Virtualisierungslösung, mit der einzelne Anwendungen oder Dienste zu sogenannten Containern kombiniert 
und isoliert ausgeführt werden können. 
Zu diesem Zweck wird zunächst ein Image erstellt, das die zur Ausführung der Anwendung erforderlichen Informationen enthält. 
Wenn Sie ein solches Image mit Hilfe von Docker starten, erhalten Sie einen Container, in dem die Anwendung isoliert ausgeführt wird. 
Dadurch lassen sich Interferenzen zwischen installierten Libraries oder Programmen (inkl. verschiedener Versionen) verhindern. 
Im Vergleich zu Virtual Machines (VM) sind Container leichtgewichtiger, da auf das gleiche Betriebssystem (OS) zurückgegriffen wird.

<img src="src="https://gitlab.itsec.ur.de/itsec/uebung/killercoda-scenarios/-/raw/main/docker-introdcution/assets/Docker.svg"> <img src="src="https://gitlab.itsec.ur.de/itsec/uebung/killercoda-scenarios/-/raw/main/docker-introdcution/assets/VM.svg">
