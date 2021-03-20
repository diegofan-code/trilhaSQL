select 

    tel1,
    tel2,
    tel-cel1,
    tel-cel2,
coalesce (tel_cel, tel_cel2, tel1,tel2, 0) as melhor_tel-- O coalesce vai pegar os campos que vc pediu para pegar se não encontrar ele vai para o próximo que vc digitou e assim por diante até achar.

from contatos

