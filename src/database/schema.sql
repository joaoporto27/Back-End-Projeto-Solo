CREATE TABLE cards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    type VARCHAR(50) NOT NULL,
    custo_elixir INTEGER NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(255)
);


INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Gigante', 'Tropa', 5, 'Tanque de alto HP que ataca construções.', 'https://url-da-imagem.com/gigante.png'),
    ('Mosqueteira', 'Tropa', 4, 'Atiradora de longo alcance.', 'https://url-da-imagem.com/mosqueteira.png'),
    ('Bola de Fogo', 'Feitiço', 4, 'Causa dano em área.', 'https://url-da-imagem.com/boladefogo.png'),
    ('Torre Inferno', 'Construção', 5, 'Construção que causa dano crescente.', 'https://url-da-imagem.com/torreinferno.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Príncipe', 'Tropa', 5, 'Tropa de carga que causa dano duplo ao atacar.', 'https://url-da-imagem.com/principe.png'),
    ('Arqueiras', 'Tropa', 3, 'Duas atiradoras de longo alcance.', 'https://url-da-imagem.com/arqueiras.png'),
    ('Zap', 'Feitiço', 2, 'Causa dano instantâneo e atordoa inimigos.', 'https://url-da-imagem.com/zap.png'),
    ('Canhão', 'Construção', 3, 'Construção defensiva que atira em tropas terrestres.', 'https://url-da-imagem.com/canhao.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('P.E.K.K.A', 'Tropa', 7, 'Tropa pesada com alto dano e HP.', 'https://url-da-imagem.com/pekka.png'),
    ('Bárbaros', 'Tropa', 5, 'Grupo de quatro guerreiros robustos.', 'https://url-da-imagem.com/barbaros.png'),
    ('Flechas', 'Feitiço', 3, 'Causa dano em área a tropas aéreas e terrestres.', 'https://url-da-imagem.com/flechas.png'),
    ('Morteiro', 'Construção', 4, 'Construção que lança projéteis explosivos.', 'https://url-da-imagem.com/morteiro.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Dragão Infernal', 'Tropa', 4, 'Tropa voadora que causa dano crescente.', 'https://url-da-imagem.com/dragaoinfernal.png'),
    ('Cavaleiro', 'Tropa', 3, 'Tropa terrestre com bom equilíbrio entre dano e HP.', 'https://url-da-imagem.com/cavaleiro.png'),
    ('Raios', 'Feitiço', 6, 'Causa dano em três alvos diferentes.', 'https://url-da-imagem.com/raios.png'),
    ('Aríete de Batalha', 'Construção', 4, 'Construção que avança e causa dano ao atingir construções.', 'https://url-da-imagem.com/ariete.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Mago', 'Tropa', 5, 'Tropa que lança bolas de fogo em área.', 'https://url-da-imagem.com/mago.png'),
    ('Goblin Lanceiro', 'Tropa', 2, 'Tropa rápida com lança.', 'https://url-da-imagem.com/goblinlanceiro.png'),
    ('Veneno', 'Feitiço', 4, 'Causa dano ao longo do tempo em área.', 'https://url-da-imagem.com/veneno.png'),
    ('Tesla', 'Construção', 4, 'Construção que se esconde e ataca inimigos próximos.', 'https://url-da-imagem.com/tesla.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Mini P.E.K.K.A', 'Tropa', 4, 'Tropa terrestre com alto dano por golpe.', 'https://url-da-imagem.com/minipekka.png'),
    ('Esqueletos', 'Tropa', 1, 'Grupo de três esqueletos rápidos.', 'https://url-da-imagem.com/esqueletos.png'),
    ('Tornado', 'Feitiço', 3, 'Agrupa inimigos em um ponto e causa dano.', 'https://url-da-imagem.com/tornado.png'),
    ('Cemitério', 'Feitiço', 5, 'Invoca esqueletos aleatoriamente na área alvo.', 'https://url-da-imagem.com/cemiterio.png');
INSERT INTO cards (name, type, custo_elixir, description, image_url) VALUES
    ('Bárbaros de Elite', 'Tropa', 6, 'Duas tropas de bárbaros rápidos e fortes.', 'https://url-da-imagem.com/barbaroselite.png'),
    ('Goblin com Dardo', 'Tropa', 3, 'Tropa aérea que atira dardos.', 'https://url-da-imagem.com/goblincomdardo.png'),
    ('Congelamento', 'Feitiço', 4, 'Congela inimigos e construções na área alvo.', 'https://url-da-imagem.com/congelamento.png'),
    ('Canhão com Roda', 'Construção', 5, 'Construção móvel que atira em tropas terrestres.', 'https://url-da-imagem.com/canhaocomroda.png');
    