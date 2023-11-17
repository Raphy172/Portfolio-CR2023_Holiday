@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Claim'
define view entity ZR_ZCR2023_Claim
  as select from zcr2023_claim
  association to parent ZR_ZCR2023_Worker as _Worker on $projection.WorkerUuid = _Worker.WorkerUuid
{
      @EndUserText: { label: 'Claim UUID', quickInfo: 'Claim UUID'}
  key claim_uuid  as ClaimUuid,
      @EndUserText: { label: 'Worker UUID', quickInfo: 'Worker UUID'}
      worker_uuid as WorkerUuid,
      year1       as Year1,
      vacations   as Vacations,

      /* Associtations*/
      _Worker
}
