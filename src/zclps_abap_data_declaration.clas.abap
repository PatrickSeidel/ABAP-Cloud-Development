CLASS zclps_abap_data_declaration DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclps_abap_data_declaration IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    " Declare Data Objects
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " Built-In Types
    " https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/ABENBUILT_IN_TYPES.html
    """""""""""""""""""""""""""""""""""

    " DATA <variable_name> TYPE <type> [VALUE <starting_value>].

    " Character-Like Types
    DATA char_variable1     TYPE c          VALUE 'Hallo'. " Value is too long
    DATA char_variable2     TYPE c LENGTH 5 VALUE 'Hallo'.
    DATA string_variable1   TYPE string.

    " Numeric Types
    Data integer_variable1 Type i value 1.
    Data integer_variable2 Type i value -1.


    out->write( char_variable1 ).       "H
    out->write( char_variable2 ).       "Hallo
    out->write( integer_variable1 ).    "1
    out->write( integer_variable2 ).    "-1


  ENDMETHOD.
ENDCLASS.
