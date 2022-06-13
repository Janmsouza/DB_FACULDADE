ALTER TABLE Curso CHANGE fk_cod_departamento  fk_cod_departamento INT (4);

ALTER TABLE Endereco CHANGE nome_rua nome_rua CHAR (50) NOT NULL;

ALTER TABLE Endereco CHANGE numero_rua numero_rua INT (4) NOT NULL;

ALTER TABLE Endereco CHANGE cep cep CHAR (8) NOT NULL;

ALTER TABLE Aluno CHANGE nome_aluno  nome_aluno CHAR (20);

ALTER TABLE Aluno CHANGE fk_cod_curso fk_cod_curso INT (4);

ALTER TABLE Aluno CHANGE fk_cod_turma fk_cod_turma INT (4);

ALTER TABLE Aluno CHANGE fk_cod_endereco fk_cod_endereco INT (4);

ALTER TABLE Disciplina CHANGE carga_horaria carga_horaria INT (4) NOT NULL;

ALTER TABLE Professor CHANGE nome_professor nome_professor CHAR (20) NOT NULL;

ALTER TABLE Professor CHANGE sobrenome_professor sobrenome_professor CHAR (50) NOT NULL;

ALTER TABLE Professor CHANGE fk_cod_departamento fk_cod_departamento INT (4);

ALTER TABLE Disciplina CHANGE nome_disciplina  nome_disciplina CHAR (100);

ALTER TABLE Disciplina CHANGE descricao  descricao CHAR (80);

