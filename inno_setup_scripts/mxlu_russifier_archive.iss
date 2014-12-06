[Setup]
AppName=����������� Median XL Ultimative
AppVersion=XVc
VersionInfoVersion=1.0.0.0
DefaultDirName={reg:HKCU\Software\Blizzard Entertainment\Diablo II,InstallPath|{pf}\Diablo II}
DefaultGroupName=����������� Median XL Ultimative
Compression=lzma2/ultra64
SolidCompression=yes
OutputDir=D:\MXLU_Russifier   
OutputBaseFilename=mxlu_russifier_archive

[Types]
Name: "full"; Description: "������"
Name: "custom"; Description: "����������"; Flags: iscustom

[Components]
Name: "program"; Description: "����� �����������"; Types: full custom; Flags: fixed
Name: "plugy"; Description: "PlugY.dll (������ ��� 10� ������ PlugY)"; Types: full      

[Files]
Source: "D2Win.dll"; DestDir: "{app}"; Components: program
Source: "files\*"; DestDir: "{app}\Mod PlugY"; Components: program; Flags: recursesubdirs; Check: MyDirCheck(ExpandConstant('{app}\Mod PlugY')); BeforeInstall: DeleteGemsBinAndLevelsBin(ExpandConstant('{app}\Mod PlugY'))
Source: "files\*"; DestDir: "{app}\ModPlugY"; Components: program; Flags: recursesubdirs; Check: MyDirCheck(ExpandConstant('{app}\ModPlugY')); BeforeInstall: DeleteGemsBinAndLevelsBin(ExpandConstant('{app}\ModPlugY'))
Source: "PlugY.dll"; DestDir: "{app}"; Components: plugy
Source: "mxlrus.bat"; DestDir: "{app}"; Components: program
Source: "mxlrus_plugy.bat"; DestDir: "{app}"; Components: program
Source: "mxlrus_plugy.bat"; DestDir: "{app}\Mod PlugY"; Components: program; Check: MyDirCheck(ExpandConstant('{app}\Mod PlugY'))
Source: "mxlrus_plugy.bat"; DestDir: "{app}\ModPlugY"; Components: program; Check: MyDirCheck(ExpandConstant('{app}\ModPlugY'))

[Languages]
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"

[Code]
function MyDirCheck(DirName: String): Boolean;
begin
  Result := DirExists(DirName);
end;

procedure DeleteGemsBinAndLevelsBin (DirName: String);
begin
  DeleteFile(DirName + '\data\global\excel\levels.bin')
  DeleteFile(DirName + '\data\global\excel\gems.bin')
end; 

[Run]  
Filename: "{app}\mxlrus_plugy.bat"; Description: "��������� ���� � PlugY"; Flags: postinstall shellexec 
Filename: "{app}\mxlrus.bat"; Description: "��������� ���� ��� PlugY"; Flags: postinstall shellexec unchecked