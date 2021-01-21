unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;


const
  MaxSheepinFleet = 6;


type
  TFMain = class(TForm)
    pnl1: TPanel;
    BtGoSheep: TButton;
    Conection1: TADOConnection;
    Qry1: TADOQuery;
    ds1: TDataSource;
    qryTemp: TADOQuery;
    qryTemp2: TADOQuery;
    ds2: TDataSource;
    qry2: TADOQuery;
    qry3: TADOQuery;
    ds3: TDataSource;
    dsSheep: TDataSource;
    qrySheep: TADOQuery;
    qryWeapon: TADOQuery;
    dsWeapon: TDataSource;
    dsShield: TDataSource;
    qryShield: TADOQuery;
    qryArmour: TADOQuery;
    dsArmour: TDataSource;
    dsSpecial: TDataSource;
    qrySpecial: TADOQuery;
    qryTabled: TADOQuery;
    dsTabled: TDataSource;
    BtGpFleet: TButton;
    BtGoFight: TButton;
    Memo1: TMemo;
    CbTypeSortArray: TComboBox;
    Label1: TLabel;
    procedure BtGoSheepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtGpFleetClick(Sender: TObject);
    procedure BtGoFightClick(Sender: TObject);
    procedure CbTypeSortArrayChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

TDArrayWord = array of LongWord;

TArmourParametrs = record
                   Name:string;
                   ID:Longword;
                   Level:Integer;
                   Expirience,
                   Mass,
                   ArmourPar:LongWord;
                   ResistEnergy,ResistDal,ResistVzr:Double;
                   Antinateria:Double;
                   Unical:Byte;
                   TimeBuild,TimeRepair:LongWord;
                  TypeSheep:string;
                  LevelSheep:Word;
                   end;

TShieldParametrs = record
                   Name:string;
                   ID:Longword;
                   Level:Integer;
                   Expirience,
                   Mass,
                   ShieldPar:LongWord;
                   ResistEnergy,ResistDal,ResistVzr:Double;
                   PronEner,PronDal,PronVzr:Double;
                   Vostan,TimeVostan:Double;
                   TimeBuild,TimeRepair:LongWord;
                  TypeSheep:string;
                  LevelSheep:Word;
                   end;

TSpecialParametrs= record
                   Name:string;
                   ID:Longword;
                   Level:Integer;
                   Expirience:LongWord;
                   Mass:LongWord;
                   MassWeapoon,MassSheep:Double;
                   TypeWeapoon:LongWord;
                   SpeedUp,SpeedRotate,SpeedStreif,SpeedSektor:LongWord;
                   SpeedUpP,SpeedRotateP,SpeedStreifP,SpeedSektorP:Double;
                   SpeedWeapoon:Longword;
                   Obhod:Double;
                   MinDistance,MaxDistance:LongWord;
                   MinDistanceP,MaxDistanceP:Double;
                   Damage,DamageArmour,DamageShield:Double;
                   Razbros:Double;
                   Radius:LongWord;
                   Cargo,ArmourPar:LongWord;
                   TimeBuild,TimeRepair:LongWord;
                  TypeSheep:string;
                  LevelSheep:Word;
                  TypeSpecial:Longword;
                   RadiusDamageSpecial,DamageSpecial:Longword;
                   Zamedl:Double;
                   end;

TTabledParametrs = record
                   Name:string;
                   ID:Longword;
                   Level:Integer;
                   Expirience:LongWord;
                   MassSheep:Double;
                   ResistEnergy,ResistDal,ResistVzr:Double;
                  TypeSheep:string;
                  LevelSheep:Word;
                   end;

TWeaponParametrs= record
                  Name:string;
                  ID:Longword;
                  Level:Integer;
                  TypeWeapon:Integer;
                  Expirience:LongWord;
                  Mass,Speed:LongWord;
                  MaxDistance,MinDistance:Double;
                  DPS,DPSShield,DPSArmour:Double;
                  Broneb:LongWord;
                  Zamedl,Obhod,DamageShield,DamageArmour:Double;
                  ChainReaction:LongWord;
                  Razbros:Double;
                  Radius:LongWord;
                  TimeShot,TimeShotNepr:Double;
                  TimeBuild,TimeRepair:LongWord;
                  TypeSheep:string;
                  LevelSheep:Word;
                  end;

