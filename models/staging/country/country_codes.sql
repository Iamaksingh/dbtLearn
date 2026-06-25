with country_codes as(
    Select * from {{ref('country_dial_code')}}
)
select * from country_codes