CREATE DATABASE IF NOT EXISTS DB_Faculdade
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_as_ci;


USE DB_Faculdade;


CREATE TABLE IF NOT EXISTS Tipo_telefone (
	cod_tipo INT (4) AUTO_INCREMENT,
	tipo_telefone CHAR (15),
PRIMARY KEY (cod_tipo)
)
;


CREATE TABLE IF NOT EXISTS Telefone (
	cod_telefone INT (4) AUTO_INCREMENT,
	num_telefone CHAR (20),
	fk_cod_tipo INT (4),
PRIMARY KEY (cod_telefone),
FOREIGN KEY (fk_cod_tipo) REFERENCES tipo_telefone (cod_tipo)
)
;


CREATE TABLE IF NOT EXISTS Departamento (
	cod_departamento INT (4) AUTO_INCREMENT,
	nome_departamento CHAR (20) NOT NULL,
PRIMARY KEY (cod_departamento)
)
;


CREATE TABLE IF NOT EXISTS Curso (
	cod_curso INT (4) AUTO_INCREMENT,
	nome_curso CHAR (20),
	fk_cod_departamento INT (6),
PRIMARY KEY (cod_curso),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
)
;


CREATE TABLE IF NOT EXISTS Turma (
	cod_turma INT (4) AUTO_INCREMENT,
	periodo CHAR (8),
	num_alunos INT (4),
	dt_inicio DATE,
	dt_fim DATE,
	fk_cod_curso INT (4),
PRIMARY KEY (cod_turma),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
)
;


CREATE TABLE IF NOT EXISTS Tipo_logradouro (
	cod_tipo_logradouro INT (4) AUTO_INCREMENT,
	tipo_logradouro CHAR (20),
PRIMARY KEY (cod_tipo_logradouro)
)
;


CREATE TABLE IF NOT EXISTS Endereco (
	cod_endereco INT (4) AUTO_INCREMENT,
	nome_rua CHAR (50) NOT NULL,
	numero_rua INT (4) NOT NULL,
	complemento CHAR (20) NULL,
	cep CHAR (10) NOT NULL,
	fk_cod_tipo_logradouro INT (4) NOT NULL,
PRIMARY KEY (cod_endereco),
FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
)
;


CREATE TABLE IF NOT EXISTS Aluno (
	ra INT (4) AUTO_INCREMENT,
	nome_aluno CHAR (20) NOT NULL,
	sobrenome_aluno CHAR (20),
	cpf CHAR (11),
	STATUS BOOLEAN,
	sexo CHAR (11),
	nome_pai CHAR (50),
	nome_mae CHAR (50),
	email CHAR (50),
	whatsapp CHAR (20),
	fk_cod_curso INT (4),
	fk_cod_turma INT (4),
	fk_cod_endereco INT (4),
PRIMARY KEY (ra),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma),
FOREIGN KEY (fk_cod_endereco) REFERENCES endereco (cod_endereco)
)
;


CREATE TABLE IF NOT EXISTS Telefone_aluno (
	cod_tel_aluno INT (4) AUTO_INCREMENT,
	fk_ra INT (4) NOT NULL,
	fk_cod_telefone INT (4) NOT NULL,
PRIMARY KEY (cod_tel_aluno),
FOREIGN KEY (fk_RA) REFERENCES aluno (ra),
FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
)
;


CREATE TABLE IF NOT EXISTS Historico (
	cod_historico INT (4) AUTO_INCREMENT,
	dt_inicio DATE,
	dt_fim DATE,
	fk_ra INT (4) NOT NULL,
PRIMARY KEY (cod_historico),
FOREIGN KEY (fk_ra) REFERENCES aluno (ra)
)
;


CREATE TABLE IF NOT EXISTS Disciplina (
	cod_disciplina INT (4) AUTO_INCREMENT,
	nome_disciplina CHAR (100),
	carga_horaria INT (4),
	descricao CHAR (80),
	num_alunos INT (4),
	fk_cod_departamento INT (4) NOT NULL,
PRIMARY KEY (cod_disciplina),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
)
;


CREATE TABLE IF NOT EXISTS Disciplina_historico (
	nota FLOAT (4,2),
	frequencia INT (4),
	fk_cod_historico INT (4) NOT NULL,
	fk_cod_disciplina INT (4) NOT NULL,
FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
)
;


CREATE TABLE IF NOT EXISTS Professor (
	cod_professor INT (4) AUTO_INCREMENT,
	nome_professor CHAR (20),
	sobrenome_professor CHAR (50),
	STATUS BOOLEAN,
fk_cod_departamento INT (4) NOT NULL,
PRIMARY KEY (cod_professor),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
)
;


CREATE TABLE IF NOT EXISTS Aluno_disciplina (
	fk_ra INT (4) NOT NULL,
	fk_cod_disciplina INT (4) NOT NULL,
PRIMARY kEY (fk_ra, fk_cod_disciplina),
FOREIGN KEY (fk_ra) REFERENCES aluno (ra),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
)
;


CREATE TABLE IF NOT EXISTS Curso_disciplina (
	fk_cod_curso INT (4) NOT NULL,
	fk_cod_disciplina INT (4) NOT NULL,
PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
)
;


CREATE TABLE IF NOT EXISTS Professor_disciplina (
	fk_cod_professor INT (4) NOT NULL,
	fk_cod_disciplina INT (4) NOT NULL,
PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
)
;

