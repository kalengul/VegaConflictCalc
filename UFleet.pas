unit UFleet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, Grids, DBGrids, ComCtrls, UMain,
  Spin, Buttons;

type
  TFFleet = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnl4: TPanel;
    DBtID: TDBText;
    pnlShield: TPanel;
    pnlArmour: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    pnlSpecial: TPanel;
    Label7: TLabel;
    pnlWeapon: TPanel;
    Label8: TLabel;
    pnlTabled: TPanel;
    Label9: TLabel;
    BCbShield1: TComboBox;
    BCbShield2: TComboBox;
    CbShield1: TLabel;
    CbShield2: TLabel;
    Label11: TLabel;
    DBCbShield1: TComboBox;
    DBCbShield2: TComboBox;
    BCbArmour1: TComboBox;
    BCbArmour2: TComboBox;
    BCbArmour3: TComboBox;
    BCbArmour4: TComboBox;
    BCbArmour5: TComboBox;
    BCbArmour6: TComboBox;
    BCbArmour7: TComboBox;
    BCbSpecial1: TComboBox;
    BCbSpecial2: TComboBox;
    BCbSpecial3: TComboBox;
    BCbWeapon1: TComboBox;
    BCbWeapon2: TComboBox;
    BCbWeapon3: TComboBox;
    BCbWeapon4: TComboBox;
    BCbWeapon5: TComboBox;
    BCbWeapon6: TComboBox;
    BCbWeapon7: TComboBox;
    BCbWeapon8: TComboBox;
    BCbTabled1: TComboBox;
    DBCbArmour1: TComboBox;
    DBCbArmour2: TComboBox;
    DBCbArmour3: TComboBox;
    DBCbArmour4: TComboBox;
    DBCbArmour5: TComboBox;
    DBCbArmour6: TComboBox;
    DBCbArmour7: TComboBox;
    DBCbSpecial1: TComboBox;
    DBCbSpecial2: TComboBox;
    DBCbSpecial3: TComboBox;
    DBCbWeapon1: TComboBox;
    DBCbWeapon2: TComboBox;
    DBCbWeapon3: TComboBox;
    DBCbWeapon4: TComboBox;
    DBCbWeapon5: TComboBox;
    DBCbWeapon6: TComboBox;
    DBCbWeapon7: TComboBox;
    DBCbWeapon8: TComboBox;
    DBCbTabled1: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    TcMain: TTabControl;
    PnSheep: TPanel;
    CbArmour1: TLabel;
    CbArmour2: TLabel;
    CbArmour3: TLabel;
    CbArmour4: TLabel;
    CbArmour5: TLabel;
    CbArmour6: TLabel;
    CbArmour7: TLabel;
    CbSpecial1: TLabel;
    CbSpecial2: TLabel;
    CbSpecial3: TLabel;
    CbWeapon1: TLabel;
    CbWeapon2: TLabel;
    CbWeapon3: TLabel;
    CbWeapon4: TLabel;
    CbWeapon5: TLabel;
    CbWeapon6: TLabel;
    CbWeapon7: TLabel;
    CbWeapon8: TLabel;
    CbTabled1: TLabel;
    GbCommon: TGroupBox;
    LeVolumeMax: TLabeledEdit;
    LeVolume: TLabeledEdit;
    LeArmour: TLabeledEdit;
    LeShield: TLabeledEdit;
    LeDPSShield: TLabeledEdit;
    LeDPSArmour: TLabeledEdit;
    LeDPS: TLabeledEdit;
    Label20: TLabel;
    MeBonus: TMemo;
    MeProt: TMemo;
    DBCbTypeSheep: TComboBox;
    DBCbNameSheep: TComboBox;
    DBCbMK: TComboBox;
    LeSpeedUP: TLabeledEdit;
    LeSpeedRotate: TLabeledEdit;
    LeSpeedStreif: TLabeledEdit;
    LeSpeedSektor: TLabeledEdit;
    LeCargo: TLabeledEdit;
    LeExpirience: TLabeledEdit;
    pnl5: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    EdMassMax: TEdit;
    lbl4: TLabel;
    EdAmourMin: TEdit;
    lbl5: TLabel;
    EdShieldMin: TEdit;
    lbl6: TLabel;
    BtGoPerebor: TButton;
    GbLimit: TGroupBox;
    Gb1: TGroupBox;
    CbWeapon: TComboBox;
    MeWeapon: TMemo;
    CbSpecial: TComboBox;
    MeSpecial: TMemo;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EdDistMin: TEdit;
    BtAddWeaponPerebor: TButton;
    BtAddSpecialPerebor: TButton;
    MeTest: TMemo;
    Label24: TLabel;
    SeNomSborka: TSpinEdit;
    Label25: TLabel;
    LaKolSborki: TLabel;
    BtCreateNewSheep: TButton;
    BtSaveSheep: TButton;
    OdLoad: TOpenDialog;
    BtLoadSheep: TButton;
    CbAramourPerebor: TCheckBox;
    CbShieldPerebor: TCheckBox;
    Label26: TLabel;
    EdSpeedMin: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EdSpeedRotateMin: TEdit;
    EdSpeedStreifMin: TEdit;
    LaMass: TLabel;
    PnSet: TPanel;
    PbSet: TPaintBox;
    Pn1: TPanel;
    Pn2: TPanel;
    EdMaxArmourSet: TEdit;
    EdMinArmourSet: TEdit;
    EdMinDPSSet: TEdit;
    EdMaxDPSSet: TEdit;
    Pn3: TPanel;
    Pn4: TPanel;
    CbXSet: TComboBox;
    CbYSet: TComboBox;
    Pn5: TPanel;
    BtGo: TButton;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    BtGoFleetForm: TButton;
    PnProtokol: TPanel;
    MeOpisanie: TMemo;
    CbVivodOpisanie: TCheckBox;
    EdMassMin: TEdit;
    EdDPSMin: TEdit;
    Label4: TLabel;
    ColorBSheep: TColorBox;
    ColorBPerebor: TColorBox;
    Label10: TLabel;
    BtDelPareto: TButton;
    Gb2: TGroupBox;
    CbVisibleParetoSet: TCheckBox;
    ColorBSheepPAretoSet: TColorBox;
    Label16: TLabel;
    CbUnicalArmour: TCheckBox;
    BtSbrosColorSheep: TButton;
    Gb3: TGroupBox;
    BtGoPerebor2Variants: TButton;
    CbFirsLimit: TComboBox;
    CbSecondLimit: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    MeWeaponLimit2: TMemo;
    MeSpecialLimit2: TMemo;
    ColorBFirstLimit: TColorBox;
    ColorBSecondLimit: TColorBox;
    CbAddResitToArmour: TCheckBox;
    SbArmourAll1: TSpeedButton;
    SbArmourAll2: TSpeedButton;
    SbArmourAll3: TSpeedButton;
    SbArmourAll4: TSpeedButton;
    SbArmourAll5: TSpeedButton;
    SbArmourAll6: TSpeedButton;
    SbArmourAll7: TSpeedButton;
    SbWeaponAll1: TSpeedButton;
    Sb1: TSpeedButton;
    Sb2: TSpeedButton;
    Sb3: TSpeedButton;
    Sb4: TSpeedButton;
    Sb5: TSpeedButton;
    Sb6: TSpeedButton;
    Sb7: TSpeedButton;
    BtSbrosSheep: TButton;
    Label19: TLabel;
    LaMassOstalos: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    EdDBuild: TEdit;
    EdDBuild10: TEdit;
    EdHBuild: TEdit;
    EdMBuild: TEdit;
    EdSBuild: TEdit;
    EdHBuild10: TEdit;
    EdMBuild10: TEdit;
    EdSBuild10: TEdit;
    EdHRepair: TEdit;
    EdMRepair: TEdit;
    EdSRepair: TEdit;
    SdSave: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure DBCbTypeSheepChange(Sender: TObject);
    procedure DBCbNameSheepChange(Sender: TObject);
    procedure DBCbMKChange(Sender: TObject);
    procedure DBCbShield1Change(Sender: TObject);
    procedure DBCbShield2Change(Sender: TObject);
    procedure DBCbArmour1Change(Sender: TObject);
    procedure DBCbArmour2Change(Sender: TObject);
    procedure DBCbArmour3Change(Sender: TObject);
    procedure DBCbArmour4Change(Sender: TObject);
    procedure DBCbArmour5Change(Sender: TObject);
    procedure DBCbArmour6Change(Sender: TObject);
    procedure DBCbArmour7Change(Sender: TObject);
    procedure DBCbSpecial1Change(Sender: TObject);
    procedure DBCbSpecial2Change(Sender: TObject);
    procedure DBCbSpecial3Change(Sender: TObject);
    procedure DBCbWeapon1Change(Sender: TObject);
    procedure DBCbWeapon2Change(Sender: TObject);
    procedure DBCbWeapon3Change(Sender: TObject);
    procedure DBCbWeapon4Change(Sender: TObject);
    procedure DBCbWeapon5Change(Sender: TObject);
    procedure DBCbWeapon6Change(Sender: TObject);
    procedure DBCbWeapon7Change(Sender: TObject);
    procedure DBCbWeapon8Change(Sender: TObject);
    procedure DBCbTabled1Change(Sender: TObject);
    procedure BCbShield1Change(Sender: TObject);
    procedure BCbShield2Change(Sender: TObject);
    procedure BCbArmour1Change(Sender: TObject);
    procedure BCbArmour2Change(Sender: TObject);
    procedure BCbArmour3Change(Sender: TObject);
    procedure BCbArmour4Change(Sender: TObject);
    procedure BCbArmour5Change(Sender: TObject);
    procedure BCbArmour6Change(Sender: TObject);
    procedure BCbArmour7Change(Sender: TObject);
    procedure BCbSpecial1Change(Sender: TObject);
    procedure BCbSpecial2Change(Sender: TObject);
    procedure BCbSpecial3Change(Sender: TObject);
    procedure BCbWeapon1Change(Sender: TObject);
    procedure BCbWeapon2Change(Sender: TObject);
    procedure BCbWeapon3Change(Sender: TObject);
    procedure BCbWeapon4Change(Sender: TObject);
    procedure BCbWeapon5Change(Sender: TObject);
    procedure BCbWeapon6Change(Sender: TObject);
    procedure BCbWeapon7Change(Sender: TObject);
    procedure BCbWeapon8Change(Sender: TObject);
    procedure BCbTabled1Change(Sender: TObject);
    procedure BtAddWeaponPereborClick(Sender: TObject);
    procedure BtAddSpecialPereborClick(Sender: TObject);
    procedure BtGoPereborClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SeNomSborkaChange(Sender: TObject);
    procedure BtCreateNewSheepClick(Sender: TObject);
    procedure BtSaveSheepClick(Sender: TObject);
    procedure BtLoadSheepClick(Sender: TObject);
    procedure LeVolumeChange(Sender: TObject);
    procedure TcMainChange(Sender: TObject);
    procedure BtGoClick(Sender: TObject);
    procedure EdMaxArmourSetChange(Sender: TObject);
    procedure CbXSetChange(Sender: TObject);
    procedure CbYSetChange(Sender: TObject);
    procedure BtGoFleetFormClick(Sender: TObject);
    procedure ColorBSheepChange(Sender: TObject);
    procedure BtDelParetoClick(Sender: TObject);
    procedure CbVisibleParetoSetClick(Sender: TObject);
    procedure ColorBSheepPAretoSetChange(Sender: TObject);
    procedure BtSbrosColorSheepClick(Sender: TObject);
    procedure BtGoPerebor2VariantsClick(Sender: TObject);
    procedure EdMassMaxChange(Sender: TObject);
    procedure SbArmourAll1Click(Sender: TObject);
    procedure SbArmourAll2Click(Sender: TObject);
    procedure SbArmourAll3Click(Sender: TObject);
    procedure SbArmourAll4Click(Sender: TObject);
    procedure SbArmourAll5Click(Sender: TObject);
    procedure SbArmourAll6Click(Sender: TObject);
    procedure SbArmourAll7Click(Sender: TObject);
    procedure SbWeaponAll1Click(Sender: TObject);
    procedure Sb1Click(Sender: TObject);
    procedure Sb2Click(Sender: TObject);
    procedure Sb3Click(Sender: TObject);
    procedure Sb4Click(Sender: TObject);
    procedure Sb5Click(Sender: TObject);
    procedure Sb6Click(Sender: TObject);
    procedure Sb7Click(Sender: TObject);
    procedure BtSbrosSheepClick(Sender: TObject);
//    procedure Bt1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure GoCalcSheep (var ElSheepArray:TSheepCondition);
procedure VisibleParSheepMemo(Me:TMemo; ElSheepArray:TSheepCondition);
procedure GoVivodSostavSheep(Me:TMemo; ElSheepArray:TSheepCondition);
procedure SaveSheepInTextFile(Sheep:TSheepCondition);
procedure LoadSheepAsTextFile(var ElSheep:TSheepCondition; var n:longword);
procedure GoToParettoSet(CurrentColor:TColor; TypeParX,TypeParY:LongWord);
Procedure DelNotParetoSet(CurrentColor:TColor; var KolDelete:Longword);


var
  FFleet: TFFleet;
  st:string;
  NomCurSheep:LongWord;


implementation

uses UFAllfleet;

{$R *.dfm}

procedure GoCalcSheep (var ElSheepArray:TSheepCondition);
var
  MassArmour,MassWeapon,MassSpecial,MassAll,
  ShieldEnergy,ShieldVost,
  ArmourPar,ArmourResistanceE,ArmourResistanceV,ArmourResistanceD,
  SpeedMaxUp,SpeedMaxRotate,SpeedMaxStreif,SpeedMaxSektor,
  Expirience,Cargo:Double;
  TimeBuild,TimeRepair:LongWord;

  i,j:LongWord;
begin
    If FFleet.CbVivodOpisanie.Checked then
FFleet.MeOpisanie.Lines.Add('');
If FFleet.CbVivodOpisanie.Checked then
FFleet.MeOpisanie.Lines.Add('Расчет сборки корабля '+ElSheepArray.Sheep.typeSheep+' '+ElSheepArray.Sheep.Name+' '+ElSheepArray.Sheep.MK);

MassArmour:=0;
ShieldEnergy:=0;
ShieldVost:=0;
ArmourPar:=0;
ElSheepArray.MaxDistance:=0;
ElSheepArray.MinDistance:=MaxInt;
ArmourResistanceE:=0;ArmourResistanceV:=0;ArmourResistanceD:=0;
SpeedMaxUp:=0;SpeedMaxRotate:=0;SpeedMaxStreif:=0;SpeedMaxSektor:=0;
Expirience:=0;Cargo:=0;

TimeBuild:=ElSheepArray.Sheep.TimeBuild;
TimeRepair:=ElSheepArray.Sheep.TimeRepair;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Установка времени постройки и ремонта. Время постройки='+FloatToStr(TimeBuild)+'. УВремя ремонта ='+FloatToStr(TimeRepair));


