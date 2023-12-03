@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Status'

define view entity ZI_ZCR2023_StatusVH
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T(p_domain_name:'ZCR2023_STATUS')
{

      @UI.hidden: true
  key domain_name,
      @UI.hidden: true
  key value_position,
      @UI.hidden: true
  key language,
      @EndUserText: {label: 'Status', quickInfo: 'Status'}
      value_low as Status,
      @EndUserText: {label: 'Status Text', quickInfo: 'Status Text'}
      text as StatusText

}
where
  language = $session.system_language
