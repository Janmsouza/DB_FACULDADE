ALTER TABLE Curso CHANGE fk_cod_departamento  fk_cod_departamento INT (4);

ALTER TABLE Aluno CHANGE nome_aluno  nome_aluno CHAR (20);

ALTER TABLE Disciplina CHANGE carga_horaria carga_horaria INT (4) NOT NULL;

ALTER TABLE Disciplina CHANGE num_alunos num_alunos INT (4) NOT NULL;

ALTER TABLE Disciplina CHANGE nome_disciplina  nome_disciplina CHAR (100);

ALTER TABLE Disciplina CHANGE descricao  descricao CHAR (80);

ALTER TABLE Disciplina_historico CHANGE frequencia  frequencia CHAR (4);

ALTER TABLE Professor CHANGE nome_professor nome_professor CHAR (20) NOT NULL;

ALTER TABLE Professor CHANGE sobrenome_professor sobrenome_professor CHAR (50) NOT NULL;

ALTER TABLE Professor CHANGE fk_cod_departamento fk_cod_departamento INT (4);




