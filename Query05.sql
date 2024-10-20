select 
    count (call_status),
    call_done_date as data,
    lead_gen_source as plataforma
from leads_interaction_details
left join leads_basic_details on leads_interaction_details.lead_id = leads_basic_details.lead_id
where call_status = "successful"
group by plataforma, data