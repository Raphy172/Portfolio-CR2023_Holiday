@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Approver'

define view entity ZI_ZCR2023_ApproverVH as select from zcr2023_worker
{
key worker_uuid as WorkerUuid,
worker_nr as WorkerNr,
surname as Surname,
forename as Forename,
begin_date as BeginDate,
created_by as CreatedBy,
created_at as CreatedAt,
last_changed_by as LastChangedBy,
last_changed_at as LastChangedAt

}
