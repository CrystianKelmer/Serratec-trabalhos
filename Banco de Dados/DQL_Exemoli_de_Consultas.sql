                              -- DQL --
                      -- Exemplos de consultas --
 
 -- 1. Selecionar tudo da tabela musica --
     select * 
      from musica 
  
 -- 2. Selecionar tudo de pais --
     select * -- Todas as colunas e todas as linhas --
      from pais 
   
 -- 3. Selecionar nome da tabela artista --
     select nome
      from artista 
    
 -- 4. Selecionar nome e seguidores da tabela artista --
      select nome, seguidores  -- retorna duas colunas --
       from artista
     
 -- 5. Seleciona quantidade total de artistas
       select count(*) -- Contagem total de linhas --
        from artista 
      
 -- 6. Selecione quantidade total de artistas que começam com a letra L --
       select count(*) -- Contagem total de linhas --
        from artista 
         where nome like 'L%'
        or nome like 'l%' -- Não importa oq vem depois, o nome deve começar com popularidade
      
 -- 7. Seleciona tudo dos artistas que tem 'am no nome --
       select *
      from artista 
       where nome like '%am%'
       
 -- 8. Seleciona o top 10 dos artistas com maior popularidade --
       select nome, popularidade -- Oque eu quero consultar (colunas) --
        from artista -- De onde vem essa info (tabela) --
         order by pupularidade desc 
         limit 10
       -------------------------------------------------------------
 -- 9. Selecionar Top 1 da música mais tocada (streams) --
       select m.nome,
        max(pm.streams),
         p.nome
          from musica m,
           pais_musica pm,
            pais p
       where m.id = pm.id_musica -- PK de música = FK id_musica de pais_musica --
           and p.id = pm.id_pais -- Pk de pais = FK id_pais da tabela pais_musica --
           
           -- Média de streams por música --
        select m.nome,
         avg(pm.streams) as avg_streams
          from musica m,
           where m.id = pm.id_musica -- PK de musica = FK id_musica da tabela pais_musica --
            and m.nome = 'Despacito'
      group by m.nome 
       order by 2 desc --está c0m erro
           ----------------------------------------
 -- 10. Código do artista da banda Paramore --
       select id 
        from artista 
         where nome = 'Paramore'
         
 -- 11. Músicas tocadas pelo Paramore --
         select *
          from musica 
           where id_artista = 155
           
 -- 12. Código da banda Drake -- 
        select id 
         from artista 
          where nome = 'Drake'
          
-- 14. Músicas tocadas pelo Drake --
         select *
           from musica 
            where id_artista = 9
           
-- 15. Músicas tocadas pelo Drake através de uma subconsulta --
          select *
           from musica 
            where id_artista = (select id
            					 from artista 
            					  where nome = 'Drake')
            					  
        ------------------------------------------    					  
          select *
           from musica 
            where id_artista in (select id
            					 from artista 
            					  where nome like 'C%') 
 -- Como se o resulta do retornasse unma lista, por isso precisamos usar o (in) --
           
      order by id_artista   		
     
 -- 15. Quantidade de músicas que são tocadas pelos artistas que começam com a letra A --
     -- Agrupando pelo artista --
     
      select id_artista, count(*)
       from musica
        where id_artista in (select id
        				      from artista 
        				       where nome like 'A%') 
      group by id_artista 
       order by 2 desc -- coluna resultante do count(*) --
      
 -- 16. Listagem com nome das músicas e dos artistas --
       
      select a.nome,
            m.nome
        from artista a, musica m   -- Com abreviação --
         where a.id = m.id_artista       -- A e M são apelidos --
          and a.nome like 'B%'
         -----------------------------
       select artista.nome,
            musica.nome
        from artista, musica         -- Sem abreviação --
         where artista.id = musica.id_artista 
          and artista.nome like 'B%'
         
         
 -- 17. Selecionar os artistas e suas músicas --
 -- Filtrando pelos artistas que tem entre 10000 e 20000 seguidores --
         
      select a.nome as nome_artista,  -- Apelido para a coluna nome que está em artista (a) --
       a.seguidores,               -- Apelido para a coluna nome que está em música (m) --
        m.nome as nome_musica
        from artista a, musica m
         where a.id = m.id_artista -- PK em artista = FK em música --
          and a.seguidores between 10000 and 20000
           order by a.seguidores desc 
           
           
           
           ---------------- Tipos de junções ----------------------
           
 select a.nome as nome_artista,
        m.nome as nome_musica 
 from artista a                 --PK id que está em artista deve se conectar com a FK --
  inner join musica m on a.id = m.id_artista 
   -- É o equivalente a: where a.id = m.id_artista 
   where a.nome like 'D%'
         
   --
   
   
   select *a.nome as artista,
           a.seguidores,
           g.nome as genero
    from artista a -- a letra 'a' é o apelido (alias) para a tabela artista
     inner join artista_genero ag on a.id = ag.id_artista 
      inner join genero g on  g.id = ag.artista_genero
      
     -- Selecionar os artistas que não tem gênero associado
 select a.nome as artista,
       g.nome as genero
   from artista a -- tabela da esquerda
    left join artista_genero ag on a.id = ag.id_artista 
     left join genero g on g.id = ag.id_genero 
      where g.nome is null
       and a.nome = 'Anitta'
       
       -- Atriubuir um gênero para a Anitta
        select id 
         from artista 
          where nome = 'pop'

 insert into artista_genero (id_artista, id_genero)
  values (231, 11)
  
  insert into artista_genero (id_artista, id_genero)
values ((select id from artista where nome = 'Anitta'), 
(select id from genero where nome = 'pop'))
    
 -- Contagem de gêneros por artista 
select g.nome
        count (*) as numeros_generos
from artista a
inner join artista_genero ag on a.id = ag.id_artista 
inner join genero g on g.id = ag.id_genero 
group by a.nome 
order by numeros_generos desc 

---- Listagem completa de artistas, gêneros, músicas e países em que elas tocam 

select a.nome as artista,
       m.nome as musica,
       p.nome as pais,
       g.nome as genero
 from artista a 
  inner join musica m on a.id = m.id_artista -- m.id_artista = a.id 
   inner join artista_genero ag on a.id = ag.id_artista 
    inner join genero g on g.id = ag.id_genero -- TODO
     inner join pais_musica pm on m.id = pm.id_musica 
      inner join pais p on p.id = pm.id_pais 
       where  artista = 'Drake'
       order by artista, musica, pais
     -----------------------------
 select nome from musica
 where nome = 'Make You Feel My Love'
 -------------------------------------
 
 
 select distinct a.nome as artista,
	   m.nome as musica,
	   p.nome as pais,
	   --g.nome as genero,
	   pm.streams 
from artista a
inner join musica m on a.id = m.id_artista -- m.id_artista = a.id
--inner join artista_genero ag on a.id = ag.id_artista 
--inner join genero g on g.id = ag.id_genero
inner join pais_musica pm on m.id = pm.id_musica 
inner join pais p on p.id = pm.id_pais
where artista = 'Drake'
and streams > 30000
order by artista, musica, streams desc


-----------------------------------------------------------




 --
