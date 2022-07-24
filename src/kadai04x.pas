program kadai04x;
var
    i, score, count, sum, max: integer;
begin
    count := 0;
    sum := 0;
    max := 0;

    for i := 1 to 10 do begin
        write(i, '人目 ');
        readln(score);

        if score >= 60 then begin
            count := count + 1;
            sum := sum + score;
        end;

        if score > max then max := score;
    end;

    writeln('合格者は', count, '人です');
    if count > 0 then writeln('合格者の平均点は', sum / 10, '点です');
    writeln('受験者の最高点は', max, '点です');
end.