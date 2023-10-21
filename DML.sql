USE bd_vsconnect;

INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "html");
INSERT INTO tb_techs VALUES (UUID_TO_BIN(UUID()), "css");

SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Odirlei",
    "odirlei@email.com",
    "senai",
    "Rua Niteroi, 180",
    "12345-678",
    0
);

INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Alexia",
    "alexia@email.com",
    "senai",
    "Rua Niteroi, 180",
    "12345-678",
    0
);

INSERT INTO tb_usuarios VALUES(
	UUID_TO_BIN(UUID()),
    "Jessica",
    "jessica@email.com",
    "senai",
    "Rua Niteroi, 180",
    "12345-678",
    0
);

SELECT * FROM tb_usuarios;
SELECT BIN_TO_UUID(id_usuario), nome FROM tb_usuarios;
SELECT BIN_TO_UUID(id_tech), nome FROM tb_techs;

DELETE FROM tb_usuarios WHERE id_usuario = UUID_TO_BIN("de1f0f05-6f9b-11ee-9570-b445067b7eed");

UPDATE tb_usuarios 
SET tipo_usuario = 1 
WHERE id_usuario = UUID_TO_BIN("dbd240a6-6f9b-11ee-9570-b445067b7eed");

INSERT INTO tb_dev_tech VALUES(UUID_TO_BIN("d9199efa-6f9b-11ee-9570-b445067b7eed"), UUID_TO_BIN("d625076e-6f9b-11ee-9570-b445067b7eed"));
INSERT INTO tb_dev_tech VALUES(UUID_TO_BIN("dbd240a6-6f9b-11ee-9570-b445067b7eed"), UUID_TO_BIN("d621ae30-6f9b-11ee-9570-b445067b7eed"));

select * from tb_dev_tech;
SELECT TO_BIN_UUID(id_dev) FROM tb_dev_tech;

INSERT INTO tb_servicos VALUES
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("d9199efa-6f9b-11ee-9570-b445067b7eed"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("dbd240a6-6f9b-11ee-9570-b445067b7eed"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("d9199efa-6f9b-11ee-9570-b445067b7eed"), NULL);
    
SELECT * FROM tb_servicos;

SELECT BIN_TO_UUID(id_servico) FROM tb_servicos;

INSERT INTO tb_cotacao VALUES(
	UUID_TO_BIN(UUID()),
    10000.00,
    UUID_TO_BIN("d9199efa-6f9b-11ee-9570-b445067b7eed"),
    UUID_TO_BIN("20dd28c0-6f9d-11ee-9570-b445067b7eed")
);

SELECT BIN_TO_UUID(id_tech) FROM tb_techs;
SELECT BIN_TO_UUID(id_servico) FROM tb_servicos;

INSERT INTO tb_tech_servicos VALUES(UUID_TO_BIN("d625076e-6f9b-11ee-9570-b445067b7eed"), UUID_TO_BIN("20e02f51-6f9d-11ee-9570-b445067b7eed"));
INSERT INTO tb_tech_servicos VALUES(UUID_TO_BIN("d625076e-6f9b-11ee-9570-b445067b7eed"), UUID_TO_BIN("20e02f51-6f9d-11ee-9570-b445067b7eed"));