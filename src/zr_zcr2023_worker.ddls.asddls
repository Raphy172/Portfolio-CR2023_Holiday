@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Worker'
define root view entity ZR_ZCR2023_Worker as select from zcr2023_worker
composition [0..*] of  ZR_ZCR2023_Claim as _Claim
composition [0..*] of ZR_CR2023_Request as _Request
{
@EndUserText:{ label: 'Worker UUID', quickInfo: 'Worker UUID' }
    key worker_uuid as WorkerUuid,
@EndUserText:{ label: 'Worker-Nr', quickInfo: 'Worker-Nr' }
    worker_nr as WorkerNr,
@EndUserText:{ label: 'Surname', quickInfo: 'Surname' }
    surname as Surname,
@EndUserText:{ label: 'Forename', quickInfo: 'Forename' }
    forename as Forename,
@EndUserText:{ label: 'Begin Date', quickInfo: 'Begin Date' }
    begin_date as BeginDate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    /* Transient Data */
    
    /*Associations*/
    _Claim,
    _Request
}
