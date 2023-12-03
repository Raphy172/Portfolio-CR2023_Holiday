CLASS lhc_request DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Request RESULT result.
    METHODS cancelrequest FOR MODIFY
      IMPORTING keys FOR ACTION request~cancelrequest RESULT result.

ENDCLASS.

CLASS lhc_request IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD CancelRequest.

  data message TYPE REF TO zcm_cr2023_request.

  "Read Travels
  READ ENTITY IN LOCAL MODE ZR_CR2023_REQUEST
    FIELDS ( Status Comment1 )
    WITH CORRESPONDING #( keys )
    result data(requests).

  "Process Travels /for (Travel travel : travels) {...}
  LOOP AT requests REFERENCE INTO data(request).

  "Validate Status and Create Error Message
  if request->Status = 'X'.
  message = new zcm_cr2023_request(
  textid = zcm_cr2023_request=>request_alreadycancelled
  severity = if_abap_behv_message=>severity-error
  "previous =
  comment1 = request->Comment1
  ). "TravelMessage = new TravelMessage(1, "E", null, travel.description());
  append value #( %tky = request->%tky %msg = message ) to reported-request.
    append value #( %tky = request->%tky ) to failed-request.

    delete requests index sy-tabix.
    CONTINUE.
  endif.

  "Set Status on Cancelled and Create Success Message
    request->Status = 'X'.
  message = new zcm_cr2023_request(
  textid = zcm_cr2023_request=>request_cancelled_succesfully
  severity = if_abap_behv_message=>severity-success
  comment1 = request->Comment1
  ).
  append value #( %tky = request->%tky %msg = message ) to reported-request.

   ENDLOOP.

  "Modify Travels
  MODIFY ENTITY IN LOCAL MODE ZR_CR2023_Request
  UPDATE FIELDS ( Status )
  WITH VALUE #( FOR t IN requests ( %tky = t-%tky Status = t-Status ) ).

  "Set Result
  result = value #( FOR t IN requests ( %tky = t-%tky %param = t ) ).
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Worker DEFINITION INHERITING FROM cl_abap_behavior_handler.
 PRIVATE SECTION.

  METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
     IMPORTING keys REQUEST requested_authorizations FOR Worker RESULT result.

ENDCLASS.

CLASS lhc_Worker IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
