MODULE Kooltalk;

(* (k) drt@ailis.de *)

IMPORT IO, Text;


TYPE
alpha = ARRAY ['a'..'z'] OF TEXT;

CONST
  koolset = ARRAY [0..2] OF alpha {alpha{"a", "b", "c", "d", "e",
                                         "f", "g", "h", "i", "j",
                                         "k", "l", "m", "n", "o",
                                         "p", "q", "r", "s", "t",
                                         "u", "v", "w", "x", "y",
                                         "z"},
                                   alpha{"@", "|3", "(", "c|", "3",
                                         "/=", "9", "#", "1", "_/",
                                         "|<", "|_", "|\\/|", "|\\|", "0",
                                         "/>", "(,)", "/~", "5", "+",
                                         "(_)", "\\/", "|/\\|", "><", "`/",
                                         "2"},
                                   alpha{"a", "b", "[", "|)", "[-",
                                         "ph", "g", "|-|", "!", "j",
                                         "k", "/_", "m", "/v", "()",
                                         "p", "q", "/^", "$", "~|~",
                                         "|_|", "v", "\\/\\/", "x", "v/",
                                         "~/_"}};

VAR

str: TEXT;
c: CHAR;
i: CARDINAL;
  
PROCEDURE KoolIt () =
  BEGIN

    str := "Test Text - Fnord!";

    FOR i := 0 TO Text.Length(str) - 1 DO
        c := Text.GetChar(str, i);

        (* This is a very nasty way to do lowercase conversation
           - it just works with ASCII *)
        IF (c >= 'A') AND (c <= 'Z') THEN  
          c := VAL(ORD(c) + 32, CHAR);
        END;

        IF (c >= 'a') AND (c <= 'z') THEN  
          IO.Put(koolset[4,c]);
        ELSE
          IO.Put(Text.FromChar(c));
        END;
      END;

    IO.Put("\n");

  END KoolIt;
BEGIN
END Kooltalk.
