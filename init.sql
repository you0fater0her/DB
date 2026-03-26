CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    content TEXT NOT NULL,
    to_user TEXT DEFAULT '',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_messages_users ON messages (username, to_user);