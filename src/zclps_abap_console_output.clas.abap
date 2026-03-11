CLASS zclps_abap_console_output DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCLPS_ABAP_CONSOLE_OUTPUT IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    " 1. Implement interface IF_OO_ADT_CLASSRUN
    " 2. Use out->write to print
    " 3. Execute F9 or run as ABAP Application (Console) to see output in console view

    out->write( 'Hello World' ).

    SELECT * FROM /dmo/flight INTO TABLE @DATA(flights) UP TO 10 ROWS.

    out->write(
      EXPORTING
        data   = flights
        name   = 'Flights:'
*      RECEIVING
*        output =
    ).

  ENDMETHOD.
ENDCLASS.
