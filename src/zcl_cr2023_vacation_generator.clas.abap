CLASS zcl_cr2023_vacation_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cr2023_vacation_generator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA requests TYPE TABLE OF zcr2023_request.
    DATA request TYPE zcr2023_request.

    DATA claims TYPE TABLE OF zcr2023_claim.
    DATA claim TYPE zcr2023_claim.

    DATA workers TYPE TABLE OF zcr2023_worker. "List<Trave> travels = new ArrayList<>();
    DATA worker TYPE zcr2023_worker. "Travel travel;

    "Daten löschen
    DELETE FROM zcr2023_request.
    DELETE FROM zcr2023_claim.
    DELETE FROM zcr2023_worker.
    DELETE FROM zcr2023_rqst_d.
    DELETE FROM zcr2023_claim_d.
    DELETE FROM zcr2023_wrk_d.

    "Worker 1
    " Daten erstellen
    worker-worker_nr = '1'.
    worker-forename = 'Hans'.
    worker-surname = 'Maier'.
    worker-client = sy-mandt.
    worker-begin_date = '20000501'.
    worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    worker-created_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-created_at.
    worker-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-last_changed_at.

    APPEND worker TO workers. "travels.add(travel)

    "Daten erstellen
    request-applicant = worker-worker_uuid.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20220701'.
    request-enddate = '20220710'.
    request-comment1 = 'Sommerurlaub'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.

*    hier iwan die createdby etc.

    APPEND request TO requests.

    request-applicant = worker-worker_uuid.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20221227'.
    request-enddate = '20221230'.
    request-comment1 = 'Weihnachtsurlaub'.
    request-status = 'A'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    request-applicant = worker-worker_uuid.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20221228'.
    request-enddate = '20221230'.
    request-comment1 = 'Weihnachtsurlaub (2. Versuch)'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.
    " aktualisieren

    APPEND request TO requests.


    request-applicant = worker-worker_uuid.
    request-approve = '2'.
    request-client = sy-mandt.
    request-comment1 = ' '.
    request-startdate = '20230527'.
    request-enddate = '20230614'.
    request-status = 'G'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.

    request-applicant = worker-worker_uuid.
    request-approve = '2'.
    request-client = sy-mandt.
    request-startdate = '20231220'.
    request-enddate = '20231231'.
    request-comment1 = 'Winterurlaub'.
    request-status = 'B'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.
    "Daten erstellen
    claim-worker_uuid = worker-worker_uuid.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    claim-created_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.

    "Daten erstellen
    claim-worker_uuid = worker-worker_uuid.
    claim-year1 = '2022'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    claim-created_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.

    "Worker 2
    " Daten erstellen
    worker-worker_nr = '2'.
    worker-forename = 'Lisa'.
    worker-surname = 'Müller'.
    worker-client = sy-mandt.
    worker-begin_date = '20100701'.
    worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    worker-created_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-created_at.
    worker-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-last_changed_at.

    APPEND worker TO workers. "travels.add(travel)

    claim-worker_uuid = worker-worker_uuid.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '30'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    claim-created_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.

    "Worker 3
    " Daten erstellen
    worker-worker_nr = '3'.
    worker-forename = 'Petra'.
    worker-surname = 'Schmid'.
    worker-client = sy-mandt.
    worker-begin_date = '20221001'.
    worker-worker_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    worker-created_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-created_at.
    worker-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD worker-last_changed_at.

    APPEND worker TO workers. "travels.add(travel)

    "Daten erstellen
    request-applicant = worker-worker_uuid.
    request-approve = '1'.
    request-client = sy-mandt.
    request-startdate = '20231227'.
    request-enddate = '20231231'.
    request-comment1 = 'Weihnachtsurlaub'.
    request-status = 'B'.
    request-request_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    request-created_by = 'GENERATOR'.
    get TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.

    "Daten erstellen
    claim-worker_uuid = worker-worker_uuid.
    claim-year1 = '2023'.
    claim-client = sy-mandt.
    claim-vacations = '7'.
    claim-claim_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    claim-created_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    get TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.

    "Daten hinzufügen
    INSERT zcr2023_worker FROM TABLE @workers.
    INSERT zcr2023_request FROM TABLE @requests.
    INSERT zcr2023_claim FROM TABLE @claims.


  ENDMETHOD.
ENDCLASS.
