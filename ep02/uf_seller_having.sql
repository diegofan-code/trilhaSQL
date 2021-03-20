

select seller_state,
count(*) as qtde_sellers

from tb_sellers

--Filtro pós agregação
where seller_state IN ('SP','RJ','PR')

--agregação
group by seller_state

having count(*) > 10 -- Ele faz o que vem depois remove os estados com menos de 10 selers