If (Length(ElSheepArray.Armour)>1) then
For i:=1 to Length(ElSheepArray.Armour)-1 do
  If ElSheepArray.Armour[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается броня №'+IntToStr(i)+' - '+ElSheepArray.Armour[i].Name+' '+IntToStr(ElSheepArray.Armour[i].Level)+' ID='+IntToStr(ElSheepArray.Armour[i].ID));
    MassArmour:=MassArmour+ElSheepArray.Armour[i].Mass;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение массы брони. Масса брони итог='+FloatToStr(MassArmour)+'. Увеличение на ='+FloatToStr(ElSheepArray.Armour[i].Mass));

    ArmourPar:=ArmourPar+ElSheepArray.Armour[i].ArmourPar*ElSheepArray.Sheep.ArmourPar;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение параметра брони. Броня итог='+FloatToStr(ArmourPar)+'. Увеличение на ='+FloatToStr(ElSheepArray.Armour[i].ArmourPar*ElSheepArray.Sheep.ArmourPar)+'. Параметр брони ='+FloatToStr(ElSheepArray.Armour[i].ArmourPar)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.ArmourPar));

    ArmourResistanceE:=ArmourResistanceE+ElSheepArray.Armour[i].ResistEnergy*ElSheepArray.Sheep.ArmourPar;
    ArmourResistanceV:=ArmourResistanceV+ElSheepArray.Armour[i].ResistVzr*ElSheepArray.Sheep.ArmourPar;
    ArmourResistanceD:=ArmourResistanceD+ElSheepArray.Armour[i].ResistDal*ElSheepArray.Sheep.ArmourPar;

    Expirience:=Expirience+ElSheepArray.Armour[i].Expirience;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение опыта за счет брони. Опыт='+FloatToStr(Expirience)+'. Увеличение на ='+FloatToStr(ElSheepArray.Armour[i].Expirience));

    TimeBuild:=TimeBuild+ElSheepArray.Armour[i].TimeBuild;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение времени строительства за счет брони. Время строительства='+FloatToStr(TimeBuild)+'. Увеличение на ='+FloatToStr(ElSheepArray.Armour[i].TimeBuild));
    TimeRepair:=TimeRepair+ElSheepArray.Armour[i].TimeRepair;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение времени ремонта за счет брони. Время ремонта='+FloatToStr(TimeRepair)+'. Увеличение на ='+FloatToStr(ElSheepArray.Armour[i].TimeRepair));

    end;
If (Length(ElSheepArray.Special)>1) then
For i:=1 to Length(ElSheepArray.Special)-1 do
  If ElSheepArray.Special[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается спецсредство №'+IntToStr(i)+' - '+ElSheepArray.Special[i].Name+' '+IntToStr(ElSheepArray.Special[i].Level)+' ID='+IntToStr(ElSheepArray.Special[i].ID));

    If ElSheepArray.Special[i].Mass<>0 then
    begin
    MassArmour:=MassArmour+ElSheepArray.Special[i].Mass;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение массы брони за счет спецсредства. Масса брони='+FloatToStr(MassArmour)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].Mass));
    end;

    If ElSheepArray.Special[i].ArmourPar<>0 then
    begin
    ArmourPar:=ArmourPar+ElSheepArray.Special[i].ArmourPar*ElSheepArray.Sheep.ArmourPar;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение параметра брони за счет спецсредства. Броня='+FloatToStr(ArmourPar)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].ArmourPar*ElSheepArray.Sheep.ArmourPar)+'. Параметр брони ='+FloatToStr(ElSheepArray.Special[i].ArmourPar)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.ArmourPar));
    end;


    If ElSheepArray.Special[i].Cargo<>0 then
    begin
    Cargo:=Cargo+ElSheepArray.Special[i].Cargo;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение перевозимого груза за счет спецсредства. Груз='+FloatToStr(Cargo)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].Cargo));
    end;

    TimeBuild:=TimeBuild+ElSheepArray.Special[i].TimeBuild;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение времени строительства за счет спецсредства. Время строительства='+FloatToStr(TimeBuild)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].TimeBuild));

    if  ElSheepArray.Special[i].TimeRepair<>0 then
    begin
    TimeRepair:=TimeRepair+ElSheepArray.Special[i].TimeRepair;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение времени ремонта за счет спецсредства. Время ремонта='+FloatToStr(TimeRepair)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].TimeRepair));
    end;

    end;

IF ElSheepArray.Sheep.MassArmour<>1 then
begin
MassArmour:=MassArmour*ElSheepArray.Sheep.MassArmour;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Уменьшение массы брони за счет корабля. Масса брони='+FloatToStr(MassArmour)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.MassArmour));
end;

ArmourPar:=ArmourPar+ElSheepArray.Sheep.ArmourSheep;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Уменьшение параметра брони за счет корабля. Броня='+FloatToStr(ArmourPar)+'. Броня корабля ='+FloatToStr(ElSheepArray.Sheep.ArmourSheep));
SpeedMaxUp:=ElSheepArray.Sheep.SpeedUp;
SpeedMaxRotate:=ElSheepArray.Sheep.SpeedRotate;
SpeedMaxStreif:=ElSheepArray.Sheep.SpeedStreif;
SpeedMaxSektor:=ElSheepArray.Sheep.SpeedSektor;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Установка скорости корабля. Вперед='+FloatToStr(SpeedMaxUp)+'. Поворот ='+FloatToStr(SpeedMaxRotate)+'. Стрейф ='+FloatToStr(SpeedMaxStreif)+'. Сектор ='+FloatToStr(SpeedMaxSektor));


Cargo:=Cargo+ElSheepArray.Sheep.Cargo;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение перевозимого груза за корабля. Груз='+FloatToStr(Cargo)+'. Груз корабля ='+FloatToStr(ElSheepArray.Sheep.Cargo));

Expirience:=Expirience+ElSheepArray.Sheep.Expirience;
   If FFleet.CbVivodOpisanie.Checked then
   FFleet.MeOpisanie.Lines.Add('Увеличение опыта за счет корабля. Опыт='+FloatToStr(Expirience)+'. Увеличение на ='+FloatToStr(ElSheepArray.Sheep.Expirience));

If (Length(ElSheepArray.Shield)>1) then
For i:=1 to Length(ElSheepArray.Shield)-1 do
  If ElSheepArray.Shield[i].ID<>0 then
     begin
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Рассматривается щит №'+IntToStr(i)+' - '+ElSheepArray.Shield[i].Name+' '+IntToStr(ElSheepArray.Shield[i].Level)+' ID='+IntToStr(ElSheepArray.Shield[i].ID));
     MassArmour:=MassArmour+ElSheepArray.Shield[i].Mass;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение массы брони за щита. Масса брони и щита='+FloatToStr(MassArmour)+'. Масса щита ='+FloatToStr(ElSheepArray.Shield[i].Mass));

     ShieldEnergy:=ShieldEnergy+ElSheepArray.Shield[i].ShieldPar;
     ShieldVost:=ShieldVost+ElSheepArray.Shield[i].Vostan;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение энергии щита. Энергия щита='+FloatToStr(ShieldEnergy)+'. Увеличение на ='+FloatToStr(ElSheepArray.Shield[i].ShieldPar)+'. Востановление щита='+FloatToStr(ShieldVost)+'. Увеличение на ='+FloatToStr(ElSheepArray.Shield[i].Vostan));

     Expirience:=Expirience+ElSheepArray.Shield[i].Expirience;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение опыта за счет щита. Опыт='+FloatToStr(Expirience)+'. Увеличение на ='+FloatToStr(ElSheepArray.Shield[i].Expirience));

     TimeBuild:=TimeBuild+ElSheepArray.Shield[i].TimeBuild;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение времени строительства за счет щита. Время строительства='+FloatToStr(TimeBuild)+'. Увеличение на ='+FloatToStr(ElSheepArray.Shield[i].TimeBuild));

     if  ElSheepArray.Shield[i].TimeRepair<>0 then
     begin
     TimeRepair:=TimeRepair+ElSheepArray.Shield[i].TimeRepair;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение времени ремонта за счет щита. Время ремонта='+FloatToStr(TimeRepair)+'. Увеличение на ='+FloatToStr(ElSheepArray.Shield[i].TimeRepair));
     end;

     end;

ElSheepArray.MassArmour:=MassArmour;

MassWeapon:=0;
If (Length(ElSheepArray.Weapon)>1) then
For i:=1 to Length(ElSheepArray.Weapon)-1 do
  If ElSheepArray.Weapon[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается оружие №'+IntToStr(i)+' - '+ElSheepArray.Weapon[i].Name+' '+IntToStr(ElSheepArray.Weapon[i].Level)+' ID='+IntToStr(ElSheepArray.Weapon[i].ID));

    MassWeapon:=MassWeapon+ElSheepArray.Weapon[i].Mass;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение массы оружия. Масса оружия='+FloatToStr(MassWeapon)+'. Увеличение на ='+FloatToStr(ElSheepArray.Weapon[i].Mass));

    Expirience:=Expirience+ElSheepArray.Weapon[i].Expirience;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение опыта за счет оружия. Опыт='+FloatToStr(Expirience)+'. Увеличение на ='+FloatToStr(ElSheepArray.Weapon[i].Expirience));

    TimeBuild:=TimeBuild+ElSheepArray.Weapon[i].TimeBuild;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение времени строительства за счет оружия. Время строительства='+FloatToStr(TimeBuild)+'. Увеличение на ='+FloatToStr(ElSheepArray.Weapon[i].TimeBuild));
     if  ElSheepArray.Weapon[i].TimeRepair<>0 then
     begin
     TimeRepair:=TimeRepair+ElSheepArray.Weapon[i].TimeRepair;
     If FFleet.CbVivodOpisanie.Checked then
     FFleet.MeOpisanie.Lines.Add('Увеличение времени ремонта за счет оружия. Время ремонта='+FloatToStr(TimeRepair)+'. Увеличение на ='+FloatToStr(ElSheepArray.Weapon[i].TimeRepair));
     end;

    if ElSheepArray.MaxDistance<ElSheepArray.Weapon[i].MaxDistance then
      ElSheepArray.MaxDistance:=ElSheepArray.Weapon[i].MaxDistance;
    if ElSheepArray.MinDistance>ElSheepArray.Weapon[i].MinDistance then
      ElSheepArray.MinDistance:=ElSheepArray.Weapon[i].MinDistance;

    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Определение максимальной и минимальной дистанции. Макс дистанция='+FloatToStr(ElSheepArray.MaxDistance)+'. Мин дистанция ='+FloatToStr(ElSheepArray.MinDistance));

    end;

If ElSheepArray.Sheep.MassWeapoon<>1 then
begin
MassWeapon:=MassWeapon*ElSheepArray.Sheep.MassWeapoon;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Уменьшение массы оружия за счет корабля. Масса оружия='+FloatToStr(MassWeapon)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.MassWeapoon));
end;

MassSpecial:=0;
If (Length(ElSheepArray.Special)>1) then
For i:=1 to Length(ElSheepArray.Special)-1 do
  If ElSheepArray.Special[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается спецсредство №'+IntToStr(i)+' - '+ElSheepArray.Special[i].Name+' '+IntToStr(ElSheepArray.Special[i].Level)+' ID='+IntToStr(ElSheepArray.Special[i].ID));

    If ElSheepArray.Special[i].MassWeapoon<>0 then
    begin
    MassSpecial:=MassSpecial+MassWeapon*(ElSheepArray.Special[i].MassWeapoon);
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение массы оружия за счет спецсредства. Масса оружия='+FloatToStr(MassWeapon)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Special[i].MassWeapoon+1));
    end;

    SpeedMaxUp:=SpeedMaxUp+ElSheepArray.Special[i].SpeedUp;
    SpeedMaxRotate:=SpeedMaxRotate+ElSheepArray.Special[i].SpeedRotate;
    SpeedMaxStreif:=SpeedMaxStreif+ElSheepArray.Special[i].SpeedStreif;
    SpeedMaxSektor:=SpeedMaxSektor+ElSheepArray.Special[i].SpeedSektor;

    If FFleet.CbVivodOpisanie.Checked then begin
    FFleet.MeOpisanie.Lines.Add('Увеличение скорости корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxUp)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].SpeedUp));
    FFleet.MeOpisanie.Lines.Add('Увеличение скорости поворота корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxRotate)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].SpeedRotate));
    FFleet.MeOpisanie.Lines.Add('Увеличение скорости стрейфа корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxSektor)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[i].SpeedStreif));
    end;
    end;

ElSheepArray.MassWeapon:=MassWeapon;

MassAll:=ElSheepArray.Sheep.Mass+MassArmour+MassWeapon+MassSpecial;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Итоговая масса корабля='+FloatToStr(MassAll)+'. Масса корабля ='+FloatToStr(ElSheepArray.Sheep.Mass)+'. Масса брони ='+FloatToStr(MassArmour)+'. Масса оружия ='+FloatToStr(MassWeapon)+'. Масса спецсредства ='+FloatToStr(MassSpecial));

MassSpecial:=0;
If (Length(ElSheepArray.Special)>1) then
For i:=1 to Length(ElSheepArray.Special)-1 do
  If ElSheepArray.Special[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается спецсредство №'+IntToStr(i)+' - '+ElSheepArray.Special[i].Name+' '+IntToStr(ElSheepArray.Special[i].Level)+' ID='+IntToStr(ElSheepArray.Special[i].ID));

    If ElSheepArray.Special[i].MassSheep<>0 then
    begin
    MassSpecial:=MassSpecial+MassAll*(ElSheepArray.Special[i].MassSheep);
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение итоговой массы за счет спецсредства. Итоговая масса='+FloatToStr(MassAll+MassSpecial)+' Масса спецсредства='+FloatToStr(MassSpecial)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[i].MassSheep+1));
    end;

    SpeedMaxUp:=SpeedMaxUp*ElSheepArray.Special[i].SpeedUpP;
    SpeedMaxRotate:=SpeedMaxRotate*ElSheepArray.Special[i].SpeedRotateP;
    SpeedMaxStreif:=SpeedMaxStreif*ElSheepArray.Special[i].SpeedStreifP;
    SpeedMaxSektor:=SpeedMaxSektor*ElSheepArray.Special[i].SpeedSektorP;

    If FFleet.CbVivodOpisanie.Checked then begin
    FFleet.MeOpisanie.Lines.Add('Уменьшение скорости корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxUp)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[i].SpeedUpP));
    FFleet.MeOpisanie.Lines.Add('Уменьшение скорости поворота корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxRotate)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[i].SpeedRotateP));
    FFleet.MeOpisanie.Lines.Add('Уменьшение скорости стрейфа корабля за счет спецсредства. Скорость='+FloatToStr(SpeedMaxSektor)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[i].SpeedStreifP));
    end;
    end;

If (Length(ElSheepArray.Tabled)>1) then
For i:=1 to Length(ElSheepArray.Tabled)-1 do
  If ElSheepArray.Tabled[i].ID<>0 then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается таблетка №'+IntToStr(i)+' - '+ElSheepArray.Tabled[i].Name+' '+IntToStr(ElSheepArray.Tabled[i].Level)+' ID='+IntToStr(ElSheepArray.Tabled[i].ID));

    MassSpecial:=MassSpecial+MassAll*(ElSheepArray.Tabled[1].MassSheep);
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение итоговой массы за счет таблетки. Итоговая масса='+FloatToStr(MassAll+MassSpecial)+' Масса таблетки='+FloatToStr(MassSpecial)+'. Параметр таблетки ='+FloatToStr(ElSheepArray.Tabled[1].MassSheep+1));

    Expirience:=Expirience+ElSheepArray.Tabled[i].Expirience;
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Увеличение опыта за таблетки. Опыт='+FloatToStr(Expirience)+'. Увеличение на ='+FloatToStr(ElSheepArray.Tabled[i].Expirience));

    end;

MassAll:=MassAll+MassSpecial;

j:=Length(ElSheepArray.Weapon);
SetLength(ElSheepArray.WeaponPar,j);
If Length(ElSheepArray.Weapon)<>0 then
For i:=1 to Length(ElSheepArray.Weapon)-1 do
IF  ElSheepArray.Weapon[i].ID<>0 then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  FFleet.MeOpisanie.Lines.Add('Рассматривается оружие №'+IntToStr(i)+' - '+ElSheepArray.Weapon[i].Name+' '+IntToStr(ElSheepArray.Weapon[i].Level)+' ID='+IntToStr(ElSheepArray.Weapon[i].ID));

  ElSheepArray.WeaponPar[i]:=ElSheepArray.Weapon[i];

  If (Length(ElSheepArray.Special)>1) then
  For j:=1 to Length(ElSheepArray.Special)-1 do
    If (ElSheepArray.Special[j].ID<>0) and (ElSheepArray.Special[j].TypeWeapoon=ElSheepArray.WeaponPar[i].TypeWeapon) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается влияние спецсредства №'+IntToStr(j)+' - '+ElSheepArray.Special[j].Name+' '+IntToStr(ElSheepArray.Special[j].Level)+' ID='+IntToStr(ElSheepArray.Special[j].ID));

    If ElSheepArray.Special[j].MaxDistance<>0 then
    begin
    ElSheepArray.WeaponPar[i].MaxDistance:=ElSheepArray.WeaponPar[i].MaxDistance+ElSheepArray.Special[j].MaxDistance;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение максимальной дистанции за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MaxDistance)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[j].MaxDistance));
    end;
    If ElSheepArray.Special[j].MinDistance<>0 then
    begin
    ElSheepArray.WeaponPar[i].MinDistance:=ElSheepArray.WeaponPar[i].MinDistance+ElSheepArray.Special[j].MinDistance;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение минимальной дистанции за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MinDistance)+'. Увеличение на ='+FloatToStr(ElSheepArray.Special[j].MinDistance));
    end;
    If (ElSheepArray.Special[j].Damage<>1) or (ElSheepArray.Special[j].DamageArmour<>1) then
    begin
    ElSheepArray.WeaponPar[i].DPS:=ElSheepArray.WeaponPar[i].DPS*ElSheepArray.Special[j].Damage*ElSheepArray.Special[j].DamageArmour;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение ДПС за счет спедсредства. ДПС='+FloatToStr(ElSheepArray.WeaponPar[i].DPS)+'. Параметр спедсредства ='+FloatToStr(ElSheepArray.Special[j].Damage));
    end;
    If ElSheepArray.Special[j].Razbros<>1 then
    begin
    ElSheepArray.WeaponPar[i].Razbros:=ElSheepArray.WeaponPar[i].Razbros*ElSheepArray.Special[j].Razbros;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение разброса за счет спедсредства. Разброс='+FloatToStr(ElSheepArray.WeaponPar[i].Razbros)+'. Параметр спедсредства ='+FloatToStr(ElSheepArray.Special[j].Razbros));
    end;
    If ElSheepArray.Special[j].Radius<>0 then
    begin
    ElSheepArray.WeaponPar[i].Radius:=ElSheepArray.WeaponPar[i].Radius+ElSheepArray.Special[j].Radius;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение радиуса урона за счет спедсредства. Радиус='+FloatToStr(ElSheepArray.WeaponPar[i].Radius)+'. Параметр спедсредства ='+FloatToStr(ElSheepArray.Special[j].Radius));
    end;
    end;

  If ElSheepArray.Sheep.Damage<>1 then
  begin
  ElSheepArray.WeaponPar[i].DPS:=ElSheepArray.WeaponPar[i].DPS*ElSheepArray.Sheep.Damage;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение ДПС за счет корабля. ДПС='+FloatToStr(ElSheepArray.WeaponPar[i].DPS)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.Damage));
  end;
  If ElSheepArray.Sheep.Obhod<>1 then
  begin
  ElSheepArray.WeaponPar[i].Obhod:=ElSheepArray.WeaponPar[i].Obhod*ElSheepArray.Sheep.Obhod;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение обхода щита за счет корабля. Обход щита='+FloatToStr(ElSheepArray.WeaponPar[i].Obhod)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.Obhod));
  end;
{  If (ElSheepArray.Sheep.DamageShield<>1) or (ElSheepArray.WeaponPar[i].DamageShield<>1) then
  begin }
  ElSheepArray.WeaponPar[i].DPSShield:=ElSheepArray.WeaponPar[i].DPS*ElSheepArray.WeaponPar[i].DamageShield*ElSheepArray.Sheep.DamageShield;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение урона по щиту за счет корабля. Урон по щиту='+FloatToStr(ElSheepArray.WeaponPar[i].DPSShield)+'. ДПС ='+FloatToStr(ElSheepArray.WeaponPar[i].DPS)+'. Урон по щита за счет бонуса оружия ='+FloatToStr(ElSheepArray.WeaponPar[i].DamageShield)+'. Урон по щита за счет бонуса корабля ='+FloatToStr(ElSheepArray.Sheep.DamageShield));
//  end;

  If (Length(ElSheepArray.Special)>1) then
  For j:=1 to Length(ElSheepArray.Special)-1 do
    If (ElSheepArray.Special[j].ID<>0) and (ElSheepArray.Special[j].TypeWeapoon=ElSheepArray.WeaponPar[i].TypeWeapon) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Рассматривается влияние спецсредства №'+IntToStr(j)+' - '+ElSheepArray.Special[j].Name+' '+IntToStr(ElSheepArray.Special[j].Level)+' ID='+IntToStr(ElSheepArray.Special[j].ID));

    If ElSheepArray.Special[j].DamageShield<>1 then
    begin
    ElSheepArray.WeaponPar[i].DPSShield:=ElSheepArray.WeaponPar[i].DPSShield*ElSheepArray.Special[j].DamageShield;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение урона по щиту за счет корабля. Урон по щиту='+FloatToStr(ElSheepArray.WeaponPar[i].DPSShield)+'. Урон по щита за счет бонуса спецсредства ='+FloatToStr(ElSheepArray.Special[j].DamageShield));
    end;
    If ElSheepArray.Special[j].MaxDistanceP<>1 then
    begin
    ElSheepArray.WeaponPar[i].MaxDistance:=ElSheepArray.WeaponPar[i].MaxDistance*ElSheepArray.Special[j].MaxDistanceP;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение максимальной дистанции за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MaxDistance)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[j].MaxDistanceP));
    end;
    If ElSheepArray.Special[j].MinDistanceP<>1 then
    begin
    ElSheepArray.WeaponPar[i].MinDistance:=ElSheepArray.WeaponPar[i].MinDistance*ElSheepArray.Special[j].MinDistanceP;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение минимальной дистанции за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MinDistance)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[j].MinDistanceP));
    end;
    If ElSheepArray.Special[j].Obhod<>1 then
    begin

    ElSheepArray.WeaponPar[i].Obhod:=ElSheepArray.WeaponPar[i].Obhod*ElSheepArray.Special[j].Obhod;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение обхода щита за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].Obhod)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[j].Obhod));
    end;
    If ElSheepArray.Special[j].SpeedWeapoon<>0 then
    begin
    ElSheepArray.WeaponPar[i].Speed:=ElSheepArray.WeaponPar[i].Speed+ElSheepArray.Special[j].SpeedWeapoon;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение скорости полета снаряда за счет спедсредства. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].Speed)+'. Параметр спецсредства ='+FloatToStr(ElSheepArray.Special[j].SpeedWeapoon));
    end;
    end;

  If ElSheepArray.Sheep.Distance<>1 then
  begin
  ElSheepArray.WeaponPar[i].MaxDistance:=ElSheepArray.WeaponPar[i].MaxDistance*ElSheepArray.Sheep.Distance;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение максимальной дистанции за счет корабля. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MaxDistance)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.Distance));
  end;
  If ElSheepArray.Sheep.Distance<>1 then
  begin
  ElSheepArray.WeaponPar[i].MinDistance:=ElSheepArray.WeaponPar[i].MinDistance*ElSheepArray.Sheep.Distance;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение минимальной дистанции за счет корабля. Дистанция='+FloatToStr(ElSheepArray.WeaponPar[i].MinDistance)+'. Параметр корабля ='+FloatToStr(ElSheepArray.Sheep.Distance));
  end;
  end;

ElSheepArray.MassAll:=MassAll;
If MassAll<>0 then
begin
ElSheepArray.ArmourResistanceE:=ArmourResistanceE/Massall;
ElSheepArray.ArmourResistanceV:=ArmourResistanceV/Massall;
ElSheepArray.ArmourResistanceD:=ArmourResistanceD/Massall;
end;
ElSheepArray.ShieldEnergyMax:=ShieldEnergy;
ElSheepArray.ShieldVostan:=ShieldVost;
ElSheepArray.ArmourMax:=ArmourPar;
ElSheepArray.SpeedMaxUp:=SpeedMaxUp;
ElSheepArray.SpeedMaxRotate:=SpeedMaxRotate;
ElSheepArray.SpeedMaxStreif:=SpeedMaxStreif;
ElSheepArray.SpeedMaxSektor:=SpeedMaxSektor;
ElSheepArray.Expirience:=Expirience;
ElSheepArray.Cargo:=Cargo;
ElSheepArray.TimeBuild:=TimeBuild;
ElSheepArray.TimeRepair:=TimeRepair;

ElSheepArray.DPS:=0;
ElSheepArray.DPSShield:=0;
ElSheepArray.DPSArmour:=0;
If FFleet.CbVivodOpisanie.Checked then
FFleet.MeOpisanie.Lines.Add('Подсчет общего параметра ДПС');
If Length(ElSheepArray.Weapon)>1 then
For i:=1 to Length(ElSheepArray.Weapon)-1 do
IF  ElSheepArray.Weapon[i].ID<>0 then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  FFleet.MeOpisanie.Lines.Add('Выбираем оружие №'+IntToStr(i)+' - '+ElSheepArray.Weapon[i].Name+' '+IntToStr(ElSheepArray.Weapon[i].Level)+' ID='+IntToStr(ElSheepArray.Weapon[i].ID));

  ElSheepArray.DPS:=ElSheepArray.DPS+ElSheepArray.WeaponPar[i].DPS;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение ДПС. ДПС='+FloatToStr(ElSheepArray.DPS)+'. Увеличение на ='+FloatToStr(ElSheepArray.WeaponPar[i].DPS));
  ElSheepArray.DPSShield:=ElSheepArray.DPSShield+ElSheepArray.WeaponPar[i].DPSShield;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение ДПС по щитам. ДПС по щитам='+FloatToStr(ElSheepArray.DPSShield)+'. Увеличение на ='+FloatToStr(ElSheepArray.WeaponPar[i].DPSShield));
  ElSheepArray.DPSArmour:=ElSheepArray.DPSArmour+ElSheepArray.WeaponPar[i].DPSArmour;
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Увеличение ДПС по броне. ДПС по броне='+FloatToStr(ElSheepArray.DPSArmour)+'. Увеличение на ='+FloatToStr(ElSheepArray.WeaponPar[i].DPSArmour));
  end;

end;



procedure GoVivodSostavSheep(Me:TMemo; ElSheepArray:TSheepCondition);
var
  i:LongWord;
begin
with FFleetAll do
  begin
  Me.Clear;
  Me.Lines.Add('Оружие');
  If ElSheepArray.Sheep.KolWeapon<>0 then
  For i:=0 to ElSheepArray.Sheep.KolWeapon-1 do
  If ElSheepArray.Weapon[i].ID<>0 then
    Me.Lines.Add(ElSheepArray.Weapon[i].Name+' '+IntToStr(ElSheepArray.Weapon[i].Level));
  Me.Lines.Add('Щиты');
  If ElSheepArray.Sheep.KolShield<>0 then
  For i:=0 to ElSheepArray.Sheep.KolShield-1 do
  If ElSheepArray.Shield[i].ID<>0 then
    Me.Lines.Add(ElSheepArray.Shield[i].Name+' '+IntToStr(ElSheepArray.Shield[i].Level));
  Me.Lines.Add('Броня');
  If ElSheepArray.Sheep.KolArmour<>0 then
  For i:=0 to ElSheepArray.Sheep.KolArmour-1 do
  If ElSheepArray.Armour[i].ID<>0 then
    Me.Lines.Add(ElSheepArray.Armour[i].Name+' '+IntToStr(ElSheepArray.Armour[i].Level));
  Me.Lines.Add('Спецсредство');
  If ElSheepArray.Sheep.KolSpecial<>0 then
  For i:=0 to ElSheepArray.Sheep.KolSpecial-1 do
  If ElSheepArray.Special[i].ID<>0 then
    Me.Lines.Add(ElSheepArray.Special[i].Name+' '+IntToStr(ElSheepArray.Special[i].Level));
  Me.Lines.Add('Таблетка');
  If ElSheepArray.Sheep.KolTabled<>0 then
  For i:=0 to ElSheepArray.Sheep.KolTabled-1 do
  If ElSheepArray.Tabled[i].ID<>0 then
    Me.Lines.Add(ElSheepArray.Tabled[i].Name+' '+IntToStr(ElSheepArray.Tabled[i].Level));
  Me.Lines.Add('ДПС='+FloatToStr(ElSheepArray.DPS));
  Me.Lines.Add('по щитам='+FloatToStr(ElSheepArray.DPSShield)+' по броне='+FloatToStr(ElSheepArray.DPSArmour));
  Me.Lines.Add('Броня='+FloatToStr(ElSheepArray.ArmourMax)+' Щиты='+FloatToStr(ElSheepArray.ShieldEnergyMax));
  Me.Lines.Add('Скорость='+FloatToStr(ElSheepArray.SpeedMaxUp)+' Поворот='+FloatToStr(ElSheepArray.SpeedMaxRotate));
  Me.Lines.Add('Стрейф='+FloatToStr(ElSheepArray.SpeedMaxStreif));
  Me.Lines.Add('Сектор скорость='+FloatToStr(ElSheepArray.SpeedMaxSektor));
  end;
end;


procedure VisibleParSheepMemo(Me:TMemo; ElSheepArray:TSheepCondition);
var
  i:LongWord;
