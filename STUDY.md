## 🔹1. Планирование таблиц базы данных
Для практики мы создадим три базовых таблицы, чтобы легко покрыть темы вашей программы:
- **users**: пользователи, которые будут взаимодействовать с другими таблицами.
- **posts**: посты, связанные с пользователями.
- **comments**: комментарии к постам, связанные с пользователями и постами.

Базовая структура будет такой:
- `users`:
    - `id` (PRIMARY KEY)
    - `name` (имя пользователя)
    - `email` (почтовый адрес)
    - `created_at`, `updated_at` (timestamps)

- `posts`:
    - `id` (PRIMARY KEY)
    - `user_id` (FOREIGN KEY на users)
    - `title` (заголовок поста)
    - `body` (текст поста)
    - `created_at`, `updated_at` (timestamps)

- `comments`:
    - `id` (PRIMARY KEY)
    - `post_id` (FOREIGN KEY на posts)
    - `user_id` (FOREIGN KEY на users)
    - `content` (текст комментария)
    - `created_at`, `updated_at` (timestamps)

## 🔹 2. Основы SQL
SQL (Structured Query Language) используется для взаимодействия с реляционными базами данных. Основные команды SQL можно разделить на 4 группы:
1. **DML (Data Manipulation Language)** — работа с данными:
    - `SELECT` — выбор данных.
    - `INSERT INTO` — добавление данных.
    - `UPDATE` — обновление данных.
    - `DELETE` — удаление данных.

2. **DDL (Data Definition Language)** — администрирование структуры базы:
    - `CREATE TABLE` — создание таблицы.
    - `ALTER TABLE` — изменение таблицы.
    - `DROP TABLE` — удаление таблицы.

3. **DCL (Data Control Language)** — управление доступом:
    - `GRANT` — дать права.
    - `REVOKE` — отозвать права.

4. **TCL (Transaction Control Language)** — управление транзакциями:
    - `COMMIT` — сохранить изменения.
    - `ROLLBACK` — отменить изменения.
    - `SAVEPOINT` — точка отката.
