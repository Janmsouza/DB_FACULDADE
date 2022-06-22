INSERT INTO Tipo_logradouro
	(tipo_logradouro)
VALUES 
	('Alameda'),
    ('Avenida'),
	('Chacara'),
	('Rua'),
    ('Quadra');

SELECT * FROM Tipo_logradouro; 


INSERT INTO Endereco
	(nome_rua, numero_rua, complemento, cep, fk_cod_tipo_logradouro)
VALUES
	('Rua 1', '502', 'Prox estação metrô', '72302206', '4');
    
INSERT INTO Endereco
	(nome_rua, numero_rua, complemento, cep, fk_cod_tipo_logradouro)
VALUES
	('Rua 2', '476', 'Casa portão azul', '72302207', '4'),
    ('Rua 3', '460', 'Conjunto M', '72302208', '4'),
    ('Alameda Tiradentes', '384', 'Prox casa do açai', '72302209', '1'),
    ('Avenida Parana', '350', 'Ao lado do Pet Shop', '72302210', '2'),
	('Avenida 6', '25', 'Conjunto M', '72302211', '2'),
    ('Rua São João', '378', 'Sobrado azul', '72302212', '4'),  
    ('Chacara Santa Luzia', '25', 'Conjunto M', '72302211', '3'),
    ('Quadra 6', '378', 'Sobrado azul', '72302212', '5'),
    ('Chacara Projetada', '329', 'Conjunto 17', '72302215', '3'),
    ('Quadra 10', '7', 'Lote 20', '72302216', '5'),
	('Alameda São Jorge', '341', 'Casa roxa', '72302217', '1'),
    ('Alameda Enseada', '320', 'Lote 2', '72302218', '1'),
    ('Quadra 108', '76', 'Loja do Marceneiro', '72302219', '5'),
    ('Chacara Rui Barbosa', '343', 'Lote 10', '72302220', '3'),
    ('Avenida Califórnia', '84', 'Loja do Tião', '72302221', '2'),
    ('Quadra 306', '50', 'Lote 306', '72302222', '3'),
    ('Avenida São João', '76', 'Lote 3', '72302223', '2'),
    ('Alameda Santos Dumont', '4', 'Lote 31', '72302224', '1');
    
SELECT * FROM Endereco; 


INSERT INTO tipo_telefone
	(tipo_telefone)
VALUES
	('Celular'),
    ('Comercial'),
    ('Residencial'),
    ('Whatsapp');
    
SELECT * FROM tipo_telefone;


INSERT INTO Telefone
	(num_telefone, fk_cod_tipo)
VALUES
	('61 99914-2536', '1'),
    ('61 99914-2536', '4'),
    ('61 99914-8854', '1'),
    ('61 99914-8854', '4'),
    ('61 99914-2511', '1'),
	('61 99914-2511', '4'),
	('61 99914-2588', '1'),
	('61 99914-2588', '4'),
    ('61 99914-8811', '1'),
	('61 99914-8811', '4'),
    ('61 99914-2881', '1'),
    ('61 3424-2511', '2'),
    ('61 3384-8811', '3'),
    ('61 81321-2511', '1'),
    ('61 3654-5847', '2'),
    ('61 3877-4477', '3'),
    ('61 81321-9988', '1'),
    ('61 3321-8884', '2'),
    ('61 3544-2511', '3');

SELECT * FROM Telefone;


INSERT INTO Departamento
	(nome_departamento)
VALUES
	('Biologicas'),
    ('Ciencias Humanas'),
    ('Estagio'),
    ('Matematica'),
    ('Tec. Informação');

SELECT * FROM Departamento;


INSERT INTO Curso
	(nome_curso, fk_cod_departamento)
VALUES
	('Analise de sistemas', '5'),
    ('Biologia', '1'),
    ('Engenharia eletrica', '4'),
    ('Matematica', '4'),
    ('Historia', '2'),
    ('Pscicologia', '2'),
    ('Física', '4'),
    ('Inglês', '2'),
    ('Estágio Obrigatório', '3'),
    ('Redes', '5');
    
    
SELECT * FROM Curso;

	
INSERT INTO Turma
	(periodo, num_alunos, dt_inicio, dt_fim, fk_cod_curso)
VALUES
	('Mat', '30', '2022-01-01', '2022-06-30', '1'),
    ('Mat', '30', '2022-01-01', '2022-06-30', '2'),
    ('Mat', '30', '2022-01-01', '2022-06-30', '5'),
    ('Vesp', '30', '2022-01-01', '2022-06-30', '7'),
    ('Vesp', '30', '2022-01-01', '2022-06-30', '8'),
    ('Ves', '30', '2022-01-01', '2022-06-30', '6'),
    ('Mat', '30', '2022-01-01', '2022-06-30', '9'),
    ('Not', '30', '2022-01-01', '2022-06-30', '10');

