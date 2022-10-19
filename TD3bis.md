# Linux — TD3
	Thomas PRÉVOST, Margot TAILLANTOU-CANDAU (CSN24)

> [github.com/thomas40510/adminLinux](https://github.com/thomas40510/adminLinux)

### Attendus du TD
Il est attendu un script bash permettant à l'administrateur du serveur de réaliser les actions  suivantes :
- Mise à jour de l'index des dépôts logiciels ;
- Mise à jour des logiciels installés ;
- Création d'une sauvegarde de la configuration du système :
	- SSH,
	- `nginx`,
	- `crontab` ;
- Création d'un rapport sur l'état du système :
	- _load average_,
	- Processus consommateurs de ressources, 
	- Mémoire disponible,
	- Utilisation du disque,
	- État des services.

Et ceci de deux manières différentes : interactive et en lot.

### I. Mode interactif
Le script `interactive.sh` permet d'effectuer ces actions en demandant à l'utilisateur ce qu'il souhaite faire.
> _NB_ : ce script nécessite d'avoir la librairie `dialog` (dans le doute, `sudo apt-get install dialog`).


