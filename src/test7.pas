program test7;
{$mode objfpc}{$H+}
 
Uses
sysutils, strutils;
 
Var
   sTest:String='<>';
   arrFix:Array[0..1] Of Char;
   arrDyn:Array Of Char;
   sFix:String;
   sDyn:String;
   sPasFix:String;
   sPasDyn:String;
begin
     //Test 1
     arrFix[0]:='<';
     arrFix[1]:='>';
     sFix:=String(arrFix);
     Writeln('sFix: ', sFix, ' - Length: ', Length(sFix));
     //Success!
     If sFix=sTest Then writeln('Success!') Else writeln('Failed!');
 
     //Test 2
     SetLength(arrDyn,Length(sTest));
     arrDyn[0]:='<';
     arrDyn[1]:='>';
     sDyn:=String(arrDyn);
     Writeln('sDyn: ', sDyn, ' - Length: ', Length(sDyn));
     //Failes!
     If sDyn=sTest Then writeln('Success!') Else writeln('Failed!');
 
     //Test 3
     sPasFix:=StrPas(@arrFix[0]);
     Writeln('sPasFix: ', sPasFix, ' - Length: ', Length(sPasFix));
     //Success!
     If sPasFix=sTest Then writeln('Success!') Else writeln('Failed!');
 
     //Test 4
     sPasDyn:=StrPas(@arrDyn[0]);
     //SetLength(sPasDyn,High(arrDyn)+1); //Uncommenting this Line leads to Success
     Writeln('sPasDyn: ', sPasDyn, ' - Length: ', Length(sPasDyn));
     //Failes!
     If sPasDyn=sTest Then writeln('Success!') Else writeln('Failed!');
 
     //Test 5
     SetLength(sPasDyn,High(arrDyn)+1);
     StrCopy(PChar(sPasDyn),@arrDyn[0]);
     Writeln('sPasDyn: ', sPasDyn, ' - Length: ', Length(sPasDyn));
     //Success!
     If sPasDyn=sTest Then writeln('Success!') Else writeln('Failed!');
 
     //Test 6
     SetLength(sPasDyn,High(arrDyn)+1);
     Move(arrDyn[0],sPasDyn[1],High(arrDyn)+1);
     Writeln('sPasDyn: ', sPasDyn, ' - Length: ', Length(sPasDyn));
     //Success!
     If sPasDyn=sTest Then writeln('Success!') Else writeln('Failed!');
 
end.