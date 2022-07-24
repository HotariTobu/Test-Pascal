program kadai06x;
var
    i: integer;
    {
        j: integer;
    }
    fs: array[0..100] of int32;
begin
    fs[0] := 0;
    fs[1] := 1;

    i := 1;
    repeat
        i := i + 1;
        fs[i] := fs[i - 1] + fs[i - 2];
    until (fs[i] < 0);

    {
        for j := 0 to i do
            write(fs[j], ' ');
    }

    writeln(i, '番目のフィボナッチ数が初めて負の数となりました');
    write('何番目？ ');
    readln(i);
    writeln('f[', i, '] = ', fs[i]);
end.