TSheepParametrs = record
                  Id:LongWord;
                  Name,typeSheep,MK:string;
                  LevelSheep:LongWord;
                  ArmourSheep,
                  Cargo,
                  Expirience,
                  MaxVolume:LongWord;
                  Mass:Longword;
                  SpeedUp,SpeedRotate,SpeedStreif,SpeedSektor:LongWord;
                  DamageArmour,DamageShield,DamageFr,DamageL,DamageK,DamageEs,DamageSh,DamageA:Double;
                  MassArmour,MassWeapoon,MassEngin,MassFly:Double;
                  ArmourPar,Zamedl,Obhod,Damage,Distance:Double;
                  KolArmour,KolShield,KolSpecial,KolTabled,KolWeapon:Longword;
                  dl,sh:LongWord;
                  TimeBuild,TimeRepair:LongWord;
                  end;

TSheepCondition = record
                  Sheep:TSheepParametrs;
                  Weapon:array of TWeaponParametrs;
                  Armour:array of TArmourParametrs;
                  Special:array of TSpecialParametrs;
                  Shield: array of TShieldParametrs;
                  Tabled:array of TTabledParametrs;
                  Color:TColor;
                  MassAll,MassWeapon,MassArmour:Double;
                  TimeBuild,TimeRepair:LongWord;
                  ShieldEnergyMax,ShieldEnergyCurrent:Double;
                  ShieldVostan:Double;
                  ArmourMax,ArmourCurrent:Double;
                  ArmourResistanceE,ArmourResistanceV,ArmourResistanceD:Double;
                  SpeedMaxUp,SpeedMaxRotate,SpeedMaxStreif,SpeedMaxSektor:Double;
                  SpeedCurrentUp,SpeedCurrentRotate,SpeedCurrentStreif:Double;
                  X,Y,Angle:Double;
                  GoToX,GoToY,TypeGoToXY,GoToAngle,SpeedGoToXY:double;
                  AtakNomSheep:LongWord;
                  DPS,DPSShield,DPSArmour:Double;
                  MaxDistance,MinDistance:Double;
                  Expirience,Cargo:Double;
                  WeaponPar:array of TWeaponParametrs;
                  inFleet:Boolean;
                  NomSborki:Longword;
                  end;

TElementArrayGraph = class;
TAElementArrayGraph = array of TElementArrayGraph;
TElementArrayGraph = class
                     PointObject:LongWord;
                     FatherSheep:LongWord;
                     LevelDown:TAElementArrayGraph;
                     constructor Create(NomFatherSheep:LongWord);
                     end;
TFleet = record
         Sheep:array [1..MaxSheepinFleet] of TSheepCondition;
         MassFleet,SpeddSektorFleet:Double;
         KolSheep:Longword;
         NameFleet:string;
         end;

TSatandartElement = record
                    Name:string;
                    Level:LongWord;
                    end;

TArrayString = array of string;

TElementSortType = record
                   Name,FileName:string;
                   end;


function SearchIDSheep(NameShip,MK:string):LongWord;
function SearchIDArmour(NameShip:string; Level:LongWord):LongWord;
function SearchIDShield(NameShip:string; Level:LongWord):LongWord;
function SearchIDSpecial(NameShip:string; Level:LongWord):LongWord;
function SearchIDTabled(NameShip:string; Level:LongWord):LongWord;
function SearchIDWeapon(NameShip:string; Level:LongWord):LongWord;
function GoCopySheepCondition (NomSheep:LongWord):LongWord;
Procedure DeleteSheepCondition(NomSheep:LongWord);


var
  FMain: TFMain;
  BaseSheep: array of TSheepParametrs;
  BaseWeapon:array of TWeaponParametrs;
  BaseSpecial:array of TSpecialParametrs;
  BaseArmour: array of TArmourParametrs;
  BaseShield: array Of TShieldParametrs;
  BaseTabled: array of TTabledParametrs;
  StandartWeapon:array of TSatandartElement;
  StandartArmour:array of TSatandartElement;
  StandartShield:array of TSatandartElement;
  StandartSpecial:array of TSatandartElement;
  StandartTabled:array of TSatandartElement;
  ArraySortWeapon:TArrayString;
  ArraySortArmour:TArrayString;
  ArraySortSpecial:TArrayString;
  ArraySortShield:TArrayString;
  ArraySortTabled:TArrayString;
  TypeSheep: array of string;
  SheepArray: array of TSheepCondition;
  GraphLevel0:TAElementArrayGraph;
  FleetArray:array of  TFleet;
  F:TextFile;
  CurrentNomFleet:LongWord;
  NomFleetFightN1,NomFleetFightN2:Longword;
  NomSelectSheepFleet:array [1..2] of LongWord;
  FleetFightN1,FleetFightN2:TFleet;
  ParetoSet:array of LongWord;
  ArrayElementSortType:array of TElementSortType;

