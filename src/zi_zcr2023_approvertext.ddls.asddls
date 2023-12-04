@AbapCatalog.sqlViewName: 'ZI_ZCR2023_APPR'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Approver'
define view ZI_ZCR2023_APPROVERText
  as select from zcr2023_worker
{
  key worker_uuid                             as WorkerUuid,
      surname                                 as Surname,
      forename                                as Forename,

      /* Transient Data */
      concat_with_space(surname, forename, 1) as Name
}
