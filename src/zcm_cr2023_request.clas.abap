CLASS zcm_cr2023_request DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_abap_behv_message .
    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF request_cancelled_succesfully,
        msgid TYPE symsgid VALUE 'ZCR2023_REQUEST',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'comment1',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_cancelled_succesfully.

    CONSTANTS:
      BEGIN OF request_alreadycancelled,
        msgid TYPE symsgid VALUE 'ZCR2023_REQUEST',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'comment1',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF request_alreadycancelled.

    DATA comment1 TYPE zcr2023_comment.

    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        severity TYPE if_abap_behv_message=>t_severity
        previous LIKE previous OPTIONAL
        comment1 TYPE zcr2023_comment OPTIONAL.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcm_cr2023_request IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
    if_abap_behv_message~m_severity = severity.
    me->comment1 = comment1.
  ENDMETHOD.
   ENDCLASS.
