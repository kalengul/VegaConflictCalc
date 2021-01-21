unit UFAllfleet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin;

type
  TFFleetAll = class(TForm)
    Pn2: TPanel;
    Pn3: TPanel;
    Pn4: TPanel;
    GbSheep1: TGroupBox;
    GbSheep2: TGroupBox;
    GbSheep3: TGroupBox;
    GbSheep4: TGroupBox;
    GbSheep5: TGroupBox;
    GbSheep6: TGroupBox;
    Pn7: TPanel;
    Pn8: TPanel;
    Pn9: TPanel;
    PnSheep1: TPanel;
    PnSheep5: TPanel;
    PnSheep3: TPanel;
    PnSheep2: TPanel;
    PnSheep6: TPanel;
    PnSheep4: TPanel;
    GbSheepCurrent: TGroupBox;
    LeMassCurrentSheep: TLabeledEdit;
    LeDPSCurrentSheep: TLabeledEdit;
    LaNameCurrentSheep: TLabel;
    MeSheep1Element: TMemo;
    Label4: TLabel;
    MeSheep1Osoben: TMemo;
    Label5: TLabel;
    MeSheep2Element: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    MeSheep2Osoben: TMemo;
    Label8: TLabel;
    MeSheep3Element: TMemo;
    Label9: TLabel;
    MeSheep3Osoben: TMemo;
    Label10: TLabel;
    MeSheep4Element: TMemo;
    Label11: TLabel;
    MeSheep4Osoben: TMemo;
    Label12: TLabel;
    MeSheep5Element: TMemo;
    Label13: TLabel;
    MeSheep5Osoben: TMemo;
    Label14: TLabel;
    MeSheep6Element: TMemo;
    Label15: TLabel;
    MeSheep6Osoben: TMemo;
    LeSpeedUpCurrentSheep: TLabeledEdit;
    LeSpeedRotateCurrentSheep: TLabeledEdit;
    LeSpeedStreifCurrentSheep: TLabeledEdit;
    LeSpeedSektorCurrentSheep: TLabeledEdit;
    LeKolSheeps: TLabeledEdit;
    LeMassAllSheeps: TLabeledEdit;
    CbPort: TComboBox;
    Label16: TLabel;
    LeMassPort: TLabeledEdit;
    LaPrevishenieMass: TLabel;
    Label17: TLabel;
    MeSostavCurrentSheep: TMemo;
    Label18: TLabel;
    MeOsobennostiCurrentSheep: TMemo;
    LeSpeedSektorSheep1: TLabeledEdit;
    LeSpeedSektorSheep2: TLabeledEdit;
    LeSpeedSektorSheep3: TLabeledEdit;
    LeSpeedSektorSheep4: TLabeledEdit;
    LeSpeedSektorSheep5: TLabeledEdit;
    LeSpeedSektorSheep6: TLabeledEdit;
    Label19: TLabel;
    LeSpeedSektorFleet: TLabeledEdit;
    Pn15: TPanel;
    Label20: TLabel;
    EdAllFleet: TEdit;
    Label21: TLabel;
    SeNomFleet: TSpinEdit;
    BtAddNewFleet: TButton;
    BtSaveFleet: TButton;
    BtLoadFleet: TButton;
    Label1: TLabel;
    EdMaxSborok: TEdit;
    Label2: TLabel;
    SeNomSborki: TSpinEdit;
    Label3: TLabel;
    SeNomSheep: TSpinEdit;
    BtAddFleetNomber: TButton;
    BtDeleteSheep: TButton;
    BtGoCalcSheepForm: TButton;
    LaSheepInFleet1: TLabel;
    LaSheepInFleet2: TLabel;
    LaSheepInFleet3: TLabel;
    LaSheepInFleet4: TLabel;
    LaSheepInFleet5: TLabel;
    LaSheepInFleet6: TLabel;
    EdNameFleet: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    LaFleetOstalos: TLabel;
    LaSheepOstalos: TLabel;
    procedure LeSpeedSektorSheep1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SeNomSborkiChange(Sender: TObject);
    procedure BtAddFleetNomberClick(Sender: TObject);
    procedure BtDeleteSheepClick(Sender: TObject);
    procedure BtGoCalcSheepFormClick(Sender: TObject);
    procedure BtSaveFleetClick(Sender: TObject);
    procedure BtLoadFleetClick(Sender: TObject);
    procedure BtAddNewFleetClick(Sender: TObject);
    procedure SeNomFleetChange(Sender: TObject);
    procedure LeMassAllSheepsChange(Sender: TObject);
    procedure CbPortChange(Sender: TObject);
    procedure EdNameFleetChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure LoadFleetAsTextFile(NomFleet:LongWord);

