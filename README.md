# CTFd-Containers

## Installation

Pour installer le plugin, suivez les étapes suivantes:

- Se placer dans le dossier `CTFd/plugins/`
- Faire la commande `git pull https://github.com/MindBreak-ESGI/CTFd-Containers containers`
- Vous aurez normalement un nouveau dossier nommé **containers**, vérifiez qu'il existe et qu'il contient un fichier `requirements.txt`
- Se remettre à la racine de CTFd, puis reconstruire l'image avec `docker-compose build` pour qu'il prenne en compte les nouvelles dépendances
- Relancer CTFd
