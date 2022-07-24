program kadai06d;
var
    i: integer;
    temp: real;
    pi, ni: integer;
    p, n: array[1..5] of real;
begin
    pi := 1;
    ni := 1;

    writeln('5つの実数値を入力');
    for i := 1 to 5 do begin
        write(i, '番目 ');
        readln(temp);

        if temp < 0 then begin
            n[ni] := temp;
            ni := ni + 1;
        end
        else if temp > 0 then begin
            p[pi] := temp;
            pi := pi + 1;
        end;
    end;

    if pi > 1 then
        pi := pi - 1;
    if ni > 1 then
        ni := ni - 1;

    write('正の数は ');
    for i := 1 to pi do
        write(p[i]:8:4, ' ');
    writeln('です');

    write('負の数は ');
    for i := ni downto 1 do
        write(n[i]:8:4, ' ');
    writeln('です');
end.