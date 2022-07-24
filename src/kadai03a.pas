program kadai03a;
var
	a, b: integer;
begin
	writeln('正整数aを入力してください');
	readln(a);
	writeln('正整数bを入力してください');
	readln(b);
	
	write(a);
	write('は', b);
	write('の約数で');
	if b mod a = 0 then writeln('ある')
	else writeln('ない');
end.
