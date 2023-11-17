CLASS zcl_cr2023_vacation_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CR2023_VACATION_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA requests TYPE TABLE OF zcr2023_request.
    DATA request TYPE zcr2023_request.

    "Daten löschen
    DELETE FROM zcr2023_request.

    "Daten erstellen
    request-applicant = '1'.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20220701'.
    request-enddate = '20220710'.
    request-comment1 = 'Sommerurlaub'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

     "Daten erstellen
    request-applicant = '1'.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20221227'.
    request-enddate = '20221230'.
    request-comment1 = 'Weihnachtsurlaub'.
    request-status = 'A'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

     "Daten erstellen
    request-applicant = '1'.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20221228'.
    request-enddate = '20221230'.
    request-comment1 = 'Weihnachtsurlaub (2. Versuch)'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

      "Daten erstellen
    request-applicant = '1'.
    request-approve = '2'.
    request-client = sy-mandt.
    request-comment1 = ' '.
    request-startdate = '20230527'.
    request-enddate = '20230614'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

    "Daten erstellen
    request-applicant = '1'.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20231220'.
    request-enddate = '20231231'.
    request-comment1 = 'Winterurlaub'.
    request-status = 'B'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

    "Daten erstellen
    request-applicant = '3'.
    request-approve = '1'.
    request-client = sy-mandt.
    request-startdate = '20231227'.
    request-enddate = '20231231'.
    request-comment1 = 'Weihnachtsurlaub'.
    request-status = 'B'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND request TO requests.

    "Daten hinzufügen
    INSERT zcr2023_request FROM TABLE @requests.

    DATA claims TYPE TABLE OF zcr2023_claim.
    DATA claim TYPE zcr2023_claim.

    "Daten löschen
    DELETE FROM zcr2023_claim.

    "Daten erstellen
    claim-worker_uuid = '1'.
    claim-year1 = '2022'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND claim TO claims.

    "Daten erstellen
    claim-worker_uuid = '1'.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND claim TO claims.

     "Daten erstellen
    claim-worker_uuid = '2'.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND claim TO claims.

     "Daten erstellen
    claim-worker_uuid = '3'.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '7'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).

    APPEND claim TO claims.

    "Daten hinzufügen
    INSERT zcr2023_claim FROM TABLE @claims.

    data workers type TABLE OF zcr2023_worker. "List<Trave> travels = new ArrayList<>();
  data worker type zcr2023_worker. "Travel travel;

  " Daten löschen
  delete from zcr2023_worker.

  " Daten erstellen
  worker-worker_nr = '1'.
  worker-forename = 'Hans'.
  worker-surname = 'Maier'.
  worker-client = sy-mandt.
  worker-begin_date = '20000501'.
  worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).


  APPEND worker TO workers. "travels.add(travel)

   " Daten erstellen
  worker-worker_nr = '2'.
  worker-forename = 'Lisa'.
  worker-surname = 'Müller'.
  worker-client = sy-mandt.
  worker-begin_date = '20100701'.
  worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).

  APPEND worker TO workers. "travels.add(travel)

  " Daten erstellen
  worker-worker_nr = '3'.
  worker-forename = 'Petra'.
  worker-surname = 'Schmid'.
  worker-client = sy-mandt.
  worker-begin_date = '20221001'.
  worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).

  APPEND worker TO workers. "travels.add(travel)

"Daten hinzufügen
INSERT zcr2023_worker FROM TABLE @workers.



  ENDMETHOD.
ENDCLASS.
