--Ex1: Quantos produtos temos da categoria 'artes'?


--contagem

select count(*) qtde_linhas,
count(product_id) as qtde__produtos,
count(distinct product_id) as qtde_produtos_distintos,
count(distinct product_category_name) as qtde_categorias_distintas


from tb_products as t1 -- as é um apelido

where product_category_name = 'artes'

