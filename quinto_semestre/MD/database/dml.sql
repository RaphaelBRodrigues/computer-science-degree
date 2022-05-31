# categoria


# cliente
INSERT INTO cliente VALUES (null , "Iago Pedro Henrique Alexandre Nogueira",  "iago_pedro_nogueira@mrv.com.br", "223.520.259-40");
INSERT INTO cliente VALUES (null, "Laura Vanessa Sabrina Ribeiro",  "lauravanessaribeiro@iaru.com.br", "254.383.034-01");
INSERT INTO cliente VALUES (null, "Priscila Sandra Carolina Dias",  "priscilasandradias@unitower.com.br", "330.598.587-99");
INSERT INTO cliente VALUES (null, "Luiza Isabella Esther Gomes",  "luiza-gomes71@aol.com", "248.724.058-03");

# compra
# endereco_cliente
INSERT INTO endereco_cliente VALUES (1, "Rua José Mamede de Sousa", 289, "","Santa Cruz");
INSERT INTO endereco_cliente VALUES (2, "Rua Isaura Parente", 821, "","Conjunto Tangará");
INSERT INTO endereco_cliente VALUES (3, "Rua dos Puris", 708, "","Campo Velho");
INSERT INTO endereco_cliente VALUES (4, "Rua Pará", 606, "","Jardim Vitória");

# fornecedor
INSERT INTO fornecedor VALUES (null , "Forn. Inc",  "contato@forn.com.br", "06.884.300/0001-67");
INSERT INTO fornecedor VALUES (null, "Mussio",  "contato@mussio.com.br", "13.358.532/0001-47");
INSERT INTO fornecedor VALUES (null, "Ssoun",  "oi@ssoun.com.br", "74.464.493/0001-57");
INSERT INTO fornecedor VALUES (null, "Super Instrumentos LTDA.",  "oi@sinstrumentos.com.br", "57.995.176/0001-48");
INSERT INTO fornecedor VALUES (null , "Musicx",  "contact@musicx.com.br", "53.107.596/0001-90");
INSERT INTO fornecedor VALUES (null, "Poropopo LTDA.",  "contato@poropopo.com.br", "92.901.609/0001-50");
INSERT INTO fornecedor VALUES (null, "Sound inc.",  "contact@soundin.com", "91.276.114/0001-14");
INSERT INTO fornecedor VALUES (null, "Notes LTDA.",  "contact@notes.com", "44.984.149/0001-28");

# endereco_fornecedor
INSERT INTO endereco_fornecedor VALUES (1, 606, "",  "São Cristóvão","Primeiro de Maio");
INSERT INTO endereco_fornecedor VALUES (2, 821, "",  "Centro","Santos Dumont");
INSERT INTO endereco_fornecedor VALUES (3, 3443, "",  "Bela Vista","Paraná");
INSERT INTO endereco_fornecedor VALUES (4, 606, "",  "São Cristóvão","Primeiro de Maio");
INSERT INTO endereco_fornecedor VALUES (5, 821, "",  "Centro","Santos Dumont");
INSERT INTO endereco_fornecedor VALUES (6, 3443, "",  "Bela Vista","Paraná");
INSERT INTO endereco_fornecedor VALUES (7, 708, "",  "Bela Vista","Dois");
INSERT INTO endereco_fornecedor VALUES (8, 708, "",  "Parque Independência","Martin Sarmento");

# endereco_pdv
# endereco_vendedor
# estoque




# instrumento

# instrumento_vendido
# loja
DESC loja;
INSERT INTO loja
VALUES
  (1,"velit. Pellentesque","1.08062416390"),
  (2,"vel quam","0.99531458928"),
  (3,"a, auctor","1.35062230534"),
  (4,"sapien molestie","1.34456193496"),
  (5,"cursus in,","0.85049438477"),
  (6,"vel arcu","1.40690767399"),
  (7,"in consectetuer","0.25735303432"),
  (8,"feugiat metus","1.01754821937"),
  (9,"dolor, tempus","1.24383515060"),
  (10,"ipsum nunc","1.01140711759");
INSERT INTO loja
VALUES
  (11,"dictum sapien.","1.28760124114"),
  (12,"elit, dictum","0.91126301406"),
  (13,"aliquam eros","0.92294007991"),
  (14,"Duis elementum,","0.78756402096"),
  (15,"eu arcu.","1.38434434145"),
  (16,"Integer in","0.72053335561"),
  (17,"vitae semper","1.40688203750"),
  (18,"non, vestibulum","1.15696919366"),
  (19,"luctus lobortis.","1.06406565777"),
  (20,"erat neque","1.46218651779");
INSERT INTO loja
VALUES
  (21,"pellentesque a,","0.67394470248"),
  (22,"mus. Proin","1.07466185500"),
  (23,"Vestibulum accumsan","0.84008601468"),
  (24,"faucibus. Morbi","1.27300469899"),
  (25,"enim, sit","1.05034338155");

