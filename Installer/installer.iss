; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "pGina"
#define MyAppVersion "3.0"
#define MyAppPublisher "pGina Team"
#define MyAppURL "http://www.pgina.org/"
#define MyAppExeName "pGina.Configuration.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppID={{3D8D0F0D-7DBF-400C-9C44-00BD21986138}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=true
LicenseFile=C:\Code\pgina\LICENSE
OutputBaseFilename=pGinaSetup
SetupIconFile=C:\Code\pgina\Installer\pgina.ico
Compression=lzma/Max
SolidCompression=true
AppCopyright=pGina Team
AppVerName=pGina v3.0.0
ExtraDiskSpaceRequired=2

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Code\pgina\pGina\src\bin\pGina.Configuration.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Code\pgina\pGina\src\bin\*.exe"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Code\pgina\pGina\src\bin\*.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Code\pgina\pGina\src\bin\*.xml"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Code\pgina\pGina\src\bin\*.config"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "C:\Code\pgina\Plugins\bin\*.exe"; DestDir: "{app}\Plugins"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Code\pgina\Plugins\bin\*.dll"; DestDir: "{app}\Plugins"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "C:\Code\pgina\Plugins\bin\*.xml"; DestDir: "{app}\Plugins"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "C:\Code\pgina\Plugins\bin\*.config"; DestDir: "{app}\Plugins"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\pGina.Service.ServiceHost.exe"; Parameters: "--install"
Filename: "{app}\pGina.Service.ServiceHost.exe"; Parameters: "--start"
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

[UninstallRun]
Filename: "{app}\pGina.Service.ServiceHost.exe"; Parameters: "--uninstall"
Filename: "{app}\pGina.Service.ServiceHost.exe"; Parameters: "--stop"
