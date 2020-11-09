CLASS zcl_rap_eml_darro2017 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_darro2017 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    " step 1 - READ
    "   READ ENTITIES OF ZI_RAP1_Travel_Darro2017
    "   ENTITY Travel
    "   FROM VALUE #( ( TravelUUID = 'A20710D08BB6924D170009027659A94B' ) )
    "  RESULT DATA(travels).

    "  out->write( travels ).

*    READ ENTITIES OF ZI_RAP1_Travel_Darro2017
*    ENTITY Travel
*    FIELDS ( AgencyID CustomerID )
*    WITH VALUE #( ( TravelUUID = 'A20710D08BB6924D170009027659A94B' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    READ ENTITIES OF ZI_RAP1_Travel_Darro2017
*    ENTITY Travel
*     ALL FIELDS WITH VALUE #( ( TravelUUID = 'A20710D08BB6924D170009027659A94B' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    READ ENTITIES OF ZI_RAP1_Travel_Darro2017
*    ENTITY Travel BY \_Booking
*     ALL FIELDS WITH VALUE #( ( TravelUUID = 'A20710D08BB6924D170009027659A94B' ) )
*    RESULT DATA(bookingsa).
*
*    out->write( bookingsa ).

*    READ ENTITIES OF ZI_RAP1_Travel_Darro2017
*    ENTITY Travel
*    ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*    RESULT DATA(travels)
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed  ).
*    out->write( reported ).

    " step 6 - MODIFY Update
*     MODIFY ENTITIES OF ZI_RAP1_Travel_Darro2017
*       ENTITY travel
*         UPDATE
*           SET FIELDS WITH VALUE
*             #( ( TravelUUID  = 'A20710D08BB6924D170009027659A94B'
*                  Description = 'I like RAP@openSAP' ) )
*
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*     out->write( 'Update done' ).
*
*      " step 6b - Commit Entities
*     COMMIT ENTITIES
*       RESPONSE OF ZI_RAP1_Travel_Darro2017
*       FAILED     DATA(failed_commit)
*       REPORTED   DATA(reported_commit).

    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP1_Travel_Darro2017
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'I like RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP1_Travel_Darro2017
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Create done' ).
  " step 8 - MODIFY Delete
    MODIFY ENTITIES OF ZI_RAP1_Travel_Darro2017
      ENTITY travel
        DELETE FROM
          VALUE
            #( ( TravelUUID  = '026D2669A5C21EEB87BCB4B74B49789E' ) )

     FAILED DATA(failed)
     REPORTED DATA(reported).

    COMMIT ENTITIES
      RESPONSE OF ZI_RAP1_Travel_Darro2017
      FAILED     DATA(failed_commit)
      REPORTED   DATA(reported_commit).

    out->write( 'Delete done' ).

  ENDMETHOD.

ENDCLASS.
