CLASS zcl_rap_eml_hsic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_hsic IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "Step 1 - READ
*    READ ENTITIES OF ZI_RAP_Travel_hsic
*          ENTITY travel
*            FROM VALUE #( ( TravelUUID = '917A52474CB35DDD1700A4FADF41BA5D' ) )
*          RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 2 - READ with Fields
*    READ ENTITIES OF ZI_RAP_Travel_hsic
*      ENTITY travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUUID = '917A52474CB35DDD1700A4FADF41BA5D' ) )
*     RESULT DATA(travels).
*
*    out->write( travels ).

*   " step 3 - READ with All Fields
*    READ ENTITIES OF ZI_RAP_Travel_hsic
*      ENTITY travel
*        ALL FIELDS
*      WITH VALUE #( ( TravelUUID = '917A52474CB35DDD1700A4FADF41BA5D' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

    " step 4 - READ By Association
*    READ ENTITIES OF ZI_RAP_Travel_hsic
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '917A52474CB35DDD1700A4FADF41BA5D' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

*    " step 5 - Unsuccessful READ
    READ ENTITIES OF ZI_RAP_Travel_hsic
      ENTITY travel
        ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
      RESULT DATA(travels)
      FAILED DATA(failed)
      REPORTED DATA(reported).

    out->write( travels ).
    out->write( failed ).    " complex structures not supported by the console output
    out->write( reported ).  " complex structures not supported by the console output

  ENDMETHOD.

ENDCLASS.
