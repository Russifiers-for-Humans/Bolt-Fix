; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Bolt Fix"                                          ; Название игры
#define GameNameDash "Bolt"                                                          ; Название игры без пробелов
#define GameNameEXE "DisneyBoltPC"                                                              ; Название exe файла игры
#define GameVer "1.0"                                                                     ; Версия игры
#define GameAppIdSteam "340990"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "{cm:Fix}"                                     ; Описание программы
#define Typ "Fix"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "1.0"                                                                        ; Версия установщика
#define Platz "C:\Users\TeMeR\Documents\GitHub"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " для версии " + GameVer                             ; Название программы для какой версии игры в системе

;#define UnArcivProg "7zG.EXE"
;#define FolderUnArcivProg "7z"
;#define Arciv "sound.zip"
[Setup]
; Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Bolt
AppId={{0C0DEA93-A034-4370-AD95-A20CE8230C99}
//--------------------------------------App's information and version--------------------------------------\\
; Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
;DiskSpanning=true
;DiskSliceSize=314572800 / Размер в байтах твоего setup1.bin
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
; Путь к фалу Лицензии
;LicenseFile={#Location}\Licence.rtf
; Путь к фалу Описание
;InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
; Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
; Путь к фалу Сетап
OutputDir={#Location}\
; Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
; Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

[Components]
Name: "Fix";         Description: "{cm:Fix}";                  Types: full custom
Name: "Fix\1080";    Description: "{cm:Fix} FHD(1080p)";       Types: full custom; Flags: exclusive 
Name: "Fix\1444";    Description: "{cm:Fix} QHD(1440p)";       Types:      custom; Flags: exclusive 
Name: "Fix\2160";    Description: "{cm:Fix} UHD(2160p)";       Types:      custom; Flags: exclusive 

[Files]
; Ресурсы
Source: {#Location}\{#GameNameDash}\d3d9\*;          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;Components: Fix
Source: {#Location}\{#GameNameDash}\1080\*;          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;Components: Fix\1080
Source: {#Location}\{#GameNameDash}\1440\*;          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;Components: Fix\1444
Source: {#Location}\{#GameNameDash}\2160\*;          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;Components: Fix\2160
;Source: {#Location}\{#FolderUnArcivProg}\*;         DestDir: "{tmp}"; Flags: deleteafterinstall
;Source: {#Location}\{#GameName}\zip\*;              DestDir: "{tmp}"; Flags: ignoreversion recursesubdirs createallsubdirs;Components: Rus\Sound
[Icons]
; Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
; Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"

[Run]
; На финальной страницу спрашивает о запуске финального продукта
;Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv} -y -o""{app}\Sounds\""";Components: Rus\Sound
;[UninstallDelete]
;Type: files;          Name: "{app}\Sounds\Gamesnds.asr";Components: Rus\Sound;      

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
    // для гог
    //  else
    //if RegQueryStringValue(
    //     HKLM32, 'SOFTWARE\GOG.com\Games\1196955511',
    //     'path', InstallationPath) then
    //begin
    //  Log('Detected GOG installation: ' + InstallationPath);
    //end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

[CustomMessages]
english.Fix=Fix resolution
russian.Fix=Фикс разрешения

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: Description_ENG.rtf
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; InfoBeforeFile: Description_RUS.rtf