begin
with FFleet do
  begin
  Me.Clear;
  Me.Lines.Add('Корабль');
  If ElSheepArray.Sheep.DamageFr<>1 then
    Me.Lines.Add('Урон фрегатам '+FloatToStr(ElSheepArray.Sheep.DamageFr));
  If ElSheepArray.Sheep.DamageL<>1 then
    Me.Lines.Add('Урон линкорам '+FloatToStr(ElSheepArray.Sheep.DamageL));
  If ElSheepArray.Sheep.DamageK<>1 then
    Me.Lines.Add('Урон крейсерам '+FloatToStr(ElSheepArray.Sheep.DamageK));
  If ElSheepArray.Sheep.DamageEs<>1 then
    Me.Lines.Add('Урон эсминцам '+FloatToStr(ElSheepArray.Sheep.DamageEs));
  If ElSheepArray.Sheep.DamageSh<>1 then
    Me.Lines.Add('Урон штурмовикам '+FloatToStr(ElSheepArray.Sheep.DamageSh));
  If ElSheepArray.Sheep.DamageA<>1 then
    Me.Lines.Add('Урон авианосцам '+FloatToStr(ElSheepArray.Sheep.DamageA));
  Me.Lines.Add('');
    Me.Lines.Add('Скорость с полем Рагнарока/Мидом. Вперед '+FloatToStr(ElSheepArray.SpeedMaxUp*1.2)+' Стрейф '+FloatToStr(ElSheepArray.SpeedMaxStreif*1.2)+' Поворот '+FloatToStr(ElSheepArray.SpeedMaxRotate*1.2));


  If Length(ElSheepArray.Armour)>1 then
  For i:=1 to Length(ElSheepArray.Armour)-1 do
  IF  ElSheepArray.Armour[i].ID<>0 then
    begin
    Me.Lines.Add('Броня №'+IntToStr(i));
    If ElSheepArray.Armour[i].Antinateria<1 then
      Me.Lines.Add('Бонус антиматерии '+FloatToStr(ElSheepArray.Armour[i].Antinateria));
    Me.Lines.Add('');
    end;
  If ElSheepArray.ArmourResistanceE>0 then
    Me.Lines.Add('Сопротивление энергетическому оружию от брони '+FloatToStr(ElSheepArray.ArmourResistanceE));
  If ElSheepArray.ArmourResistanceV>0 then
    Me.Lines.Add('Сопротивление взрывному оружию от брони '+FloatToStr(ElSheepArray.ArmourResistanceV));
  If ElSheepArray.ArmourResistanceD>0 then
    Me.Lines.Add('Сопротивление дальнему оружию от брони '+FloatToStr(ElSheepArray.ArmourResistanceD));

  If Length(ElSheepArray.Special)>1 then
  For i:=1 to Length(ElSheepArray.Special)-1 do
  IF  ElSheepArray.Special[i].ID<>0 then
    begin
    Me.Lines.Add('Спецсредство №'+IntToStr(i));
    If ElSheepArray.Special[i].DamageSpecial<0 then
    Me.Lines.Add('Урон '+FloatToStr(ElSheepArray.Special[i].DamageSpecial)+' В радиусе '+FloatToStr(ElSheepArray.Special[i].RadiusDamageSpecial));
    If ElSheepArray.Special[i].Zamedl<1 then
      Me.Lines.Add('Замедление '+FloatToStr(ElSheepArray.Special[i].Zamedl));
    Me.Lines.Add('');
    end;

  If Length(ElSheepArray.WeaponPar)>1 then
  For i:=1 to Length(ElSheepArray.WeaponPar)-1 do
  IF  ElSheepArray.WeaponPar[i].ID<>0 then
    begin
    Me.Lines.Add('Оружие №'+IntToStr(i));
    Me.Lines.Add('ДПС '+FloatToStr(ElSheepArray.WeaponPar[i].DPS)+' по щитам '+FloatToStr(ElSheepArray.WeaponPar[i].DPSShield));
    Me.Lines.Add('ДПС с полем Фреи/Вальгалы по броне '+FloatToStr(ElSheepArray.WeaponPar[i].DPS*0.9)+' по щитам '+FloatToStr(ElSheepArray.WeaponPar[i].DPSShield*1.2));
    Me.Lines.Add('Дальность от '+FloatToStr(ElSheepArray.WeaponPar[i].MinDistance)+' до '+FloatToStr(ElSheepArray.WeaponPar[i].MaxDistance));
    If ElSheepArray.WeaponPar[i].Obhod<1 then
      begin
      Me.Lines.Add('Обход щита '+FloatToStr(ElSheepArray.WeaponPar[i].Obhod));
      Me.Lines.Add('Дополнительный ДПС при имеющимся щите '+FloatToStr((1-ElSheepArray.WeaponPar[i].Obhod)*ElSheepArray.WeaponPar[i].DPS));
      Me.Lines.Add('Дополнительный ДПС с полем Валькирии при имеющимся щите '+FloatToStr((1-ElSheepArray.WeaponPar[i].Obhod*0.8)*ElSheepArray.WeaponPar[i].DPS));
      end;
    If ElSheepArray.WeaponPar[i].Broneb>1 then
      Me.Lines.Add('Бронебойность '+FloatToStr(ElSheepArray.WeaponPar[i].Broneb));
    If ElSheepArray.WeaponPar[i].Zamedl<1 then
      Me.Lines.Add('Замедление '+FloatToStr(ElSheepArray.WeaponPar[i].Zamedl));
    If ElSheepArray.WeaponPar[i].ChainReaction<0 then
      Me.Lines.Add('Цепная реакция '+FloatToStr(ElSheepArray.WeaponPar[i].ChainReaction));
    If ElSheepArray.WeaponPar[i].Razbros>0 then
    Me.Lines.Add('Разброс '+FloatToStr(ElSheepArray.WeaponPar[i].Razbros));
    If ElSheepArray.WeaponPar[i].Radius>0 then
    Me.Lines.Add('Радиус урона '+FloatToStr(ElSheepArray.WeaponPar[i].Radius));
    Me.Lines.Add('Время выстрела '+FloatToStr(ElSheepArray.WeaponPar[i].TimeShot));
    Me.Lines.Add('Скорость полета '+FloatToStr(ElSheepArray.WeaponPar[i].Speed));
    Me.Lines.Add('Время полета от '+FloatToStr(ElSheepArray.WeaponPar[i].MinDistance/ElSheepArray.WeaponPar[i].Speed)+' до '+FloatToStr(ElSheepArray.WeaponPar[i].MaxDistance/ElSheepArray.WeaponPar[i].Speed));
    Me.Lines.Add('');
    end;
  If Length(ElSheepArray.Tabled)>1 then
  For i:=1 to Length(ElSheepArray.Tabled)-1 do
  IF  ElSheepArray.Tabled[i].ID<>0 then
    begin
    Me.Lines.Add('Таблетка №'+IntToStr(i));
    If ElSheepArray.Tabled[i].ResistEnergy<1 then
      Me.Lines.Add('Сопротивление энергии '+FloatToStr(ElSheepArray.Tabled[i].ResistEnergy));
    If ElSheepArray.Tabled[i].ResistDal<1 then
      Me.Lines.Add('Сопротивление дальнобойному '+FloatToStr(ElSheepArray.Tabled[i].ResistDal));
    If ElSheepArray.Tabled[i].ResistVzr<1 then
      Me.Lines.Add('Сопротивление взрывному '+FloatToStr(ElSheepArray.Tabled[i].ResistVzr));
    Me.Lines.Add('');
    end;
  end;
end;


Procedure GoCreateLimitInForm(Nom:LongWord);
var
  MassMax,ShieldMax,DPSMax:Double;
begin
with FFleet do
If (EdMassMax.Text<>'') and (SheepArray[Nom].Sheep.MassArmour<>0) and (SheepArray[Nom].Sheep.ArmourPar<>0) then
  begin

  MassMax:=(StrToFloat(EdMassMax.Text)-SheepArray[Nom].MassAll)/SheepArray[Nom].Sheep.MassArmour*SheepArray[Nom].Sheep.ArmourPar/0.3;
  if MassMax>5000 then
    MassMax:=MassMax+SheepArray[Nom].ArmourMax-450
  else
  if MassMax>4000 then
    MassMax:=MassMax+SheepArray[Nom].ArmourMax-200
  else
  if MassMax>3000 then
    MassMax:=MassMax+SheepArray[Nom].ArmourMax-150
  else
  if MassMax>2000 then
    MassMax:=MassMax+SheepArray[Nom].ArmourMax-100
  else
    MassMax:=MassMax+SheepArray[Nom].ArmourMax-50;
  If MassMax<SheepArray[Nom].Sheep.KolArmour*1740*SheepArray[Nom].Sheep.ArmourPar then
    EdAmourMin.Text:=FloatToStr(MassMax)
  else
    EdAmourMin.Text:=FloatToStr(SheepArray[Nom].Sheep.KolArmour*1740*SheepArray[Nom].Sheep.ArmourPar);
  ShieldMax:=(StrToFloat(EdMassMax.Text)-SheepArray[Nom].MassAll)/0.333+SheepArray[Nom].ShieldEnergyMax;
  If ShieldMax<SheepArray[Nom].Sheep.KolShield*3240 then
    EdShieldMin.Text:=FloatToStr(ShieldMax)
  else
    EdShieldMin.Text:=FloatToStr(SheepArray[Nom].Sheep.KolShield*3240);

  end;
end;

Procedure GoTimeInSecToDHMS(Sek:LongWord; var D,H,M,S:LongWord);
var
  OstSek:LongWord;
begin
D:=Trunc(Sek/(60*60*24));
OstSek:=Sek-D*60*60*24;
H:=Trunc(OstSek/(60*60));
OstSek:=OstSek-H*60*60;
M:=Trunc(OstSek/(60));
OstSek:=OstSek-M*60;
S:=OstSek;
end;

Procedure VisibleParSheep(NomCurSheep:LongWord);
var
  i:LongWord;
  D,H,M,S:LongWord;
begin
with FFleet do
  begin
  GoCalcSheep(SheepArray[NomCurSheep]);
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Отображение параметров корабля №'+IntToStr(NomCurSheep));
  LeVolumeMax.Text:=FloatToStr(SheepArray[NomCurSheep].Sheep.MaxVolume);
  LeVolume.Text:=FloatToStr(SheepArray[NomCurSheep].MassAll);
  LeShield.Text:=FloatToStr(SheepArray[NomCurSheep].ShieldEnergyMax);
  LeArmour.Text:=FloatToStr(SheepArray[NomCurSheep].ArmourMax);
  LeSpeedUP.Text:=FloatToStr(SheepArray[NomCurSheep].SpeedMaxUp);
  LeSpeedRotate.Text:=FloatToStr(SheepArray[NomCurSheep].SpeedMaxRotate);
  LeSpeedStreif.Text:=FloatToStr(SheepArray[NomCurSheep].SpeedMaxStreif);
  LeSpeedSektor.Text:=FloatToStr(SheepArray[NomCurSheep].SpeedMaxSektor);
  LeDPS.Text:=FloatToStr(SheepArray[NomCurSheep].DPS);
  LeDPSShield.Text:=FloatToStr(SheepArray[NomCurSheep].DPSShield);
  LeDPSArmour.Text:=FloatToStr(SheepArray[NomCurSheep].DPSArmour);
  LeExpirience.Text:=FloatToStr(SheepArray[NomCurSheep].Expirience);
  LeCargo.Text:=FloatToStr(SheepArray[NomCurSheep].Cargo);
  GoTimeInSecToDHMS(SheepArray[NomCurSheep].TimeBuild,D,H,M,S);
  EdDBuild.Text:=IntToStr(D);
  EdHBuild.Text:=IntToStr(H);
  EdMBuild.Text:=IntToStr(M);
  EdSBuild.Text:=IntToStr(S);
  GoTimeInSecToDHMS(Trunc(SheepArray[NomCurSheep].TimeBuild*0.9),D,H,M,S);
  EdDBuild10.Text:=IntToStr(D);
  EdHBuild10.Text:=IntToStr(H);
  EdMBuild10.Text:=IntToStr(M);
  EdSBuild10.Text:=IntToStr(S);
  GoTimeInSecToDHMS(SheepArray[NomCurSheep].TimeRepair,D,H,M,S);
  EdHRepair.Text:=IntToStr(H);
  EdMRepair.Text:=IntToStr(M);
  EdSRepair.Text:=IntToStr(S);
  VisiblePArsheepMemo(MeBonus,SheepArray[NomCurSheep]);
  GoCreateLimitInForm(NomCurSheep);
  end;
end;

procedure GoCalcVisible;
  begin
//  GoCalcSheep(SheepArray[NomCurSheep]);
  VisibleParSheep(NomCurSheep);
  end;

Procedure GoAllShield(TypeGo:Word);
  var
    i,j,n:LongWord;
    search:Boolean;
    ANameShield:array of string;
  begin
  IF (Length(BaseShield)<>0) and (SheepArray[NomCurSheep].Sheep.KolShield<>0) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Составление списка возможных щитов для корабля №'+IntToStr(NomCurSheep));
    for i:=0 to Length(BaseShield)-1 do
      if ((BaseShield[i].TypeSheep='0') or (BaseShield[i].TypeSheep=SheepArray[NomCurSheep].Sheep.typeSheep)) and ((BaseShield[i].LevelSheep=0) or(BaseShield[i].LevelSheep=SheepArray[NomCurSheep].Sheep.LevelSheep)) then
        begin
        search:=false;
        If Length(ANameShield)<>0 then
        for j:=0 to Length(ANameShield)-1 do
          if (ANameShield[j]=BaseShield[i].Name) then
            search:=True;
        If not search then
          begin
          n:=Length(ANameShield);
          SetLength(ANameShield,n+1);
          ANameShield[n]:=BaseShield[i].Name;
          If (TypeGo=1) or (TypeGo=0) then
            FFleet.DBCbShield1.Items.Add(BaseShield[i].Name);
          If (TypeGo=2) or (TypeGo=0) then
            FFleet.DBCbShield2.Items.Add(BaseShield[i].Name);
          end;
        end;
    end;
  end;

Procedure GoAllSpecial(Element,Typespecial:TDArrayWord);
  var
    i,j,n:LongWord;
    search:Boolean;
    ANameSpecial:array of string;
  begin
  IF (Length(BaseSpecial)<>0) and (SheepArray[NomCurSheep].Sheep.KolSpecial<>0) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    FFleet.MeOpisanie.Lines.Add('Составление списка возможных спецсредств для корабля №'+IntToStr(NomCurSheep));
    for i:=0 to Length(BaseSpecial)-1 do
      if ((BaseSpecial[i].TypeSheep='0') or (BaseSpecial[i].TypeSheep=SheepArray[NomCurSheep].Sheep.typeSheep)) and ((BaseSpecial[i].LevelSheep=0) or(BaseSpecial[i].LevelSheep=SheepArray[NomCurSheep].Sheep.LevelSheep)) then
        begin
        search:=false;
        If Length(ANameSpecial)<>0 then
        for j:=0 to Length(ANameSpecial)-1 do
          if (ANameSpecial[j]=BaseSpecial[i].Name) then
            search:=True;
        If not search then
          begin
          n:=Length(ANameSpecial);
          SetLength(ANameSpecial,n+1);
          ANameSpecial[n]:=BaseSpecial[i].Name;
        FFleet.DBCbSpecial1.Items.Add(BaseSpecial[i].Name);
        FFleet.DBCbSpecial2.Items.Add(BaseSpecial[i].Name);
        FFleet.DBCbSpecial3.Items.Add(BaseSpecial[i].Name);
        FFleet.CbSpecial.Items.Add(BaseSpecial[i].Name);
        end;
        end;
    end;
  end;

procedure InitializeSheep (Nom:longword);
var
  i:LongWord;
begin
SetLength(SheepArray[Nom].Armour,SheepArray[Nom].Sheep.KolArmour+1);
{If Length(SheepArray[Nom].Armour)<>0 then
for i:=0 to Length(SheepArray[Nom].Armour)-1 do
   SheepArray[Nom].Armour[i].ID:=0;             }

SetLength(SheepArray[Nom].Weapon,SheepArray[Nom].Sheep.KolWeapon+1);
{If Length(SheepArray[Nom].Weapon)<>0 then
for i:=0 to Length(SheepArray[Nom].Weapon)-1 do
   SheepArray[Nom].Weapon[i].ID:=0; }

SetLength(SheepArray[Nom].Special,SheepArray[Nom].Sheep.KolSpecial+1);
{If Length(SheepArray[Nom].Special)<>0 then
for i:=0 to Length(SheepArray[Nom].Special)-1 do
   SheepArray[Nom].Special[i].ID:=0;  }

SetLength(SheepArray[Nom].Shield,SheepArray[Nom].Sheep.KolShield+1);
{If Length(SheepArray[Nom].Shield)<>0 then
for i:=0 to Length(SheepArray[Nom].Shield)-1 do
   SheepArray[Nom].Shield[i].ID:=0;  }

SetLength(SheepArray[Nom].Tabled,SheepArray[Nom].Sheep.KolTabled+1);
{If Length(SheepArray[Nom].Tabled)<>0 then
for i:=0 to Length(SheepArray[Nom].Tabled)-1 do
   SheepArray[Nom].Tabled[i].ID:=0;   }
end;

procedure SortComboBofByArray(cb:TComboBox; ArraySort:TArrayString);
var
  i,j,n:LongWord;
  CbArray:TArrayString;
begin

n:=cb.Items.Count;
SetLength(CbArray,n);
if n<>0 then
For i:=0 to n-1 do
  CbArray[i]:=cb.Items.Strings[i];
If  (Length(ArraySort)<>0) and (n<>0) then
  begin
  cb.Clear;
  for i:=0 to Length(ArraySort)-1 do
    for j:=0 to n-1 do
      If ArraySort[i]=CbArray[j] then
        cb.Items.Add(ArraySort[i]);
  end
else

end;


Procedure SheepChange;
var
  i,j,n:LongWord;
  SheepID:Longword;
  search:Boolean;
  ANameWeapon,ANameSpecial,ANameArmour,ANameTabled:array of string;
