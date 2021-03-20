select 
    product_category_name,
    count(*),
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    avg(product_weight_g) as avg_peso --média

from tb_products

--isso vem antes do groupby no processamento também
where product_category_name is not null
and product_category_name != 'alimentos' -- ! = (diferente)
and product_category_name <> 'agro_industria_e_comercio' -- (<> diferente)

group by product_category_name

