select  distinct coalesce (product_category_name, 'outros') as categoria_fillna -- O coalesce vai pegar os campos que vc pediu para pegar se não encontrar ele vai para o próximo que vc digitou e assim por diante até achar.

from tb_products

order by product_category_name