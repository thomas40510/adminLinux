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

Il suffit donc, pour l'utiliser, de l'exécuter sans paramètre `./interactive.sh`

### II. En lot
Ce second script, `batch.sh`, permet, lorsqu'il est exécuté sans paramètre, de réaliser toutes les actions à la suite sans demander quoi que ce soit à l'utilisateur.

Mais il est également possible de lui passer une action à exécuter en paramètre :
- `--updgrade` pour une mise à jour des programmes installés ;
- `--update` pour une mise à jour des indexes ;
- `--state` pour un _backup_ de l'état du système
- `--config` pour un backup de la configuration du système ;
- `--interactive` pour entrer en mode "interactif" (appel à `interactive.sh`).

