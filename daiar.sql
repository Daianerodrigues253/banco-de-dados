-- Tabela de Cursos
CREATE TABLE cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    descricao VARCHAR(255),
    categoria VARCHAR(50),
    duracao_horas INT,
    nivel VARCHAR(50),
    preco VARCHAR(50)
);

-- Tabela de Instrutores
CREATE TABLE instrutores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    especialidade VARCHAR(50)
);

-- Tabela de Inscrições
CREATE TABLE inscricoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100),
    email_aluno VARCHAR(100),
    id_curso INT,
    data_inscricao DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_curso) REFERENCES cursos(id)
);


-- Inserindo cursos
INSERT INTO cursos (titulo, descricao, categoria, duracao_horas, nivel, preco) VALUES
('Medicina', 'Graduação na área da saúde humana', 'Saúde', 7200, 'Superior', 'R$ 11.000/mês'),
('Administração', 'Gerenciar e planejar negócios', 'Negócios', 3000, 'Técnico', 'R$ 400/mês'),
('Desenvolvimento de Sistemas', 'Criação de softwares', 'Tecnologia', 1200, 'Técnico', 'R$ 380/mês'),
('Enfermagem', 'Assistência na saúde humana', 'Saúde', 2000, 'Técnico', 'R$ 500/mês'),
('Educação Física', 'Formação de educadores físicos', 'Esportes', 3200, 'Superior', 'R$ 700/mês');

-- Inserindo instrutores
INSERT INTO instrutores (nome, email, telefone, especialidade) VALUES
('Carlos Silva', 'carlos.silva@gmail.com', '31988887777', 'Anatomia Humana'),
('Daniela Pereira', 'daniela.p@gmail.com', '31999988888', 'Administração'),
('Fábio Souza', 'fabio.souza@hotmail.com', '31977766666', 'Ciência da Computação'),
('Liz Oliveira', 'liz.oliveira@gmail.com', '31966655555', 'Enfermagem'),
('Gabriel Lima', 'gabriel.lima@hotmail.com', '31955544444', 'Educação Física');

-- Inserindo inscritos
INSERT INTO inscricoes (nome_aluno, email_aluno, id_curso, data_inscricao, status) VALUES
('Ana Maria', 'ana.maria@gmail.com', 1, '2024-04-10', 'Ativo'),
('Bruno Costa', 'bruno.costa@gmail.com', 2, '2024-04-11', 'Ativo'),
('Carla Dias', 'carla.dias@gmail.com', 3, '2024-04-12', 'Ativo'),
('Diego Silva', 'diego.silva@gmail.com', 4, '2024-04-13', 'Inativo'),
('Eva Santos', 'eva.santos@gmail.com', 5, '2024-04-14', 'Ativo');