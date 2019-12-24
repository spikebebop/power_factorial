MODULE power;
IMPORT Out;

PROCEDURE power(i, j: INTEGER): INTEGER;

VAR 
  result: INTEGER;

BEGIN
  IF i=0 THEN
    RETURN 0;
  ELSE
    IF j = 0 THEN
       RETURN 1;
    END;
  END;
  result :=1;
  REPEAT
    result := result *i;
    DEC(j);
  UNTIL j=0;
  RETURN result;
END power;

PROCEDURE fact(n: INTEGER): INTEGER;

BEGIN
  IF (n = 0) OR (n=1) THEN
     RETURN 1
     END;
  RETURN n * fact(n-1);
END fact;

BEGIN

  Out.Int(power(0,0), 0); Out.Ln;
  Out.Int(power(0,5), 0); Out.Ln;
  Out.Int(power(5,0), 0); Out.Ln;
  Out.Int(power(5,3), 0); Out.Ln;
  Out.Int(fact(5), 0); Out.Ln; 

END power.
