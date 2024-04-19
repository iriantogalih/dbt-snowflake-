//singular test

select 
     *
from 
    {{ ref('fct_orders') }}
where
    order_date > CURRENT_DATE()
    or date(order_date) < date('1900-01-01')