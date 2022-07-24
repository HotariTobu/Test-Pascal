program gotoTest;
label
    100, 200, 300;
var
    v: integer;
begin
    v := 0;

    goto 200;
  
    100: write('a');
        if v > 2 then
            goto 300;

    200: write('b');
        v += 1;
        goto 100;

    300: write('c');
        if v < 4 then
            goto 200;
end.