--Ex3. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100.


select product_category_name,
product_description_lenght,
count(*),
avg(product_name_lenght) as tamanho_medio,
max(product_name_lenght) as tamanho_maximo,
min(product_name_lenght) as tamanho_minimo

from tb_products

where product_description_lenght > 100

group by product_category_name