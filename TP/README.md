# 🌐 Projet Web – Déploiement local avec FTP & Base de données

## 🎓 École IT Bruxelles – 1ère année

**Mission et Projet – Déploiement local avec nom de domaine personnalisé et base de données**

---

## 👨‍💻 Auteur du projet

- **Nom complet** : [Prénom NOM]
- **Email** : [monmail@example.com]
- **Nom du domaine local** : `monsite-[votre-prénom]`
- **Nom du dossier web** : `/var/www/monsite-[votre-prénom]`
- **Nom d’utilisateur FTP** : `[votre nom FTP]`
- **Port FTP utilisé** : 21 (ou autre si différent)

---

## 📁 Structure du projet

```
/
├── contact.php       # Formulaire d’envoi de message
├── messages.php      # Page d’affichage des messages enregistrés
├── style.css         # Feuille de style principale
├── assets/           # Images ou fichiers annexes
├── includes/         # (optionnel) Fichiers PHP réutilisables (db.php, header.php…)
├── projet/           # les autres fichier de votre projet
└── index.html        # (ou index.php) Page d’accueil existante du projet

```

---

## ⚙️ Fonctionnalités ajoutées

### ✅ Page contact.php

- Formulaire avec les champs :
  - Nom
  - Email
  - Message
- Données envoyées en **POST** et **insérées dans MariaDB**
- Validation JavaScript (bonus si fait)

### ✅ Page messages.php

- Affichage dynamique de tous les messages enregistrés
- Présentation sous forme de tableau ou de cartes
- Tri par date (du plus récent au plus ancien)

---

## 🛠️ Technologies utilisées

- **HTML / CSS / JavaScript**
- **PHP7**
- **MariaDB**
- **Apache2**
- **FTP** (FileZilla, VSFTPD ou autre)

---

## 🗃️ Base de données utilisée

- **Nom de la base** : `contact_db`
- **Table principale** : `messages`

### 📌 Structure de la table `messages`

| Champ      | Type       | Description           |
| ---------- | ---------- | --------------------- |
| id         | INT (auto) | Identifiant unique    |
| nom        | VARCHAR    | Nom de l'utilisateur  |
| email      | VARCHAR    | Email                 |
| message    | TEXT       | Message saisi         |
| created_at | TIMESTAMP  | Date d’enregistrement |

---

## 🔐 Sécurité

- Filtres PHP : `htmlspecialchars`, `filter_var`, ou `PDO::prepare`
- Pas de mot de passe dans les fichiers visibles
- Accès FTP restreint au dossier personnel

---

## 🧪 Tests effectués

- [ ] Affichage correct depuis le domaine local
- [ ] Connexion à la base fonctionnelle
- [ ] Envoi et affichage des messages OK
- [ ] Déploiement complet via FTP

---

## 📢 Notes personnelles

> Cette section est obligatoire.  
> Raconte ton **parcours complet** pour ce projet, comme une mini-histoire :
>
> - Qu’est-ce qui t’a **frustré** ?
> - Quelles **difficultés techniques ou personnelles** as-tu rencontrées ?
> - As-tu eu un moment où tu pensais **abandonner** ?
> - Comment tu as réussi à **trouver une solution** ?
> - Y a-t-il un moment ou un truc dont tu es **fier** ?
>
> Sois honnête, pas besoin que tout soit parfait. Ce qui compte, c’est ce que tu as appris **et vécu**.

---

## 🕓 Soutenance

- Présentation de **5 minutes**
- 5 **questions aléatoires** avec **modifications en direct (2 min max par question)**
