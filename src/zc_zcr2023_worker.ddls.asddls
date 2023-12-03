@EndUserText.label: 'Worker'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true //Notwendig für Metadata extension
define root view entity ZC_ZCR2023_Worker
  provider contract transactional_query
  as projection on ZR_ZCR2023_Worker
{
  key WorkerUuid,
      @Search.defaultSearchElement: true
      WorkerNr,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Surname,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Forename,
      BeginDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      /* Transient Data */
 

      //Associations
      _Claim : redirected to composition child ZC_ZCR2023_Claim,
      _Request : redirected to composition child ZC_ZCR2023_REQUEST
      
  
}
