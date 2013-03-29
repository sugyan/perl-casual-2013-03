CREATE TABLE IF NOT EXISTS sessions (
    id           CHAR(72) PRIMARY KEY,
    session_data TEXT
);

CREATE TABLE IF NOT EXISTS entry (
    id           integer PRIMARY KEY,
    user_name varchar(255) not null,
    body text not null
);