begin
with FFleet do
  if (DBCbTypeSheep.Text<>'') and (DBCbNameSheep.Text<>'') and(DBCbMK.Text<>'') then
  begin
  SheepID:=SearchIDSheep(DBCbNameSheep.Text,DBCbMK.Text);
      If FFleet.CbVivodOpisanie.Checked then
      MeOpisanie.Lines.Add('Определение ID корабля ='+intToStr(SheepID));
  if SheepID<>0 then
    begin
    SheepArray[NomCurSheep].Color:=ColorBSheep.Selected;
    SheepArray[NomCurSheep].Sheep:=BaseSheep[SheepID];
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Загрузка корабля по ID='+intToStr(SheepID));
    InitializeSheep(NomCurSheep);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Инициализация корабля (установка размерноси составных частей)');
    end;


  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Установка параметров формы');
  LeVolumeMax.Text:=IntToStr(SheepArray[NomCurSheep].Sheep.MaxVolume);
  EdMassMax.Text:=IntToStr(SheepArray[NomCurSheep].Sheep.MaxVolume);
  MeProt.Lines.Add('Добавлен корабль ID='+IntToStr(SheepArray[NomCurSheep].Sheep.Id));

  pnlShield.Height:=20+32*SheepArray[NomCurSheep].Sheep.KolShield;
  pnlArmour.Height:=20+32*SheepArray[NomCurSheep].Sheep.KolArmour;
  pnlSpecial.Height:=20+32*SheepArray[NomCurSheep].Sheep.KolSpecial;
  pnlWeapon.Height:=20+32*SheepArray[NomCurSheep].Sheep.KolWeapon;
  pnlTabled.Height:=20+32*SheepArray[NomCurSheep].Sheep.KolTabled;
  case SheepArray[NomCurSheep].Sheep.KolShield of
    0:begin DBCbShield1.Visible:=False; DBCbShield2.Visible:=False; end;
    1:begin DBCbShield1.Visible:=True; DBCbShield2.Visible:=False; end;
    2:begin DBCbShield1.Visible:=True; DBCbShield2.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolArmour of
    0:begin DBCbArmour1.Visible:=false; DBCbArmour2.Visible:=false; DBCbArmour3.Visible:=false; DBCbArmour4.Visible:=false; DBCbArmour5.Visible:=false; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    1:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=false; DBCbArmour3.Visible:=false; DBCbArmour4.Visible:=false; DBCbArmour5.Visible:=false; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    2:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=false; DBCbArmour4.Visible:=false; DBCbArmour5.Visible:=false; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    3:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=True; DBCbArmour4.Visible:=false; DBCbArmour5.Visible:=false; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    4:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=True; DBCbArmour4.Visible:=True; DBCbArmour5.Visible:=false; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    5:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=True; DBCbArmour4.Visible:=True; DBCbArmour5.Visible:=True; DBCbArmour6.Visible:=false; DBCbArmour7.Visible:=false; end;
    6:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=True; DBCbArmour4.Visible:=True; DBCbArmour5.Visible:=True; DBCbArmour6.Visible:=True; DBCbArmour7.Visible:=false; end;
    7:begin DBCbArmour1.Visible:=True; DBCbArmour2.Visible:=True; DBCbArmour3.Visible:=True; DBCbArmour4.Visible:=True; DBCbArmour5.Visible:=True; DBCbArmour6.Visible:=True; DBCbArmour7.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolSpecial of
    0: begin DBCbSpecial1.Visible:=False; DBCbSpecial2.Visible:=False; DBCbSpecial3.Visible:=False; end;
    1: begin DBCbSpecial1.Visible:=True; DBCbSpecial2.Visible:=False; DBCbSpecial3.Visible:=False; end;
    2: begin DBCbSpecial1.Visible:=True; DBCbSpecial2.Visible:=True; DBCbSpecial3.Visible:=False; end;
    3: begin DBCbSpecial1.Visible:=True; DBCbSpecial2.Visible:=True; DBCbSpecial3.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolWeapon of
    0: begin DBCbWeapon1.Visible:=False; DBCbWeapon2.Visible:=False; DBCbWeapon3.Visible:=False; DBCbWeapon4.Visible:=False; DBCbWeapon5.Visible:=False; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    1: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=False; DBCbWeapon3.Visible:=False; DBCbWeapon4.Visible:=False; DBCbWeapon5.Visible:=False; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    2: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=False; DBCbWeapon4.Visible:=False; DBCbWeapon5.Visible:=False; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    3: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=False; DBCbWeapon5.Visible:=False; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    4: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=True; DBCbWeapon5.Visible:=False; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    5: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=True; DBCbWeapon5.Visible:=True; DBCbWeapon6.Visible:=False; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    6: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=True; DBCbWeapon5.Visible:=True; DBCbWeapon6.Visible:=True; DBCbWeapon7.Visible:=False; DBCbWeapon8.Visible:=False; end;
    7: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=True; DBCbWeapon5.Visible:=True; DBCbWeapon6.Visible:=True; DBCbWeapon7.Visible:=True; DBCbWeapon8.Visible:=False; end;
    8: begin DBCbWeapon1.Visible:=True; DBCbWeapon2.Visible:=True; DBCbWeapon3.Visible:=True; DBCbWeapon4.Visible:=True; DBCbWeapon5.Visible:=True; DBCbWeapon6.Visible:=True; DBCbWeapon7.Visible:=True; DBCbWeapon8.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolTabled of
    0: begin DBCbTabled1.Visible:=False; end;
    1: begin DBCbTabled1.Visible:=True; end;
    end;
    case SheepArray[NomCurSheep].Sheep.KolShield of
    0:begin BCbShield1.Visible:=False; BCbShield2.Visible:=False; end;
    1:begin BCbShield1.Visible:=True; BCbShield2.Visible:=False; end;
    2:begin BCbShield1.Visible:=True; BCbShield2.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolArmour of
    0:begin BCbArmour1.Visible:=false; BCbArmour2.Visible:=false; BCbArmour3.Visible:=false; BCbArmour4.Visible:=false; BCbArmour5.Visible:=false; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    1:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=false; BCbArmour3.Visible:=false; BCbArmour4.Visible:=false; BCbArmour5.Visible:=false; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    2:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=false; BCbArmour4.Visible:=false; BCbArmour5.Visible:=false; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    3:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=True; BCbArmour4.Visible:=false; BCbArmour5.Visible:=false; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    4:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=True; BCbArmour4.Visible:=True; BCbArmour5.Visible:=false; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    5:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=True; BCbArmour4.Visible:=True; BCbArmour5.Visible:=True; BCbArmour6.Visible:=false; BCbArmour7.Visible:=false; end;
    6:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=True; BCbArmour4.Visible:=True; BCbArmour5.Visible:=True; BCbArmour6.Visible:=True; BCbArmour7.Visible:=false; end;
    7:begin BCbArmour1.Visible:=True; BCbArmour2.Visible:=True; BCbArmour3.Visible:=True; BCbArmour4.Visible:=True; BCbArmour5.Visible:=True; BCbArmour6.Visible:=True; BCbArmour7.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolSpecial of
    0: begin BCbSpecial1.Visible:=False; BCbSpecial2.Visible:=False; BCbSpecial3.Visible:=False; end;
    1: begin BCbSpecial1.Visible:=True; BCbSpecial2.Visible:=False; BCbSpecial3.Visible:=False; end;
    2: begin BCbSpecial1.Visible:=True; BCbSpecial2.Visible:=True; BCbSpecial3.Visible:=False; end;
    3: begin BCbSpecial1.Visible:=True; BCbSpecial2.Visible:=True; BCbSpecial3.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolWeapon of
    0: begin BCbWeapon1.Visible:=False; BCbWeapon2.Visible:=False; BCbWeapon3.Visible:=False; BCbWeapon4.Visible:=False; BCbWeapon5.Visible:=False; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    1: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=False; BCbWeapon3.Visible:=False; BCbWeapon4.Visible:=False; BCbWeapon5.Visible:=False; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    2: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=False; BCbWeapon4.Visible:=False; BCbWeapon5.Visible:=False; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    3: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=False; BCbWeapon5.Visible:=False; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    4: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=True; BCbWeapon5.Visible:=False; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    5: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=True; BCbWeapon5.Visible:=True; BCbWeapon6.Visible:=False; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    6: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=True; BCbWeapon5.Visible:=True; BCbWeapon6.Visible:=True; BCbWeapon7.Visible:=False; BCbWeapon8.Visible:=False; end;
    7: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=True; BCbWeapon5.Visible:=True; BCbWeapon6.Visible:=True; BCbWeapon7.Visible:=True; BCbWeapon8.Visible:=False; end;
    8: begin BCbWeapon1.Visible:=True; BCbWeapon2.Visible:=True; BCbWeapon3.Visible:=True; BCbWeapon4.Visible:=True; BCbWeapon5.Visible:=True; BCbWeapon6.Visible:=True; BCbWeapon7.Visible:=True; BCbWeapon8.Visible:=True; end;
    end;
  case SheepArray[NomCurSheep].Sheep.KolTabled of
    0: begin BCbTabled1.Visible:=False; end;
    1: begin BCbTabled1.Visible:=True; end;
    end;

  DBCbShield1.Clear;
  DBCbShield2.Clear;
  GoAllShield(0);

  DBCbArmour1.Clear;
  DBCbArmour2.Clear;
  DBCbArmour3.Clear;
  DBCbArmour4.Clear;
  DBCbArmour5.Clear;
  DBCbArmour6.Clear;
  DBCbArmour7.Clear;
  IF (Length(BaseArmour)<>0) and (SheepArray[NomCurSheep].Sheep.KolArmour<>0) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Составление списка возможной брони для корабля №'+IntToStr(NomCurSheep));
    for i:=0 to Length(BaseArmour)-1 do
      if ((BaseArmour[i].TypeSheep='0') or (BaseArmour[i].TypeSheep=SheepArray[NomCurSheep].Sheep.typeSheep)) and ((BaseArmour[i].LevelSheep=0) or(BaseArmour[i].LevelSheep=SheepArray[NomCurSheep].Sheep.LevelSheep)) then
        begin
        search:=false;
        If Length(ANameArmour)<>0 then
        for j:=0 to Length(ANameArmour)-1 do
          if (ANameArmour[j]=BaseArmour[i].Name) then
            search:=True;
        If not search then
          begin
          n:=Length(ANameArmour);
          SetLength(ANameArmour,n+1);
          ANameArmour[n]:=BaseArmour[i].Name;
        DBCbArmour1.Items.Add(BaseArmour[i].Name);
        DBCbArmour2.Items.Add(BaseArmour[i].Name);
        DBCbArmour3.Items.Add(BaseArmour[i].Name);
        DBCbArmour4.Items.Add(BaseArmour[i].Name);
        DBCbArmour5.Items.Add(BaseArmour[i].Name);
        DBCbArmour6.Items.Add(BaseArmour[i].Name);
        DBCbArmour7.Items.Add(BaseArmour[i].Name);
          end;
        end;
    end;

  DBCbSpecial1.Clear;
  DBCbSpecial2.Clear;
  DBCbSpecial3.Clear;
  CbSpecial.Clear;
  GoAllSpecial(0,0);

  DBCbWeapon1.Clear;
  DBCbWeapon2.Clear;
  DBCbWeapon3.Clear;
  DBCbWeapon4.Clear;
  DBCbWeapon5.Clear;
  DBCbWeapon6.Clear;
  DBCbWeapon7.Clear;
  DBCbWeapon8.Clear;
  CbWeapon.Clear;
  IF (Length(BaseWeapon)<>0) and (SheepArray[NomCurSheep].Sheep.KolWeapon<>0) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Составление списка возможного оружия для корабля №'+IntToStr(NomCurSheep));
    for i:=0 to Length(BaseWeapon)-1 do
      if (((BaseWeapon[i].TypeSheep='0') and (SheepArray[NomCurSheep].Sheep.typeSheep<>'Авианосец')) or (BaseWeapon[i].TypeSheep=SheepArray[NomCurSheep].Sheep.typeSheep)) and ((BaseWeapon[i].LevelSheep=0) or(BaseWeapon[i].LevelSheep=SheepArray[NomCurSheep].Sheep.LevelSheep)) then
        begin
        search:=false;
        If Length(ANameWeapon)<>0 then
        for j:=0 to Length(ANameWeapon)-1 do
          if (ANameWeapon[j]=BaseWeapon[i].Name) then
            search:=True;
        If not search then
          begin
          n:=Length(ANameWeapon);
          SetLength(ANameWeapon,n+1);
          ANameWeapon[n]:=BaseWeapon[i].Name;
        DBCbWeapon1.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon2.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon3.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon4.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon5.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon6.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon7.Items.Add(BaseWeapon[i].Name);
        DBCbWeapon8.Items.Add(BaseWeapon[i].Name);
        CbWeapon.Items.Add(BaseWeapon[i].Name);
        end;
        end;
    end;

  DBCbTabled1.Clear;
  IF (Length(BaseTabled)<>0) and (SheepArray[NomCurSheep].Sheep.KolTabled<>0) then
    begin
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Составление списка возможных таблеток для корабля №'+IntToStr(NomCurSheep));
    for i:=0 to Length(BaseTabled)-1 do
      if ((BaseTabled[i].TypeSheep='0') or (BaseTabled[i].TypeSheep=SheepArray[NomCurSheep].Sheep.typeSheep)) and ((BaseTabled[i].LevelSheep=0) or(BaseTabled[i].LevelSheep=SheepArray[NomCurSheep].Sheep.LevelSheep)) then
        begin
        search:=false;
        If Length(ANameTabled)<>0 then
        for j:=0 to Length(ANameTabled)-1 do
          if (ANameTabled[j]=BaseTabled[i].Name) then
            search:=True;
        If not search then
          begin
          n:=Length(ANameTabled);
          SetLength(ANameTabled,n+1);
          ANameTabled[n]:=BaseTabled[i].Name;
        DBCbTabled1.Items.Add(BaseTabled[i].Name);
        end;
        end;
    end;
  //Сортировка списков
  SortComboBofByArray(DBCbArmour1,ArraySortArmour);
  SortComboBofByArray(DBCbArmour2,ArraySortArmour);
  SortComboBofByArray(DBCbArmour3,ArraySortArmour);
  SortComboBofByArray(DBCbArmour4,ArraySortArmour);
  SortComboBofByArray(DBCbArmour5,ArraySortArmour);
  SortComboBofByArray(DBCbArmour6,ArraySortArmour);
  SortComboBofByArray(DBCbArmour7,ArraySortArmour);

  SortComboBofByArray(DBCbWeapon1,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon2,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon3,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon4,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon5,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon6,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon7,ArraySortWeapon);
  SortComboBofByArray(DBCbWeapon8,ArraySortWeapon);

  SortComboBofByArray(DBCbShield1,ArraySortShield);
  SortComboBofByArray(DBCbShield2,ArraySortShield);

  SortComboBofByArray(DBCbSpecial1,ArraySortSpecial);
  SortComboBofByArray(DBCbSpecial2,ArraySortSpecial);
  SortComboBofByArray(DBCbSpecial3,ArraySortSpecial);

  SortComboBofByArray(DBCbTabled1,ArraySortTabled);
  end;
end;

Procedure GoLevelInBase (Cb:TComboBox; Base:String; GoCb:TComboBox);
var
  i,j:LongWord;
begin
GoCb.Clear;
If (Base='Armour') and (Length(BaseArmour)<>0) then
  begin
  For i:=0 to  Length(BaseArmour)-1 do
    begin
    If BaseArmour[i].Name=Cb.Text then
      GoCb.Items.Add(IntToStr(BaseArmour[i].Level));
    end;
  If Length(StandartArmour)<>0 then
  For j:=0 to Length(StandartArmour)-1 do
    if StandartArmour[j].Name=Cb.Text then
      begin
      GoCb.Text:=IntToStr(StandartArmour[j].Level);
      GoCb.OnChange(GoCb);
      end;
  end;
If (Base='Shield') and (Length(BaseShield)<>0) then
  begin
  For i:=0 to  Length(BaseShield)-1 do
    If BaseShield[i].Name=Cb.Text then
      GoCb.Items.Add(IntToStr(BaseShield[i].Level));
  If Length(StandartShield)<>0 then
  For j:=0 to Length(StandartShield)-1 do
    if StandartShield[j].Name=Cb.Text then
      begin
      GoCb.Text:=IntToStr(StandartShield[j].Level);
      GoCb.OnChange(GoCb);
      end;
  end;
If (Base='Special') and (Length(BaseSpecial)<>0) then
  begin
  For i:=0 to  Length(BaseSpecial)-1 do
    If BaseSpecial[i].Name=Cb.Text then
      GoCb.Items.Add(IntToStr(BaseSpecial[i].Level));
  If Length(StandartSpecial)<>0 then
  For j:=0 to Length(StandartSpecial)-1 do
    if StandartSpecial[j].Name=Cb.Text then
      begin
      GoCb.Text:=IntToStr(StandartSpecial[j].Level);
      GoCb.OnChange(GoCb);
      end;
  end;
If (Base='Tabled') and (Length(BaseTabled)<>0) then
  begin
  For i:=0 to  Length(BaseTabled)-1 do
    If BaseTabled[i].Name=Cb.Text then
      GoCb.Items.Add(IntToStr(BaseTabled[i].Level));
  If Length(StandartTabled)<>0 then
  For j:=0 to Length(StandartTabled)-1 do
    if StandartTabled[j].Name=Cb.Text then
      begin
      GoCb.Text:=IntToStr(StandartTabled[j].Level);
      GoCb.OnChange(GoCb);
      end;
  end;
If (Base='Weapon') and (Length(BaseWeapon)<>0) then
  begin
  For i:=0 to  Length(BaseWeapon)-1 do
    If BaseWeapon[i].Name=Cb.Text then
      GoCb.Items.Add(IntToStr(BaseWeapon[i].Level));
  If Length(StandartWeapon)<>0 then
  For j:=0 to Length(StandartWeapon)-1 do
    if StandartWeapon[j].Name=Cb.Text then
      begin
      GoCb.Text:=IntToStr(StandartWeapon[j].Level);
      GoCb.OnChange(GoCb);
      end;
  end;

If GoCb.Items.Count=1 then
  begin
  GoCb.Text:=GoCb.Items[0];
  GoCb.OnChange(GoCb);
  //GoIDInBase (DBCbArmour1,BCbArmour1,'Armour',CbArmour1,1);
  end;

end;

procedure GoSheepParametrs(CbName,CbLvl:TComboBox; TypeParametrs:string; Nom:LongWord);
var
  ID:Longword;
begin
with FFleet do
  begin
if TypeParametrs='Armour' then
  begin
  If Nom>Length(SheepArray[NomCurSheep].Armour)-1 then
    SetLength(SheepArray[NomCurSheep].Armour,Nom+1);
  ID:=SearchIDArmour(CbName.Text,StrToInt(CbLvl.Text));
    SheepArray[NomCurSheep].Armour[Nom]:=BaseArmour[ID];
    MeProt.Lines.Add('Добавлена броня №'+IntToStr(Nom)+' ID='+IntToStr(SheepArray[NomCurSheep].Armour[Nom].ID));
  end;
if TypeParametrs='Shield' then
  begin
  If Nom>Length(SheepArray[NomCurSheep].Shield)-1 then
    SetLength(SheepArray[NomCurSheep].Shield,Nom+1);
  ID:=SearchIDShield(CbName.Text,StrToInt(CbLvl.Text));
    SheepArray[NomCurSheep].Shield[Nom]:=BaseShield[ID];
    MeProt.Lines.Add('Добавлен щит №'+IntToStr(Nom)+' ID='+IntToStr(SheepArray[NomCurSheep].Shield[Nom].ID));
  end;
if TypeParametrs='Special' then
  begin
  If Nom>Length(SheepArray[NomCurSheep].Special)-1 then
    SetLength(SheepArray[NomCurSheep].Special,Nom+1);
  ID:=SearchIDSpecial(CbName.Text,StrToInt(CbLvl.Text));
    SheepArray[NomCurSheep].Special[Nom]:=BaseSpecial[ID];
    MeProt.Lines.Add('Добавлена спецсредство №'+IntToStr(Nom)+' ID='+IntToStr(SheepArray[NomCurSheep].Special[Nom].ID));
  end;
if TypeParametrs='Tabled' then
  begin
  If Nom>Length(SheepArray[NomCurSheep].Tabled)-1 then
    SetLength(SheepArray[NomCurSheep].Tabled,Nom+1);
  ID:=SearchIDTabled(CbName.Text,StrToInt(CbLvl.Text));
    SheepArray[NomCurSheep].Tabled[Nom]:=BaseTabled[ID];
    MeProt.Lines.Add('Добавлена таблетка №'+IntToStr(Nom)+' ID='+IntToStr(SheepArray[NomCurSheep].Tabled[Nom].ID));
  end;
if TypeParametrs='Weapon' then
  begin
  If Nom>Length(SheepArray[NomCurSheep].Weapon)-1 then
    SetLength(SheepArray[NomCurSheep].Weapon,Nom+1);
  ID:=SearchIDWeapon(CbName.Text,StrToInt(CbLvl.Text));
    SheepArray[NomCurSheep].Weapon[Nom]:=BaseWeapon[ID];
    MeProt.Lines.Add('Добавлено оружие №'+IntToStr(Nom)+' ID='+IntToStr(SheepArray[NomCurSheep].Weapon[Nom].ID));
  end;
end;
end;

Procedure GoIDInBase (Cb,Cb1:TComboBox; Base:String; LA:TLabel; Nom:LongWord);
begin
If (Cb.Text<>'') and (Cb1.Text<>'') then
  GoSheepParametrs(Cb,Cb1,Base,Nom);
GoCalcVisible;
end;

procedure TFFleet.FormCreate(Sender: TObject);
var
  i:LongWord;
begin
DBCbTypeSheep.Clear;
If Length(TypeSheep)<>0 then
for i:=0 to Length(TypeSheep)-1 do
  DBCbTypeSheep.Items.Add(TypeSheep[i]);
SheepChange;
end;

procedure TFFleet.DBCbTypeSheepChange(Sender: TObject);
var
  ANameSheep:array of string;
  i,j,n:Longword;
  search:Boolean;
begin
If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('Составление множества типов кораблей');
DBCbNameSheep.Clear;
n:=0;
If Length(BaseSheep)<>0 then
for i:=0 to Length(BaseSheep)-1 do
  if (BaseSheep[i].typeSheep=DBCbTypeSheep.Text)  then
  begin
  search:=false;
  If Length(ANameSheep)<>0 then
    for j:=0 to Length(ANameSheep)-1 do
      if (ANameSheep[j]=BaseSheep[i].Name) then
        search:=True;
  If not search then
    begin
    SetLength(ANameSheep,n+1);
    ANameSheep[n]:=BaseSheep[i].Name;
    Inc(n);
    end;
  end;
If Length(ANameSheep)<>0 then
  for i:=0 to Length(ANameSheep)-1 do
    DBCbNameSheep.Items.Add(ANameSheep[i]);
SheepChange;
end;

procedure TFFleet.DBCbNameSheepChange(Sender: TObject);
var
i:LongWord;
begin
If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('Составление множества имен кораблей выбранного типа');
DBCbMK.Clear;
If Length(BaseSheep)<>0 then
for i:=0 to Length(BaseSheep)-1 do
  if (BaseSheep[i].typeSheep=DBCbTypeSheep.Text) and (BaseSheep[i].Name=DBCbNameSheep.Text)  then
  begin
  DBCbMK.Items.Add(BaseSheep[i].MK);

  end;
SheepChange;
end;

procedure TFFleet.DBCbMKChange(Sender: TObject);
begin
SheepChange;
end;


procedure TFFleet.DBCbShield1Change(Sender: TObject);
begin
GoLevelInBase(DBCbShield1,'Shield',BCbShield1);
If (DBCbShield2.Text<>DBCbShield1.Text) then
  DBCbShield2.Clear;
if (DBCbShield1.Text<>'') and (DBCbShield1.Text<>'Нет') then
  begin
  DBCbShield2.Items.Add(DBCbShield1.Text);
  end
else
  GoAllShield(2);
end;

procedure TFFleet.DBCbShield2Change(Sender: TObject);
begin
GoLevelInBase(DBCbShield2,'Shield',BCbShield2);
If (DBCbShield2.Text<>DBCbShield1.Text) then
  DBCbShield1.Clear;
if (DBCbShield2.Text<>'') and (DBCbShield2.Text<>'Нет') then
  begin
  DBCbShield1.Items.Add(DBCbShield2.Text);
  end
else
  GoAllShield(1);
end;

procedure TFFleet.DBCbArmour1Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour1,'Armour',BCbArmour1);
end;

procedure TFFleet.DBCbArmour2Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour2,'Armour',BCbArmour2);
end;

procedure TFFleet.DBCbArmour3Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour3,'Armour',BCbArmour3);
end;

procedure TFFleet.DBCbArmour4Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour4,'Armour',BCbArmour4);
end;

procedure TFFleet.DBCbArmour5Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour5,'Armour',BCbArmour5);
end;

procedure TFFleet.DBCbArmour6Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour6,'Armour',BCbArmour6);
end;

procedure TFFleet.DBCbArmour7Change(Sender: TObject);
begin
GoLevelInBase(DBCbArmour7,'Armour',BCbArmour7);
end;

procedure TFFleet.DBCbSpecial1Change(Sender: TObject);
begin
GoLevelInBase(DBCbSpecial1,'Special',BCbSpecial1);
end;

procedure TFFleet.DBCbSpecial2Change(Sender: TObject);
begin
GoLevelInBase(DBCbSpecial2,'Special',BCbSpecial2);
end;

procedure TFFleet.DBCbSpecial3Change(Sender: TObject);
begin
GoLevelInBase(DBCbSpecial3,'Special',BCbSpecial3);
end;

procedure TFFleet.DBCbWeapon1Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon1,'Weapon',BCbWeapon1);
end;

procedure TFFleet.DBCbWeapon2Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon2,'Weapon',BCbWeapon2);
end;

procedure TFFleet.DBCbWeapon3Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon3,'Weapon',BCbWeapon3);
end;

procedure TFFleet.DBCbWeapon4Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon4,'Weapon',BCbWeapon4);
end;

procedure TFFleet.DBCbWeapon5Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon5,'Weapon',BCbWeapon5);
end;

procedure TFFleet.DBCbWeapon6Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon6,'Weapon',BCbWeapon6);
end;

procedure TFFleet.DBCbWeapon7Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon7,'Weapon',BCbWeapon7);
end;

procedure TFFleet.DBCbWeapon8Change(Sender: TObject);
begin
GoLevelInBase(DBCbWeapon8,'Weapon',BCbWeapon8);
end;

procedure TFFleet.DBCbTabled1Change(Sender: TObject);
begin
GoLevelInBase(DBCbTabled1,'Tabled',BCbTabled1);
end;

procedure TFFleet.BCbShield1Change(Sender: TObject);
begin
GoIDInBase (DBCbShield1,BCbShield1,'Shield',CbShield1,1);
end;

procedure TFFleet.BCbShield2Change(Sender: TObject);
begin
GoIDInBase (DBCbShield2,BCbShield2,'Shield',CbShield2,2);
end;

procedure TFFleet.BCbArmour1Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour1,BCbArmour1,'Armour',CbArmour1,1);
end;

procedure TFFleet.BCbArmour2Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour2,BCbArmour2,'Armour',CbArmour2,2);
end;

procedure TFFleet.BCbArmour3Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour3,BCbArmour3,'Armour',CbArmour3,3);
end;

procedure TFFleet.BCbArmour4Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour4,BCbArmour4,'Armour',CbArmour4,4);
end;

procedure TFFleet.BCbArmour5Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour5,BCbArmour5,'Armour',CbArmour5,5);
end;

procedure TFFleet.BCbArmour6Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour6,BCbArmour6,'Armour',CbArmour6,6);
end;

procedure TFFleet.BCbArmour7Change(Sender: TObject);
begin
GoIDInBase (DBCbArmour7,BCbArmour7,'Armour',CbArmour7,7);
end;

