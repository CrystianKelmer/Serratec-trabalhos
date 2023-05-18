   ---------- Criação das tabelas do banco do spotify ----------------


    -- artista --
     
   create table artista(
	id integer primary key autoincrement not null,
 	 nome text,
	  popularidade integer,
	   seguidores integer
);

     --pais --

  create table pais(
	 id integer primary key autoincrement not null,
	  nome text, 
	   sigla text
 );

   	--musica --
 
   create table musicas(
 	id integer primary key autoincrement not null,
     nome text,
 	  url text,
 	   id_artista integer,
     
 	   --chave estrangeira --
 --minha(FK) nesta tabela deve fazer referência a tabela artista ma coluna id(tabela artista) --(id__artista) é só a nomenclatura, pode ser qq nome
 
 	foreign key(id_artista) references artista(id)
 );

	-- genero --

   create table genero(
	id integer primary key autoincrement not null,
	 nome text
);

	-- genero_artista --  --tabela resultante do N:N (a oração) --
	
  create table genero_artista (
  -- Sequencia para criação: cria tabela, define as colunas, define os relacionamentos 
	id integer primary key autoincrement not null,
	 id_genero integer,
       id_artista integer,
	foreign key (id_genero) references genero(id),
	  foreign key(id_artista) references artista(id)
);
     --musica_pais --também resultante de N:N --

  create table musica_pais (
	id integer primary key autoincrement not null,
	 id_musica integer,
	  id_pais integer,
	   posicao integer,
	    streams integer,
   foreign key(id_pais) references pais(id),
	  foreign key(id_musica) references musica(id)
);



	--Alter table (no SQLITE) --
	-- renomear tabelas --
	-- renomear colunas --
	-- adicionar colnas --
	-- deletar colunas --


 alter table musicas rename column nome to nome_musicas; 
  alter table artista rename column nome to nome_artista;
    --comentario teste --
 alter table genero rename column nome to nome_genero;

	--alterar nome da tabela --

 alter table musica_pais rename to pais_musica

	-- adiconar uma coluna --

 alter table pais add column longitude text;
  alter table pais add column latitude text

	-- excluir colunas de uma tabela --

 alter table pais drop column longitude;
  alter table pais drop column latitude

   -- deletar a tabela (usar com CUIDADO!) --

 drop table pais;


-------------------------------------------------------
----------------------DML--------------------------------

  -- Inserção de Dados --

 insert into genero(nome_genero) values ('pop'),('rock'),('sertanejo'), ('forró'),
  ('blues'), ('jazz')
 
  insert into genero(nome_genero) values ('funk'),('folk'),('phonk'), ('samba')
   insert into genero(nome_genero) values  ('rap'), ('trap'), ('indie')
 
 
   -- Pais --
 
  insert into pais (nome, sigla) values ('Brasil', 'BR');
   insert into pais (nome, sigla) values ('Estados Unidos', 'USA');
    insert into pais (nome, sigla) values ('Canada', 'CA')
   
   
   
   -- Artista --
   
   insert into artista (nome, popularidade, seguidores) values
   ('chitãozinho e xororó',100, 800),
    ('coldplay', 100, 46565),
     ('falamansa',80, 6546),
      ('anitta', '90', 65465)
      
      insert into artista (nome, popularidade) values
      ('marisa mont', 100)
       insert into artista (nome, popularidade) values
        ('Michael Jackson', 100000)
      
      -- Musica --
      
      insert into musicas (nome_musicas, id_artista) values
       ('Porta',5)
      
      
       insert into musicas (nome_musicas, id_artista) values
        ('Yellow', 10)
      
      
      
      PRAGMA foreign_keys = ON;
      
     
  -- UPDATE --
     
     update artista 
      set seguidores = 7005113
       where id = 6 -- é o id do MJ
     
     update artista
      set  popularidade = 50
       where id = 3
      
  -- Deletar --
      
     delete from pais -- deleta tudo (pois está sem restrição)
     
     delete from pais 
      where id >= (id do pais desejado)
      
     delete from artista 
      where id == 3
     
  -- insert genero_artista
      
      insert into genero_artista (id_genero, id_artista) values
      (1, 5),
      (3, 1)
      
      insert into genero_artista (id_genero, id_artista) values
      (3 ,2),
      (1 ,2),
      (4 ,6),
      (2 ,3)
      
      select g.nome_genero,
           a.nome,
       from genero g
        inner join genero_artista ga on g.id = ga.id_genero -- PK = FK
         inner join artista a on a.id = ga.id_artista  -- Pk = FK
         
         
         
         
         