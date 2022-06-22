USE db_faculdade;


SELECT aluno.RA, aluno.nome_aluno,' ', aluno.sobrenome_aluno AS nome, curso.nome_curso, turma.periodo FROM aluno INNER JOIN curso
	ON aluno.fk_cod_curso = curso.cod_curso
INNER JOIN turma 
	ON aluno.fk_cod_turma = turma.cod_turma
ORDER BY nome_aluno;

SELECT aluno.RA, CONCAT(aluno.nome_aluno,' ', aluno.sobrenome_aluno) AS nome, curso.nome_curso, turma.periodo FROM aluno INNER JOIN curso
	ON aluno.fk_cod_curso = curso.cod_curso
INNER JOIN turma 
	ON aluno.fk_cod_turma = turma.cod_turma
ORDER BY nome_aluno;

CREATE VIEW vw_alunocurso AS
SELECT aluno.RA, CONCAT(aluno.nome_aluno,' ', aluno.sobrenome_aluno) AS nome, curso.nome_curso, turma.periodo FROM aluno INNER JOIN curso
	ON aluno.fk_cod_curso = curso.cod_curso
INNER JOIN turma 
	ON aluno.fk_cod_turma = turma.cod_turma
ORDER BY nome_aluno;

SELECT * FROM vw_alunocurso;

SELECT aluno.nome_aluno, disciplina.nome_disciplina, disciplina_historico.nota FROM aluno 
JOIN aluno_disciplina 
	ON aluno_disciplina.fk_RA = aluno.RA
JOIN disciplina 
	ON aluno_disciplina.fk_cod_disciplina = disciplina.cod_disciplina
JOIN historico
    ON historico.fk_RA = aluno.RA
JOIN disciplina_historico
    ON disciplina_historico.fk_cod_historico = historico.cod_historico
WHERE RA = '1'
ORDER BY nota;

CREATE VIEW vw_alunohistorico AS
SELECT aluno.nome_aluno, disciplina.nome_disciplina, disciplina_historico.nota FROM aluno 
JOIN aluno_disciplina 
	ON aluno_disciplina.fk_RA = aluno.RA
JOIN disciplina 
	ON aluno_disciplina.fk_cod_disciplina = disciplina.cod_disciplina
JOIN historico
    ON historico.fk_RA = aluno.RA
JOIN disciplina_historico
    ON disciplina_historico.fk_cod_historico = historico.cod_historico
ORDER BY nota;

SELECT * FROM vw_alunohistorico;

SELECT CONCAT(nome_professor, ' ', sobrenome_professor) AS nome_disciplina, carga_horaria FROM professor 
JOIN professor_disciplina 
	ON professor_disciplina.fk_cod_professor 
JOIN disciplina
	ON professor_disciplina.fk_cod_disciplina;

CREATE VIEW vw_professordisciplina AS
SELECT CONCAT(nome_professor, ' ', sobrenome_professor) AS nome_disciplina, carga_horaria FROM professor 
JOIN professor_disciplina 
	ON professor_disciplina.fk_cod_professor 
JOIN disciplina
	ON professor_disciplina.fk_cod_disciplina;

SELECT * FROM vw_professordisciplina;

SELECT d.nome_disciplina, dep.nome_departamento, c.nome_curso, p.nome_professor, p.sobrenome_professor FROM disciplina d
JOIN departamento dep
	ON d.fk_cod_departamento = dep.cod_departamento
JOIN curso_disciplina cd
    ON cd.fk_cod_disciplina = d.cod_disciplina
JOIN curso c
	ON cd.fk_cod_curso = c.cod_curso
JOIN professor_disciplina pd
    ON pd.fk_cod_disciplina = d.cod_disciplina
JOIN professor p
	ON pd.fk_cod_professor = p.cod_professor
ORDER BY nome_disciplina; 

CREATE VIEW vw_disciplinadepartamento AS
SELECT d.nome_disciplina, dep.nome_departamento, c.nome_curso, p.nome_professor, p.sobrenome_professor FROM disciplina d
JOIN departamento dep
	ON d.fk_cod_departamento = dep.cod_departamento
JOIN curso_disciplina cd
    ON cd.fk_cod_disciplina = d.cod_disciplina
JOIN curso c
	ON cd.fk_cod_curso = c.cod_curso
JOIN professor_disciplina pd
    ON pd.fk_cod_disciplina = d.cod_disciplina
JOIN professor p
	ON pd.fk_cod_professor = p.cod_professor
ORDER BY nome_disciplina; 

SELECT * FROM disciplinadepartamento;


SELECT a.ra, a.nome_aluno, a.sobrenome_aluno, a.CPF, a.status, a.sexo, a.nome_pai, a.nome_mae, a.email, a.whatsapp, e.nome_rua, e.numero_rua, e.complemento, e.CEP, tt.tipo_telefone, t.num_telefone FROM aluno a 
JOIN endereco e 
	ON a.fk_cod_endereco = e.cod_endereco
JOIN tipo_logradouro tl
	ON e.fk_cod_tipo_logradouro = tl.cod_tipo_logradouro
JOIN telefone_aluno ta
	ON ta.fk_ra = a.ra
JOIN telefone t
	ON ta.fk_cod_telefone = t.cod_telefone
JOIN tipo_telefone tt	
	ON t.fk_cod_tipo = tt.cod_tipo
ORDER BY a.nome_aluno;

CREATE VIEW vw_alunocompleto AS
SELECT a.ra, a.nome_aluno, a.sobrenome_aluno, a.CPF, a.status, a.sexo, a.nome_pai, a.nome_mae, a.email, a.whatsapp, e.nome_rua, e.numero_rua, e.complemento, e.CEP, tt.tipo_telefone, t.num_telefone FROM aluno a 
JOIN endereco e 
	ON a.fk_cod_endereco = e.cod_endereco
JOIN tipo_logradouro tl
	ON e.fk_cod_tipo_logradouro = tl.cod_tipo_logradouro
JOIN telefone_aluno ta
	ON ta.fk_ra = a.ra
JOIN telefone t
	ON ta.fk_cod_telefone = t.cod_telefone
JOIN tipo_telefone tt	
	ON t.fk_cod_tipo = tt.cod_tipo
ORDER BY a.nome_aluno;

SELECT * FROM vw_alunocompleto;