procedure TFFleet.BCbSpecial1Change(Sender: TObject);
begin
GoIDInBase (DBCbSpecial1,BCbSpecial1,'Special',CbSpecial1,1);
end;

procedure TFFleet.BCbSpecial2Change(Sender: TObject);
begin
GoIDInBase (DBCbSpecial2,BCbSpecial2,'Special',CbSpecial2,2);
end;

procedure TFFleet.BCbSpecial3Change(Sender: TObject);
begin
GoIDInBase (DBCbSpecial3,BCbSpecial3,'Special',CbSpecial3,3);
end;

procedure TFFleet.BCbWeapon1Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon1,BCbWeapon1,'Weapon',CbWeapon1,1);
end;

procedure TFFleet.BCbWeapon2Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon2,BCbWeapon2,'Weapon',CbWeapon2,2);
end;

procedure TFFleet.BCbWeapon3Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon3,BCbWeapon3,'Weapon',CbWeapon3,3);
end;

procedure TFFleet.BCbWeapon4Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon4,BCbWeapon4,'Weapon',CbWeapon4,4);
end;

procedure TFFleet.BCbWeapon5Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon5,BCbWeapon5,'Weapon',CbWeapon5,5);
end;

procedure TFFleet.BCbWeapon6Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon6,BCbWeapon6,'Weapon',CbWeapon6,6);
end;

procedure TFFleet.BCbWeapon7Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon7,BCbWeapon7,'Weapon',CbWeapon7,7);
end;

procedure TFFleet.BCbWeapon8Change(Sender: TObject);
begin
GoIDInBase (DBCbWeapon8,BCbWeapon8,'Weapon',CbWeapon8,8);
end;

procedure TFFleet.BCbTabled1Change(Sender: TObject);
begin
GoIDInBase (DBCbTabled1,BCbTabled1,'Tabled',CbTabled1,1);
end;
{  Заглушка для изменения базы
procedure TFFleet.Bt1Click(Sender: TObject);
var
  Massa:LongWord;
begin
  qryTemp.Close;
  qryTemp.SQL.Clear;
  st:='Select * from Sheep;';
  qryTemp.SQL.Add(st);
  qryTemp.ExecSQL;
  qryTemp.Open;
  qryTemp.First;
while not qryTemp.Eof do
  begin
  qryTemp2.Close;
  qryTemp2.SQL.Clear;
  Massa:=qryTemp.FieldByName('МаксМасса').AsInteger+qryTemp.FieldByName('Вес').AsInteger;
  st:='Update Sheep Set МаксМасса='+IntToStr(Massa)+' Where ID='+qryTemp.FieldByName('ID').AsString;
  qryTemp2.SQL.Add(st);
  qryTemp2.ExecSQL;
//  qryTemp2.Open;
  qryTemp.Next;
  end;

end;
 }
procedure TFFleet.BtAddWeaponPereborClick(Sender: TObject);
var
  i:LongWord;
  search:Boolean;
begin
search:=False;
If MeWeapon.Lines.Count<>0 then
For i:=0 to MeWeapon.Lines.Count-1 do
  begin
  if MeWeapon.Lines[i]=CbWeapon.Text then
    search:=True;
  end;
If not search then
  MeWeapon.Lines.Add(CbWeapon.Text);
end;

procedure TFFleet.BtAddSpecialPereborClick(Sender: TObject);
var
  i:LongWord;
  search:Boolean;
begin
search:=False;
If MeSpecial.Lines.Count<>0 then
For i:=0 to MeSpecial.Lines.Count-1 do
  begin
  if MeSpecial.Lines[i]=CbSpecial.Text then
    search:=True;
  end;
If not search then
  MeSpecial.Lines.Add(CbSpecial.Text);
end;

Function CreateNewGraphlevel(GraphLevel:TAElementArrayGraph; i,FatherSheep:LongWord):LongWord;
var
NomNewSheep:LongWord;
begin
    GraphLevel[i]:=TElementArrayGraph.Create(FatherSheep);
    GraphLevel[i].PointObject:=i;
        If FFleet.CbVivodOpisanie.Checked then
        FFleet.MeOpisanie.Lines.Add('Создание нового уровня графа №'+intToStr(i)+' Номер сборки Father='+intToStr(FatherSheep));
    NomNewSheep:=GoCopySheepCondition(GraphLevel[i].FatherSheep);
        If FFleet.CbVivodOpisanie.Checked then
        FFleet.MeOpisanie.Lines.Add('Создание копии корабля №'+intToStr(GraphLevel[i].FatherSheep)+'. Новый корабль №'+intToStr(NomNewSheep));
    FFleet.MeProt.Lines.Add('Создан корабль №'+IntToStr(NomNewSheep));
    FFleet.SeNomSborka.MaxValue:=Length(SheepArray);
    FFleet.LaKolSborki.Caption:=IntToStr(Length(SheepArray));
    Result:=NomNewSheep;
end;

procedure DeleteSheep(NomNewSheep:LongWord; st:string);
  begin
      DeleteSheepCondition(NomNewSheep);
      FFleet.MeProt.Lines.Add('Удален корабль №'+IntToStr(NomNewSheep)+st);
      FFleet.MeTest.Lines.Add('Удален корабль №'+IntToStr(NomNewSheep)+st);
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Удалена сборка №'+intToStr(NomNewSheep)+st);

          FFleet.MeTest.Lines.Add('');
      FFleet.SeNomSborka.MaxValue:=Length(SheepArray);
      If FFleet.SeNomSborka.MaxValue<FFleet.SeNomSborka.Value then
        begin
        FFleet.SeNomSborka.Value:=0;
        FFleet.SeNomSborka.OnChange(FFleet.SeNomSborka);
        end;
      FFleet.LaKolSborki.Caption:=IntToStr(Length(SheepArray));
  end;

Procedure DeleteSheepNotEnd(NomFirst:LongWord);
var
  Nom,i:LongWord;
begin
If Length(SheepArray)>NomFirst then
  begin
  Nom:=NomFirst;
  while Nom<=Length(SheepArray)-1 do
    begin
    if SheepArray[Nom].Color=ClbtnFace then
      begin
      DeleteSheepCondition(Nom);
      FFleet.MeProt.Lines.Add('Удален корабль №'+IntToStr(Nom)+'. Задан не полностью');
      FFleet.MeTest.Lines.Add('Удален корабль №'+IntToStr(Nom)+'. Задан не полностью');
      If FFleet.CbVivodOpisanie.Checked then
      FFleet.MeOpisanie.Lines.Add('Удалена сборка №'+intToStr(Nom)+'. Задана не полностью');
      end
    else
      inc(Nom);
    end;
          FFleet.MeTest.Lines.Add('');
      FFleet.SeNomSborka.MaxValue:=Length(SheepArray);
      FFleet.LaKolSborki.Caption:=IntToStr(Length(SheepArray));
  end;
end;

function GoParAtNom(TypeParX,i:LongWord):Double;
var
  Par1X:Double;
begin
      case TypeParX of
        0:Par1X:=(SheepArray[i].MassAll*1);    //Масса
        1:Par1X:=(SheepArray[i].MassWeapon*1);    //Масса оружия
        2:Par1X:=(SheepArray[i].MassArmour*1);    //Масса брони
        3:Par1X:=(SheepArray[i].DPS*1);    //ДПС
        4:Par1X:=(SheepArray[i].DPSShield*1);    //ДПС по щитам
        5:Par1X:=(SheepArray[i].DPSArmour*1);    //ДПС  по броне
        6:Par1X:=(SheepArray[i].ArmourMax*1);  //Броня
        7:Par1X:=(SheepArray[i].ShieldEnergyMax*1);  //Щиты
        8:Par1X:=((SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax)*1);  //Броня+Щиты
        9:Par1X:=(SheepArray[i].SpeedMaxUp*1);    //Скорость вперед
        10:Par1X:=(SheepArray[i].SpeedMaxRotate*1);    //Скорость поворота
        11:Par1X:=(SheepArray[i].SpeedMaxStreif*1);    //Скорость стрейфа
        12:Par1X:=(SheepArray[i].SpeedMaxSektor*1);    //Секторальная скорость
        13:Par1X:=(SheepArray[i].ArmourResistanceE*1);    //Защита брони от энергетического оружия
        14:Par1X:=(SheepArray[i].ArmourResistanceV*1);    //Защита брони от взрывного оружия
        15:Par1X:=(SheepArray[i].ArmourResistanceD*1);    //Защита брони от дальнего оружия
        16:Par1X:=(SheepArray[i].TimeBuild*1);    //Защита брони от дальнего оружия
        17:Par1X:=(SheepArray[i].TimeRepair*1);    //Защита брони от дальнего оружия
      end;
  Result:=Par1X;
end;

procedure GoToParettoSet(CurrentColor:TColor; TypeParX,TypeParY:LongWord);
var
  i,j,n,nPareto,k:LongWord;
  Par1X,Par2X,Type1X,Par1Y,Par2Y,Type1Y:Double;
  EndSearch:Boolean;
begin
n:=Length(SheepArray);
if n>1 then
  begin
  IF TypeParX>=3 then
    Type1X:=1
  else
    Type1X:=2;
  IF TypeParY>=3 then
    Type1Y:=1
  else
    Type1Y:=2;

  SetLength(ParetoSet,n);
  nPareto:=n;
  For i:=0 to n-1 do
    ParetoSet[i]:=i;
  i:=0;
  While (i<n) do
    begin
    j:=i+1;
    while (j<n) do
      begin
      Par1X:=GoParAtNom(TypeParX,ParetoSet[i]);
      Par1Y:=GoParAtNom(TypeParY,ParetoSet[i]);
      Par2X:=GoParAtNom(TypeParX,ParetoSet[j]);
      Par2Y:=GoParAtNom(TypeParY,ParetoSet[j]);
      if ((Type1X=1) and (Par1X<Par2X) or (Type1X=2) and (Par1X>Par2X)) then
        begin
        k:=ParetoSet[i];
        ParetoSet[i]:=ParetoSet[j];
        ParetoSet[j]:=k;
        end;
      Inc(j);
      end;
    Inc(i);
    end;
  i:=0;
    i:=0;
  While (i<nPareto) do
    begin
    if SheepArray[ParetoSet[i]].Color=CurrentColor then
      Inc(i)
    else
      begin
      If i<>nPareto-1 then
      For k:=i+1 to nPareto-1 do
        ParetoSet[k-1]:=ParetoSet[k];
      Dec(nPareto);
      SetLength(ParetoSet,nPareto);
      end;
    end;
  i:=0;
  While (i<nPareto) do
    begin
    j:=i+1;
    while (j<nPareto) do
      begin
      Par1X:=GoParAtNom(TypeParX,ParetoSet[i]);
      Par1Y:=GoParAtNom(TypeParY,ParetoSet[i]);
      Par2X:=GoParAtNom(TypeParX,ParetoSet[j]);
      Par2Y:=GoParAtNom(TypeParY,ParetoSet[j]);
       if ((Type1Y=1) and (Par1Y>=Par2Y) or (Type1Y=2) and (Par1Y<=Par2Y)) then
         begin
         If j<>nPareto-1 then
         For k:=j+1 to nPareto-1 do
           ParetoSet[k-1]:=ParetoSet[k];
         Dec(nPareto);
         SetLength(ParetoSet,nPareto);
         end
       else
        Inc(j);

      end;

    Inc(i);
    end;
  end;
end;

procedure Perebor(var NomFirst,NomCreate,NomDel:LongWord);
var
  AWeapon:array of array of TWeaponParametrs;
  ASpecial:array of array of TSpecialParametrs;
  AArmour: array of array of TArmourParametrs;
  AShield: array of array Of TShieldParametrs;
  ATabled: array of array of TTabledParametrs;
  i,j,k,z,n,Level,NomNewSheep,NomUArmour:LongWord;
  search,bEnd:Boolean;
  NomShield,NomSpecial,NomArmour,NomWeapon:array of LongWord;


procedure GoCreateGraphArmour(NomLevel:LongWord; GraphLevel:TAElementArrayGraph; FatherSheep:LongWord; NomArmour:LongWord);
var
  i,k,n1,KolLevel:LongWord;
  Del:Boolean;
  dArmour:Double;
begin
with FFleet do begin
While (NomLevel<Length(AArmour)) and (Length(AArmour[NomLevel])=0) do
    Inc(NomLevel);
If (NomLevel<Length(AArmour)) then
  begin
  n:=Length(AArmour[NomLevel]);
  n1:=length(GraphLevel);
  SetLength(GraphLevel,n+n1);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Создан новый уровень графа с броней №'+intToStr(n+n1));
  For i:=n1+NomArmour to n+n1-1 do
//  If (AArmour[NomLevel][i].Name<>NameFatherArmour) or ((AArmour[NomLevel][i].Name=NameFatherArmour) and (AArmour[NomLevel][i].Level<=LevelFatherArmour)) then
    begin
    NomNewSheep:=CreateNewGraphlevel(GraphLevel,i,FatherSheep);
    Inc(NomCreate);
    SheepArray[NomNewSheep].Armour[NomLevel+1]:=AArmour[NomLevel][i];
     If FFleet.CbVivodOpisanie.Checked then
     MeOpisanie.Lines.Add('Добавление кораблю №'+intToStr(NomNewSheep)+' Брони №'+intToStr(i)+' '+SheepArray[NomNewSheep].Armour[NomLevel+1].Name+' '+IntToStr(SheepArray[NomNewSheep].Armour[NomLevel+1].Level)+' из графа брони на уровне '+intToStr(NomLevel));

    GoCalcSheep(SheepArray[NomNewSheep]);


    For k:=1 to Length(SheepArray[NomNewSheep].Armour)-1 do
      MeTest.Lines.Add(SheepArray[NomNewSheep].Armour[k].Name+' '+ IntToStr(SheepArray[NomNewSheep].Armour[k].Level));
    MeTest.Lines.Add('Масса='+FloatToStr(SheepArray[NomNewSheep].MassAll)+' Ограничение='+FFleet.EdMassMax.Text+' ДПС='+FloatToStr(SheepArray[NomNewSheep].DPS));
     MeTest.Lines.Add('');


    //Проверка по массе
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Проверка ограничения по массе');
    if SheepArray[NomNewSheep].MassAll>StrToFloat(FFleet.EdMassMax.Text) then
      begin
      DeleteSheep(NomNewSheep,' Превышение массы');
      end
    else
      begin
      Del:=False;
      If FFleet.CbVivodOpisanie.Checked then
        MeOpisanie.Lines.Add('Проверка минимального ограничения');
      dArmour:=(SheepArray[NomNewSheep].ArmourMax-SheepArray[FatherSheep].ArmourMax);
      KolLevel:=Length(AArmour)-NomLevel-1;
      If SheepArray[NomNewSheep].ArmourMax+dArmour*KolLevel<StrToFloat(EdAmourMin.Text) then
       DeleteSheep(NomNewSheep,' Недостаточно брони проверка завершена')
      else
      If (NomLevel+1<Length(AArmour)) then
        GoCreateGraphArmour(NomLevel+1,GraphLevel[i].LevelDown,NomNewSheep,i{AArmour[NomLevel][i].Name,AArmour[NomLevel][i].Level})
      else
        begin
        If FFleet.CbVivodOpisanie.Checked then
          MeOpisanie.Lines.Add('Проверка ограничения по броне');
        if StrToFloat(EdAmourMin.Text)>SheepArray[NomNewSheep].ArmourMax then
          DeleteSheep(NomNewSheep,' Недостаточно брони')
        else
          begin
          SheepArray[NomNewSheep].Color:=ColorBPerebor.Selected;
          end;
        end;
      end;

    MeTest.Lines.Add('');

    end;
  end
end;
end;

procedure GoCreateGraphShield(NomLevel:LongWord; GraphLevel:TAElementArrayGraph; FatherSheep:LongWord; NomShield:LongWord);
var
  i,k,n1,KolLevel:LongWord;
  Del:Boolean;
  dShield:Double;
begin
with FFleet do begin
While (NomLevel<Length(AShield)) and (Length(AShield[NomLevel])=0) do
    Inc(NomLevel);
If (NomLevel<Length(AShield)) then
  begin
  n:=Length(AShield[NomLevel]);
  n1:=length(GraphLevel);
  SetLength(GraphLevel,n+n1);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Создан новый уровень графа с щитом №'+intToStr(n+n1));

  For i:=n1+NomShield to n+n1-1 do
//  If (AShield[NomLevel][i].Name<>NameFatherShield) or ((AShield[NomLevel][i].Name=NameFatherShield) and (AShield[NomLevel][i].Level<=LevelFatherShield)) then
    begin
    NomNewSheep:=CreateNewGraphlevel(GraphLevel,i,FatherSheep);
    Inc(NomCreate);
    SheepArray[NomNewSheep].Shield[NomLevel+1]:=AShield[NomLevel][i];
     If FFleet.CbVivodOpisanie.Checked then
     MeOpisanie.Lines.Add('Добавление кораблю №'+intToStr(NomNewSheep)+' Щита №'+intToStr(i)+' '+SheepArray[NomNewSheep].Shield[NomLevel+1].Name+' '+IntToStr(SheepArray[NomNewSheep].Shield[NomLevel+1].Level)+' из графа щитов на уровне '+intToStr(NomLevel));
    GoCalcSheep(SheepArray[NomNewSheep]);


    For k:=1 to Length(SheepArray[NomNewSheep].Shield)-1 do
      MeTest.Lines.Add(SheepArray[NomNewSheep].Shield[k].Name+' '+ IntToStr(SheepArray[NomNewSheep].Shield[k].Level));
    MeTest.Lines.Add('Масса='+FloatToStr(SheepArray[NomNewSheep].MassAll)+' Ограничение='+FFleet.EdMassMax.Text+' ДПС='+FloatToStr(SheepArray[NomNewSheep].DPS));
     MeTest.Lines.Add('');


    //Проверка по массе
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Проверка ограничения по массе');
    if SheepArray[NomNewSheep].MassAll>StrToFloat(FFleet.EdMassMax.Text) then
      begin
      DeleteSheep(NomNewSheep,' Превышение массы');
      end
    else
      begin
      Del:=False;
      If FFleet.CbVivodOpisanie.Checked then
        MeOpisanie.Lines.Add('Проверка минимального ограничения');
      dShield:=(SheepArray[NomNewSheep].ShieldEnergyMax-SheepArray[FatherSheep].ShieldEnergyMax);
      KolLevel:=Length(AShield)-NomLevel-1;
      If SheepArray[NomNewSheep].ShieldEnergyMax+dShield*KolLevel<StrToFloat(EdShieldMin.Text) then
       DeleteSheep(NomNewSheep,' Недостаточно щитов проверка завершена')
      else
      If (NomLevel+1<Length(AShield)) then
        begin

        GoCreateGraphShield(NomLevel+1,GraphLevel[i].LevelDown,NomNewSheep,i); //AShield[NomLevel][i].Name,AShield[NomLevel][i].Level);
        end
      else
      begin
      If FFleet.CbVivodOpisanie.Checked then
      MeOpisanie.Lines.Add('Проверка ограничения по эненргии щита');      
      if StrToFloat(EdShieldMin.Text)>SheepArray[NomNewSheep].ShieldEnergyMax then
        DeleteSheep(NomNewSheep,' Недостаточно энергии щита')
      else
      begin
      If CbAramourPerebor.Checked then
        begin
        GoCreateLimitInForm(NomNewSheep);
        GoCreateGraphArmour(0,GraphLevel[i].LevelDown,NomNewSheep,0);
        end
      else
        SheepArray[NomNewSheep].Color:=ColorBPerebor.Selected;
      end;
      end;
      end;

    MeTest.Lines.Add('');

    end;
  end
end;
end;

procedure GoCreateGraphSpecial(NomLevel:LongWord; GraphLevel:TAElementArrayGraph; FatherSheep:LongWord; NomSpecial:LongWord);
var
  i,k,n1:LongWord;
  Del:Boolean;
begin
with FFleet do begin
While (NomLevel<Length(ASpecial)) and (Length(ASpecial[NomLevel])=0) do
    Inc(NomLevel);
If (NomLevel<Length(ASpecial)) then
  begin
  n:=Length(ASpecial[NomLevel]);
  n1:=length(GraphLevel);
  SetLength(GraphLevel,n+n1);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Создан новый уровень графа со спецсредством №'+intToStr(n+n1));
  For i:=n1+NomSpecial to n+n1-1 do
//  If (ASpecial[NomLevel][i].Name<>NameFatherSpecial) or ((ASpecial[NomLevel][i].Name=NameFatherSpecial) and (ASpecial[NomLevel][i].Level<=LevelFatherSpecial)) then
    begin
    NomNewSheep:=CreateNewGraphlevel(GraphLevel,i,FatherSheep);
    Inc(NomCreate);
    SheepArray[NomNewSheep].Special[NomLevel+1]:=ASpecial[NomLevel][i];
     If FFleet.CbVivodOpisanie.Checked then
     MeOpisanie.Lines.Add('Добавление кораблю №'+intToStr(NomNewSheep)+' Спецсредства №'+intToStr(i)+' '+SheepArray[NomNewSheep].Special[NomLevel+1].Name+' '+IntToStr(SheepArray[NomNewSheep].Special[NomLevel+1].Level)+' из графа спецсредств на уровне '+intToStr(NomLevel));

    GoCalcSheep(SheepArray[NomNewSheep]);


    For k:=1 to Length(SheepArray[NomNewSheep].Special)-1 do
      MeTest.Lines.Add(SheepArray[NomNewSheep].Special[k].Name+' '+ IntToStr(SheepArray[NomNewSheep].Special[k].Level));
    MeTest.Lines.Add('Масса='+FloatToStr(SheepArray[NomNewSheep].MassAll)+' Ограничение='+FFleet.EdMassMax.Text+' ДПС='+FloatToStr(SheepArray[NomNewSheep].DPS));
     MeTest.Lines.Add('');


    //Проверка по массе
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Проверка ограничения по массе');
    if SheepArray[NomNewSheep].MassAll>StrToFloat(FFleet.EdMassMax.Text) then
      begin
      DeleteSheep(NomNewSheep,' Превышение массы');
      end
    else
      begin
      Del:=False;
      If (NomLevel+1<Length(ASpecial)) then
        GoCreateGraphSpecial(NomLevel+1,GraphLevel[i].LevelDown,NomNewSheep,i) //ASpecial[NomLevel][i].Name,ASpecial[NomLevel][i].Level)
      else
      begin
      If FFleet.CbVivodOpisanie.Checked then
        MeOpisanie.Lines.Add('Проверка ограничения по скорости');
      if (StrToFloat(EdSpeedMin.Text)>SheepArray[NomNewSheep].SpeedMaxUp) or (StrToFloat(EdSpeedRotateMin.Text)>SheepArray[NomNewSheep].SpeedMaxRotate) or (StrToFloat(EdSpeedStreifMin.Text)>SheepArray[NomNewSheep].SpeedMaxStreif) then
        DeleteSheep(NomNewSheep,' Недостаточно скорости')
      else
      begin
      If CbShieldPerebor.Checked then
        begin
        GoCreateLimitInForm(NomNewSheep);
        GoCreateGraphShield(0,GraphLevel[i].LevelDown,NomNewSheep,0);
        end
      else
      If CbAramourPerebor.Checked then
        begin
        GoCreateLimitInForm(NomNewSheep);
        GoCreateGraphArmour(0,GraphLevel[i].LevelDown,NomNewSheep,0);
        end
      else
          SheepArray[NomNewSheep].Color:=ColorBPerebor.Selected;
      end;
      end;
      end;

    MeTest.Lines.Add('');

    end;
  end
