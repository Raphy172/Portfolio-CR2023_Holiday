@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Request'
define view entity ZR_CR2023_Request
  as select from zcr2023_request
  association to parent ZR_ZCR2023_Worker as _Worker 
  on $projection.Applicant = _Worker.WorkerUuid
  association[1..1] to ZI_ZCR2023_StatusText as _StatusText on $projection.Status = _StatusText.DomainName
  {
//@EndUserText: { label: 'Request UUID', quickInfo: 'Request UUID'}
  key request_uuid as RequestUuid,
      applicant    as Applicant,
      approve      as Approve,
      startdate    as Startdate,
      enddate      as Enddate,
      comment1     as Comment1,
      status       as Status,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
         /*Transional Data */
   _StatusText.StatusName,
    
    case status when 'B' then 2
    when 'A' then 1
    when 'G' then 3
    else 0
    end as StatusCriticality,
    
      /*Assocations */
      _Worker // Make association public
}
