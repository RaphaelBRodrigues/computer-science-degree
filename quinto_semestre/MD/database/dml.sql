USE musical_store;
SHOW TABLES;

DESC cliente;

INSERT INTO cliente VALUES (null , "Iago Pedro Henrique Alexandre Nogueira",  "iago_pedro_nogueira@mrv.com.br", "223.520.259-40");
INSERT INTO cliente VALUES (null, "Laura Vanessa Sabrina Ribeiro",  "lauravanessaribeiro@iaru.com.br", "254.383.034-01");
INSERT INTO cliente VALUES (null, "Priscila Sandra Carolina Dias",  "priscilasandradias@unitower.com.br", "330.598.587-99");
INSERT INTO cliente VALUES (null, "Luiza Isabella Esther Gomes",  "luiza-gomes71@aol.com", "248.724.058-03");

DESC endereco_cliente;

INSERT INTO endereco_cliente VALUES (1, "Rua José Mamede de Sousa", 289, "","Santa Cruz");
INSERT INTO endereco_cliente VALUES (2, "Rua Isaura Parente", 821, "","Conjunto Tangará");
INSERT INTO endereco_cliente VALUES (3, "Rua dos Puris", 708, "","Campo Velho");
INSERT INTO endereco_cliente VALUES (4, "Rua Pará", 606, "","Jardim Vitória");

DESC fornecedor;



INSERT INTO fornecedor VALUES (null , "Forn. Inc",  "contato@forn.com.br", "06.884.300/0001-67");
INSERT INTO fornecedor VALUES (null, "Mussio",  "contato@mussio.com.br", "13.358.532/0001-47");
INSERT INTO fornecedor VALUES (null, "Ssoun",  "oi@ssoun.com.br", "74.464.493/0001-57");
INSERT INTO fornecedor VALUES (null, "Super Instrumentos LTDA.",  "oi@sinstrumentos.com.br", "57.995.176/0001-48");
INSERT INTO fornecedor VALUES (null , "Musicx",  "contact@musicx.com.br", "53.107.596/0001-90");
INSERT INTO fornecedor VALUES (null, "Poropopo LTDA.",  "contato@poropopo.com.br", "92.901.609/0001-50");
INSERT INTO fornecedor VALUES (null, "Sound inc.",  "contact@soundin.com", "91.276.114/0001-14");
INSERT INTO fornecedor VALUES (null, "Notes LTDA.",  "contact@notes.com", "44.984.149/0001-28");

INSERT INTO endereco_fornecedor VALUES (1, 606, "",  "São Cristóvão","Primeiro de Maio");
INSERT INTO endereco_fornecedor VALUES (2, 821, "",  "Centro","Santos Dumont");
INSERT INTO endereco_fornecedor VALUES (3, 3443, "",  "Bela Vista","Paraná");
INSERT INTO endereco_fornecedor VALUES (4, 606, "",  "São Cristóvão","Primeiro de Maio");
INSERT INTO endereco_fornecedor VALUES (5, 821, "",  "Centro","Santos Dumont");
INSERT INTO endereco_fornecedor VALUES (6, 3443, "",  "Bela Vista","Paraná");
INSERT INTO endereco_fornecedor VALUES (7, 708, "",  "Bela Vista","Dois");
INSERT INTO endereco_fornecedor VALUES (8, 708, "",  "Parque Independência","Martin Sarmento");

DESC MATERIAL;
INSERT INTO material VALUES(null, "Maple", "Branco")