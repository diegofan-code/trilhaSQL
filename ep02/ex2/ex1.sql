--Ex1. Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

select product_category_name,
count(*),
avg(product_description_lenght) as product_tamanho_médio,
max(product_description_lenght) as product_tamanho_máximo,
min(product_description_lenght) as product_tamanho_mínimo

from tb_products

where product_category_name is not null

group by product_category_name

limit 10


