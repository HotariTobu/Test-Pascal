program kadai04a;
var
	month, days: integer;
begin
	write('何月ですか ');
	readln(month);
	
	case month of
		1, 3, 5, 7, 8, 10, 12: days := 31;
		2: days := 28;
		4, 6, 9, 11: days := 30;
	end;
	
	writeln(month, '月は', days, '日まで');
end.

program kadai04b;
var
	uni, source: integer;
begin
	write('変換元の単位を指定（年は1、秒は2） ');
	readln(uni);
	write('正整数を入力してください ');
	readln(source);
	
	if uni = 1 then writeln(source, '年は', source * 365, '日です')
	else if uni = 2 then writeln(source, '秒は', source / 86400, '日です');
end.
