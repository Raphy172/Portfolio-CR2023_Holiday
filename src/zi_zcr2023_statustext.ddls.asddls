@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Status'

define view entity ZI_ZCR2023_StatusText as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T(p_domain_name:'ZCR2023_STATUS')
{
    
    
    key domain_name as DomainName,
    key value_position as ValuePosition,
    key language as Language,
    value_low as ValueLow,
    text as Text,
   
  
  concat(concat(concat_with_space(value_low, '(', 1), text), ')') as StatusName
}
