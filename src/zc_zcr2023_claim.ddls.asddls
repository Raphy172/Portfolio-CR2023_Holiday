@EndUserText.label: 'Claim'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_ZCR2023_Claim
  as projection on ZR_ZCR2023_Claim
{
  key ClaimUuid,
      WorkerUuid,
      Year1,
      Vacations,
      /* Associations */
   _Worker : redirected to parent ZC_ZCR2023_Worker //bestehende Association umleiten um auf ZC zu zeigen
}
