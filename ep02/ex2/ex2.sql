--Ex2. Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

select product_category_name,
count(*),
avg(product_name_lenght) as tamanho_medio,
max(product_name_lenght) as tamanho_maximo,
min(product_name_lenght) as tamanho_minimo

from tb_products

group by product_category_name

