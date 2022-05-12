CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    dni character varying(8) NOT NULL UNIQUE,
    nombre character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE auditoria (
    dni character varying(8) NOT NULL,
    usuario character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO clientes (id, dni, nombre, email, direccion) VALUES
(1, '12345678', 'Julio Sanchez Perez ', 'jsanchezp@hotmail.com', 'Lima'),
(2, '87654321', 'Juan Perez Perez', 'jperezp@hotmail.com', 'Lima'),
(3, '11111111', 'Roberto Rodriguez Lopez', 'rrodriguezl@hotmail.com', 'Lima');
