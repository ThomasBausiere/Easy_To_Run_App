# 🧪 Toon App – Exercice Docker

Ce projet lance une application Java connectée à une base MySQL et visualisable via phpMyAdmin.  
**Tout fonctionne avec une seule commande.**

---

## ✅ Prérequis

- [Docker](https://www.docker.com/products/docker-desktop) installé (Docker Compose inclus)

---

## 🚀 Lancer l'application

```bash
git clone https://github.com/ThomasBausiere/Easy_To_Run_App.git
cd toon-app
docker-compose up --build
```

> La première exécution peut prendre un peu de temps (téléchargement des images).

---

## 🌐 Accès à l'application

-  Application Java : http://localhost:9000  
-  Interface phpMyAdmin : http://localhost:8080  
  - **Utilisateur :** root  
  - **Mot de passe :** root  
  - **Base :** bdd_toon

---

## 📁 Structure

- `docker-compose.yml` : Orchestration des conteneurs
- `script.sql` : Initialisation automatique de la base
- `.env` : Variables d’environnement (déjà configurées) // en bonne pratique le .env n'est pas dans le dossier, mais ici l'objectif est d'avoir une application rapidement utilisable, donc clée en main !

---

## ℹ️ Notes

- Aucun fichier à modifier.
- Le conteneur `toon` est une image pré-construite depuis [Docker Hub](https://hub.docker.com/r/mazodev/toon).
- Le volume `db_toon` conserve la base même après arrêt de Docker.