SELECT * FROM Turma;


INSERT INTO Aluno
	(nome_aluno, sobrenome_aluno, cpf, `status`, sexo, nome_pai, nome_mae, email, whatsapp, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
VALUES
	('Alan', 'Matos', '94782132310', '0', 'Masculino', 'João Rosa', 'Maria Rosa', 'alanm@msn.com', '61999199800', '7', '4', '1'),
    ('Luana', 'Trindade', '94782132325', '1', 'Feminino', 'Pedro Trindade', 'Joana Trindade', 'lutrindade@yahoo.com', '61999199800', '2', '2', '2'),
    ('Bianca', 'Silva', '99182150810', '0', 'Feminino', 'Antonio Teixeira', 'Cintia Teixeira', 'biancasilva@gmail.com', '61999199800', '5', '3', '3'),
    ('João', 'Gomes', '92382131317', '0', 'Masculino', 'Pedro Gomes', 'Maria Gomes', 'jg@msn.com', '6', '6', '4'),
    ('Everton', 'Ribeiro', '93282132716', '1', 'Masculino', 'Claudio Ribeiro', 'Antonia Ribeiro', 'evertonr7@gmail.com', '61999199800', '3', '7', '5'),
    ('Arthur', 'Coimbra', '34782132315', '0', 'Masculino', 'Antonio Coimbra', 'Maria Coimbra', 'zico10@gmail.com', '61999199800', '1', '1', '6'),
    ('Beatriz', 'Coimbra', '34782132320', '0', 'Feminino', 'Antonio Coimbra', 'Maria Coimbra', 'beatriz@gmail.com', '61999199800', '8', '5', '6'),
    ('Gabriel', 'Barbosa', '92382132708', '0', 'Masculino', 'Ricardo Barbosa', 'Valdenice Barbosa', 'gabi9@msn.com', '61999199800', '9', '8', '7'),
    ('Vitoria', 'Alves', '91037856712', '0', 'Feminino', 'Afonso Alves', 'Margarida Alves', 'vitorinha@yahoo.com', '61999199800', '7', '4', '8'),
    ('Giorgian', 'De Arrascaeta', '90150359154', '0', 'Masculino', 'George De Arrascaeta', 'Giorgina De Arrascaeta', 'arrascaeta14@gmail.com', '61999199800', '1', '1', '9'),
    ('Brenda', 'Souza', '99382150807', '0', 'Feminino', 'Lazaro Souza', 'Rita Souza', 'brendinha@gmail.com', '61999199800', '5', '3', '10'),
	('Tayane', 'Carvalho', '91156874112', '0', 'Feminino', 'João Carvalho', 'Tais Carvalho', 'taycarvalho@msn.com', '61999199800', '8', '5', '11'),
    ('Willian', 'Arão', '91282131701', '0', 'Masculino', 'Carlos Arão', 'Antonia Arão', 'warao5@gmail.com', '61999199800', '3', '7', '12'),
    ('Virginia', 'Fonseca', '91137856810', '0', 'Feminino', 'Margareth Fonseca', 'Sebastião Fonseca', 'virgininha@yahoo.com', '61999199800', '7', '4', '13'),
    ('Victor', 'Souza', '90153259112', '0', 'Masculino', 'Ricardo Souza', 'Anna Souza', 'vitinho11@gmail.com', '61999199800', '1', '1', '14'),
    ('Rodrigo Caio', 'Carvalho', '90143254873', '1', 'Masculino', 'Marcos Carvalho', 'Dora Carvalho', 'rccarvalho@msn.com', '61999199800', '7', '4', '15'),
    ('Bruna Letícia', 'Ribas', '91053271204', '0', 'Feminino', 'Julio Valadão', 'Amanda Valadão', 'bruninharibas@msn.com', '61999199800', '5', '3', '16'),
	('Bruno Henrique', 'Santos', '91532756821', '0', 'Masculino', 'Angelo Santos', 'Cristina Santos', 'bh27@msn.com', '61999199800', '9', '8', '17'),
    ('Diego', 'Ribas', '90276853210', '0', 'Masculino', 'Joaquim Ribas', 'Nilda Ribas', 'diego10@msn.com', '61999199800', '6', '6', '18'),
	('Thiago', 'Maia', '91533322211', '0', 'Masculino', 'Joaquim Maia', 'Luisa Maia', 'tm08@yahoo.com', '61999199800', '9', '8', '19');
	
UPDATE Aluno SET fk_cod_curso = NULL, fk_cod_turma = NULL WHERE ra IN (22,25,36);
    
SELECT * FROM Aluno;


INSERT INTO Telefone_aluno
	(fk_ra, fk_cod_telefone)
VALUES
	('22', '1'),
    ('22', '2'),
    ('32', '3'),
    ('32', '4'),
    ('33', '5'),
    ('33', '6'),
    ('34', '7'),
    ('34', '8'),
    ('38', '9'),
    ('38', '10'),
    ('21', '11'),
    ('21', '12'),
    ('21', '13'),
    ('25', '14'),
    ('25', '15'),
    ('25', '16'),
	('29', '17'),
    ('29', '18'),
    ('29', '19');
    
SELECT * FROM Telefone_aluno;


INSERT INTO Disciplina
	(nome_disciplina, carga_horaria, descricao, num_alunos, fk_cod_departamento)
VALUES
	('Eletronica digital', '30', 'Eletronica digital', '30', '5'),
    ('Pscicologia cognitiva', '25', 'Pscicologia cognitiva', '25', '2'),
    ('Programação em C', '40', 'Programação em C', '30', '5'),
    ('Raciocinio logico', '40', 'Raciocinio logico', '40', '4'),
    ('Analise de Requisitos', '25', 'Analise de Requisitos', '30', '5'),
    ('Engenharia de Software', '30', 'Engenharia de Software', '30', '5'),
    ('Banco de Dados', '45', 'Banco de Dados', '25', '5'),
    ('Programação JAVA', '40', 'Programação JAVA', '30', '5'),
    ('UX/UI', '20', 'UX/UI', '25', '5'),
    ('Redes de Computadores', '40', 'Redes de Computadores', '30', '5'),
    ('Lógica de Programação', '60', 'Lógica de Programação', '30', '5'),
    ('Regressão Linear', '60', 'Regressão Linear', '30', '4'),
    ('Regressão Logística', '60', 'Regressão Logística', '30', '4'),
    ('Estatística Descritiva', '60', 'Estatística Descritiva', '30', '4'),
    ('Estatística Inferêncial', '50', 'Estatística Inferêncial', '25', '4'),
    ('Números Complexos', '40', 'Números Complexos', '30', '4'),
    ('Cálculo de Derivadas', '40', 'Cálculo de Derivadas', '25', '4'),
    ('Cálculo de Diferêcial', '40', 'Cálculo de Diferêcial', '30', '4'),
    ('Cálculo Integral', '40', 'Cálculo Integral', '30', '4'),
    ('Filosofia', '30', 'Filosofia','30', '2'),
    ('Sociologia', '40', 'Sociologia','25', '2'),
    ('Teoria do Conhecimento', '40', 'Teoria do Conhecimento','30', '2'),
    ('Ética', '30', 'Ética','30', '2'),
    ('Política ', '40', 'Política ','25', '2'),
    ('Cidadania', '30', 'Cidadania','50', '2'),
    ('Antropologia Contemporânea', '40', 'Antropologia Contemporânea','50', '2'),
    ('Introdução à Ecologia', '40', 'Introdução à Ecologia','30', '1'),
    ('Zoologia dos Invertebrados', '50', 'Zoologia dos Invertebrados','25', '1'),
    ('Zoologia dos Vertebrados', '45', 'Zoologia dos Vertebrados.','45', '1'),
	('Estágio Obrigatório', '200', 'Estágio Obrigatório','80', '3');
    
SELECT * FROM Disciplina;


INSERT INTO Curso_disciplina
	(fk_cod_curso, fk_cod_disciplina)
VALUES
	('4',	'1'),
	('6',	'2'),
	('1',	'3'),
	('1',	'4'),
	('1',	'5'),
	('1',	'6'),
	('1',	'7'),
	('1',	'8'),
	('1',	'9'),
	('1',	'10'),
	('1',	'11'),
	('4',	'12'),
	('4',	'13'),
	('4',	'14'),
	('4',	'15'),
	('4',	'16'),
	('4',	'17'),
	('4',	'18'),
	('4',	'19'),
	('6',	'20'),
	('6',	'21'),
	('5',	'22'),
	('7',	'23'),
	('6',	'24'),
	('8',	'25'),
	('5',	'26'),
	('2',	'27'),
	('2',	'28'),
	('2',	'29'),
	('3',	'30');

SELECT * FROM Curso_disciplina;


INSERT INTO Professor
	(nome_professor, sobrenome_professor, `status`, fk_cod_departamento)
VALUES
	('Maria', 'Silva', '0', '1'),
    ('Pedro', 'Maia', '0', '2'),
    ('Reginaldo', 'Alves', '0', '3'),
    ('Priscila', 'Alcantara', '0', '4'),
    ('João', 'Cardoso', '0', '5'),
    ('Luiz', 'Ferreira', '0', '1'),
    ('Gustavo', 'Mendes', '0', '2'),
    ('Kelly', 'Teixeira', '1', '3'),
    ('Gabriela', 'Barbosa', '1', '4'),
    ('Thiago', 'Rodrigues', '1', '5');
    
SELECT * FROM Professor;


INSERT INTO Professor_disciplina
	(fk_cod_professor, fk_cod_disciplina)
VALUES
	('1','1'),
	('2','2'),
	('3','3'),
	('4','4'),
	('5','5'),
	('6','6'),
	('7','7'),
	('8','8'),
	('9','9'),
	('10','10'),
	('1','11'),
	('2','12'),
	('3','13'),
	('4','14'),
	('5','15'),
	('6','16'),
	('7','17'),
	('8','18'),
	('9','19'),
	('10','20'),
	('1','21'),
	('2','22'),
	('3','23'),
	('4','24'),
	('5','25'),
	('6','26'),
	('7','27'),
	('8','28'),
	('9','29'),
	('10','30');

SELECT * FROM Professor_disciplina;


INSERT INTO Aluno_Disciplina
	(fk_ra, fk_cod_disciplina)
VALUES
	('21','1'),
	('40','2'),
	('23','3'),
	('24','4'),
	('39','5'),
	('26','6'),
	('27','7'),
	('28','8'),
	('29','9'),
	('30','10'),
	('31','11'),
	('32','12'),
	('33','13'),
	('34','14'),
	('35','15'),
	('21','16'),
	('37','17'),
	('38','18'),
	('39','19'),
	('40','20'),
	('30','21'),
	('31','22'),
	('32','23'),
	('33','24'),
	('34','25'),
	('35','26'),
	('21','27'),
	('37','28'),
	('38','29'),
	('39','30');

SELECT * FROM Aluno_Disciplina;


INSERT INTO Historico
	(dt_inicio, dt_fim, fk_ra)
VALUES
	('2022-01-03','2022-06-30','21'),
	('2022-01-03','2022-06-30','23'),
	('2022-01-03','2022-06-30','24'),
	('2022-01-03','2022-06-30','26'),
	('2022-01-03','2022-06-30','27'),
	('2022-01-03','2022-06-30','28'),
	('2022-01-03','2022-06-30','29'),
	('2022-01-03','2022-06-30','30'),
	('2022-01-03','2022-06-30','31'),
	('2022-01-03','2022-06-30','32'),
	('2022-01-03','2022-06-30','33'),
	('2022-01-03','2022-06-30','34'),
	('2022-01-03','2022-06-30','35'),
	('2022-01-03','2022-06-30','37'),
	('2022-01-03','2022-06-30','38'),
	('2022-01-03','2022-06-30','39'),
	('2022-01-03','2022-06-30','40');

SELECT * FROM Historico;


INSERT INTO Disciplina_historico
	(nota, frequencia, fk_cod_historico, fk_cod_disciplina)
VALUES
	('6.5','65%','1','1'),
	('6.0','60%','2','2'),
	('7.5','75%','3','3'),
	('9.0','95%','4','4'),
	('8.5','80%','5','5'),
	('8.5','90%','6','6'),
	('7.0','80%','7','7'),
	('5.5','45%','8','8'),
	('9.0','100%','9','9'),
	('6.5','70%','10','10'),
	('6.0','65%','11','11'),
	('7.5','80%','12','12'),
	('9.0','95%','13','13'),
	('8.5','80%','14','14'),
	('8.5','90%','15','15'),
	('7.0','80%','16','16'),
	('5.5','60%','17','17'),
	('9.0','95%','8','18'),
	('6.5','65%','9','19'),
	('6.0','55%','10','20'),
	('7.5','80%','11','21'),
	('9.0','100%','12','22'),
	('8.5','90%','13','23'),
	('8.5','85%','14','24'),
	('7.0','75%','15','25'),
	('5.5','65%','16','26'),
	('9.0','100%','17','27'),
	('5.5','80%','1','28'),
	('9.0','95%','2','29'),
	('6.5','70%','3','30');
    
SELECT * FROM Disciplina_historico;


 
