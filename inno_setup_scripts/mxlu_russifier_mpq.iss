[Setup]
AppName=����������� Median XL Ultimative (MPQ)
AppVersion=XVc
VersionInfoVersion=1.0.0.0
DefaultDirName={reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}
DefaultGroupName=����������� Median XL Ultimative (MPQ)      
Compression=none
SolidCompression=yes
OutputDir=D:\MXLU_Russifier
OutputBaseFilename=mxlu_russifier_mpq

[Types]
Name: "full"; Description: "������"
Name: "custom"; Description: "����������"; Flags: iscustom

[Components]
Name: "program"; Description: "����� �����������"; Types: full custom; Flags: fixed
Name: "plugy"; Description: "PlugY.dll (������ ��� 10� ������ PlugY)"; Types: full   
Name: "d2win"; Description: "D2Win.dll (������ ��� 1.13c �����)"; Types: full     

[Files]
Source: "D2Win.dll"; DestDir: "{app}"; Components: d2win
Source: "{src}\patch_d2.mpq"; DestDir: "{app}"; Components: program; Flags: external
Source: "PlugY.dll"; DestDir: "{app}"; Components: plugy

[Languages]
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"