# materiais_instrumento
# material
DESC material;
INSERT INTO material
VALUES
  (1,"auctor quis,","lobortis quam"),
  (2,"est, vitae","sociis natoque"),
  (3,"vulputate dui,","vitae semper"),
  (4,"ipsum dolor","dolor elit,"),
  (5,"ultricies adipiscing,","augue eu"),
  (6,"lacus pede","in consectetuer"),
  (7,"augue porttitor","sagittis lobortis"),
  (8,"Morbi vehicula.","Donec tincidunt."),
  (9,"In tincidunt","Nam ac"),
  (10,"elit. Aliquam","Morbi non");
INSERT INTO material 
VALUES
  (11,"lacus vestibulum","aliquam eros"),
  (12,"sollicitudin adipiscing","eros non"),
  (13,"vulputate, nisi","consequat enim"),
  (14,"sagittis lobortis","ipsum ac"),
  (15,"Quisque nonummy","enim. Curabitur"),
  (16,"a, facilisis","felis. Donec"),
  (17,"convallis erat,","Quisque ac"),
  (18,"lacinia mattis.","a nunc."),
  (19,"orci sem","et malesuada"),
  (20,"aliquet diam.","ornare, libero");
INSERT INTO material
VALUES
  (21,"nec luctus","Suspendisse aliquet"),
  (22,"mollis. Duis","ut cursus"),
  (23,"blandit congue.","Vivamus sit"),
  (24,"Aenean egestas","neque pellentesque"),
  (25,"amet nulla.","Nam nulla");

# pdv
DESC pdv;

# telefones_cliente
DESC telefones_cliente;
INSERT INTO telefones_cliente
VALUES
  (1,"397031036989"),
  (2,"382126973684"),
  (3,"449287227658"),
  (4,"406235226288");
# telefones_fornecedor
# telefones_pdv


# vendedor
DESC vendedor;
INSERT INTO vendedor VALUES(null, 'Guanabara', 'guan@gmi.com', '56456456556');
INSERT INTO vendedor VALUES(null, 'Duda', 'as@sda.com', '56456456556');
INSERT INTO vendedor VALUES(null, 'Rosa', 'as@tgg.com', '56456456556');
INSERT INTO vendedor VALUES(null, 'Diony', 'khftfg@sfafsa.com', '56456456556');
INSERT INTO vendedor 
VALUES
  (null,"Talon Johns","orciluctus@outlookorg","170905645982"),
  (null,"Sonya Hogan","luctussit@yahoonet","201771272656"),
  (null,"Brenden Davidson","rhoncusidmollis@icloudorg","505153441276"),
  (null,"Arthur Larson","maurissapiencursus@outlookedu","111695052262"),
  (null,"Hyacinth Nguyen","porttitorscelerisque@yahooorg","231263367219"),
  (null,"Eugenia Gallegos","etmalesuada@aolca","-082898210074"),
  (null,"Yvette House","sociis@googleorg","326161536631"),
  (null,"Gail Hayden","phaselluselitpede@yahoocouk","-186880439441"),
  (null,"Abraham Whitfield","mollis@icloudnet","070550485563"),
  (null,"Connor Hobbs","in@aoledu","-091812122958");
INSERT INTO vendedor
VALUES
  (null,"Uma Hubbard","nibh@googlecom","085174085378"),
  (null,"Kameko Hartman","pellentesquehabitant@icloudorg","-014092333109"),
  (null,"Jemima Barry","diamlorem@googlecouk","-100367093490"),
  (null,"Riley Alvarado","venenatisvelfaucibus@hotmailca","-271931471427"),
  (null,"Hilel Donaldson","variusultrices@outlookorg","-261224816816"),
  (null,"Shea Wolfe","estmollisnon@outlookcouk","066762909127"),
  (null,"Calvin Rivera","consectetueripsumnunc@protonmailnet","-352815037893"),
  (null,"Dieter Floyd","fermentumvel@googlecouk","-180739835950"),
  (null,"Alexandra Miller","sagittis@aoledu","039222854232"),
  (null,"Gretchen Peters","ipsumleo@outlookedu","302316453689");
INSERT INTO vendedor
VALUES
  (null,"Carly Zimmerman","blanditat@aolnet","135120983948"),
  (null,"Anne Doyle","donecconsectetuermauris@icloudorg","-136926685004"),
  (null,"Pamela Harrison","mollisneccursus@icloudnet","159778339963"),
  (null,"Rahim Dalton","in@yahooca","432449836588"),
  (null,"Briar Horton","dolornonummy@icloudcouk","-009633519005");


# telefones_vendedor
DESC telefones_vendedor;

INSERT INTO telefones_vendedor
VALUES
  (1,"397031036989"),
  (2,"382126973684"),
  (3,"449287227658"),
  (4,"406235226288"),
  (5,"370150183901"),
  (6,"364970624956"),
  (7,"431161585376"),
  (8,"394273952282"),
  (9,"426262888923"),
  (10,"414113459993");
INSERT INTO telefones_vendedor
VALUES
  (11,"420044117236"),
  (12,"397954234291"),
  (13,"385122530216"),
  (14,"399076622406"),
  (15,"441365926575"),
  (16,"399700251496"),
  (17,"413339098473"),
  (18,"389597180182"),
  (19,"396107104453"),
  (20,"411117800755");
INSERT INTO telefones_vendedor
VALUES
  (21,"391627978021"),
  (22,"429754349117"),
  (23,"423244179539"),
  (24,"378455827438"),
  (25,"426128209930");

  
