CREATE TABLE section
(
  id SERIAL PRIMARY KEY,
  layout_info VARCHAR(255) NOT NULL,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE seat
(
  id SERIAL PRIMARY KEY,
  available boolean,
  name VARCHAR(100) NOT NULL,
  section_id INTEGER REFERENCES section(id)
);

CREATE TABLE users
(
    id SERIAL NOT NULL,
    created_at TIMESTAMP DEFAULT NULL,
    enable boolean DEFAULT NULL,
    first_name VARCHAR(255) DEFAULT NULL,
    last_name VARCHAR(255) DEFAULT NULL,
    password VARCHAR(255) DEFAULT NULL,
    updated_at TIMESTAMP DEFAULT NULL,
    user_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id, user_name)
);

CREATE TABLE roles
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) DEFAULT NULL,
    user_name VARCHAR(255)
);


CREATE TABLE users_roles
(
    user_id INTEGER ,
	user_name VARCHAR(255) NOT NULL,
	FOREIGN KEY (user_id, user_name) REFERENCES users (id, user_name),
    role_id INTEGER REFERENCES roles (id)
);