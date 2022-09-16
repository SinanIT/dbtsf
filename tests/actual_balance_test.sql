
SELECT
    (case when sum(c_acctbal) < 1000000000 then 1 else 0 end) as actual_balance
from {{ ref('playing_with_tests') }}

having (case when sum(c_acctbal) < 1000000000 then 1 else 0 end) = 0