implementation

uses UFleet,UFAllfleet,UFight;

{$R *.dfm}


function CheckIfAccessDB(lDBPathName: string): Boolean;
var
UnTypedFile: file of byte;
Buffer: array[0..19] of byte;
NumRecsRead: Integer;
i: Integer;
MyString: string;
begin
AssignFile(UnTypedFile, lDBPathName);
reset(UnTypedFile);
BlockRead(UnTypedFile, Buffer, High(Buffer), NumRecsRead);
CloseFile(UnTypedFile);
for i := 1 to High(Buffer) do
MyString := MyString + Trim(Chr(Ord(Buffer[i])));
Result := False;
if Mystring = 'StandardJetDB' then
Result := True;
end;

Procedure ConnectionBase(NameBase:string);
begin
FMain.Conection1.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;'+
'Data Source='+NameBase+';'+
'Mode=ReadWrite;'+
'Persist Security Info=False;';
FMain.Conection1.Open;
end;

constructor TElementArrayGraph.Create(NomFatherSheep:LongWord);
begin
Self.FatherSheep:=NomFatherSheep;
Self.LevelDown:=nil;
end;

Procedure DeleteSheepCondition(NomSheep:LongWord);
var
  i,n:LongWord;
begin
n:=Length(SheepArray);
If n>0 then
  begin
  If NomSheep<>n-1 then
    begin
    For i:=NomSheep to n-2 do
      SheepArray[i]:=SheepArray[i+1];
    end;
  SetLength(SheepArray,n-1)
  end;

end;

function GoCopySheepCondition (NomSheep:LongWord):LongWord;
var
  i,n,NewSheep:LongWord;

begin
NewSheep:=Length(SheepArray);
SetLength(SheepArray,NewSheep+1);
SheepArray[NewSheep].Color:=clBtnFace;
SheepArray[NewSheep].Sheep:=SheepArray[NomSheep].Sheep;

n:=Length(SheepArray[NomSheep].Weapon);
SetLength(SheepArray[NewSheep].Weapon,n);
If n<>0 then
For i:=0 to n-1 do
  begin
  SheepArray[NewSheep].Weapon[i]:=SheepArray[NomSheep].Weapon[i];
  end;

n:=Length(SheepArray[NomSheep].Armour);
SetLength(SheepArray[NewSheep].Armour,n);
If n<>0 then
For i:=0 to n-1 do
  begin
  SheepArray[NewSheep].Armour[i]:=SheepArray[NomSheep].Armour[i];
  end;

n:=Length(SheepArray[NomSheep].Special);
SetLength(SheepArray[NewSheep].Special,n);
If n<>0 then
For i:=0 to n-1 do
  begin
  SheepArray[NewSheep].Special[i]:=SheepArray[NomSheep].Special[i];
  end;

n:=Length(SheepArray[NomSheep].Shield);
SetLength(SheepArray[NewSheep].Shield,n);
If n<>0 then
For i:=0 to n-1 do
  begin
  SheepArray[NewSheep].Shield[i]:=SheepArray[NomSheep].Shield[i];
  end;

n:=Length(SheepArray[NomSheep].Tabled);
SetLength(SheepArray[NewSheep].Tabled,n);
If n<>0 then
For i:=0 to n-1 do
  begin
  SheepArray[NewSheep].Tabled[i]:=SheepArray[NomSheep].Tabled[i];
  end;
Result:=NewSheep;
end;

function SearchIDSheep(NameShip,MK:string):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseSheep)<>0 then
  begin
  i:=0;
  While (i<Length(BaseSheep)) and (k=0) do
    begin
    if (NameShip=BaseSheep[i].Name) and (MK=BaseSheep[i].MK) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;

function SearchIDArmour(NameShip:string; Level:LongWord):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseArmour)<>0 then
  begin
  i:=0;
  While (i<Length(BaseArmour)) and (k=0) do
    begin
    if (NameShip=BaseArmour[i].Name) and (Level=BaseArmour[i].Level) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;

function SearchIDSpecial(NameShip:string; Level:LongWord):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseSpecial)<>0 then
  begin
  i:=0;
  While (i<Length(BaseSpecial)) and (k=0) do
    begin
    if (NameShip=BaseSpecial[i].Name) and (Level=BaseSpecial[i].Level) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;

