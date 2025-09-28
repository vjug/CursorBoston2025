/* fill_customer.p
*/

DEFINE VARIABLE iRow AS INTEGER     NO-UNDO.

{customer_tt.i}  

FOR EACH Customer NO-LOCK:
  CREATE ttCustomer.
  BUFFER-COPY Customer TO ttCustomer.
  ASSIGN
    iRow                 = iRow + 1
    ttCustomer.RowNum    = iRow.
END.

/*
FOR EACH Customer NO-LOCK
   WHERE Customer.Country = "HR":U
   BY Customer.CustNum:
  CREATE ttCustomer.
  BUFFER-COPY Customer TO ttCustomer.
  ASSIGN
    iRow              = iRow + 1
    ttCustomer.RowNum = iRow.
END.
*/

/* FOR EACH ttCustomer:
  DISPLAY ttCustomer.RowNum
          ttCustomer.CustNum
          ttCustomer.Name
          ttCustomer.City
      WITH WIDTH 120.
END.*/

display iRow.

pause 5.