end;
end;

procedure GoCreateGraphWeapon(NomLevel:LongWord; GraphLevel:TAElementArrayGraph; FatherSheep:LongWord; NomWeapon:LongWord);
var
  i,k,n1,KolLevel:LongWord;
  dDPS:Double;
begin
with FFleet do begin
While (NomLevel<Length(AWeapon)) and (Length(AWeapon[NomLevel])=0) do
    Inc(NomLevel);
If (NomLevel<Length(AWeapon)) then
  begin
  n:=Length(AWeapon[NomLevel]);
  n1:=length(GraphLevel);
  SetLength(GraphLevel,n+n1);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Создан новый уровень графа с оружием №'+intToStr(n+n1));
  For i:=0+NomWeapon to n-1 do
//  If (AWeapon[NomLevel][i].Name<>NameFatherWeapon) or ((AWeapon[NomLevel][i].Name=NameFatherWeapon) and (AWeapon[NomLevel][i].Level<=LevelFatherWeapon)) then
    begin
    NomNewSheep:=CreateNewGraphlevel(GraphLevel,i,FatherSheep);
    Inc(NomCreate);
    SheepArray[NomNewSheep].Weapon[NomLevel+1]:=AWeapon[NomLevel][i];
     If FFleet.CbVivodOpisanie.Checked then
     MeOpisanie.Lines.Add('Добавление кораблю №'+intToStr(NomNewSheep)+' Оружия №'+intToStr(i)+' '+SheepArray[NomNewSheep].Weapon[NomLevel+1].Name+' '+IntToStr(SheepArray[NomNewSheep].Weapon[NomLevel+1].Level)+' из графа оружий на уровне '+intToStr(NomLevel));

    GoCalcSheep(SheepArray[NomNewSheep]);


    For k:=1 to Length(SheepArray[NomNewSheep].Weapon)-1 do
      MeTest.Lines.Add(SheepArray[NomNewSheep].Weapon[k].Name+' '+ IntToStr(SheepArray[NomNewSheep].Weapon[k].Level));
    MeTest.Lines.Add('Масса='+FloatToStr(SheepArray[NomNewSheep].MassAll)+' Ограничение='+FFleet.EdMassMax.Text+' ДПС='+FloatToStr(SheepArray[NomNewSheep].DPS));
     MeTest.Lines.Add('');


    //Проверка по массе
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Проверка ограничения по массе');
    if SheepArray[NomNewSheep].MassAll>StrToFloat(FFleet.EdMassMax.Text) then
      begin
      DeleteSheep(NomNewSheep,' Превышение массы');
      end
    else
      begin
      If FFleet.CbVivodOpisanie.Checked then
        MeOpisanie.Lines.Add('Проверка ограничения по дистанции');
      if (StrToFloat(EdDistMin.Text)>SheepArray[NomNewSheep].WeaponPar[NomLevel+1].MaxDistance) then
//        DeleteSheep(NomNewSheep,' Недостаточно дистанции')
      else
        begin
        If FFleet.CbVivodOpisanie.Checked then
          MeOpisanie.Lines.Add('Проверка минимального ограничения');
        dDPS:=(SheepArray[NomNewSheep].DPS-SheepArray[FatherSheep].DPS);
        KolLevel:=Length(AWeapon)-NomLevel-1;
        If SheepArray[NomNewSheep].DPS+dDPS*KolLevel<StrToFloat(EdDPSMin.Text) then
         DeleteSheep(NomNewSheep,' Недостаточно ДПС проверка завершена')

        else
          begin
          If (NomLevel+1<Length(AWeapon)) then
            GoCreateGraphWeapon(NomLevel+1,GraphLevel[i].LevelDown,NomNewSheep,i) //AWeapon[NomLevel][i].Name,AWeapon[NomLevel][i].Level)
          else
            begin
            If FFleet.CbVivodOpisanie.Checked then
              MeOpisanie.Lines.Add('Проверка ограничения по ДПС');
            if (StrToFloat(EdDPSMin.Text)>SheepArray[NomNewSheep].DPS) then
              DeleteSheep(NomNewSheep,' Недостаточно ДПС')
            else
            if (Length(ASpecial)>0) and (MeSpecial.Lines.Count>0) then
              begin
              GoCreateLimitInForm(NomNewSheep);
              GoCreateGraphSpecial(0,GraphLevel[i].LevelDown,NomNewSheep,0);
              end
            else
            If CbShieldPerebor.Checked then
              begin
              GoCreateLimitInForm(NomNewSheep);
              GoCreateGraphShield(0,GraphLevel[i].LevelDown,NomNewSheep,0);
              end
            else
            If CbAramourPerebor.Checked then
              begin
              GoCreateLimitInForm(NomNewSheep);
              GoCreateGraphArmour(0,GraphLevel[i].LevelDown,NomNewSheep,0);
              end
            else
              SheepArray[NomNewSheep].Color:=ColorBPerebor.Selected;
            end;
          end;
        end;
      end;
    MeTest.Lines.Add('');

    end;
  end;
end;
end;



begin
with FFleet do begin
NomFirst:=Length(SheepArray);
NomCreate:=0;
If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('');
If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('Старт перебора вариантов для сборки №'+IntToStr(NomCurSheep));

If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('Создание списка возможных щитов');
SetLength(AShield,SheepArray[NomCurSheep].Sheep.KolShield);
SetLength(NomShield,SheepArray[NomCurSheep].Sheep.KolShield);
if (CbShieldPerebor.Checked) then
If Length(AShield)<>0 then
If SheepArray[NomCurSheep].Shield[1].ID=0 then
  begin
  If (Length(BaseShield)<>0) then
  For i:=Length(BaseShield)-1 downto 0   do
  If ((BaseShield[i].TypeSheep='0') or (SheepArray[NomCurSheep].Sheep.typeSheep=BaseShield[i].TypeSheep)) and ((BaseShield[i].LevelSheep=0) or (SheepArray[NomCurSheep].Sheep.LevelSheep=BaseShield[i].LevelSheep)) then
     begin
     n:=Length(AShield[0]);
     SetLength(AShield[0],n+1);
     z:=0;
     while (z<n) and (AShield[j][z].ShieldPar>BaseShield[i].ShieldPar) do
       inc(z);
     if z<n then
       begin
       for k:=n downto z+1 do
          AShield[j][k]:=AShield[j][k-1];
       end;
     AShield[0][z]:=BaseShield[i];
     end;
  end;

  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание списка возможной брони');
NomUArmour:=0;
SetLength(AArmour,SheepArray[NomCurSheep].Sheep.KolArmour);
SetLength(NomArmour,SheepArray[NomCurSheep].Sheep.KolArmour);
If Length(AArmour)>0 then
for j:=0 to Length(AArmour)-1 do
If SheepArray[NomCurSheep].Armour[j+1].ID=0 then
  begin
  If (Length(BaseArmour)<>0) then
  For i:=Length(BaseArmour)-1 downto 0  do
  If (((CbUnicalArmour.Checked) and ((BaseArmour[i].Unical<>1) or (BaseArmour[i].Unical=1) and (NomUArmour<3))) or (not CbUnicalArmour.Checked) and(BaseArmour[i].Unical=0)) and ((BaseArmour[i].TypeSheep='0') or (SheepArray[NomCurSheep].Sheep.typeSheep=BaseArmour[i].TypeSheep)) and ((BaseArmour[i].LevelSheep=0) or (SheepArray[NomCurSheep].Sheep.LevelSheep=BaseArmour[i].LevelSheep)) then
     begin
     n:=Length(AArmour[j]);
     SetLength(AArmour[j],n+1);
     z:=0;
     while (z<n) and (((AArmour[j][z].ArmourPar>BaseArmour[i].ArmourPar) and (not CbAddResitToArmour.Checked)) or
                      ((AArmour[j][z].ArmourPar+AArmour[j][z].ResistEnergy+AArmour[j][z].ResistDal+AArmour[j][z].ResistVzr>BaseArmour[i].ArmourPar+BaseArmour[i].ResistEnergy+BaseArmour[i].ResistDal+BaseArmour[i].ResistVzr) and (CbAddResitToArmour.Checked))) do
       inc(z);
     if z<n then
       begin
       for k:=n downto z+1 do
          AArmour[j][k]:=AArmour[j][k-1];
       end;
     AArmour[j][z]:=BaseArmour[i];
     If BaseArmour[i].Unical=1 then
       inc(NomUArmour);
     end;
  end;

  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание списка возможных спецсредств');
SetLength(ASpecial,SheepArray[NomCurSheep].Sheep.KolSpecial);
SetLength(NomSpecial,SheepArray[NomCurSheep].Sheep.KolSpecial);
If Length(ASpecial)>0 then
for j:=0 to Length(ASpecial)-1 do
If SheepArray[NomCurSheep].Special[j+1].ID=0 then
  begin
  If (Length(BaseSpecial)<>0) then
  For i:=0 to  Length(BaseSpecial)-1 do
     begin
     search:=false;
     If MeSpecial.Lines.Count<>0 then
       For k:=0 to MeSpecial.Lines.Count-1 do
          begin
          if MeSpecial.Lines[k]=BaseSpecial[i].Name then
            search:=True;
          end
     else
       Search:=True;
     If  search then
       begin
       n:=Length(ASpecial[j]);
       SetLength(ASpecial[j],n+1);
       ASpecial[j][n]:=BaseSpecial[i];
       end;
     end;
  end;

If FFleet.CbVivodOpisanie.Checked then
MeOpisanie.Lines.Add('Создание списка возможного оружия');
SetLength(AWeapon,SheepArray[NomCurSheep].Sheep.KolWeapon);
SetLength(NomWeapon,SheepArray[NomCurSheep].Sheep.KolWeapon);
If Length(AWeapon)>0 then
for j:=0 to Length(AWeapon)-1 do
If SheepArray[NomCurSheep].Weapon[j+1].ID=0 then
  begin
  If (Length(BaseWeapon)<>0) then
  For i:=Length(BaseWeapon)-1 downto 0  do
     begin
     search:=false;
     If MeWeapon.Lines.Count<>0 then
       For k:=0 to MeWeapon.Lines.Count-1 do
          begin
          St:=MeWeapon.Lines[k];
          if st=BaseWeapon[i].Name then
            search:=True;
          end
     else
       Search:=True;
     IF search then
       begin
       n:=Length(AWeapon[j]);
       SetLength(AWeapon[j],n+1);
       z:=0;
       while (z<n) and (AWeapon[j][z].DPS>BaseWeapon[i].DPS) do
         inc(z);
       if z<n then
         begin
         for k:=n downto z+1 do
            AWeapon[j][k]:=AWeapon[j][k-1];
         end;
       AWeapon[j][z]:=BaseWeapon[i];
       end;
     end;
  end;


    MeTest.Clear;
Level:=0;
if (Length(AWeapon)>0) and (MeWeapon.Lines.Count>0) then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание первого уровня графа с оружия');
  GoCreateGraphWeapon(Level,GraphLevel0,NomCurSheep,0);
  end
else
if (Length(ASpecial)>0) and (MeSpecial.Lines.Count>0) then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание первого уровня графа с спецсредств');
  GoCreateGraphSpecial(Level,GraphLevel0,NomCurSheep,0);
  end
else
If (Length(AShield)>0) and (CbShieldPerebor.Checked) then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание первого уровня графа с щитов');
  GoCreateGraphShield(Level,GraphLevel0,NomCurSheep,0);
  end
else
If (Length(AArmour)>0) and (CbAramourPerebor.Checked) then
  begin
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создание первого уровня графа с брони');
  GoCreateGraphArmour(Level,GraphLevel0,NomCurSheep,0);
  end;

DeleteSheepNotEnd(NomFirst);

SetLength(AShield,0);
SetLength(AArmour,0);
SetLength(ASpecial,0);
SetLength(AWeapon,0);

 {
MeTest.Clear;
for j:=0 to Length(AShield)-1 do
  If Length(AShield[j])<>0 then
  For i:=0 to Length(AShield[j])-1 do
    MeTest.Lines.Add(AShield[j][i].Name+' '+IntToStr(AShield[j][i].Level));

for j:=0 to Length(AArmour)-1 do
  If Length(AArmour[j])<>0 then
  For i:=0 to Length(AArmour[j])-1 do
    MeTest.Lines.Add(AArmour[j][i].Name+' '+IntToStr(AArmour[j][i].Level));

for j:=0 to Length(ASpecial)-1 do
  If Length(ASpecial[j])<>0 then
  For i:=0 to Length(ASpecial[j])-1 do
    MeTest.Lines.Add(ASpecial[j][i].Name+' '+IntToStr(ASpecial[j][i].Level));

for j:=0 to Length(AWeapon)-1 do
  If Length(AWeapon[j])<>0 then
  For i:=0 to Length(AWeapon[j])-1 do
    MeTest.Lines.Add(AWeapon[j][i].Name+' '+IntToStr(AWeapon[j][i].Level));}
end;
end;

procedure TFFleet.BtGoPereborClick(Sender: TObject);
var
NomFirst,NomCreate,NomDel:LongWord;
begin
Perebor(NomFirst,NomCreate,NomDel);
ShowMessage('Рассмотрено '+IntToStr(NomCreate)+' сборок. Из них осталось - '+IntToStr(Length(SheepArray)-NomFirst));
end;

procedure CopyMemo(Me1,Me2:TMemo);
var
  i:LongWord;
begin
Me2.Clear;
If Me1.Lines.Count>0 then
  For i:=0 to Me1.Lines.Count-1 do
    Me2.Lines.Add(Me1.Lines.Strings[i]);
end;

procedure TFFleet.BtGoPerebor2VariantsClick(Sender: TObject);
var
  i:LongWord;
NomFirst,NomCreate,NomDel,nomWhile:LongWord;
MaxArmour:Double;
AllNomCreate,AllNomDel,NomCurrentFirst,n,NomFirst2,NomCreate2,NomDel2,KolDeletePareto,TypeParX,TypeParY:LongWord;
MaxMass:Double;
begin
MaxMass:=StrToFloat(EdMassMax.Text);
GoCreateLimitInForm(NomCurSheep);
CopyMemo(MeWeapon,MeWeaponLimit2);
CopyMemo(MeSpecial,MeSpecialLimit2);
case  CbFirsLimit.ItemIndex of
  0: begin
     MeWeapon.Clear;
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=True;
     TypeParX:=6;
     end;
  1: begin
     MeWeapon.Clear;
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=true;
     CbAramourPerebor.Checked:=false;
     TypeParX:=7;
     end;
  2: begin
     MeWeapon.Clear;
     CopyMemo(MeSpecialLimit2,MeSpecial);
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=False;
     end;
  3: begin
     CopyMemo(MeWeaponLimit2,MeWeapon);
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=False;
     TypeParX:=3;
     end;
  end;
ColorBPerebor.Selected:=FFleet.ColorBFirstLimit.Selected;
Perebor(NomFirst,NomCreate,NomDel);

case  CbSecondLimit.ItemIndex of
  0: begin
     MeWeapon.Clear;
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=True;
     TypeParY:=6;
     end;
  1: begin
     MeWeapon.Clear;
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=true;
     CbAramourPerebor.Checked:=false;
     TypeParY:=7;
     end;
  2: begin
     MeWeapon.Clear;
     CopyMemo(MeSpecialLimit2,MeSpecial);
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=False;
     end;
  3: begin
     CopyMemo(MeWeaponLimit2,MeWeapon);
     MeSpecial.Clear;
     CbShieldPerebor.Checked:=False;
     CbAramourPerebor.Checked:=False;
     TypeParY:=3;
     end;
  end;

ColorBPerebor.Selected:=FFleet.ColorBSecondLimit.Selected;
AllNomCreate:=NomCreate;
n:=Length(SheepArray)-1;
If n-NomFirst<>0 then
  For NomCurrentFirst:=NomFirst to n do
    begin
    SeNomSborka.Value:=NomCurrentFirst;
    SeNomSborka.OnChange(SeNomSborka);
    EdMassMax.Text:=FloatToStr(MaxMass);
    GoCreateLimitInForm(NomCurSheep);
    Perebor(NomFirst2,NomCreate2,NomDel2);
    nomWhile:=0;
    While (Length(SheepArray)=NomFirst2) and (nomWhile<10) do
      begin
      Inc(nomWhile);
      MaxArmour:=StrToFloat(EdAmourMin.Text);
      EdAmourMin.Text:=FloatToStr(MaxArmour-100);
      Perebor(NomFirst2,NomCreate2,NomDel2);
      end;
    AllNomCreate:=AllNomCreate+NomCreate2;

    GoToParettoSet(FFleet.ColorBSecondLimit.Selected,TypeParY,TypeParX);
    DelNotParetoSet(FFleet.ColorBSecondLimit.Selected,KolDeletePareto);
    end;
//    SheepArray[NomCurSheep].Color:=clBlue;
ShowMessage('Рассмотрено '+IntToStr(AllNomCreate)+' сборок. Из них осталось - '+IntToStr(Length(SheepArray)-NomFirst));
end;


procedure TFFleet.FormActivate(Sender: TObject);
begin
SeNomSborka.MaxValue:=Length(SheepArray);
LaKolSborki.Caption:=IntToStr(Length(SheepArray));
end;

procedure TFFleet.SeNomSborkaChange(Sender: TObject);
var
  i:LongWord;
begin
If SeNomSborka.Value=Length(SheepArray) then
  begin
  i:=Length(SheepArray);
  SetLength(SheepArray,i+1);

  end;

NomCurSheep:=SeNomSborka.Value;
ColorBSheep.Selected:=SheepArray[NomCurSheep].Color;
GoCalcSheep(SheepArray[NomCurSheep]);
VisibleParSheep(NomCurSheep);
DBCbTypeSheep.Text:=SheepArray[NomCurSheep].Sheep.typeSheep;
DBCbNameSheep.Text:=SheepArray[NomCurSheep].Sheep.Name;
DBCbMK.Text:=SheepArray[NomCurSheep].Sheep.MK;
SheepChange;
case SheepArray[NomCurSheep].Sheep.KolArmour of
  1:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level); end;
  2:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);end;
  3:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);
          DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[3].Name; BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[3].Level);end;
  4:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);
          DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[3].Name; BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[3].Level);
          DBCbArmour4.Text:=SheepArray[NomCurSheep].Armour[4].Name; BCbArmour4.Text:=IntToStr(SheepArray[NomCurSheep].Armour[4].Level);end;
  5:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);
          DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[3].Name; BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[3].Level);
          DBCbArmour4.Text:=SheepArray[NomCurSheep].Armour[4].Name; BCbArmour4.Text:=IntToStr(SheepArray[NomCurSheep].Armour[4].Level);
          DBCbArmour5.Text:=SheepArray[NomCurSheep].Armour[5].Name; BCbArmour5.Text:=IntToStr(SheepArray[NomCurSheep].Armour[5].Level);end;
  6:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);
          DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[3].Name; BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[3].Level);
          DBCbArmour4.Text:=SheepArray[NomCurSheep].Armour[4].Name; BCbArmour4.Text:=IntToStr(SheepArray[NomCurSheep].Armour[4].Level);
          DBCbArmour5.Text:=SheepArray[NomCurSheep].Armour[5].Name; BCbArmour5.Text:=IntToStr(SheepArray[NomCurSheep].Armour[5].Level);
          DBCbArmour6.Text:=SheepArray[NomCurSheep].Armour[6].Name; BCbArmour6.Text:=IntToStr(SheepArray[NomCurSheep].Armour[6].Level);end;
  7:begin DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[1].Name; BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[1].Level);
          DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[2].Name; BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[2].Level);
          DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[3].Name; BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[3].Level);
          DBCbArmour4.Text:=SheepArray[NomCurSheep].Armour[4].Name; BCbArmour4.Text:=IntToStr(SheepArray[NomCurSheep].Armour[4].Level);
          DBCbArmour5.Text:=SheepArray[NomCurSheep].Armour[5].Name; BCbArmour5.Text:=IntToStr(SheepArray[NomCurSheep].Armour[5].Level);
          DBCbArmour6.Text:=SheepArray[NomCurSheep].Armour[6].Name; BCbArmour6.Text:=IntToStr(SheepArray[NomCurSheep].Armour[6].Level);
          DBCbArmour7.Text:=SheepArray[NomCurSheep].Armour[7].Name; BCbArmour7.Text:=IntToStr(SheepArray[NomCurSheep].Armour[7].Level);end;
  end;
case SheepArray[NomCurSheep].Sheep.KolSpecial of
  1:begin DBCbSpecial1.Text:=SheepArray[NomCurSheep].Special[1].Name; BCbSpecial1.Text:=IntToStr(SheepArray[NomCurSheep].Special[1].Level); end;
  2:begin DBCbSpecial1.Text:=SheepArray[NomCurSheep].Special[1].Name; BCbSpecial1.Text:=IntToStr(SheepArray[NomCurSheep].Special[1].Level);
          DBCbSpecial2.Text:=SheepArray[NomCurSheep].Special[2].Name; BCbSpecial2.Text:=IntToStr(SheepArray[NomCurSheep].Special[2].Level);end;
  3:begin DBCbSpecial1.Text:=SheepArray[NomCurSheep].Special[1].Name; BCbSpecial1.Text:=IntToStr(SheepArray[NomCurSheep].Special[1].Level);
          DBCbSpecial2.Text:=SheepArray[NomCurSheep].Special[2].Name; BCbSpecial2.Text:=IntToStr(SheepArray[NomCurSheep].Special[2].Level);
          DBCbSpecial3.Text:=SheepArray[NomCurSheep].Special[3].Name; BCbSpecial3.Text:=IntToStr(SheepArray[NomCurSheep].Special[3].Level);end;
          end;