function SearchIDShield(NameShip:string; Level:LongWord):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseShield)<>0 then
  begin
  i:=0;
  While (i<Length(BaseShield)) and (k=0) do
    begin
    if (NameShip=BaseShield[i].Name) and (Level=BaseShield[i].Level) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;

function SearchIDWeapon(NameShip:string; Level:LongWord):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseWeapon)<>0 then
  begin
  i:=0;
  While (i<Length(BaseWeapon)) and (k=0) do
    begin
    if (NameShip=BaseWeapon[i].Name) and (Level=BaseWeapon[i].Level) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;

function SearchIDTabled(NameShip:string; Level:LongWord):LongWord;
var
  i,k:LongWord;
begin
k:=0;
If Length(BaseTabled)<>0 then
  begin
  i:=0;
  While (i<Length(BaseTabled)) and (k=0) do
    begin
    if (NameShip=BaseTabled[i].Name) and (Level=BaseTabled[i].Level) then
      k:=i;
    inc(i);
    end;
  end;
Result:=k;
end;


procedure LoadBase;
var
  n:LongWord;
begin
with FMain do
begin
if FileExists('db3.mdb') then
  if (Trim('db3.mdb') <> '') and (CheckIfAccessDB('db3.mdb')) then
    ConnectionBase('db3.mdb');
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Sheep Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  Inc(n);
  SetLength(BaseSheep,n+1);
  BaseSheep[n].Id:=Qry1.FieldByName('ID').AsInteger;
  BaseSheep[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseSheep[n].typeSheep:=Qry1.FieldByName('Тип').AsString;
  BaseSheep[n].MK:=Qry1.FieldByName('МК').AsString;
  BaseSheep[n].LevelSheep:=Qry1.FieldByName('Ур').AsInteger;
  BaseSheep[n].ArmourSheep:=Qry1.FieldByName('Прочность').AsInteger;
  BaseSheep[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseSheep[n].Cargo:=Qry1.FieldByName('ГрузНаБорту').AsInteger;
  BaseSheep[n].MaxVolume:=Qry1.FieldByName('МаксМасса').AsInteger;
  BaseSheep[n].Mass:=Qry1.FieldByName('Вес').AsInteger;
  BaseSheep[n].SpeedUp:=Qry1.FieldByName('СкоростьВепред').AsVariant;
  BaseSheep[n].SpeedRotate:=Qry1.FieldByName('СкоростьПоворот').AsVariant;
  BaseSheep[n].SpeedStreif:=Qry1.FieldByName('СкоростьСтрейф').AsVariant;
  BaseSheep[n].SpeedSektor:=Qry1.FieldByName('СкоростьСектор').AsVariant;
//  BaseSheep[n].DamageArmour:=1;
  BaseSheep[n].DamageShield:=Qry1.FieldByName('УронЩитам').AsVariant;
  BaseSheep[n].DamageFr:=Qry1.FieldByName('УронФрегатам').AsVariant;
  BaseSheep[n].DamageL:=Qry1.FieldByName('УронЛинкорам').AsVariant;
  BaseSheep[n].DamageK:=Qry1.FieldByName('УронКрейсерам').AsVariant;
  BaseSheep[n].DamageEs:=Qry1.FieldByName('УронЭсминцам').AsVariant;
  BaseSheep[n].DamageSh:=Qry1.FieldByName('УронШтурмовикам').AsVariant;
  BaseSheep[n].DamageA:=Qry1.FieldByName('УронАвианосцам').AsVariant;
  BaseSheep[n].MassArmour:=Qry1.FieldByName('МассаБрони').AsVariant;
  BaseSheep[n].MassWeapoon:=Qry1.FieldByName('МассаОружия').AsVariant;
  BaseSheep[n].MassEngin:=Qry1.FieldByName('МассаРулевогоДвигателя').AsVariant;
  BaseSheep[n].MassFly:=Qry1.FieldByName('МассаЭскадрильи').AsVariant;
  BaseSheep[n].ArmourPar:=Qry1.FieldByName('ПрочностьБрони').AsVariant;
  BaseSheep[n].Zamedl:=Qry1.FieldByName('СтойкостьЗамедлению').AsVariant;
  BaseSheep[n].Obhod:=Qry1.FieldByName('ОбходЩита').AsVariant;
  BaseSheep[n].Damage:=Qry1.FieldByName('ПоврежденияКораблям').AsVariant;
  BaseSheep[n].Distance:=Qry1.FieldByName('Дальность').AsVariant;
  BaseSheep[n].KolShield:=Qry1.FieldByName('Щит').AsInteger;
  BaseSheep[n].KolArmour:=Qry1.FieldByName('Броня').AsInteger;
  BaseSheep[n].KolSpecial:=Qry1.FieldByName('Спецсредсво').AsInteger;
  BaseSheep[n].KolWeapon:=Qry1.FieldByName('Оружие').AsInteger;
  BaseSheep[n].KolTabled:=Qry1.FieldByName('Таб').AsInteger;
  BaseSheep[n].dl:=Qry1.FieldByName('Длина').AsInteger;
  BaseSheep[n].sh:=Qry1.FieldByName('Ширина').AsInteger;
  BaseSheep[n].TimeBuild:=Qry1.FieldByName('Постройка').AsInteger;
  BaseSheep[n].TimeRepair:=Qry1.FieldByName('Ремонт').AsInteger;
//  MeProt.Lines.Add('Добавлен корабль ID='+IntToStr(CSheep.Id));
  Qry1.Next;
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Weapon Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(BaseWeapon,n+1);
  BaseWeapon[n].ID:=Qry1.FieldByName('ID').AsInteger;
  BaseWeapon[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseWeapon[n].Level:=Qry1.FieldByName('Ур').AsInteger;
  BaseWeapon[n].TypeWeapon:=Qry1.FieldByName('ТипОружия').AsInteger;
  BaseWeapon[n].TypeSheep:=Qry1.FieldByName('ТипКорабля').AsString;
  BaseWeapon[n].LevelSheep:=Qry1.FieldByName('УрКорабля').AsInteger;
  BaseWeapon[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseWeapon[n].Mass:=Qry1.FieldByName('Масса').AsInteger;
  BaseWeapon[n].Speed:=Qry1.FieldByName('Скорость').AsVariant;
  BaseWeapon[n].MaxDistance:=Qry1.FieldByName('ДальностьМакс').AsInteger;
  BaseWeapon[n].MinDistance:=Qry1.FieldByName('ДальностьМин').AsInteger;
  BaseWeapon[n].DPS:=Qry1.FieldByName('ДПС').AsVariant;
  BaseWeapon[n].Broneb:=Qry1.FieldByName('Бронеб').AsInteger;
  BaseWeapon[n].Zamedl:=Qry1.FieldByName('Замедл').AsVariant;
  BaseWeapon[n].Obhod:=Qry1.FieldByName('ОбходЩита').AsVariant;
  BaseWeapon[n].DamageShield:=Qry1.FieldByName('УронЩитам').AsVariant;
//  BaseWeapon[n].DamageArmour:=Qry1.FieldByName('Разброс').AsInteger;
  BaseWeapon[n].Razbros:=Qry1.FieldByName('Разброс').AsVariant;
  BaseWeapon[n].Radius:=Qry1.FieldByName('РадиусУрона').AsVariant;
  BaseWeapon[n].TimeShot:=Qry1.FieldByName('ВремяВыстрела').AsVariant;
  BaseWeapon[n].TimeShotNepr:=Qry1.FieldByName('ВремяНаведения').AsVariant;
  BaseWeapon[n].ChainReaction:=Qry1.FieldByName('ЦепнаяРеакция').AsInteger;
  BaseWeapon[n].TimeBuild:=Qry1.FieldByName('Постройка').AsInteger;
  BaseWeapon[n].TimeRepair:=0;
  Qry1.Next;
  Inc(n);
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Special Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(BaseSpecial,n+1);
  BaseSpecial[n].ID:=Qry1.FieldByName('ID').AsInteger;
  BaseSpecial[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseSpecial[n].Level:=Qry1.FieldByName('Ур').AsInteger;
  BaseSpecial[n].TypeSheep:=Qry1.FieldByName('ТипКорабля').AsString;
  BaseSpecial[n].LevelSheep:=Qry1.FieldByName('УрКорабля').AsInteger;
//  BaseSpecial[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseSpecial[n].Mass:=Qry1.FieldByName('МассаЕд').AsInteger;
  BaseSpecial[n].MassWeapoon:=Qry1.FieldByName('МассаОруж').AsVariant;
  BaseSpecial[n].MassSheep:=Qry1.FieldByName('МассаКор').AsVariant;
  BaseSpecial[n].TypeWeapoon:=Qry1.FieldByName('Оружие').AsInteger;
  BaseSpecial[n].SpeedUp:=Qry1.FieldByName('СкоростьКорабляВепред').AsInteger;
  BaseSpecial[n].SpeedRotate:=Qry1.FieldByName('СкоростьКорабляПоворот').AsInteger;
  BaseSpecial[n].SpeedStreif:=Qry1.FieldByName('СкоростьКорабляСтрейф').AsInteger;
  BaseSpecial[n].SpeedSektor:=Qry1.FieldByName('СкоростьКорабляСектор').AsInteger;
  BaseSpecial[n].SpeedUpP:=Qry1.FieldByName('СкоростьКорабляВепредП').AsVariant;
  BaseSpecial[n].SpeedRotateP:=Qry1.FieldByName('СкоростьКорабляПоворотП').AsVariant;
  BaseSpecial[n].SpeedStreifP:=Qry1.FieldByName('СкоростьКорабляСтрейфП').AsVariant;
  BaseSpecial[n].SpeedSektorP:=Qry1.FieldByName('СкоростьКорабляСекторП').AsVariant;
  BaseSpecial[n].SpeedWeapoon:=Qry1.FieldByName('СкоростьПолета').AsInteger;
  BaseSpecial[n].Obhod:=Qry1.FieldByName('ОбходЩита').AsVariant;
  BaseSpecial[n].MinDistance:=Qry1.FieldByName('МинДальность').AsInteger;
  BaseSpecial[n].MaxDistance:=Qry1.FieldByName('МаксДальность').AsInteger;
  BaseSpecial[n].MinDistanceP:=Qry1.FieldByName('МинДальностьП').AsVariant;
  BaseSpecial[n].MaxDistanceP:=Qry1.FieldByName('МаксДальностьП').AsVariant;
  BaseSpecial[n].Damage:=Qry1.FieldByName('Урон').AsVariant;
  BaseSpecial[n].DamageArmour:=Qry1.FieldByName('УронБронеП').AsVariant;
  BaseSpecial[n].DamageShield:=Qry1.FieldByName('УронЩитам').AsVariant;
  BaseSpecial[n].Razbros:=Qry1.FieldByName('УвеличРазброса').AsVariant;
  BaseSpecial[n].Radius:=Qry1.FieldByName('РадиусУрона').AsVariant;
  BaseSpecial[n].Cargo:=Qry1.FieldByName('Груз').AsInteger;
  BaseSpecial[n].ArmourPar:=Qry1.FieldByName('Прочность').AsVariant;
  BaseSpecial[n].TypeSpecial:=Qry1.FieldByName('ТипСпецсредства').AsVariant;
  BaseSpecial[n].RadiusDamageSpecial:=Qry1.FieldByName('РадиусУронаСпецсредства').AsVariant;
  BaseSpecial[n].DamageSpecial:=Qry1.FieldByName('МощностьСпецсредства').AsVariant;
  BaseSpecial[n].TimeBuild:=Qry1.FieldByName('Постройка').AsInteger;
  BaseSpecial[n].TimeRepair:=Qry1.FieldByName('Ремонт').AsInteger;
  BaseSpecial[n].Zamedl:=Qry1.FieldByName('Замедление').AsVariant;
  Qry1.Next;
  Inc(n);
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Shield Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(BaseShield,n+1);
  BaseShield[n].ID:=Qry1.FieldByName('ID').AsInteger;
  BaseShield[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseShield[n].Level:=Qry1.FieldByName('Ур').AsInteger;
  BaseShield[n].TypeSheep:=Qry1.FieldByName('ТипКорабля').AsString;
  BaseShield[n].LevelSheep:=Qry1.FieldByName('УрКорабля').AsInteger;
  BaseShield[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseShield[n].Mass:=Qry1.FieldByName('Масса').AsInteger;
  BaseShield[n].ShieldPar:=Qry1.FieldByName('Энергия').AsInteger;
  BaseShield[n].ResistEnergy:=Qry1.FieldByName('ЗащитаЭнерг').AsVariant;
  BaseShield[n].ResistDal:=Qry1.FieldByName('ЗащитаДальн').AsVariant;
  BaseShield[n].ResistVzr:=Qry1.FieldByName('ЗащитаВзрыв').AsVariant;
  BaseShield[n].PronEner:=Qry1.FieldByName('ПроникновениеЭнерг').AsVariant;
  BaseShield[n].PronDal:=Qry1.FieldByName('ПроникновениеДальн').AsVariant;
  BaseShield[n].PronVzr:=Qry1.FieldByName('ПроникновениеВзрыв').AsVariant;
  BaseShield[n].Vostan:=Qry1.FieldByName('Восстановление').AsVariant;
  BaseShield[n].TimeVostan:=Qry1.FieldByName('ВремяВосстановления').AsVariant;
  BaseShield[n].TimeBuild:=Qry1.FieldByName('Постройка').AsInteger;
  BaseShield[n].TimeRepair:=Qry1.FieldByName('Ремонт').AsInteger;
  Qry1.Next;
  Inc(n);
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Armour Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(BaseArmour,n+1);
  BaseArmour[n].ID:=Qry1.FieldByName('ID').AsInteger;
  BaseArmour[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseArmour[n].Level:=Qry1.FieldByName('Ур').AsInteger;
  BaseArmour[n].TypeSheep:=Qry1.FieldByName('ТипКорабля').AsString;
  BaseArmour[n].LevelSheep:=Qry1.FieldByName('УрКорабля').AsInteger;
  BaseArmour[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseArmour[n].Mass:=Qry1.FieldByName('Масса').AsInteger;
  BaseArmour[n].ArmourPar:=Qry1.FieldByName('Прочность').AsInteger;
  BaseArmour[n].ResistEnergy:=Qry1.FieldByName('СтойкостьЭнерг').AsVariant;
  BaseArmour[n].ResistDal:=Qry1.FieldByName('СтойкостьДальн').AsVariant;
  BaseArmour[n].ResistVzr:=Qry1.FieldByName('СтойкостьВзрыв').AsVariant;
  BaseArmour[n].Antinateria:=Qry1.FieldByName('АнтиматерияБонус').AsVariant;
  BaseArmour[n].Unical:=Qry1.FieldByName('Уникальность').AsInteger;
  BaseArmour[n].TimeBuild:=Qry1.FieldByName('Постройка').AsInteger;
  BaseArmour[n].TimeRepair:=Qry1.FieldByName('Ремонт').AsInteger;
  Qry1.Next;
  Inc(n);
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select * from Tabled Order by ID;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(BaseTabled,n+1);
  BaseTabled[n].ID:=Qry1.FieldByName('ID').AsInteger;
  BaseTabled[n].Name:=Qry1.FieldByName('Название').AsString;
  BaseTabled[n].Level:=Qry1.FieldByName('Ур').AsInteger;
  BaseTabled[n].TypeSheep:=Qry1.FieldByName('ТипКорабля').AsString;
  BaseTabled[n].LevelSheep:=Qry1.FieldByName('УрКорабля').AsInteger;
  BaseTabled[n].Expirience:=Qry1.FieldByName('Опыт').AsInteger;
  BaseTabled[n].MassSheep:=Qry1.FieldByName('Масса').AsVariant;
  BaseTabled[n].ResistEnergy:=Qry1.FieldByName('СтойкостьЭнерг').AsVariant;
  BaseTabled[n].ResistDal:=Qry1.FieldByName('СтойкостьДальн').AsVariant;
  BaseTabled[n].ResistVzr:=Qry1.FieldByName('СтойкостьВзрыв').AsVariant;
  Qry1.Next;
  Inc(n);
  end;
Qry1.Close;
Qry1.SQL.Clear;
Qry1.SQL.Add('Select Distinct Тип from Sheep;');
Qry1.ExecSQL;
Qry1.Open;
Qry1.First;
n:=0;
while not Qry1.Eof do
  begin
  SetLength(TypeSheep,n+1);
  TypeSheep[n]:=Qry1.FieldByName('Тип').AsString;
  inc(n);
  Qry1.Next;
  end;
end;
end;



procedure TFMain.BtGoSheepClick(Sender: TObject);
begin
FFleet.ShowModal;
end;

procedure LoadSortArrayInTextFile (FileName:string);
var
  n:LongWord;
  TypeElement:LongWord;
  f:TextFile;
  st,st1,Name:string;
begin
AssignFile(f,FileName);
Reset(f);
SetLength(ArraySortWeapon,0);
SetLength(ArraySortArmour,0);
SetLength(ArraySortSpecial,0);
SetLength(ArraySortShield,0);
SetLength(ArraySortTabled,0);
while not Eof (f) do
  begin
  Readln(f,st);
  if st='Weapon' then
    TypeElement:=1
  else
  if st='Armour' then
    TypeElement:=2
  else
  if st='Special' then
    TypeElement:=3
  else
  if st='Tabled' then
    TypeElement:=5
  else
  if st='Shield' then
    TypeElement:=4
  else
    begin
    If TypeElement=1 then
      begin
      n:=Length(ArraySortWeapon);
      SetLength(ArraySortWeapon,n+1);
      ArraySortWeapon[n]:=st;
      end
    else
    If TypeElement=2 then
      begin
      n:=Length(ArraySortArmour);
      SetLength(ArraySortArmour,n+1);
      ArraySortArmour[n]:=st;
      end
    else
    If TypeElement=3 then
      begin
      n:=Length(ArraySortSpecial);
      SetLength(ArraySortSpecial,n+1);
      ArraySortSpecial[n]:=st;
      end
    else
    If TypeElement=4 then
      begin
      n:=Length(ArraySortShield);
      SetLength(ArraySortShield,n+1);
      ArraySortShield[n]:=st;
      end
    else
    If TypeElement=5 then
      begin
      n:=Length(ArraySortTabled);
      SetLength(ArraySortTabled,n+1);
      ArraySortTabled[n]:=st;
      end;
    end;
  end;
CloseFile(f);
end;

procedure LoadStandartElementInTextFile (FileName:string);
var
  n:LongWord;
  TypeElement:LongWord;
  f:TextFile;
  st,st1,Name:string;
begin
AssignFile(f,FileName);
Reset(f);
while not Eof (f) do
  begin
  Readln(f,st);
  if st='Weapon' then
    TypeElement:=1
  else
  if st='Armour' then
    TypeElement:=2
  else
  if st='Special' then
    TypeElement:=3
  else
  if st='Tabled' then
    TypeElement:=5
  else
  if st='Shield' then
    TypeElement:=4
  else
    begin
    Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    st1:=Copy(St,1,pos(';',st)-1);
    If TypeElement=1 then
      begin
      n:=Length(StandartWeapon);
      SetLength(StandartWeapon,n+1);
      StandartWeapon[n].Name:=Name;
      StandartWeapon[n].Level:=StrToInt(st1);
      end
    else
    If TypeElement=2 then
      begin
      n:=Length(StandartArmour);
      SetLength(StandartArmour,n+1);
      StandartArmour[n].Name:=Name;
      StandartArmour[n].Level:=StrToInt(st1);
      end
    else
    If TypeElement=3 then
      begin
      n:=Length(StandartSpecial);
      SetLength(StandartSpecial,n+1);
      StandartSpecial[n].Name:=Name;
      StandartSpecial[n].Level:=StrToInt(st1);
      end
    else
    If TypeElement=4 then
      begin
      n:=Length(StandartShield);
      SetLength(StandartShield,n+1);
      StandartShield[n].Name:=Name;
      StandartShield[n].Level:=StrToInt(st1);
      end
    else
    If TypeElement=5 then
      begin
      n:=Length(StandartTabled);
      SetLength(StandartTabled,n+1);
      StandartTabled[n].Name:=Name;
      StandartTabled[n].Level:=StrToInt(st1);
      end;
    end;
  end;
CloseFile(f);
end;

procedure LoadSystemOptionFile;
var
  f:TextFile;
  st:string;
  n,i:LongWord;
begin
AssignFile(f,'VegaCalcSystem.txt');
Reset(f);
Readln(f,st);
Readln(f,st);
LoadStandartElementInTextFile(st);
Readln(f,st);
n:=0;
while not Eof(f) do
  begin
  SetLength(ArrayElementSortType,n+1);
  Readln(f,st);
  ArrayElementSortType[n].FileName:=Copy(St,1,pos(';',st)-1);
  Delete(St,1,pos(';',st));
  ArrayElementSortType[n].Name:=Copy(St,1,pos(';',st)-1);
  inc(n);
  end;
CloseFile(f);
If n<>0 then
For i:=0 to n do
  begin
  FMain.CbTypeSortArray.Items.Add(ArrayElementSortType[i].Name);
  end;
FMain.CbTypeSortArray.ItemIndex:=0;
FMain.CbTypeSortArray.OnChange(FMain.CbTypeSortArray);
end;

procedure TFMain.FormCreate(Sender: TObject);
begin
LoadBase;
SetLength(SheepArray,1);
NomCurSheep:=0;
CurrentNomFleet:=0;
LoadSystemOptionFile;

end;

procedure TFMain.BtGpFleetClick(Sender: TObject);
begin
FFleetAll.ShowModal;
end;

procedure TFMain.BtGoFightClick(Sender: TObject);
begin
FFight.ShowModal;
end;

procedure TFMain.CbTypeSortArrayChange(Sender: TObject);
var
  i:LongWord;
begin
i:=0;
While (Length(ArrayElementSortType)<>0) and (i<Length(ArrayElementSortType)) and (ArrayElementSortType[i].Name<>CbTypeSortArray.Text) do
  Inc(i);
if (i<Length(ArrayElementSortType))  then
LoadSortArrayInTextFile(ArrayElementSortType[i].FileName);
end;

end.
