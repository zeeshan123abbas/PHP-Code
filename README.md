# 🔐 PHP Authentication System

![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

A user authentication system in **PHP** and **MySQL**: sign up, log in and log out with sessions.

## ✨ Features

- 📝 **Registration** with duplicate-email check
- 🔒 Passwords hashed with **bcrypt** (`password_hash`)
- 🛡️ Input escaped with `mysqli_real_escape_string`
- 🔑 **Login** with session handling and a Bootstrap 5 UI
- 🚧 **Protected page** that redirects visitors who are not signed in
- 🚪 **Logout** that ends the session

## 🗂️ Files

| File | Purpose |
|---|---|
| `conn.php` | Database connection |
| `login.php` | Sign-up form and registration |
| `logout.php` | Login page (Bootstrap 5) |
| `log.php` | Protected page, only for signed-in users |
| `end.php` | Logout: destroys the session |
| `form (1).sql` | Database schema |

## ▶️ Getting started

1. Install XAMPP or WAMP and start Apache and MySQL
2. Import `form (1).sql` in phpMyAdmin
3. Copy the files into `htdocs/PHP-Code`
4. Open `http://localhost/PHP-Code/login.php` to sign up, then log in`

## 🎓 What you will learn

Form handling, password hashing, sessions, and connecting PHP to MySQL.

> Next step for students: switch to prepared statements (`mysqli_prepare` or PDO) for even stronger security.

---

👨‍🏫 **Zeeshan Abbas**, Senior Faculty & Manager Academics, Aptech North Nazimabad
