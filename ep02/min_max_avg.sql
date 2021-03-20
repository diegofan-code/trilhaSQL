select max(product_weight_g) as maior_peso,
min(product_weight_g) as menor_peso,
avg(product_weight_g) as avg_peso --média

from tb_products

where product_category_name = 'perfumaria'