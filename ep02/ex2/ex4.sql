--Ex4. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100. Exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres.

select product_category_name,
product_description_lenght,
count(*),
avg(product_name_lenght) as tamanho_medio,
max(product_name_lenght) as tamanho_maximo,
min(product_name_lenght) as tamanho_minimo,
avg(product_description_lenght) as tamanho_medio_descricao


from tb_products

where product_description_lenght > 100


group by product_category_name

having avg(product_description_lenght) > 500

order by avg(product_name_lenght) desc, 
min(product_name_lenght) desc, -- Desc por ordem decrecente
max(product_name_lenght) asc