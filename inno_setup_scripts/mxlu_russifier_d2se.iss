﻿[Setup]
AppName=Русификатор Median XL Ultimative (D2SE)
AppVersion=XVc
AppPublisher=kambala & Zelgadiss
AppReadmeFile=http://worldofplayers.ru/threads/32519/
VersionInfoVersion=1.0.0.0
DefaultDirName={reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}\MODS\Median XL - Ultimative
DefaultGroupName=Русификатор Median XL Ultimative (D2SE)
Compression=lzma2/ultra64
SolidCompression=yes
LZMAUseSeparateProcess=yes
OutputDir=.  
OutputBaseFilename=mxlu_russifier_d2se

[Types]
Name: "full"; Description: "Полная"
Name: "custom"; Description: "Выборочная"; Flags: iscustom

[Components]
Name: "program"; Description: "Файлы русификации"; Types: full custom; Flags: fixed
Name: "plugy"; Description: "PlugY.dll (только для 10-й версии PlugY)"; Types: full; Flags: replacesameversion              
Name: "d2win"; Description: "D2Win.dll (только для 1.13c патча)"; Types: full; BeforeInstall: BackupD2WinDll  

[Files]
Source: "D2Win.dll"; DestDir: "{app}\Language_RUS"; Components: d2win
Source: "RUS.mpq"; DestDir: "{app}\Language_RUS"; Components: program
Source: "PlugY.dll"; DestDir: "{app}\Language_RUS"; Components: plugy

[Languages]
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"

[INI]
Filename: "{app}\D2SE_SETUP.ini"; Section: "USERSETTINGS"; Key:Language; String: "RUS"

[Run]
Filename: "{app}\..\..\D2SE.exe"; Flags: postinstall unchecked nowait; Description: "Запустить D2SE"

[Code] 
procedure BackupD2WinDll;
begin
  RenameFile(ExpandConstant('{app}\Language_RUS\D2Win.dll'), ExpandConstant('{app}\Language_RUS\D2Win.dll.bak'))
end;