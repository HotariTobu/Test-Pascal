program kadai03c;
var
	ax, ay, bx, by: real;
	disX, disY: real;
begin
	write('ax = ');
	readln(ax);
	write('ay = ');
	readln(ay);
	write('bx = ');
	readln(bx);
	write('by = ');
	readln(by);
	
	disX := ax - bx;
	disY := ay - by;
	
	write('距離は', sqrt(disX * disX + disY * disY));
	writeln('です');
end.
