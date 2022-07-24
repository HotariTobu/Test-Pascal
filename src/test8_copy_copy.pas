program TestDlg;
 
{$IFDEF FPC}
  {$MODE OBJFPC}{$H+}
{$ENDIF}
{$APPTYPE CONSOLE}
 
uses
  Windows {$IFNDEF FPC}, CommDlg{$ENDIF},
  Classes, Sysutils;

type
  {$EXTERNALSYM tagOFNW}
  tagOFNW = record
    lStructSize: DWORD;
    hWndOwner: HWND;
    hInstance: HINST;
    lpstrFilter: LPCWSTR;
    lpstrCustomFilter: LPWSTR;
    nMaxCustFilter: DWORD;
    nFilterIndex: DWORD;
    lpstrFile: LPWSTR;
    nMaxFile: DWORD;
    lpstrFileTitle: LPWSTR;
    nMaxFileTitle: DWORD;
    lpstrInitialDir: LPCWSTR;
    lpstrTitle: LPCWSTR;
    Flags: DWORD;
    nFileOffset: Word;
    nFileExtension: Word;
    lpstrDefExt: LPCWSTR;
    lCustData: LPARAM;
    lpfnHook: function(Wnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): UINT_PTR stdcall;
    lpTemplateName: LPCWSTR;
    pvReserved: Pointer;
    dwReserved: DWORD;
    FlagsEx: DWORD;
  end;
  {$EXTERNALSYM tagOFN}
  tagOFN = tagOFNW;
  TOpenFilenameW = tagOFNW;
  TOpenFilename = TOpenFilenameW;
 
{$IFDEF FPC}
function  GetOpenFileName(var OpenFile: TOpenFilenameW): Bool; stdcall; external 'comdlg32.dll' name 'GetOpenFileNameW';     // WideVersion
{$ENDIF}
 
function  AskForFile(const WinHandle: THandle; const FileFilters: string; var FileName: string): Boolean; forward;
function  AFF_OFSize(const CurSize: integer): integer; forward;
 
function  AskForFile(const WinHandle: THandle; const FileFilters: string; var FileName: string): Boolean;
var FileToProcess: TOpenFileNameW;
var CFileName: array [0..Pred(MAX_PATH+10)] of WideChar;
var CFileNameOnly: array [0..Pred(MAX_PATH+10)] of WideChar;
begin
  FillChar(FileToProcess, SizeOf(FileToProcess), 0);
  FillChar(CFileName, SizeOf(CFileName), 0);
  FillChar(CFileNameOnly, SizeOf(CFileNameOnly), 0);
  //
  FileToProcess.lStructSize := AFF_OFSize(SizeOf(FileToProcess));
  FileToProcess.hWndOwner := WinHandle;
  FileToProcess.hInstance := HInstance;
  FileToProcess.lpstrFilter := PWideChar(FileFilters);
  FileToProcess.nFilterIndex := 1;            // First filter is current filter by default
  FileToProcess.lpstrFile := CFileName;
  FileToProcess.nMaxFile := Pred(Length(CFileName));
  FileToProcess.lpstrFileTitle := CFileNameOnly;
  FileToProcess.nMaxFileTitle := Pred(Length(CFileNameOnly));
  FileToProcess.lpstrInitialDir := '.\';      // Current directory by default
  FileToProcess.Flags := OFN_PATHMUSTEXIST or OFN_FILEMUSTEXIST or OFN_HIDEREADONLY ;
  //
  FileName := '';
  result := GetOpenFileName(FileToProcess);
  if result then
    FileName := widestring(CFileName);
end;
// Size of OPENFILENAME Structure Different with Versions of Windows
//   (76 Bytes for Windows 95/98/NT/ME - 88 Bytes for Windows 2000/XP/...)
function  AFF_OFSize(const CurSize: integer): integer;
const WIN_2000      = 5;
const OLDWIN_OFSSIZE  = 76;
var OSVersion: TOSVersionInfo;
begin
  result := CurSize;
  OSVersion.dwOSVersionInfoSize := SizeOf(OSVersion);
  if GetVersionEx(OSVersion) then
    if (OSVersion.dwPlatformId<VER_PLATFORM_WIN32_NT) or (OSVersion.dwMajorVersion<WIN_2000) then
      result := OLDWIN_OFSSIZE;
end;
 
var FileName: string;
const FILE_FILTERS: string = 'Text Files (*.txt)' + #00 + '*.txt'+ #00 + 'All Files (*.*)' + #00 + '*.*' + #00 + #00;
 
begin
  if  not AskForFile(0, FILE_FILTERS, FileName) then
    WriteLn('No file selected.')
  else begin
    WriteLn('File selected: ' + FileName);
    TFileStream.Create(FileName, fmOpenRead).Free;
  end;
end.
 