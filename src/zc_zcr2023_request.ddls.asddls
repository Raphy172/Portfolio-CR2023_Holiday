@EndUserText.label: 'Request'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_ZCR2023_REQUEST 
as projection on ZR_CR2023_Request
{
    key RequestUuid,
    //@UI.hidden: true
    Applicant,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_ZCR2023_ApproverVH', element: 'WorkerUuid' } }] 
    Approve,
    Startdate,
    Enddate,
    Comment1,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_ZCR2023_StatusVH', element: 'Status' } }] //damit vorschläge kommen
    Status,
    Holidays,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    StatusName,
    StatusCriticality,
    
    /* Transient Data*/
    ApproverName,
    
    /* Associations */
    _Worker : redirected to parent ZC_ZCR2023_Worker
}