var
  FFleetAll: TFFleetAll;
  NomCurFleet:LongWord;


implementation

uses UFleet,UMain;

{$R *.dfm}

procedure GoMinFromLe(Le:TLabeledEdit; var min:Double);
var
  Cur:Double;
  begin
  Cur:=StrToFloat(Le.Text);
  if (Cur<>0) and (Cur<Min) then
    Min:=Cur;

  end;


procedure TFFleetAll.LeSpeedSektorSheep1Change(Sender: TObject);
var

 Min:Double;

begin
Min:=MaxInt;
GoMinFromLe(LeSpeedSektorSheep1,min);
GoMinFromLe(LeSpeedSektorSheep2,min);
GoMinFromLe(LeSpeedSektorSheep3,min);
GoMinFromLe(LeSpeedSektorSheep4,min);
GoMinFromLe(LeSpeedSektorSheep5,min);
GoMinFromLe(LeSpeedSektorSheep6,min);
If Min=maxInt then
  min:=0;
LeSpeedSektorFleet.Text:=FloatToStr(min);
end;

procedure TFFleetAll.FormActivate(Sender: TObject);
begin
EdMaxSborok.Text:=IntToStr(Length(SheepArray));
SeNomSborki.MaxValue:=Length(SheepArray);
SeNomSborki.Value:=0;
SeNomSborki.OnChange(SeNomSborki);
end;

procedure TFFleetAll.SeNomSborkiChange(Sender: TObject);
var
  nom:LongWord;
begin
Nom:=SeNomSborki.Value;
LaNameCurrentSheep.Caption:=SheepArray[nom].Sheep.Name+' '+SheepArray[nom].Sheep.MK;
LeMassCurrentSheep.Text:=FloatToStr(SheepArray[nom].MassAll);
LeDPSCurrentSheep.Text:=FloatToStr(SheepArray[nom].DPS);
LeSpeedUpCurrentSheep.Text:=FloatToStr(SheepArray[nom].SpeedMaxUp);
LeSpeedRotateCurrentSheep.Text:=FloatToStr(SheepArray[nom].SpeedMaxRotate);
LeSpeedStreifCurrentSheep.Text:=FloatToStr(SheepArray[nom].SpeedMaxStreif);
LeSpeedSektorCurrentSheep.Text:=FloatToStr(SheepArray[nom].SpeedMaxSektor);
GoVivodSostavSheep(MeSostavCurrentSheep,SheepArray[nom]);
VisiblePArsheepMemo(MeOsobennostiCurrentSheep,SheepArray[nom]);
end;

procedure AddSheepInFormFleet(PnSheep1:TPanel; Gb:TGroupBox; LaSheep:TLabel; MeSheep1Element,MeSheep1Osoben:TMemo; LeSpeedSektorSheep1:TLabeledEdit; Sheep:TSheepCondition);
begin
PnSheep1.Color:=clGreen;
Gb.Color:=clGreen;
LaSheep.Caption:=Sheep.Sheep.Name+' '+Sheep.Sheep.MK;
GoVivodSostavSheep(MeSheep1Element,Sheep);
VisiblePArsheepMemo(MeSheep1Osoben,Sheep);
LeSpeedSektorSheep1.Text:=FloatToStr(Sheep.SpeedMaxSektor);
end;