case SheepArray[NomCurSheep].Sheep.KolShield of
  1:begin DBCbShield1.Text:=SheepArray[NomCurSheep].Shield[1].Name; BCbShield1.Text:=IntToStr(SheepArray[NomCurSheep].Shield[1].Level); end;
  2:begin DBCbShield1.Text:=SheepArray[NomCurSheep].Shield[1].Name; BCbShield1.Text:=IntToStr(SheepArray[NomCurSheep].Shield[1].Level);
          DBCbShield2.Text:=SheepArray[NomCurSheep].Shield[2].Name; BCbShield2.Text:=IntToStr(SheepArray[NomCurSheep].Shield[2].Level);end;
          end;
case SheepArray[NomCurSheep].Sheep.KolTabled of
  1:begin DBCbTabled1.Text:=SheepArray[NomCurSheep].Tabled[1].Name; BCbTabled1.Text:=IntToStr(SheepArray[NomCurSheep].Tabled[1].Level); end;
  end;
case SheepArray[NomCurSheep].Sheep.KolWeapon of
  1:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level); end;
  2:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);end;
  3:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);end;
  4:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);
          DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[4].Name; BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[4].Level);end;
  5:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);
          DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[4].Name; BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[4].Level);
          DBCbWeapon5.Text:=SheepArray[NomCurSheep].Weapon[5].Name; BCbWeapon5.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[5].Level);end;
  6:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);
          DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[4].Name; BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[4].Level);
          DBCbWeapon5.Text:=SheepArray[NomCurSheep].Weapon[5].Name; BCbWeapon5.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[5].Level);
          DBCbWeapon6.Text:=SheepArray[NomCurSheep].Weapon[6].Name; BCbWeapon6.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[6].Level);end;
  7:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);
          DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[4].Name; BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[4].Level);
          DBCbWeapon5.Text:=SheepArray[NomCurSheep].Weapon[5].Name; BCbWeapon5.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[5].Level);
          DBCbWeapon6.Text:=SheepArray[NomCurSheep].Weapon[6].Name; BCbWeapon6.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[6].Level);
          DBCbWeapon7.Text:=SheepArray[NomCurSheep].Weapon[7].Name; BCbWeapon7.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[7].Level);end;
  8:begin DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[1].Name; BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[1].Level);
          DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[2].Name; BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[2].Level);
          DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[3].Name; BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[3].Level);
          DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[4].Name; BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[4].Level);
          DBCbWeapon5.Text:=SheepArray[NomCurSheep].Weapon[5].Name; BCbWeapon5.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[5].Level);
          DBCbWeapon6.Text:=SheepArray[NomCurSheep].Weapon[6].Name; BCbWeapon6.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[6].Level);
          DBCbWeapon7.Text:=SheepArray[NomCurSheep].Weapon[7].Name; BCbWeapon7.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[7].Level);
          DBCbWeapon8.Text:=SheepArray[NomCurSheep].Weapon[8].Name; BCbWeapon8.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[8].Level);end;
   end;

end;

procedure TFFleet.BtCreateNewSheepClick(Sender: TObject);
var
  n:Longword;
begin
  n:=Length(SheepArray);
  SetLength(SheepArray,n+1);
  NomCurSheep:=n;
  SheepArray[n].Color:=ColorBSheep.Selected;
  SheepChange;

  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Создана новая сборка №'+IntToStr(n));
SeNomSborka.MaxValue:=Length(SheepArray);
SeNomSborka.Value:=NomCurSheep;
LaKolSborki.Caption:=IntToStr(Length(SheepArray));
end;

procedure TFFleet.BtSaveSheepClick(Sender: TObject);
var
  i:LongWord;
begin
IF SdSave.Execute then
  begin
  AssignFile(f,SdSave.FileName);
  Rewrite(f);
  SaveSheepInTextFile(SheepArray[NomCurSheep]);
  If FFleet.CbVivodOpisanie.Checked then
  MeOpisanie.Lines.Add('Сборка корабля №'+IntToStr(NomCurSheep)+' сохранена в файле '+SdSave.FileName);
  CloseFile(F);
  ShowMessage('Данные сохранены в файл '+SdSave.FileName);
  end;

end;

procedure SaveSheepInTextFile(Sheep:TSheepCondition);
var
  i:LongWord;
begin

  Writeln(f,Sheep.Sheep.Name+';'+Sheep.Sheep.TypeSheep+';'+Sheep.Sheep.MK+';'+IntToStr(Sheep.Sheep.Id)+';');
  Writeln(f,IntToStr(Sheep.Sheep.LevelSheep)+';'+FloatToStr(Sheep.Sheep.ArmourSheep)+';'+FloatToStr(Sheep.Sheep.Cargo)+';'+FloatToStr(Sheep.Sheep.Expirience)
  +';'+FloatToStr(Sheep.Sheep.MaxVolume)+';'+FloatToStr(Sheep.Sheep.Mass)+';'+FloatToStr(Sheep.Sheep.SpeedUp)+';'+FloatToStr(Sheep.Sheep.SpeedRotate)+';'+FloatToStr(Sheep.Sheep.SpeedStreif)+';'+FloatToStr(Sheep.Sheep.SpeedSektor)
  +';'+FloatToStr(Sheep.Sheep.DamageArmour)+';'+FloatToStr(Sheep.Sheep.DamageShield)+';'+FloatToStr(Sheep.Sheep.DamageFr)+';'+FloatToStr(Sheep.Sheep.DamageL)+';'+FloatToStr(Sheep.Sheep.DamageK)+';'+FloatToStr(Sheep.Sheep.DamageEs)+';'+FloatToStr(Sheep.Sheep.DamageSh)+';'+FloatToStr(Sheep.Sheep.DamageA)
  +';'+FloatToStr(Sheep.Sheep.MassArmour)+';'+FloatToStr(Sheep.Sheep.MassWeapoon)+';'+FloatToStr(Sheep.Sheep.MassEngin)+';'+FloatToStr(Sheep.Sheep.MassFly)
  +';'+FloatToStr(Sheep.Sheep.ArmourPar)+';'+FloatToStr(Sheep.Sheep.Zamedl)+';'+FloatToStr(Sheep.Sheep.Obhod)+';'+FloatToStr(Sheep.Sheep.Damage)+';'+FloatToStr(Sheep.Sheep.Distance));
  Writeln(f,IntToStr(Sheep.Sheep.KolArmour)+';'+IntToStr(Sheep.Sheep.KolShield)+';'+IntToStr(Sheep.Sheep.KolSpecial)+';'+IntToStr(Sheep.Sheep.KolTabled)+';'+IntToStr(Sheep.Sheep.KolWeapon)+';');
  Writeln(f);
  For i:=0 to Length(Sheep.Weapon)-1 do
    begin
    Writeln(f,Sheep.Weapon[i].Name+';'+IntToStr(Sheep.Weapon[i].Level)+';'+IntToStr(Sheep.Weapon[i].TypeWeapon)+';'+IntToStr(Sheep.Weapon[i].ID)+';');
    Writeln(f,FloatToStr(Sheep.Weapon[i].Expirience)+';'+FloatToStr(Sheep.Weapon[i].Mass)+';'+FloatToStr(Sheep.Weapon[i].Speed)+';'+FloatToStr(Sheep.Weapon[i].MaxDistance)+';'+FloatToStr(Sheep.Weapon[i].MinDistance)+';'+FloatToStr(Sheep.Weapon[i].DPS)+';'+FloatToStr(Sheep.Weapon[i].DPSShield)+';'+FloatToStr(Sheep.Weapon[i].DPSArmour)+';'
    +FloatToStr(Sheep.Weapon[i].Broneb)+';'+FloatToStr(Sheep.Weapon[i].Zamedl)+';'+FloatToStr(Sheep.Weapon[i].Obhod)+';'+FloatToStr(Sheep.Weapon[i].DamageShield)+';'+FloatToStr(Sheep.Weapon[i].DamageArmour)+';'+FloatToStr(Sheep.Weapon[i].Razbros)+';'+FloatToStr(Sheep.Weapon[i].Radius)+';'+FloatToStr(Sheep.Weapon[i].TimeShot)+';'+FloatToStr(Sheep.Weapon[i].TimeShotNepr)+';'
    +FloatToStr(Sheep.Weapon[i].LevelSheep)+';'+Sheep.Weapon[i].TypeSheep+';');
    end;
  Writeln(f);
  For i:=0 to Length(Sheep.Armour)-1 do
    begin
    Writeln(f,Sheep.Armour[i].Name+';'+IntToStr(Sheep.Armour[i].Level)+';'+IntToStr(Sheep.Armour[i].ID)+';');
    Writeln(f,FloatToStr(Sheep.Armour[i].Expirience)+';'+FloatToStr(Sheep.Armour[i].Mass)+';'+FloatToStr(Sheep.Armour[i].ArmourPar)+';'+FloatToStr(Sheep.Armour[i].ResistEnergy)+';'+FloatToStr(Sheep.Armour[i].ResistDal)+';'+FloatToStr(Sheep.Armour[i].ResistVzr)+';'+FloatToStr(Sheep.Armour[i].LevelSheep)+';'+Sheep.Armour[i].TypeSheep+';')
    end;
  Writeln(f);
  For i:=0 to Length(Sheep.Special)-1 do
    begin
    Writeln(f,Sheep.Special[i].Name+';'+IntToStr(Sheep.Special[i].Level)+';'+IntToStr(Sheep.Special[i].ID)+';');
    Writeln(f,FloatToStr(Sheep.Special[i].Expirience)+';'+FloatToStr(Sheep.Special[i].Mass)+';'+FloatToStr(Sheep.Special[i].MassWeapoon)+';'+FloatToStr(Sheep.Special[i].MassSheep)+';'+FloatToStr(Sheep.Special[i].TypeWeapoon)+';'+FloatToStr(Sheep.Special[i].SpeedUp)+';'+FloatToStr(Sheep.Special[i].SpeedRotate)+';'+FloatToStr(Sheep.Special[i].SpeedStreif)+';'+FloatToStr(Sheep.Special[i].SpeedSektor)
    +';'+FloatToStr(Sheep.Special[i].SpeedUpP)+';'+FloatToStr(Sheep.Special[i].SpeedRotateP)+';'+FloatToStr(Sheep.Special[i].SpeedStreifP)+';'+FloatToStr(Sheep.Special[i].SpeedSektorP)+';'+FloatToStr(Sheep.Special[i].SpeedWeapoon)+';'+FloatToStr(Sheep.Special[i].Obhod)+';'+FloatToStr(Sheep.Special[i].MinDistance)+';'+FloatToStr(Sheep.Special[i].MaxDistance)
    +';'+FloatToStr(Sheep.Special[i].MinDistanceP)+';'+FloatToStr(Sheep.Special[i].MaxDistanceP)+';'+FloatToStr(Sheep.Special[i].Damage)+';'+FloatToStr(Sheep.Special[i].DamageArmour)+';'+FloatToStr(Sheep.Special[i].DamageShield)+';'+FloatToStr(Sheep.Special[i].Razbros)+';'+FloatToStr(Sheep.Special[i].Radius)+';'+FloatToStr(Sheep.Special[i].Cargo)+';'+FloatToStr(Sheep.Special[i].ArmourPar)+';'+FloatToStr(Sheep.Special[i].LevelSheep)+';'+Sheep.Special[i].TypeSheep+';');
    end;
  Writeln(f);
  For i:=0 to Length(Sheep.Shield)-1 do
    begin
    Writeln(f,Sheep.Shield[i].Name+';'+IntToStr(Sheep.Shield[i].Level)+';'+IntToStr(Sheep.Shield[i].ID)+';');
    Writeln(f,FloatToStr(Sheep.Shield[i].Expirience)+';'+FloatToStr(Sheep.Shield[i].Mass)+';'+FloatToStr(Sheep.Shield[i].ShieldPar)+';'+FloatToStr(Sheep.Shield[i].ResistEnergy)+';'+FloatToStr(Sheep.Shield[i].ResistDal)+';'+FloatToStr(Sheep.Shield[i].ResistVzr)+';'
    +FloatToStr(Sheep.Shield[i].PronEner)+';'+FloatToStr(Sheep.Shield[i].PronDal)+';'+FloatToStr(Sheep.Shield[i].PronVzr)+';'+FloatToStr(Sheep.Shield[i].Vostan)+';'+FloatToStr(Sheep.Shield[i].TimeVostan)+';'+FloatToStr(Sheep.Shield[i].LevelSheep)+';'+Sheep.Shield[i].TypeSheep+';');
    end;
  Writeln(f);
  For i:=0 to Length(Sheep.Tabled)-1 do
    begin
    Writeln(f,Sheep.Tabled[i].Name+';'+IntToStr(Sheep.Tabled[i].Level)+';'+IntToStr(Sheep.Tabled[i].ID)+';');
    Writeln(f,FloatToStr(Sheep.Tabled[i].Expirience)+';'+FloatToStr(Sheep.Tabled[i].MassSheep)+';'+FloatToStr(Sheep.Tabled[i].ResistEnergy)+';'+FloatToStr(Sheep.Tabled[i].ResistDal)+';'+FloatToStr(Sheep.Tabled[i].ResistVzr)+';'+FloatToStr(Sheep.Tabled[i].LevelSheep)+';'+Sheep.Tabled[i].TypeSheep+';');
    end;
end;

procedure LoadSheepAsTextFile(var ElSheep:TSheepCondition; var n:longword);
var
  i,ID:LongWord;
  st:string;
begin
with FFleet do
  begin
  Readln(f,st);
  n:=Length(SheepArray);
  SetLength(SheepArray,n+1);
  SeNomSborka.MaxValue:=Length(SheepArray);
  LaKolSborki.Caption:=IntToStr(Length(SheepArray));

  SheepArray[n].Sheep.Name:=Copy(St,1,pos(';',st)-1);
  Delete(St,1,pos(';',st));
  SheepArray[n].Sheep.typeSheep:=Copy(St,1,pos(';',st)-1);
  Delete(St,1,pos(';',st));
  SheepArray[n].Sheep.MK:=Copy(St,1,pos(';',st)-1);
  Delete(St,1,pos(';',st));
  SheepArray[n].Sheep.Id:=StrToInt(Copy(St,1,pos(';',st)-1));
  Delete(St,1,pos(';',st));
  SheepArray[n].Color:=clBtnFace;
  Readln(f,st);
  Readln(f,st);
  Readln(f,st);

  ID:=SearchIDSheep(SheepArray[n].Sheep.Name,SheepArray[n].Sheep.MK);
  SheepArray[n].Sheep:=BaseSheep[ID];

  SetLength(SheepArray[n].Weapon,SheepArray[n].Sheep.KolWeapon+1);
  for i:=0 to SheepArray[n].Sheep.KolWeapon do
    begin
    Readln(f,st);
    SheepArray[n].Weapon[i].Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    SheepArray[n].Weapon[i].Level:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    SheepArray[n].Weapon[i].ID:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    Readln(f,st);


    ID:=SearchIDWeapon(SheepArray[n].Weapon[i].Name,SheepArray[n].Weapon[i].Level);
    SheepArray[n].Weapon[i]:=BaseWeapon[ID];
    end;

    Readln(f,st);

  SetLength(SheepArray[n].Armour,SheepArray[n].Sheep.KolArmour+1);
  for i:=0 to SheepArray[n].Sheep.KolArmour do
    begin
    Readln(f,st);
    SheepArray[n].Armour[i].Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    SheepArray[n].Armour[i].Level:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    SheepArray[n].Armour[i].ID:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    Readln(f,st);


    ID:=SearchIDArmour(SheepArray[n].Armour[i].Name,SheepArray[n].Armour[i].Level);
    SheepArray[n].Armour[i]:=BaseArmour[ID];
    end;

    Readln(f,st);
  SetLength(SheepArray[n].Special,SheepArray[n].Sheep.KolSpecial+1);
  for i:=0 to SheepArray[n].Sheep.KolSpecial do
    begin
    Readln(f,st);
    SheepArray[n].Special[i].Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    SheepArray[n].Special[i].Level:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    SheepArray[n].Special[i].ID:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    Readln(f,st);

    ID:=SearchIDSpecial(SheepArray[n].Special[i].Name,SheepArray[n].Special[i].Level);
    SheepArray[n].Special[i]:=BaseSpecial[ID];
    end;

    Readln(f,st);
  SetLength(SheepArray[n].Shield,SheepArray[n].Sheep.KolShield+1);
  for i:=0 to SheepArray[n].Sheep.KolShield do
    begin
    Readln(f,st);
    SheepArray[n].Shield[i].Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    SheepArray[n].Shield[i].Level:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    SheepArray[n].Shield[i].ID:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    Readln(f,st);

    ID:=SearchIDShield(SheepArray[n].Shield[i].Name,SheepArray[n].Shield[i].Level);
    SheepArray[n].Shield[i]:=BaseShield[ID];
    end;

    Readln(f,st);
  SetLength(SheepArray[n].Tabled,SheepArray[n].Sheep.KolTabled+1);
  for i:=0 to SheepArray[n].Sheep.KolTabled do
    begin
    Readln(f,st);
    SheepArray[n].Tabled[i].Name:=Copy(St,1,pos(';',st)-1);
    Delete(St,1,pos(';',st));
    SheepArray[n].Tabled[i].Level:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    SheepArray[n].Tabled[i].ID:=StrToInt(Copy(St,1,pos(';',st)-1));
    Delete(St,1,pos(';',st));
    Readln(f,st);

    ID:=SearchIDTabled(SheepArray[n].Tabled[i].Name,SheepArray[n].Tabled[i].Level);
    SheepArray[n].Tabled[i]:=BaseTabled[ID];
    end;

  ElSheep:=SheepArray[n];
  end;
end;

procedure TFFleet.BtLoadSheepClick(Sender: TObject);
var
  Sheep:TSheepCondition;
  n:LongWord;
begin
IF OdLoad.Execute then
  begin
  AssignFile(f,OdLoad.FileName);
  Reset(f);
  LoadSheepAsTextFile(Sheep,n);

  CloseFile(f);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Сборка корабля №'+IntToStr(n)+' Загружена из файла '+OdLoad.FileName);
    If FFleet.CbVivodOpisanie.Checked then
    MeOpisanie.Lines.Add('Расчет корабля №'+IntToStr(n));
  GoCalcSheep(SheepArray[n]);

  ShowMessage('Загружена новая сборка с №'+IntToStr(n));
  end;

end;

procedure TFFleet.LeVolumeChange(Sender: TObject);
var
  mas:Double;
begin
IF (LeVolume.Text<>'') and (LeVolumeMax.Text<>'') then
begin
 LaMass.Visible:=StrToFloat(LeVolume.Text)>StrToFloat(LeVolumeMax.Text);
 Mas:=StrToFloat(LeVolumeMax.Text)-StrToFloat(LeVolume.Text);
 LaMassOstalos.Caption:=FloatToStr(Mas);
 If mas<0 then
   LaMassOstalos.Font.Color:=clRed
 else
   LaMassOstalos.Font.Color:=clGreen;
 end;
end;

procedure VisibleSetSheep(PB:TPaintBox; MaxX,MinX,MaxY,MinY:Double; TypeParX,TypeParY:Longword);
const
  Sh=5;
var
  ShagX,ShagY:Double;
  i,j,k,x,y:LongWord;
  ShagOX,ShagOy:Double;
begin
GoToParettoSet(FFleet.ColorBSheepPAretoSet.Selected,TypeParX,TypeParY);
If (MaxX>MinX) and (MaxY>MinY) and (Length(SheepArray)>0) then
  begin
  ShagX:=(PB.Width-40)/(MaxX-MinX);
  ShagY:=(PB.Height-40)/(MaxY-MinY);
  PB.Canvas.FillRect(Rect(0, 0, PB.Width, PB.Height));
  For i:=0 to Length(SheepArray)-1 do
  If SheepArray[i].Color<>clbtnface then
    begin
    x:=Trunc(GoParAtNom(TypeParX,i)*ShagX);
    y:=Trunc(GoParAtNom(TypeParY,i)*ShagY);
    x:=x+20-Trunc(MinX*ShagX);
    y:=y+20-Trunc(MinY*ShagY);;
    y:=PB.Height-y;
    PB.Canvas.Pen.Color:=SheepArray[i].Color;
    PB.Canvas.Ellipse(x-Sh,y-Sh,x+Sh,y+Sh);
    PB.Canvas.Pen.Color:=clBlack;
    PB.Canvas.TextOut(x+Sh,y+sh,IntToStr(i));
    end;

  If FFleet.CbVisibleParetoSet.Checked then
  //Вывод множества Парето
  For i:=0 to Length(ParetoSet)-1 do
  If SheepArray[ParetoSet[i]].Color<>clbtnface then
    begin
    x:=Trunc(GoParAtNom(TypeParX,ParetoSet[i])*ShagX);
    y:=Trunc(GoParAtNom(TypeParY,ParetoSet[i])*ShagY);
    x:=x+20-Trunc(MinX*ShagX);
    y:=y+20-Trunc(MinY*ShagY);;
    y:=PB.Height-y;
    PB.Canvas.Pen.Color:=clBlack;
    If i=0 then
    PB.Canvas.MoveTo(X,y)
    else
    PB.Canvas.LineTo(X,y);
    end;

  PB.Canvas.MoveTo(20,0);
  PB.Canvas.LineTo(20,Pb.Height);
  PB.Canvas.MoveTo(0,Pb.Height-20);
  PB.Canvas.LineTo(PB.Width,Pb.Height-20);
  If MaxX-MinX>1500 then
    ShagOX:=500
  else
  If MaxX-MinX>1000 then
    ShagOX:=200
  else
  If MaxX-MinX>500 then
    ShagOX:=100
  else
  If MaxX-MinX>300 then
    ShagOX:=50
  else
  If MaxX-MinX>100 then
    ShagOX:=20
  else
  If MaxX-MinX>50 then
    ShagOX:=10
  else
  If MaxX-MinX>20 then
    ShagOX:=5
  else
    ShagOX:=1;

  j:=1;
  While j*ShagOX*ShagX<PB.Width do
    begin
    PB.Canvas.Pen.Color:=clGray;
    PB.Canvas.MoveTo(Trunc(j*ShagOX*ShagX+20),0);
    PB.Canvas.LineTo(Trunc(j*ShagOX*ShagX+20),pb.Height);
    PB.Canvas.Pen.Color:=clBlack;
    PB.Canvas.TextOut(Trunc(j*ShagOX*ShagX+20)+2,pb.Height-18,IntToStr(Trunc(j*ShagOX+MinX)));
    Inc(j);
    end;


  If MaxY-MinY>1500 then
    ShagOY:=500
  else
  If MaxY-MinY>1000 then
    ShagOY:=200
  else
  If MaxY-MinY>500 then
    ShagOY:=100
  else
  If MaxY-MinY>300 then
    ShagOY:=50
  else
  If MaxY-MinY>100 then
    ShagOY:=20
  else
  If MaxY-MinY>50 then
    ShagOY:=10
  else
  If MaxY-MinY>20 then
    ShagOY:=5
  else
    ShagOY:=1;

  j:=1;
  While j*ShagOY*ShagY<PB.Width do
    begin
    PB.Canvas.Pen.Color:=clGray;
    PB.Canvas.MoveTo(0,Trunc(pb.Height-j*ShagOY*ShagY-20));
    PB.Canvas.LineTo(PB.Width,Trunc(pb.Height-j*ShagOY*ShagY-20));
    PB.Canvas.Pen.Color:=clBlack;
    PB.Canvas.TextOut(2,Trunc(pb.Height-j*ShagOY*ShagY-20)+2,IntToStr(Trunc(j*ShagOY+MinY)));
    Inc(j);
    end;
  end;

