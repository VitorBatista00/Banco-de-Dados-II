# Banco de dados II (Atividade 1: Criar 30 consultas.)
-- LUAN CAVALCANTI MORAIS GU302119X
-- VITOR DE OLIVEIRA BATISTA GU3020169


# CLASSIFICANDO OS DADOS

USE sakila; 

-- #1 Classificando o primeiro nome dos atores em ordem descendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY 
	first_name DESC;

-- #2 Classificando os títulos em ordem descendente
SELECT 
	title
FROM
	film_list
ORDER BY 
	title DESC;

-- #3 Classificando a categoria em ordem ascendente;
SELECT 
	name
FROM
	category
ORDER BY 
	name ASC;

-- #4 Classificando sobrenome dos atores em ordem ascendente
SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY 
	last_name ASC;

-- #5 Calculando o subtotal do custo de reposição e o valor dos alugueis dos filmes e ordernando em forma descentente
SELECT
	replacement_cost, 
    price,
    replacement_cost * price AS subtotal
FROM
	film_list, film
ORDER BY 
	replacement_cost * price DESC;

# FILTRANDO OS DADOS

-- #6 Filtrando os idiomas disponíveis
SELECT 
    name
FROM
   language
WHERE
    language_id;

-- #7 Filtrando e ordenando os títulos dos filmes por preço

SELECT 
    title,
    description
FROM
	film_list
WHERE
    price = '4.99'
ORDER BY 
	title ASC;

-- #8 Filtrando atores por ID entre 1 e 15
SELECT 
	actor_id,
    first_name, 
    last_name
FROM
    actor_info
WHERE
    actor_id BETWEEN 1 AND 15
ORDER BY 	
	actor_id;

-- #9 Filtrando e retornando o ator que participa do filme de acordo que o título termina com "e"
SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%e'
ORDER BY 
	first_name;

# UNINDO TABELAS

-- #10 Unindo as tabelas 'film' e 'film_text' e retornando os IDs dos filmes do 1 até 19
SELECT
    P.film_id,
    P.title,
    P.description
FROM
  film P
INNER JOIN
  film_text C
ON
  C.film_id = P.film_id
WHERE
    P.film_id BETWEEN 1 AND 19
GROUP BY
  P.film_id;

-- #11 Une as informações das tabelas 'customer_list' e 'customer'
SELECT 
    customer.customer_id,
    first_name,
    email
FROM
    customer
LEFT JOIN customer_list ON 
    customer_list.name = customer.last_name;
 
 # AGRUPANDO TABELAS
 
-- #12 Agrupando as tabelas com GROUP BY
SELECT
  COUNT(F.film_id) AS TOTAL,
  C.name as CATEGORIA
FROM
  film F, category C
WHERE
  F.film_id = C.category_id
GROUP BY
	F.film_id;



-- #13 Classificando o primeiro nome dos atores em ordem ascendente

SELECT 
	first_name,
    last_name
FROM
	actor
ORDER BY 
	first_name ASC;
    
-- #14 Classificando os títulos em ordem descendente

SELECT 
	title
FROM
	film_list
ORDER BY 
	title DESC;
    
-- #15 CLASSIFICANDO O DISTRITO DOS ENDEREÇOS EM ORDEM DESCENDENTE

SELECT
    address, district, city_id, postal_code
FROM
    address
ORDER BY
    district DESC;
    
-- #16 CLASSIFICANDO O CEP DOS ENDEREÇOS EM ORDEM DESCENDENTE

SELECT
    address, district, city_id, postal_code
FROM
    address
ORDER BY
    postal_code DESC;
    
-- #17 classificando o cep dos endreços em ordem crescente

SELECT
    address, district, city_id, postal_code
FROM
    address
ORDER BY
    postal_code ASC;

-- #18 classificando o nome das cidades em ordem decrescente

SELECT
    address, district, city_id, postal_code
FROM
    address
ORDER BY
    city_id DESC;

-- #19 classificando o nome das cidades em ordem crescente

SELECT
    address, district, city_id, postal_code
FROM
    address
ORDER BY
    city_id ASC;

-- #20 Filtrando e retornando o ator que participa do filme de acordo que o título terminado com "A"
SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%A'
ORDER BY 
	first_name;


#21 Agrupando as tabelas com GROUP BY
SELECT
  COUNT(C.category_id) AS TOTAL,
  C.name as CATEGORIA
FROM
  category C, film F
WHERE
  C.category_id = F.film_id
GROUP BY
	C.category_id;

-- #22 Filtrando e retornando o ator que participa do filme de acordo com o sobrenome e terminado com a letra "B"
SELECT 
   title,
   first_name,
   last_name
FROM
    actor_info, film
WHERE
    title LIKE '%B'
ORDER BY 
	last_name;

-- #23 Unindo as tabelas 'film' e 'film_text' e retornando os IDs dos filmes do 50 até 100
SELECT
    P.film_id,
    P.title,
    P.description
FROM
  film P
INNER JOIN
  film_text C
ON
  C.film_id = P.film_id
WHERE
    P.film_id BETWEEN 50 AND 100
GROUP BY
  P.film_id;
  
-- #24 Unindo as tabelas 'film' e 'film_text' e retornando os IDs das  categorias de filmes do 20 até 65
SELECT
    P.film_id,
    P.title,
    P.description
FROM
  film P
INNER JOIN
  film_text C
ON
  C.film_id = P.film_id
WHERE
    P.film_id BETWEEN 20 AND 65
GROUP BY
  C.film_id;

-- #25 Selecionando as informações da tabela ator, agrupando por ID dos atores

SELECT
  *
FROM
    actor
GROUP BY
  actor_id;

-- #26 Unindo a tabela "customers" e "customers_list"

SELECT 
    customer.customer_id,
    first_name,
    last_name,
    email
FROM
    customer
LEFT JOIN customer_list ON 
    customer_list.name = customer.last_name;

-- #27 Buscando ACE GOLFINGER usando WHERE

SELECT
	*
FROM
	film
WHERE
	title='ACE GOLDFINGER';
    
-- #28 Classificando os filmes pela taxa de aluguel em ordem descendente

SELECT
	*
FROM
	film
ORDER BY
	rental_rate DESC;

-- #29 Buscando TORQUE BOUND usando WHERE

SELECT
	*
FROM
	film
WHERE
	title='TORQUE BOUND';

--- #30 Buscando TRADING PINOCCHIO usando WHERE

SELECT
	*
FROM
	film
WHERE
	title='TRADING PINOCCHIO';