procedure TFFleetAll.BtAddFleetNomberClick(Sender: TObject);
var
  NomFleet:LongWord;
begin
if Length(FleetArray)=0 then
  begin
  SetLength(FleetArray,1);
  NomFleet:=0;
  end
else
  begin
  If Length(FleetArray)<=SeNomFleet.Value then
    SetLength(FleetArray,SeNomFleet.Value+1);
  NomFleet:=SeNomFleet.Value;
  end;
If not FleetArray[NomFleet].Sheep[SeNomSheep.Value].inFleet then
  Inc(FleetArray[NomFleet].KolSheep)
else
  FleetArray[NomFleet].MassFleet:=FleetArray[NomFleet].MassFleet-FleetArray[NomFleet].Sheep[SeNomSheep.Value].MassAll;
FleetArray[NomFleet].Sheep[SeNomSheep.Value]:=SheepArray[SeNomSborki.value];
FleetArray[NomFleet].Sheep[SeNomSheep.Value].inFleet:=True;
FleetArray[NomFleet].MassFleet:=FleetArray[NomFleet].MassFleet+FleetArray[NomFleet].Sheep[SeNomSheep.Value].MassAll;
LeKolSheeps.Text:=IntToStr(FleetArray[NomFleet].KolSheep);
LeMassAllSheeps.Text:=FloatToStr(FleetArray[NomFleet].MassFleet);
LeMassAllSheeps.OnChange(LeMassAllSheeps);
case SeNomSheep.Value of
  1: begin
     AddSheepInFormFleet(PnSheep1,GbSheep1,LaSheepInFleet1,MeSheep1Element,MeSheep1Osoben,LeSpeedSektorSheep1,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  2: begin
     AddSheepInFormFleet(PnSheep2,GbSheep2,LaSheepInFleet2,MeSheep2Element,MeSheep2Osoben,LeSpeedSektorSheep2,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  3: begin
     AddSheepInFormFleet(PnSheep3,GbSheep3,LaSheepInFleet3,MeSheep3Element,MeSheep3Osoben,LeSpeedSektorSheep3,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  4: begin
     AddSheepInFormFleet(PnSheep4,GbSheep4,LaSheepInFleet4,MeSheep4Element,MeSheep4Osoben,LeSpeedSektorSheep4,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  5: begin
     AddSheepInFormFleet(PnSheep5,GbSheep5,LaSheepInFleet5,MeSheep5Element,MeSheep5Osoben,LeSpeedSektorSheep5,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  6: begin
     AddSheepInFormFleet(PnSheep6,GbSheep6,LaSheepInFleet6,MeSheep6Element,MeSheep6Osoben,LeSpeedSektorSheep6,FleetArray[NomFleet].Sheep[SeNomSheep.Value]);
     end;
  end;
LeSpeedSektorSheep1.OnChange(LeSpeedSektorSheep1);
end;

procedure DelSheepInFormFleet(PnSheep1:TPanel; Gb:TGroupBox; LaSheep:TLabel; MeSheep1Element,MeSheep1Osoben:TMemo; LeSpeedSektorSheep1:TLabeledEdit);
begin
PnSheep1.Color:=clRed;
Gb.Color:=clRed;
MeSheep1Element.Clear;
MeSheep1Osoben.Clear;
LeSpeedSektorSheep1.Text:='0';
LaSheep.Caption:='';
end;

procedure TFFleetAll.BtDeleteSheepClick(Sender: TObject);
begin
FleetArray[SeNomFleet.Value].Sheep[SeNomSheep.Value].inFleet:=false;
FleetArray[SeNomFleet.Value].MassFleet:=FleetArray[SeNomFleet.Value].MassFleet-FleetArray[SeNomFleet.Value].Sheep[SeNomSheep.Value].MassAll;
Dec(FleetArray[SeNomFleet.Value].KolSheep);
LeKolSheeps.Text:=IntToStr(FleetArray[SeNomFleet.Value].KolSheep);
LeMassAllSheeps.Text:=FloatToStr(FleetArray[SeNomFleet.Value].MassFleet);
LeMassAllSheeps.OnChange(LeMassAllSheeps);
case SeNomSheep.Value of
  1: begin
     DelSheepInFormFleet(PnSheep1,GbSheep1,LaSheepInFleet1,MeSheep1Element,MeSheep1Osoben,LeSpeedSektorSheep1);
     end;
  2: begin
     DelSheepInFormFleet(PnSheep2,GbSheep2,LaSheepInFleet2,MeSheep2Element,MeSheep2Osoben,LeSpeedSektorSheep2);
     end;
  3: begin
     DelSheepInFormFleet(PnSheep3,GbSheep3,LaSheepInFleet3,MeSheep3Element,MeSheep3Osoben,LeSpeedSektorSheep3);
     end;
  4: begin
     DelSheepInFormFleet(PnSheep4,GbSheep4,LaSheepInFleet4,MeSheep4Element,MeSheep4Osoben,LeSpeedSektorSheep4);
     end;
  5: begin
     DelSheepInFormFleet(PnSheep5,GbSheep5,LaSheepInFleet5,MeSheep5Element,MeSheep5Osoben,LeSpeedSektorSheep5);
     end;
  6: begin
     DelSheepInFormFleet(PnSheep6,GbSheep6,LaSheepInFleet6,MeSheep6Element,MeSheep6Osoben,LeSpeedSektorSheep6);
     end;
  end;
LeSpeedSektorSheep1.OnChange(LeSpeedSektorSheep1);
end;

procedure TFFleetAll.BtGoCalcSheepFormClick(Sender: TObject);
begin
FFleet.ShowModal;
end;

procedure TFFleetAll.BtSaveFleetClick(Sender: TObject);
var
  i:LongWord;
begin
if FFleet.SdSave.Execute then
  begin
  AssignFile(f,FFleet.SdSave.FileName);
  Rewrite(f);
  Writeln(f,FleetArray[SeNomFleet.Value].NameFleet);
  Writeln(f,FloatToStr(FleetArray[SeNomFleet.Value].KolSheep)+';'+FloatToStr(FleetArray[SeNomFleet.Value].MassFleet)+';'+FloatToStr(FleetArray[SeNomFleet.Value].SpeddSektorFleet)+';');
  For i:=1 to 6 do
    If FleetArray[SeNomFleet.Value].Sheep[i].inFleet then
      begin
      Writeln(f,i);
      SaveSheepInTextFile(FleetArray[SeNomFleet.Value].Sheep[i]);
      Writeln(f);
      end;

  ShowMessage('Флот сохранен в файл '+FFleet.SdSave.FileName);
  CloseFile(f);
  end;
end;

procedure LoadFleetAsTextFile(NomFleet:LongWord);
var
  st:string;
  nom,n:Longword;
begin
with FFleetAll do
iF FFleet.OdLoad.Execute then
  begin
  AssignFile(f,FFleet.OdLoad.FileName);
  Reset(f);
  if NomFleet>Length(FleetArray)-1 then
    SetLength(FleetArray,NomFleet+1);
  EdAllFleet.Text:=IntToStr(NomFleet+1);
  SeNomFleet.MaxValue:=NomFleet;
  Readln(f,st);
  FleetArray[NomFleet].NameFleet:=st;
  if (FleetArray[NomFleet].NameFleet='') or (Copy(FleetArray[NomFleet].NameFleet,1,6)='Флот №') then
    begin
    Inc(CurrentNomFleet);
    FleetArray[NomFleet].NameFleet:='Флот №'+IntToStr(CurrentNomFleet);
    end;
  Readln(f,st);
  FleetArray[NomFleet].KolSheep:=StrToInt(Copy(St,1,pos(';',st)-1));
  Delete(St,1,pos(';',st));
  FleetArray[NomFleet].MassFleet:=StrToFloat(Copy(St,1,pos(';',st)-1));
  Delete(St,1,pos(';',st));
  FleetArray[NomFleet].SpeddSektorFleet:=StrToFloat(Copy(St,1,pos(';',st)-1));
  Delete(St,1,pos(';',st));
  While not Eof(f) do
      begin
      Readln(f,nom);
      LoadSheepAsTextFile(FleetArray[NomFleet].Sheep[nom],n);
      GoCalcSheep(FleetArray[NomFleet].Sheep[nom]);
      GoCalcSheep(SheepArray[n]);
      FleetArray[NomFleet].Sheep[nom].inFleet:=True;      
      Readln(f);
      end;

  LeKolSheeps.Text:=IntToStr(FleetArray[NomFleet].KolSheep);
  LeMassAllSheeps.Text:=FloatToStr(FleetArray[NomFleet].MassFleet);
  EdNameFleet.Text:=FleetArray[NomFleet].NameFleet;
  ShowMessage('Загружен флот№'+IntToStr(NomFleet)+' из файла '+FFleet.OdLoad.FileName);
  CloseFile(f);
  SeNomFleet.OnChange(SeNomFleet);
  EdMaxSborok.Text:=IntToStr(Length(SheepArray));
  SeNomSborki.MaxValue:=Length(SheepArray)-1;
  end;
end;

procedure TFFleetAll.BtLoadFleetClick(Sender: TObject);
begin
LoadFleetAsTextFile(SeNomFleet.Value);
end;

procedure TFFleetAll.BtAddNewFleetClick(Sender: TObject);
var
  n:LongWord;
begin
n:=Length(FleetArray);
SetLength(FleetArray,n+1);
Inc(CurrentNomFleet);
FleetArray[n].NameFleet:='Флот №'+IntToStr(CurrentNomFleet);
EdAllFleet.Text:=IntToStr(n+1);
SeNomFleet.MaxValue:=n;
end;

procedure TFFleetAll.SeNomFleetChange(Sender: TObject);
var
  i:Longword;
begin
If SeNomFleet.Value<Length(FleetArray) then
  begin
  NomCurFleet:=SeNomFleet.Value;
  LeKolSheeps.Text:=IntToStr(FleetArray[NomCurFleet].KolSheep);
  EdNameFleet.Text:=FleetArray[NomCurFleet].NameFleet;
  LeMassAllSheeps.Text:=FloatToStr(FleetArray[NomCurFleet].MassFleet);
  LeMassAllSheeps.OnChange(LeMassAllSheeps);
  If FleetArray[NomCurFleet].Sheep[1].inFleet then
    AddSheepInFormFleet(PnSheep1,GbSheep1,LaSheepInFleet1,MeSheep1Element,MeSheep1Osoben,LeSpeedSektorSheep1,FleetArray[NomCurFleet].Sheep[1])
  else
    DelSheepInFormFleet(PnSheep1,GbSheep1,LaSheepInFleet1,MeSheep1Element,MeSheep1Osoben,LeSpeedSektorSheep1);
  If FleetArray[NomCurFleet].Sheep[2].inFleet then
    AddSheepInFormFleet(PnSheep2,GbSheep2,LaSheepInFleet2,MeSheep2Element,MeSheep2Osoben,LeSpeedSektorSheep2,FleetArray[NomCurFleet].Sheep[2])
  else
    DelSheepInFormFleet(PnSheep2,GbSheep2,LaSheepInFleet2,MeSheep2Element,MeSheep2Osoben,LeSpeedSektorSheep2);
  If FleetArray[NomCurFleet].Sheep[3].inFleet then
    AddSheepInFormFleet(PnSheep3,GbSheep3,LaSheepInFleet3,MeSheep3Element,MeSheep3Osoben,LeSpeedSektorSheep3,FleetArray[NomCurFleet].Sheep[3])
  else
    DelSheepInFormFleet(PnSheep3,GbSheep3,LaSheepInFleet3,MeSheep3Element,MeSheep3Osoben,LeSpeedSektorSheep3);
  If FleetArray[NomCurFleet].Sheep[4].inFleet then
    AddSheepInFormFleet(PnSheep4,GbSheep4,LaSheepInFleet4,MeSheep4Element,MeSheep4Osoben,LeSpeedSektorSheep4,FleetArray[NomCurFleet].Sheep[4])
  else
    DelSheepInFormFleet(PnSheep4,GbSheep4,LaSheepInFleet4,MeSheep4Element,MeSheep4Osoben,LeSpeedSektorSheep4);
  If FleetArray[NomCurFleet].Sheep[5].inFleet then
    AddSheepInFormFleet(PnSheep5,GbSheep5,LaSheepInFleet5,MeSheep5Element,MeSheep5Osoben,LeSpeedSektorSheep5,FleetArray[NomCurFleet].Sheep[5])
  else
    DelSheepInFormFleet(PnSheep5,GbSheep5,LaSheepInFleet5,MeSheep5Element,MeSheep5Osoben,LeSpeedSektorSheep5);
  If FleetArray[NomCurFleet].Sheep[6].inFleet then
    AddSheepInFormFleet(PnSheep6,GbSheep6,LaSheepInFleet6,MeSheep6Element,MeSheep6Osoben,LeSpeedSektorSheep6,FleetArray[NomCurFleet].Sheep[6])
  else
    DelSheepInFormFleet(PnSheep6,GbSheep6,LaSheepInFleet6,MeSheep6Element,MeSheep6Osoben,LeSpeedSektorSheep6);
  end;
end;

procedure TFFleetAll.LeMassAllSheepsChange(Sender: TObject);
var
  mas1,mas2:Double;
begin
If (LeMassPort.Text<>'') and (LeMassAllSheeps.Text<>'') and (LeKolSheeps.Text<>'') then
begin
LaPrevishenieMass.Visible:=StrToFloat(LeMassPort.Text)<StrToFloat(LeMassAllSheeps.Text);
Mas1:=StrToFloat(LeMassPort.Text)-StrToFloat(LeMassAllSheeps.Text);
 LaFleetOstalos.Caption:=FloatToStr(Mas1);
 If Mas1<0 then
   LaFleetOstalos.Font.Color:=clRed
 else
   LaFleetOstalos.Font.Color:=clGreen;
LaSheepOstalos.Visible:=Mas1>0;
If (LeKolSheeps.Text<>'6') then
begin
Mas2:=Mas1/(6-StrToInt(LeKolSheeps.Text));
LaSheepOstalos.Caption:=FloatToStr(mas2);
end;

end;
end;

procedure TFFleetAll.CbPortChange(Sender: TObject);
begin
case CbPort.ItemIndex of
  0: LeMassPort.Text:='0';
  1: LeMassPort.Text:='1100';
  2: LeMassPort.Text:='1700';
  3: LeMassPort.Text:='2650';
  4: LeMassPort.Text:='4150';
  5: LeMassPort.Text:='6450';
  6: LeMassPort.Text:='10100';
  7:  LeMassPort.Text:='15300';
  8:  LeMassPort.Text:='22800';
  9:  LeMassPort.Text:='34200';
  10: LeMassPort.Text:='42750';
  end;
end;

procedure TFFleetAll.EdNameFleetChange(Sender: TObject);
begin
FleetArray[NomCurFleet].NameFleet:=EdNameFleet.Text;
end;

end.