end;

procedure GoMaxParametrSet(TypePar:LongWord; var Max:Double);
var
  i:LongWord;
begin
If (Length(SheepArray)>0) then
  begin
    i:=0;
    case TypePar of
      0:Max:=(SheepArray[i].MassAll);    //Масса
      1:Max:=(SheepArray[i].MassWeapon);    //Масса оружия
      2:Max:=(SheepArray[i].MassArmour);    //Масса брони
      3:Max:=(SheepArray[i].DPS);    //ДПС
      4:Max:=(SheepArray[i].DPSShield);    //ДПС по щитам
      5:Max:=(SheepArray[i].DPSArmour);    //ДПС  по броне
      6:Max:=(SheepArray[i].ArmourMax);  //Броня
      7:Max:=(SheepArray[i].ShieldEnergyMax);  //Щиты
      8:Max:=(SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax);  //Броня+Щиты
      9:Max:=(SheepArray[i].SpeedMaxUp);    //Скорость вперед
      10:Max:=(SheepArray[i].SpeedMaxRotate);    //Скорость поворота
      11:Max:=(SheepArray[i].SpeedMaxStreif);    //Скорость стрейфа
      12:Max:=(SheepArray[i].SpeedMaxSektor);    //Секторальная скорость
      13:Max:=(SheepArray[i].ArmourResistanceE);    //Защита брони от энергетического оружия
      14:Max:=(SheepArray[i].ArmourResistanceV);    //Защита брони от взрывного оружия
      15:Max:=(SheepArray[i].ArmourResistanceD);    //Защита брони от дальнего оружия
      16:Max:=(SheepArray[i].TimeBuild);    //Время строительства
      17:Max:=(SheepArray[i].TimeRepair);    //Время ремонта
      end;
  For i:=0 to Length(SheepArray)-1 do
    begin
    If SheepArray[i].Color<>clbtnface then
    case TypePar of
      0:begin if Max<SheepArray[i].MassAll then   Max:=(SheepArray[i].MassAll); end;   //Масса
      1:begin if Max<SheepArray[i].MassWeapon then  Max:=(SheepArray[i].MassWeapon); end;   //Масса оружия
      2:begin if Max<SheepArray[i].MassArmour then  Max:=(SheepArray[i].MassArmour);end;    //Масса брони
      3:begin if Max<SheepArray[i].DPS then  Max:=(SheepArray[i].DPS); end;   //ДПС
      4:begin if Max<SheepArray[i].DPSShield then  Max:=(SheepArray[i].DPSShield);  end;  //ДПС по щитам
      5:begin if Max<SheepArray[i].DPSArmour then  Max:=(SheepArray[i].DPSArmour); end;   //ДПС  по броне
      6:begin if Max<SheepArray[i].ArmourMax then  Max:=(SheepArray[i].ArmourMax); end; //Броня
      7:begin if Max<SheepArray[i].ShieldEnergyMax then  Max:=(SheepArray[i].ShieldEnergyMax); end; //Щиты
      8:begin if Max<SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax then  Max:=(SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax);end;  //Броня+Щиты
      9:begin if Max<SheepArray[i].SpeedMaxUp then  Max:=(SheepArray[i].SpeedMaxUp); end;   //Скорость вперед
      10:begin if Max<SheepArray[i].SpeedMaxRotate then  Max:=(SheepArray[i].SpeedMaxRotate); end;   //Скорость поворота
      11:begin if Max<SheepArray[i].SpeedMaxStreif then  Max:=(SheepArray[i].SpeedMaxStreif); end;   //Скорость стрейфа
      12:begin if Max<SheepArray[i].SpeedMaxSektor then  Max:=(SheepArray[i].SpeedMaxSektor); end;   //Секторальная скорость
      13:begin if Max<SheepArray[i].ArmourResistanceE then  Max:=(SheepArray[i].ArmourResistanceE); end;   //Защита брони от энергетического оружия
      14:begin if Max<SheepArray[i].ArmourResistanceV then  Max:=(SheepArray[i].ArmourResistanceV); end;   //Защита брони от взрывного оружия
      15:begin if Max<SheepArray[i].ArmourResistanceD then  Max:=(SheepArray[i].ArmourResistanceD); end;   //Защита брони от дальнего оружия
      16:begin if Max<SheepArray[i].TimeBuild then  Max:=(SheepArray[i].TimeBuild); end;   //Время строительства
      17:begin if Max<SheepArray[i].TimeRepair then  Max:=(SheepArray[i].TimeRepair); end;   //Время ремонта
      end;
    end;
  end;
end;


procedure GoMinParametrSet(TypePar:LongWord; var Min:Double);
var
  i:LongWord;
begin
If (Length(SheepArray)>0) then
  begin
    i:=0;
    case TypePar of
      0:Min:=StrToFloat(FFleet.EdMassMin.Text);    //Масса
      1:Min:=StrToFloat(FFleet.EdMassMin.Text);    //Масса оружия
      2:Min:=StrToFloat(FFleet.EdMassMin.Text);    //Масса брони
      3:Min:=StrToFloat(FFleet.EdDPSMin.Text);    //ДПС
      4:Min:=StrToFloat(FFleet.EdDPSMin.Text);    //ДПС по щитам
      5:Min:=StrToFloat(FFleet.EdDPSMin.Text);    //ДПС  по броне
      6:Min:=StrToFloat(FFleet.EdAmourMin.Text);  //Броня
      7:Min:=StrToFloat(FFleet.EdShieldMin.Text);  //Щиты
      8:Min:=StrToFloat(FFleet.EdAmourMin.Text)+StrToFloat(FFleet.EdShieldMin.Text);  //Броня+Щиты
      9:Min:=StrToFloat(FFleet.EdSpeedMin.Text);    //Скорость вперед
      10:Min:=StrToFloat(FFleet.EdSpeedRotateMin.Text);    //Скорость поворота
      11:Min:=StrToFloat(FFleet.EdSpeedStreifMin.Text);   //Скорость стрейфа
      12:Min:=0;    //Секторальная скорость
      13:Min:=0;    //Защита брони от энергетического оружия
      14:Min:=0;    //Защита брони от взрывного оружия
      15:Min:=0;    //Защита брони от дальнего оружия
      16:Min:=0;    //Время строительства
      17:Min:=0;    //Время ремонта
      end;
  For i:=0 to Length(SheepArray)-1 do
    begin
    If SheepArray[i].Color<>clbtnface then
    case TypePar of
      0:begin if (Min=0) or (Min>SheepArray[i].MassAll) then   Min:=(SheepArray[i].MassAll); end;   //Масса
      1:begin if (Min=0) or (Min>SheepArray[i].MassWeapon) then  Min:=(SheepArray[i].MassWeapon); end;   //Масса оружия
      2:begin if (Min=0) or (Min>SheepArray[i].MassArmour) then  Min:=(SheepArray[i].MassArmour);end;    //Масса брони
      3:begin if (Min=0) or (Min>SheepArray[i].DPS) then  Min:=(SheepArray[i].DPS); end;   //ДПС
      4:begin if (Min=0) or (Min>SheepArray[i].DPSShield) then  Min:=(SheepArray[i].DPSShield);  end;  //ДПС по щитам
      5:begin if (Min=0) or (Min>SheepArray[i].DPSArmour) then  Min:=(SheepArray[i].DPSArmour); end;   //ДПС  по броне
      6:begin if (Min=0) or (Min>SheepArray[i].ArmourMax) then  Min:=(SheepArray[i].ArmourMax); end; //Броня
      7:begin if (Min=0) or (Min>SheepArray[i].ShieldEnergyMax) then  Min:=(SheepArray[i].ShieldEnergyMax); end; //Щиты
      8:begin if (Min=0) or (Min>SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax) then  Min:=(SheepArray[i].ArmourMax+SheepArray[i].ShieldEnergyMax);end;  //Броня+Щиты
      9:begin if (Min=0) or (Min>SheepArray[i].SpeedMaxUp) then  Min:=(SheepArray[i].SpeedMaxUp); end;   //Скорость вперед
      10:begin if (Min=0) or (Min>SheepArray[i].SpeedMaxRotate) then  Min:=(SheepArray[i].SpeedMaxRotate); end;   //Скорость поворота
      11:begin if (Min=0) or (Min>SheepArray[i].SpeedMaxStreif) then  Min:=(SheepArray[i].SpeedMaxStreif); end;   //Скорость стрейфа
      12:begin if (Min=0) or (Min>SheepArray[i].SpeedMaxSektor) then  Min:=(SheepArray[i].SpeedMaxSektor); end;   //Секторальная скорость
      13:begin if (Min=0) or (Min>SheepArray[i].ArmourResistanceE) then  Min:=(SheepArray[i].ArmourResistanceE); end;   //Защита брони от энергетического оружия
      14:begin if (Min=0) or (Min>SheepArray[i].ArmourResistanceV) then  Min:=(SheepArray[i].ArmourResistanceV); end;   //Защита брони от взрывного оружия
      15:begin if (Min=0) or (Min>SheepArray[i].ArmourResistanceD) then  Min:=(SheepArray[i].ArmourResistanceD); end;   //Защита брони от дальнего оружия
      16:begin if (Min=0) or (Min>SheepArray[i].TimeBuild) then  Min:=(SheepArray[i].TimeBuild); end;   //Время постройки
      17:begin if (Min=0) or (Min>SheepArray[i].TimeRepair) then  Min:=(SheepArray[i].TimeRepair); end;   //Время ремонта

      end;
    end;
  end;
end;

procedure TFFleet.TcMainChange(Sender: TObject);
var
  par:Double;
begin
PnSheep.Visible:=TcMain.TabIndex=0;
PnSet.Visible:=TcMain.TabIndex=1;
PnProtokol.Visible:=TcMain.TabIndex=2;
if TcMain.TabIndex=1 then
  begin
  GoMaxParametrSet(CbXSet.ItemIndex,par);
  EdMaxDPSSet.Text:=FloatToStr(par);
  GoMinParametrSet(CbXSet.ItemIndex,par);
  EdMinDPSSet.Text:=FloatToStr(par);
  GoMaxParametrSet(CbYSet.ItemIndex,par);
  EdMaxArmourSet.Text:=FloatToStr(par);
  GoMinParametrSet(CbYSet.ItemIndex,par);
  EdMinArmourSet.Text:=FloatToStr(par);
  end;

end;

procedure TFFleet.BtGoClick(Sender: TObject);
begin
  VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);
end;

procedure TFFleet.EdMaxArmourSetChange(Sender: TObject);
begin
  If (EdMaxArmourSet.Text<>'') and (EdMinArmourSet.Text<>'') and (EdMaxDPSSet.Text<>'') and (EdMinDPSSet.Text<>'') then
  VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);
end;

procedure TFFleet.CbXSetChange(Sender: TObject);
var
  par:Double;
begin
  GoMaxParametrSet(CbXSet.ItemIndex,par);
  EdMaxDPSSet.Text:=FloatToStr(par);
  GoMinParametrSet(CbXSet.ItemIndex,par);
  EdMinDPSSet.Text:=FloatToStr(par);
  If (EdMaxArmourSet.Text<>'') and (EdMinArmourSet.Text<>'') and (EdMaxDPSSet.Text<>'') and (EdMinDPSSet.Text<>'') then
  VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);

end;

procedure TFFleet.CbYSetChange(Sender: TObject);
var
  par:Double;
begin
  GoMaxParametrSet(CbYSet.ItemIndex,par);
  EdMaxArmourSet.Text:=FloatToStr(par);
  GoMinParametrSet(CbYSet.ItemIndex,par);
  EdMinArmourSet.Text:=FloatToStr(par);
  If (EdMaxArmourSet.Text<>'') and (EdMinArmourSet.Text<>'') and (EdMaxDPSSet.Text<>'') and (EdMinDPSSet.Text<>'') then
  VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);

end;

procedure TFFleet.BtGoFleetFormClick(Sender: TObject);
begin
FFleetAll.ShowModal;
end;

procedure TFFleet.ColorBSheepChange(Sender: TObject);
begin
{}
SheepArray[NomCurSheep].Color:=ColorBSheep.Selected;
end;

Procedure DelNotParetoSet(CurrentColor:TColor; var KolDelete:Longword);
var
  i,j:LongWord;
begin
If (Length(SheepArray)<>0) and (Length(ParetoSet)<>0) then
  begin
  i:=0;
  KolDelete:=0;
  While i<Length(SheepArray) do
    begin
    If CurrentColor=SheepArray[i].Color then
      begin
      j:=0;
      while (j<Length(ParetoSet)) and (ParetoSet[j]<>i+KolDelete) do
        Inc(j);
      If j=Length(ParetoSet) then
        begin
        inc(KolDelete);
        DeleteSheep(i,'Не входит в множество Парето');
        end
      else
        Inc(i);
      end
    else
      inc(i);
    end;
  end;
end;

procedure TFFleet.BtDelParetoClick(Sender: TObject);
var
  KolDelete:LongWord;
begin
  DelNotParetoSet(ColorBSheepPAretoSet.Selected,KolDelete);
  ShowMessage('Удалено '+IntToStr(KolDelete)+' сборок');
  VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);
end;

procedure TFFleet.CbVisibleParetoSetClick(Sender: TObject);
begin
VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);
end;

procedure TFFleet.ColorBSheepPAretoSetChange(Sender: TObject);
begin
VisibleSetSheep(PbSet,StrToFloat(EdMaxDPSSet.Text),StrToFloat(EdMinDPSSet.Text),StrToFloat(EdMaxArmourSet.Text),StrToFloat(EdMinArmourSet.Text),CbXSet.ItemIndex,CbYSet.ItemIndex);
end;

procedure TFFleet.BtSbrosColorSheepClick(Sender: TObject);
begin
ColorBSheep.Selected:=clBtnFace;
ColorBSheep.OnChange(ColorBSheep);
end;


procedure TFFleet.EdMassMaxChange(Sender: TObject);
begin
GoCreateLimitInForm(NomCurSheep);
end;

procedure GoAllArmourAtOne(Nom:Longword);
begin
with FFleet do
begin
IF DBCbArmour1.Visible then
begin
DBCbArmour1.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour1.OnChange(DBCbArmour1);
end;
IF DBCbArmour2.Visible then
begin
DBCbArmour2.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour2.OnChange(DBCbArmour2);
end;
IF DBCbArmour3.Visible then
begin
DBCbArmour3.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour3.OnChange(DBCbArmour3);
end;
IF DBCbArmour4.Visible then
begin
DBCbArmour4.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour4.OnChange(DBCbArmour4);
end;
IF DBCbArmour5.Visible then
begin
DBCbArmour5.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour5.OnChange(DBCbArmour5);
end;
IF DBCbArmour6.Visible then
begin
DBCbArmour6.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour6.OnChange(DBCbArmour6);
end;
IF DBCbArmour7.Visible then
begin
DBCbArmour7.Text:=SheepArray[NomCurSheep].Armour[Nom].Name;
DBCbArmour7.OnChange(DBCbArmour7);
end;

IF BCbArmour1.Visible then
begin
BCbArmour1.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour1.OnChange(BCbArmour1);
end;
IF BCbArmour2.Visible then
begin
BCbArmour2.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour2.OnChange(BCbArmour2);
end;
IF BCbArmour3.Visible then
begin
BCbArmour3.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour3.OnChange(BCbArmour3);
end;
IF BCbArmour4.Visible then
begin
BCbArmour4.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour4.OnChange(BCbArmour4);
end;
IF BCbArmour5.Visible then
begin
BCbArmour5.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour5.OnChange(BCbArmour5);
end;
IF BCbArmour6.Visible then
begin
BCbArmour6.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour6.OnChange(BCbArmour6);
end;
IF BCbArmour7.Visible then
begin
BCbArmour7.Text:=IntToStr(SheepArray[NomCurSheep].Armour[Nom].Level);
BCbArmour7.OnChange(BCbArmour7);
end;
end;
end;


procedure GoAllWeaponAtOne(Nom:Longword);
begin
with FFleet do
begin
IF DBCbWeapon1.Visible then
begin
DBCbWeapon1.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon1.OnChange(DBCbWeapon1);
end;
IF DBCbWeapon2.Visible then
begin
DBCbWeapon2.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon2.OnChange(DBCbWeapon2);
end;
IF DBCbWeapon3.Visible then
begin
DBCbWeapon3.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon3.OnChange(DBCbWeapon3);
end;
IF DBCbWeapon4.Visible then
begin
DBCbWeapon4.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon4.OnChange(DBCbWeapon4);
end;
IF DBCbWeapon5.Visible then
begin
DBCbWeapon5.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon5.OnChange(DBCbWeapon5);
end;
IF DBCbWeapon6.Visible then
begin
DBCbWeapon6.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon6.OnChange(DBCbWeapon6);
end;
IF DBCbWeapon7.Visible then
begin
DBCbWeapon7.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon7.OnChange(DBCbWeapon7);
end;
IF DBCbWeapon8.Visible then
begin
DBCbWeapon8.Text:=SheepArray[NomCurSheep].Weapon[Nom].Name;
DBCbWeapon8.OnChange(DBCbWeapon8);
end;


IF BCbWeapon1.Visible then
begin
BCbWeapon1.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon1.OnChange(BCbWeapon1);
end;
IF BCbWeapon2.Visible then
begin
BCbWeapon2.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon2.OnChange(BCbWeapon2);
end;
IF BCbWeapon3.Visible then
begin
BCbWeapon3.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon3.OnChange(BCbWeapon3);
end;
IF BCbWeapon4.Visible then
begin
BCbWeapon4.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon4.OnChange(BCbWeapon4);
end;
IF BCbWeapon5.Visible then
begin
BCbWeapon5.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon5.OnChange(BCbWeapon5);
end;
IF BCbWeapon6.Visible then
begin
BCbWeapon6.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon6.OnChange(BCbWeapon6);
end;
IF BCbWeapon7.Visible then
begin
BCbWeapon7.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon7.OnChange(BCbWeapon7);
end;
IF BCbWeapon8.Visible then
begin
BCbWeapon8.Text:=IntToStr(SheepArray[NomCurSheep].Weapon[Nom].Level);
BCbWeapon8.OnChange(BCbWeapon8);
end;
end;
end;

procedure TFFleet.SbArmourAll1Click(Sender: TObject);
begin
GoAllArmourAtOne(1);
end;

procedure TFFleet.SbArmourAll2Click(Sender: TObject);
begin
GoAllArmourAtOne(2);
end;

procedure TFFleet.SbArmourAll3Click(Sender: TObject);
begin
GoAllArmourAtOne(3);
end;

procedure TFFleet.SbArmourAll4Click(Sender: TObject);
begin
GoAllArmourAtOne(4);
end;

procedure TFFleet.SbArmourAll5Click(Sender: TObject);
begin
GoAllArmourAtOne(5);
end;

procedure TFFleet.SbArmourAll6Click(Sender: TObject);
begin
GoAllArmourAtOne(6);
end;

procedure TFFleet.SbArmourAll7Click(Sender: TObject);
begin
GoAllArmourAtOne(7);
end;

procedure TFFleet.SbWeaponAll1Click(Sender: TObject);
begin
GoAllWeaponAtOne(1);
end;

procedure TFFleet.Sb1Click(Sender: TObject);
begin
GoAllWeaponAtOne(2);
end;

procedure TFFleet.Sb2Click(Sender: TObject);
begin
GoAllWeaponAtOne(3);
end;

procedure TFFleet.Sb3Click(Sender: TObject);
begin
GoAllWeaponAtOne(4);
end;

procedure TFFleet.Sb4Click(Sender: TObject);
begin
GoAllWeaponAtOne(5);
end;

procedure TFFleet.Sb5Click(Sender: TObject);
begin
GoAllWeaponAtOne(6);
end;

procedure TFFleet.Sb6Click(Sender: TObject);
begin
GoAllWeaponAtOne(7);
end;

procedure TFFleet.Sb7Click(Sender: TObject);
begin
GoAllWeaponAtOne(8);
end;

procedure TFFleet.BtSbrosSheepClick(Sender: TObject);
begin
DBCbWeapon1.Text:='';
DBCbWeapon1.OnChange(DBCbWeapon1);
DBCbWeapon2.Text:='';
DBCbWeapon2.OnChange(DBCbWeapon2);
DBCbWeapon3.Text:='';
DBCbWeapon3.OnChange(DBCbWeapon3);
DBCbWeapon4.Text:='';
DBCbWeapon4.OnChange(DBCbWeapon4);
DBCbWeapon5.Text:='';
DBCbWeapon5.OnChange(DBCbWeapon5);
DBCbWeapon6.Text:='';
DBCbWeapon6.OnChange(DBCbWeapon6);
DBCbWeapon7.Text:='';
DBCbWeapon7.OnChange(DBCbWeapon7);
DBCbWeapon8.Text:='';
DBCbWeapon8.OnChange(DBCbWeapon8);

DBCbArmour1.Text:='';
DBCbArmour1.OnChange(DBCbArmour1);
DBCbArmour2.Text:='';
DBCbArmour2.OnChange(DBCbArmour2);
DBCbArmour3.Text:='';
DBCbArmour3.OnChange(DBCbArmour3);
DBCbArmour4.Text:='';
DBCbArmour4.OnChange(DBCbArmour4);
DBCbArmour5.Text:='';
DBCbArmour5.OnChange(DBCbArmour5);
DBCbArmour6.Text:='';
DBCbArmour6.OnChange(DBCbArmour6);
DBCbArmour7.Text:='';
DBCbArmour7.OnChange(DBCbArmour7);

DBCbSpecial1.Text:='';
DBCbSpecial1.OnChange(DBCbSpecial1);
DBCbSpecial2.Text:='';
DBCbSpecial2.OnChange(DBCbSpecial2);
DBCbSpecial3.Text:='';
DBCbSpecial3.OnChange(DBCbSpecial3);

DBCbShield1.Text:='';
DBCbShield1.OnChange(DBCbShield1);
DBCbShield2.Text:='';
DBCbShield2.OnChange(DBCbShield2);

DBCbTabled1.Text:='';
DBCbTabled1.OnChange(DBCbTabled1);
end;

end.
