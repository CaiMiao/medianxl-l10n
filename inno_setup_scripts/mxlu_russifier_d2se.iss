[Setup]
AppName=����������� Median XL Ultimative (D2SE)
AppVersion=XVc
VersionInfoVersion=1.0.0.0
DefaultDirName={reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}\MODS\Median XL - Ultimative
DefaultGroupName=����������� Median XL Ultimative (D2SE)
Compression=lzma2/ultra64
SolidCompression=yes
OutputDir=D:\MXLU_Russifier    
OutputBaseFilename=mxlu_russifier_d2se

[Types]
Name: "full"; Description: "������"
Name: "custom"; Description: "����������"; Flags: iscustom

[Components]
Name: "program"; Description: "����� �����������"; Types: full custom; Flags: fixed
Name: "plugy"; Description: "PlugY.dll (������ ��� 10� ������ PlugY)"; Types: full      
Name: "d2win"; Description: "D2Win.dll (������ ��� 1.13c �����)"; Types: full  

[Files]
Source: "D2Win.dll"; DestDir: "{app}\Language_RUS"; Components: d2win
Source: "RUS.mpq"; DestDir: "{app}\Language_RUS"; Components: program
Source: "PlugY.dll"; DestDir: "{app}\Language_RUS"; Components: plugy

[Languages]
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"

[INI]
Filename: "{app}\D2SE_SETUP.ini"; Section: "USERSETTINGS"; Key:Language; String: "RUS"

[Run]
Filename: "{app}\..\..\D2SE.exe"; Flags: postinstall unchecked nowait; Description: "��������� D2SE"