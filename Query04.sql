select 
    count(lead_id) as qtde_cliente,
    current_education
from leads_basic_details
group by current_education
order by qtde_cliente