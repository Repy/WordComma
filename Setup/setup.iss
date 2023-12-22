#define MyAppName "WordComma"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Repy"
#define MyAppURL "https://github.com/Repy/WordComma/"

[Setup]
AppId={{F2FFA6B1-E314-48C4-8914-62C17B789FFF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={localappdata}\Repy\{#MyAppName}
DisableDirPage=yes
DefaultGroupName=a
DisableProgramGroupPage=yes
LicenseFile=..\LICENSE.txt
PrivilegesRequired=lowest
OutputDir=..
OutputBaseFilename=WordCommaSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Files]
Source: "..\WordComma\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Office\Word\Addins\Repy.WordComma"; Flags: uninsdeletekey; ValueType: string; ValueName: "Manifest"; ValueData: "{app}\WordComma.vsto|vstolocal"
Root: HKCU; Subkey: "Software\Microsoft\Office\Word\Addins\Repy.WordComma"; Flags: uninsdeletekey; ValueType: string; ValueName: "Description"; ValueData: "WordComma"
Root: HKCU; Subkey: "Software\Microsoft\Office\Word\Addins\Repy.WordComma"; Flags: uninsdeletekey; ValueType: string; ValueName: "FriendlyName"; ValueData: "WordComma"
Root: HKCU; Subkey: "Software\Microsoft\Office\Word\Addins\Repy.WordComma"; Flags: uninsdeletekey; ValueType: dword; ValueName: "LoadBehavior"; ValueData: 3
