/* customer_tt.i
*/

&IF DEFINED(TTNAME) = 0 &THEN
  &GLOBAL-DEFINE TTNAME ttCustomer
&ENDIF

DEFINE TEMP-TABLE {&TTNAME} NO-UNDO
  LIKE Customer
  FIELD RowNum AS INTEGER   
  .
