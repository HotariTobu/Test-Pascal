uses 
  Variants;
var
  v: Variant;
  s: string;
  i: integer;

procedure ProcessVariant(v : Variant);
begin

 // Example of how to determine the contents of a Variant type:
 Case varType(v) of
    varEmpty:
        Writeln('Empty');
    varNull:
        Writeln('Null');
    varSingle:
        Writeln('Datatype: Single');
    varDouble:
        Writeln('Datatype: Double');
    varDecimal:
        Writeln('Datatype: Decimal');
    varCurrency:
        Writeln('Datatype: Currency');
    varDate:
        Writeln('Datatype: Date');
    varOleStr:
        Writeln('Datatype: UnicodeString');
    varStrArg:
        Writeln('Datatype: COM-compatible string');
    varString:
        Writeln('Datatype: Pointer to a dynamic string');
    varDispatch:
        Writeln('Datatype: Pointer to an Automation object');
    varBoolean:
        Writeln('Datatype: Wordbool');
    varVariant:
        Writeln('Datatype: Variant');
    varUnknown:
        Writeln('Datatype: unknown');
    varShortInt:
        Writeln('Datatype: ShortInt');
    varSmallint:
        Writeln('Datatype: Smallint');
    varInteger:
        Writeln('Datatype: Integer');
    varInt64:
        Writeln('Datatype: Int64');
    varByte:
        Writeln('Datatype: Byte');
    varWord:
        Writeln('Datatype: Word');
    varLongWord:
        Writeln('Datatype: LongWord');
    varQWord:
        Writeln('Datatype: QWord');
    varError:
        Writeln('ERROR determining variant type');
 else
   Writeln('Unable to determine variant type');
 end;
end;

begin

  // Example 1:
  // Value assignment:
  v := 1;

  //Examples of permissible type assignments, auditions / conversions of data type:

  //Explicit data type conversions:
  s := VarToStr(v);
  Writeln('s:',s);
  s := AnsiString(v);
  Writeln('s:',s);
  i := Integer(v);
  Writeln('i:',i);
  //Implicit data type conversion:
  i := v;
  Writeln('i:',i);

  ProcessVariant(10);
  ProcessVariant(True);
  ProcessVariant('Pascal');
  ProcessVariant(10.244);

end.