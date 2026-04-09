CLASS zclps0120_data_declaration DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclps0120_data_declaration IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    " Declare Variables
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " DATA <variable_name> TYPE <type> [VALUE <starting_value>].

    " Built-In Types
    " https://help.sap.com/doc/abapdocu_cp_index_htm/CLOUD/en-US/ABENBUILT_IN_TYPES.html
    """""""""""""""""""""""""""""""""""

    " Character-Like Types
    DATA char_variable1     TYPE c          VALUE 'Hallo'. " Value is too long
    DATA char_variable2     TYPE c LENGTH 5 VALUE 'Hallo'.
    DATA string_variable1   TYPE string.

    " Numeric Types
    DATA integer_variable1 TYPE i VALUE 1.
    DATA integer_variable2 TYPE i VALUE -1.


    out->write( char_variable1 ).       "H
    out->write( char_variable2 ).       "Hallo
    out->write( integer_variable1 ).    "1
    out->write( integer_variable2 ).    "-1

    " Local Type with TYPES
    """""""""""""""""""""""""""""""""""

    TYPES local_char_type TYPE c LENGTH 5.

    DATA char_variable3 TYPE local_char_type VALUE 'Ciao!'.

    out->write( char_variable3 ). "Ciao!

    " Global Types from ABAP Dictionary
    """""""""""""""""""""""""""""""""""

    DATA char_variable4 TYPE /dmo/agency_name VALUE 'Agency_Name'.

    out->write( char_variable4 ). " Agency_Name

    " Declare Constants
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " CONSTANTS <constant_name> TYPE <type> VALUE <starting_value>.
    " - VALUE addition is mandatory for constants
    " - Write access to a constant leads to syntax error.

    CONSTANTS char_constant1 TYPE c LENGTH 5 VALUE 'Hallo'.

    " Resetting Variables with CLEAR
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    CLEAR char_variable1. " Resets variable to its type-specific initial value

    " Inline Declaration
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    DATA(string_variable)   = `Hallo du!`.
    DATA(char_variable)     = 'Ciao!'.     " variable becomes c LENGTH 5
    DATA(integer_vairable)  = 1 + 4.


  ENDMETHOD.
ENDCLASS.
