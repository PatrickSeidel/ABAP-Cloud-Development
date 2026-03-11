CLASS zclps_abap_comments DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclps_abap_comments IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* 1a. Comment full lines ( Add comment -> Ctrl + > | Revome comment -> Ctrl + >| )

* 1b. Toggle full line ( Ctrl + 7 )

 "2. Comment everything right of "

  ENDMETHOD.
ENDCLASS.
