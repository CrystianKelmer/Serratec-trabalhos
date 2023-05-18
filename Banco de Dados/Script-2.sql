    ------------- TRABALHO FINAL ---------------


 create table produto (
 id integer autoincrement primary key,
   descricao text ,
    quantidade_em_estoque text not null,
     data_de_fabricacao integer not null,
      valor_unitario integer not null,
       id_categoria  integer not null,
        id_vendedor integer not null  --(usuario vendedor)--
         
);

 create table usuario (
 id integer autoincrement primary key,
  codigo integer not null,
   nome text  not null,
    endereço text not null, 
     telefone  integer not null,
      nome_de_usuario text not null,
       cpf integer not null,
        data_nascimento integer not null 
);


 create table categoria (
 id integer autoincrement primary key,
  codigo integer not null,
   nome text not null,
    descricao text
);

 create table endereço (
 id integer autoincrement primary key,
  pais text,
   cidade text,
    rua text,
     bairro text,
     numero_da_casa integer
);
 
 create table usuario_produto_compra (
 id integer autoincrement primary key,
  data_pedido integer not null,
   id_produto integer not null,
    quantidade integer not null,
     id_vendedor integer not null,
      id_comprador integer not null
);

 create table contato (
 id integer autoincrement primary key,
  telefone_fixo integer not null,
   telefone_celular integer not null,
   email text not null
);
