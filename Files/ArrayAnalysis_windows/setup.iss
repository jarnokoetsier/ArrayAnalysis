#define MyAppName "ArrayAnalysis"
#define MyAppVersion "0.1.2"
#define MyAppPublisher "Maastricht University"
#define MyAppURL "https://arrayanalysis.org"
#define MyAppExeName "ArrayAnalysis.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId=ff771ea8-634e-4cf7-a60b-04d49c20dc24
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={localappdata}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
PrivilegesRequired=lowest
OutputBaseFilename=ArrayAnalysis
OutputDir=.
Compression=lzma
SolidCompression=yes
SetupIconFile=ArrayAnalysis.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "*"; DestDir: "{app}"; Excludes: "ArrayAnalysis.exe, setup.iss, .git*"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\ArrayAnalysis.ico"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon; IconFilename: "{app}\ArrayAnalysis.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: shellexec postinstall nowait skipifsilent
