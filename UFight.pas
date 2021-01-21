unit UFight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,UMain;

type
  TFFight = class(TForm)
    Pn1: TPanel;
    Pn2: TPanel;
    Pn3: TPanel;
    Pn4: TPanel;
    PbFight: TPaintBox;
    Gb1: TGroupBox;
    Gb2: TGroupBox;
    BtLoadFleetFightN1: TButton;
    BtLoadFleetFightN2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    CbSelectFleetFightN1: TComboBox;
    CbSelectFleetFightN2: TComboBox;
    LaNomSelectFleetFightN1: TLabel;
    LaNomSelectFleetFightN2: TLabel;
    GbSheep1N1: TGroupBox;
    LaNameSheep1N1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LaShieldSheep1N1: TLabel;
    LaArmourSheep1N1: TLabel;
    LaRemontSheep1N1: TLabel;
    LaDPSSheep1N1: TLabel;
    GbSheep2N1: TGroupBox;
    LaNameSheep2N1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    LaShieldSheep2N1: TLabel;
    LaArmourSheep2N1: TLabel;
    LaRemontSheep2N1: TLabel;
    LaDPSSheep2N1: TLabel;
    GbSheep3N1: TGroupBox;
    LaNameSheep3N1: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    LaShieldSheep3N1: TLabel;
    LaArmourSheep3N1: TLabel;
    LaRemontSheep3N1: TLabel;
    LaDPSSheep3N1: TLabel;
    GbSheep4N1: TGroupBox;
    LaNameSheep4N1: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    LaShieldSheep4N1: TLabel;
    LaArmourSheep4N1: TLabel;
    LaRemontSheep4N1: TLabel;
    LaDPSSheep4N1: TLabel;
    GbSheep5N1: TGroupBox;
    LaNameSheep5N1: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    LaShieldSheep5N1: TLabel;
    LaArmourSheep5N1: TLabel;
    LaRemontSheep5N1: TLabel;
    LaDPSSheep5N1: TLabel;
    GbSheep6N1: TGroupBox;
    LaNameSheep6N1: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    LaShieldSheep6N1: TLabel;
    LaArmourSheep6N1: TLabel;
    LaRemontSheep6N1: TLabel;
    LaDPSSheep6N1: TLabel;
    GbSheep1N2: TGroupBox;
    LaNameSheep1N2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    LaShieldSheep1N2: TLabel;
    LaArmourSheep1N2: TLabel;
    LaRemontSheep1N2: TLabel;
    LaDPSSheep1N2: TLabel;
    GbSheep2N2: TGroupBox;
    LaNameSheep2N2: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    LaShieldSheep2N2: TLabel;
    LaArmourSheep2N2: TLabel;
    LaRemontSheep2N2: TLabel;
    LaDPSSheep2N2: TLabel;
    GbSheep3N2: TGroupBox;
    LaNameSheep3N2: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    LaShieldSheep3N2: TLabel;
    LaArmourSheep3N2: TLabel;
    LaRemontSheep3N2: TLabel;
    LaDPSSheep3N2: TLabel;
    GbSheep4N2: TGroupBox;
    LaNameSheep4N2: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    LaShieldSheep4N2: TLabel;
    LaArmourSheep4N2: TLabel;
    LaRemontSheep4N2: TLabel;
    LaDPSSheep4N2: TLabel;
    GbSheep5N2: TGroupBox;
    LaNameSheep5N2: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    LaShieldSheep5N2: TLabel;
    LaArmourSheep5N2: TLabel;
    LaRemontSheep5N2: TLabel;
    LaDPSSheep5N2: TLabel;
    GbSheep6N2: TGroupBox;
    LaNameSheep6N2: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    LaShieldSheep6N2: TLabel;
    LaArmourSheep6N2: TLabel;
    LaRemontSheep6N2: TLabel;
    LaDPSSheep6N2: TLabel;
    Pn5: TPanel;
    Label11: TLabel;
    EdTimeFight: TEdit;
    Label20: TLabel;
    EdShagTimeFight: TEdit;
    Gb3: TGroupBox;
    CbVivodSpeed: TCheckBox;
    Gb4: TGroupBox;
    BtGoShag: TButton;
    CbVivodLineGoTo: TCheckBox;
    CbVivodSektorBang: TCheckBox;
    procedure BtLoadFleetFightN1Click(Sender: TObject);
    procedure BtLoadFleetFightN2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CbSelectFleetFightN1Change(Sender: TObject);
    procedure CbSelectFleetFightN2Change(Sender: TObject);
    procedure GbSheep1N1Click(Sender: TObject);
    procedure GbSheep2N1Click(Sender: TObject);
    procedure GbSheep3N1Click(Sender: TObject);
    procedure GbSheep4N1Click(Sender: TObject);
    procedure GbSheep5N1Click(Sender: TObject);
    procedure GbSheep6N1Click(Sender: TObject);
    procedure GbSheep1N2Click(Sender: TObject);
    procedure GbSheep2N2Click(Sender: TObject);
    procedure GbSheep3N2Click(Sender: TObject);
    procedure GbSheep4N2Click(Sender: TObject);
    procedure GbSheep5N2Click(Sender: TObject);
    procedure GbSheep6N2Click(Sender: TObject);
    procedure PbFightMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PbFightMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PbFightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BtGoShagClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  ConstTimeRotate = 5;
  ConstTimeUp = 5;
  ConstTimeStreif = 5;

var
  FFight: TFFight;
  Scale:Double;
  x0,y0:LongWord;
  XMbRightClick,YMbRightClick:Longword;

Procedure InitializationFleet(Fleet:TFleet);
function GoAngle(x1,y1,x2,y2:Double):Double;


implementation

{$R *.dfm}

Uses UFAllfleet;

Procedure InitializationFleet(Fleet:TFleet);
var
  i:LongWord;
begin
For i:=1 to 6 do
  if Fleet.Sheep[i].inFleet then
    begin
    Fleet.Sheep[i].ShieldEnergyCurrent:=Fleet.Sheep[i].ShieldEnergyMax;
    Fleet.Sheep[i].ArmourCurrent:=Fleet.Sheep[i].ArmourMax;
    Fleet.Sheep[i].SpeedCurrentUp:=0; Fleet.Sheep[i].SpeedCurrentRotate:=0; Fleet.Sheep[i].SpeedCurrentStreif:=0;
    Fleet.Sheep[i].X:=0;
    Fleet.Sheep[i].Y:=0;
    Fleet.Sheep[i].Angle:=0;
    end;
end;

procedure LoadFleetAsFileInFight(NomFleetFight:LongWord);
var
  n:LongWord;
begin
with FFight do
begin
n:=Length(FleetArray);
LoadFleetAsTextFile(n);
if NomFleetFight=1 then
  begin
  CbSelectFleetFightN1.Items.Add(FleetArray[n].NameFleet);
  CbSelectFleetFightN1.OnChange(CbSelectFleetFightN1);
  end
else
  begin
  CbSelectFleetFightN2.Items.Add(FleetArray[n].NameFleet);
  CbSelectFleetFightN2.OnChange(CbSelectFleetFightN2);
  end;
end;
end;


procedure TFFight.BtLoadFleetFightN1Click(Sender: TObject);
begin
LoadFleetAsFileInFight(1);
end;

procedure TFFight.BtLoadFleetFightN2Click(Sender: TObject);
begin
LoadFleetAsFileInFight(2);
end;

procedure TFFight.FormActivate(Sender: TObject);
var
  i:LongWord;
begin
Scale:=40;
CbSelectFleetFightN1.Clear;
CbSelectFleetFightN2.Clear;
If Length(FleetArray)<>0 then
for i:=0 to Length(FleetArray)-1 do
  begin
  CbSelectFleetFightN1.Items.Add(FleetArray[i].NameFleet);
  CbSelectFleetFightN2.Items.Add(FleetArray[i].NameFleet);
  end;
end;

Procedure VivodSheepCommandInFight(La1,La2,La3,La4,La5:TLabel; Sheep:TSheepCondition);
begin
La1.Caption:=Sheep.Sheep.Name+' '+Sheep.Sheep.MK;
La2.Caption:=FloatToStr(Sheep.ShieldEnergyCurrent)+'\'+FloatToStr(Sheep.ShieldEnergyMax);
La3.Caption:=FloatToStr(Sheep.ArmourCurrent)+'\'+FloatToStr(Sheep.ArmourMax);
La4.Caption:=FloatToStr(0);
La5.Caption:=FloatToStr(Sheep.DPS);
end;

procedure TFFight.CbSelectFleetFightN1Change(Sender: TObject);
var
  NomFleet:Longword;
begin
{}
NomFleet:=0;
While (NomFleet<Length(FleetArray)) and (FleetArray[NomFleet].NameFleet<>CbSelectFleetFightN1.Text) do
  Inc(NomFleet);
If (NomFleet<Length(FleetArray)) then
  begin
  NomFleetFightN1:=NomFleet;
  FleetFightN1:=FleetArray[NomFleet];
  InitializationFleet(FleetFightN1);
  If FleetFightN1.Sheep[1].inFleet then
    begin
    GbSheep1N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep1N1,LaShieldSheep1N1,LaArmourSheep1N1,LaRemontSheep1N1,LaDPSSheep1N1,FleetFightN1.Sheep[1]);
    end
  else
    GbSheep1N1.Color:=clGray;
  If FleetFightN1.Sheep[2].inFleet then
    begin
    GbSheep2N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep2N1,LaShieldSheep2N1,LaArmourSheep2N1,LaRemontSheep2N1,LaDPSSheep2N1,FleetFightN1.Sheep[2]);
    end
  else
    GbSheep2N1.Color:=clGray;
  If FleetFightN1.Sheep[3].inFleet then
    begin
    GbSheep3N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep3N1,LaShieldSheep3N1,LaArmourSheep3N1,LaRemontSheep3N1,LaDPSSheep3N1,FleetFightN1.Sheep[3]);
    end
  else
    GbSheep3N1.Color:=clGray;
  If FleetFightN1.Sheep[4].inFleet then
    begin
    GbSheep4N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep4N1,LaShieldSheep4N1,LaArmourSheep4N1,LaRemontSheep4N1,LaDPSSheep4N1,FleetFightN1.Sheep[4]);
    end
  else
    GbSheep4N1.Color:=clGray;
  If FleetFightN1.Sheep[5].inFleet then
    begin
    GbSheep5N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep5N1,LaShieldSheep5N1,LaArmourSheep5N1,LaRemontSheep5N1,LaDPSSheep5N1,FleetFightN1.Sheep[5]);
    end
  else
    GbSheep5N1.Color:=clGray;
  If FleetFightN1.Sheep[6].inFleet then
    begin
    GbSheep6N1.Color:=clGreen;
  VivodSheepCommandInFight(LaNameSheep6N1,LaShieldSheep6N1,LaArmourSheep6N1,LaRemontSheep6N1,LaDPSSheep6N1,FleetFightN1.Sheep[6]);
    end
  else
    GbSheep6N1.Color:=clGray;
  end;
end;

procedure TFFight.CbSelectFleetFightN2Change(Sender: TObject);
var
  NomFleet:Longword;
begin
{}
NomFleet:=0;
While (NomFleet<Length(FleetArray)) and (FleetArray[NomFleet].NameFleet<>CbSelectFleetFightN2.Text) do
  Inc(NomFleet);
If (NomFleet<Length(FleetArray)) then
  begin
  NomFleetFightN2:=NomFleet;
  FleetFightN2:=FleetArray[NomFleet];
  InitializationFleet(FleetFightN2);
  If FleetFightN2.Sheep[1].inFleet then
    begin
    GbSheep1N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep1N2,LaShieldSheep1N2,LaArmourSheep1N2,LaRemontSheep1N2,LaDPSSheep1N2,FleetFightN2.Sheep[1]);
    end
  else
    GbSheep1N2.Color:=clGray;
  If FleetFightN2.Sheep[2].inFleet then
    begin
    GbSheep2N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep2N2,LaShieldSheep2N2,LaArmourSheep2N2,LaRemontSheep2N2,LaDPSSheep2N2,FleetFightN2.Sheep[2]);
    end
  else
    GbSheep2N2.Color:=clGray;
  If FleetFightN2.Sheep[3].inFleet then
    begin
    GbSheep3N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep3N2,LaShieldSheep3N2,LaArmourSheep3N2,LaRemontSheep3N2,LaDPSSheep3N2,FleetFightN2.Sheep[3]);
    end
  else
    GbSheep3N2.Color:=clGray;
  If FleetFightN2.Sheep[4].inFleet then
    begin
    GbSheep4N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep4N2,LaShieldSheep4N2,LaArmourSheep4N2,LaRemontSheep4N2,LaDPSSheep4N2,FleetFightN2.Sheep[4]);
    end
  else
    GbSheep4N2.Color:=clGray;
  If FleetFightN2.Sheep[5].inFleet then
    begin
    GbSheep5N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep5N2,LaShieldSheep5N2,LaArmourSheep5N2,LaRemontSheep5N2,LaDPSSheep5N2,FleetFightN2.Sheep[5]);
    end
  else
    GbSheep5N2.Color:=clGray;
  If FleetFightN2.Sheep[6].inFleet then
    begin
    GbSheep6N2.Color:=clRed;
  VivodSheepCommandInFight(LaNameSheep6N2,LaShieldSheep6N2,LaArmourSheep6N2,LaRemontSheep6N2,LaDPSSheep6N2,FleetFightN2.Sheep[6]);
    end
  else
    GbSheep6N2.Color:=clGray;
  end;
end;

procedure NonSelectSheepFleet1;
begin
With FFight do
  begin
if NomSelectSheepFleet[1]=1 then
  GbSheep1N1.Color:=clGreen;
if NomSelectSheepFleet[1]=2 then
  GbSheep2N1.Color:=clGreen;
if NomSelectSheepFleet[1]=3 then
  GbSheep3N1.Color:=clGreen;
if NomSelectSheepFleet[1]=4 then
  GbSheep4N1.Color:=clGreen;
if NomSelectSheepFleet[1]=5 then
  GbSheep5N1.Color:=clGreen;
if NomSelectSheepFleet[1]=6 then
  GbSheep6N1.Color:=clGreen;
  end;
end;

procedure NonSelectSheepFleet2;
begin
With FFight do
  begin
if NomSelectSheepFleet[2]=1 then
  GbSheep1N2.Color:=clRed;
if NomSelectSheepFleet[2]=2 then
  GbSheep2N2.Color:=clRed;
if NomSelectSheepFleet[2]=3 then
  GbSheep3N2.Color:=clRed;
if NomSelectSheepFleet[2]=4 then
  GbSheep4N2.Color:=clRed;
if NomSelectSheepFleet[2]=5 then
  GbSheep5N2.Color:=clRed;
if NomSelectSheepFleet[2]=6 then
  GbSheep6N2.Color:=clRed;
  end;
end;

procedure TFFight.GbSheep1N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[1].inFleet then
begin
GbSheep1N1.Color:=clYellow;
NomSelectSheepFleet[1]:=1;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep2N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[2].inFleet then
begin
GbSheep2N1.Color:=clYellow;
NomSelectSheepFleet[1]:=2;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep3N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[3].inFleet then
begin
GbSheep3N1.Color:=clYellow;
NomSelectSheepFleet[1]:=3;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep4N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[4].inFleet then
begin
GbSheep4N1.Color:=clYellow;
NomSelectSheepFleet[1]:=4;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep5N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[5].inFleet then
begin
GbSheep5N1.Color:=clYellow;
NomSelectSheepFleet[1]:=5;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep6N1Click(Sender: TObject);
begin
NonSelectSheepFleet1;
If FleetFightN1.Sheep[6].inFleet then
begin
GbSheep6N1.Color:=clYellow;
NomSelectSheepFleet[1]:=6;
end
else
NomSelectSheepFleet[1]:=0;
end;

procedure TFFight.GbSheep1N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[1].inFleet then
begin
GbSheep1N2.Color:=clBlue;
NomSelectSheepFleet[2]:=1;
end
else
NomSelectSheepFleet[2]:=0;
end;

procedure TFFight.GbSheep2N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[2].inFleet then
begin
GbSheep2N2.Color:=clBlue;
NomSelectSheepFleet[2]:=2;
end
else
NomSelectSheepFleet[2]:=0;
end;

procedure TFFight.GbSheep3N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[3].inFleet then
begin
GbSheep3N2.Color:=clBlue;
NomSelectSheepFleet[2]:=3;
end
else
NomSelectSheepFleet[2]:=0;
end;

procedure TFFight.GbSheep4N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[4].inFleet then
begin
GbSheep4N2.Color:=clBlue;
NomSelectSheepFleet[2]:=4;
end
else
NomSelectSheepFleet[2]:=0;
end;

procedure TFFight.GbSheep5N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[5].inFleet then
begin
GbSheep5N2.Color:=clBlue;
NomSelectSheepFleet[2]:=5;
end
else
NomSelectSheepFleet[2]:=0;
end;

procedure TFFight.GbSheep6N2Click(Sender: TObject);
begin
NonSelectSheepFleet2;
If FleetFightN2.Sheep[6].inFleet then
begin
GbSheep6N2.Color:=clBlue;
NomSelectSheepFleet[2]:=6;
end
else
NomSelectSheepFleet[2]:=0;
end;

Procedure VisibleSheep(Sheep:TSheepCondition; NewColor:TColor);
var
  x,y:LongWord;
  x1,y1,x2,y2,anglerad:Double;
  xvh,yvh:Double;
  dl,sh:Double;
  angle:double;
  maxDist,MinDist,SectorAngle:Double;
  begin
  with FFight.PbFight.Canvas do
  begin
  xvh:=Sheep.X;
  yvh:=Sheep.Y;
  dl:=Sheep.Sheep.dl/2;
  sh:=Sheep.Sheep.sh/2;
  angle:=Sheep.Angle;
  SectorAngle:=(180-45)/180*pi;     //Type sheep
  maxDist:=Sheep.MaxDistance;
  MinDist:=Sheep.MinDistance;
  x:=Trunc(xvh); y:=Trunc(yvh);
  Pen.Color:=NewColor;
  Pen.Width:=1;
  Font.Color:=NewColor;
  Brush.Color:=NewColor;
    Brush.Color:=clBtnFace;

  //Отрисовка прямоугольника

  anglerad:=angle/180*pi;
  x1:=xvh+(-1)*sh/Scale*cos(anglerad)-(-1)*dl/Scale*sin(anglerad);
  y1:=yvh+(-1)*sh/Scale*sin(anglerad)+(-1)*dl/Scale*cos(anglerad);
  MoveTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*sh/Scale*cos(anglerad)-(1)*dl/Scale*sin(anglerad);
  y1:=yvh+(-1)*sh/Scale*sin(anglerad)+(1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(1)*sh/Scale*cos(anglerad)-(1)*dl/Scale*sin(anglerad);
  y1:=yvh+(1)*sh/Scale*sin(anglerad)+(1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(1)*sh/Scale*cos(anglerad)-(-1)*dl/Scale*sin(anglerad);
  y1:=yvh+(1)*sh/Scale*sin(anglerad)+(-1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*sh/Scale*cos(anglerad)-(-1)*dl/Scale*sin(anglerad);
  y1:=yvh+(-1)*sh/Scale*sin(anglerad)+(-1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  //Стрелка внутри корабля

  x1:=xvh+(0)*sh/Scale*cos(anglerad)-(1)*dl/Scale*sin(anglerad);
  y1:=yvh+(0)*sh/Scale*sin(anglerad)+(1)*dl/Scale*cos(anglerad);
  MoveTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(0)*sh/Scale*cos(anglerad)-(-1)*dl/Scale*sin(anglerad);
  y1:=yvh+(0)*sh/Scale*sin(anglerad)+(-1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*sh/Scale*cos(anglerad)-(0.7)*dl/Scale*sin(anglerad);
  y1:=yvh+(-1)*sh/Scale*sin(anglerad)+(0.7)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(0)*sh/Scale*cos(anglerad)-(-1)*dl/Scale*sin(anglerad);
  y1:=yvh+(0)*sh/Scale*sin(anglerad)+(-1)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(1)*sh/Scale*cos(anglerad)-(0.7)*dl/Scale*sin(anglerad);
  y1:=yvh+(1)*sh/Scale*sin(anglerad)+(0.7)*dl/Scale*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  if FFight.CbVivodSektorBang.Checked then
  begin
  //Максимальная граница стрельбы
  Pen.Width:=1;

  x1:=xvh+(0)*sh/Scale*cos(anglerad-SectorAngle)-(1)*MaxDist/Scale*sin(anglerad-SectorAngle);
  y1:=yvh+(0)*sh/Scale*sin(anglerad-SectorAngle)+(1)*MaxDist/Scale*cos(anglerad-SectorAngle);
  MoveTo(Trunc(x1),Trunc(y1));
  LineTo(Trunc(xvh),Trunc(yvh));
  x2:=xvh+(0)*sh/Scale*cos(anglerad+SectorAngle)-(1)*MaxDist/Scale*sin(anglerad+SectorAngle);
  y2:=yvh+(0)*sh/Scale*sin(anglerad+SectorAngle)+(1)*MaxDist/Scale*cos(anglerad+SectorAngle);
  LineTo(Trunc(x2),Trunc(y2));
  arc(trunc(xvh+MaxDist/Scale),trunc(yvh+MaxDist/Scale),trunc(xvh-MaxDist/Scale),trunc(yvh-MaxDist/Scale),Trunc(x1),Trunc(y1),Trunc(x2),Trunc(y2));

  If MinDist<>0 then
    begin
    x1:=xvh+(0)*sh/Scale*cos(anglerad-SectorAngle)-(1)*MinDist/Scale*sin(anglerad-SectorAngle);
    y1:=yvh+(0)*sh/Scale*sin(anglerad-SectorAngle)+(1)*MinDist/Scale*cos(anglerad-SectorAngle);
    x2:=xvh+(0)*sh/Scale*cos(anglerad+SectorAngle)-(1)*MinDist/Scale*sin(anglerad+SectorAngle);
    y2:=yvh+(0)*sh/Scale*sin(anglerad+SectorAngle)+(1)*MinDist/Scale*cos(anglerad+SectorAngle);
    arc(trunc(xvh+MinDist/Scale),trunc(yvh+MinDist/Scale),trunc(xvh-MinDist/Scale),trunc(yvh-MinDist/Scale),Trunc(x1),Trunc(y1),Trunc(x2),Trunc(y2));
    end;
  end;

  //Направление движения
  if (FFight.EdTimeFight.Text='0') or (FFight.CbVivodLineGoTo.Checked) then
  begin
  MoveTo(Trunc(xvh),Trunc(yvh));
  LineTo(Trunc(Sheep.GoToX),Trunc(Sheep.GoToY));
  end;

  //Стрелка вперед корабля для скорости
  if FFight.CbVivodSpeed.Checked then
  begin
  Pen.Width:=1;

  MoveTo(x,y);

  x1:=xvh+(-1)*0/Scale*cos(anglerad)-(-1)*(dl/Scale+15)*sin(anglerad);
  y1:=yvh+(-1)*0/Scale*sin(anglerad)+(-1)*(dl/Scale+15)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  TextOut(Trunc(x1)+10,Trunc(y1),FloatToStr(Sheep.SpeedMaxUp));
  MoveTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*5*cos(anglerad)-(-1)*(dl/Scale+15-7)*sin(anglerad);
  y1:=yvh+(-1)*5*sin(anglerad)+(-1)*(dl/Scale+15-7)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*0/Scale*cos(anglerad)-(-1)*(dl/Scale+15)*sin(anglerad);
  y1:=yvh+(-1)*0/Scale*sin(anglerad)+(-1)*(dl/Scale+15)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(1)*5*cos(anglerad)-(-1)*(dl/Scale+15-7)*sin(anglerad);
  y1:=yvh+(1)*5*sin(anglerad)+(-1)*(dl/Scale+15-7)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  //Стрелка вправо корабля для скорости

  MoveTo(x,y);

  x1:=xvh+(-1)*(sh/Scale+15)*cos(anglerad)-(-1)*(0)*sin(anglerad);
  y1:=yvh+(-1)*(sh/Scale+15)*sin(anglerad)+(-1)*(0)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  TextOut(Trunc(x1),Trunc(y1)+8,FloatToStr(Sheep.SpeedMaxStreif));
  MoveTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*(sh/Scale+15-7)*cos(anglerad)-(-1)*(5)*sin(anglerad);
  y1:=yvh+(-1)*(sh/Scale+15-7)*sin(anglerad)+(-1)*(5)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*(sh/Scale+15)*cos(anglerad)-(-1)*(0)*sin(anglerad);
  y1:=yvh+(-1)*(sh/Scale+15)*sin(anglerad)+(-1)*(0)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));

  x1:=xvh+(-1)*(sh/Scale+15-7)*cos(anglerad)-(1)*(5)*sin(anglerad);
  y1:=yvh+(-1)*(sh/Scale+15-7)*sin(anglerad)+(1)*(5)*cos(anglerad);
  LineTo(Trunc(x1),Trunc(y1));
  end;

//  Rectangle(x0+Trunc(x+(sh/2)/Scale),y0+Trunc(y+(dl/2)/Scale),x0+Trunc(x-(sh/2)/Scale),y0+Trunc(y-(dl/2)/Scale));
//  FFight.PbFight.Canvas.FloodFill(X,Y,clBlack,fsBorder);
  Pen.Color:=clBlack;
  Pen.Width:=1;

  end;
  end;

procedure VisibleAllSheep;
var
  i:LongWord;
  dl,sh,x,y:LongWord;
begin
for i:=1 to 6 do
  begin

    if i<>NomSelectSheepFleet[1] then
      VisibleSheep(FleetFightN1.Sheep[i],clGreen)
    else
      VisibleSheep(FleetFightN1.Sheep[i],clYellow);
    if i<>NomSelectSheepFleet[2] then
      VisibleSheep(FleetFightN2.Sheep[i],clRed)
    else
      VisibleSheep(FleetFightN2.Sheep[i],clBlue);

  end;
end;

procedure TFFight.PbFightMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);


begin
If Button=mbRight then
  begin
  XMbRightClick:=X;
  YMbRightClick:=Y;
  end
else
  begin
  XMbRightClick:=0;
  YMbRightClick:=0;
  end;
end;

procedure TFFight.PbFightMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
with FFight.PbFight.Canvas do
If (XMbRightClick<>0) and (YMbRightClick<>0) then
  begin
  Pen.Color:=clBlack;
  Pen.Width:=3;
  FillRect(Rect(XMbRightClick,YMbRightClick, X+15,Y+15));
  MoveTo(XMbRightClick,YMbRightClick);
  LineTo(X,Y);
  Pen.Color:=clBlack;
  Pen.Width:=1;
  end;
end;

function GoAngle(x1,y1,x2,y2:Double):Double;
var
  angle:Double;
begin
  If y1-y2<>0 then
    begin
    Angle:=ArcTan((x1-x2)/(y2-y1))/pi*180;
    if (x1<x2) and (y2>y1) then
      angle:=angle+360
    else
    If (y2<y1) then
      angle:=angle+180;
    end
  else
    begin
    If (x1<x2) then
      angle:=270
    else
      angle:=90;
    end;
  Result:=angle;
end;

procedure TFFight.PbFightMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  dl,sh:LongWord;
  angle:Double;
begin
PbFight.Canvas.FillRect(Rect(0, 0, PbFight.Width, PbFight.Height));
If (XMbRightClick<>0) and (YMbRightClick<>0) then
  begin
  angle:=GoAngle(x,y,XMbRightClick,YMbRightClick);
  end
else
  begin
  Angle:=0;
  XMbRightClick:=x;
  YMbRightClick:=y;
  end;


VisibleAllSheep;
if EdTimeFight.Text='0' then
  begin
  if NomSelectSheepFleet[1]<>0 then
    begin
    dl:=FleetFightN1.Sheep[NomSelectSheepFleet[1]].Sheep.dl;
    sh:=FleetFightN1.Sheep[NomSelectSheepFleet[1]].Sheep.sh;
    PbFight.Canvas.Pen.Color:=clBtnFace;
    VisibleSheep(FleetFightN1.Sheep[NomSelectSheepFleet[1]],clBtnFace);
    PbFight.Canvas.Pen.Color:=clBlack;

    FleetFightN1.Sheep[NomSelectSheepFleet[1]].Angle:=angle;
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].X:=XMbRightClick;
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].Y:=YMbRightClick;
    VisibleSheep(FleetFightN1.Sheep[NomSelectSheepFleet[1]],clGreen);
    end;
  end
else
  begin
  FleetFightN1.Sheep[NomSelectSheepFleet[1]].GoToX:=X;
  FleetFightN1.Sheep[NomSelectSheepFleet[1]].GoToY:=Y;
    If (Abs(XMbRightClick-x)<20) and (Abs(yMbRightClick-y)<20)  then
    begin
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].TypeGoToXY:=2;
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].GoToAngle:=FleetFightN1.Sheep[NomSelectSheepFleet[1]].Angle;
    end
  else
    begin
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].TypeGoToXY:=1;
    FleetFightN1.Sheep[NomSelectSheepFleet[1]].GoToAngle:=Angle;
    end;
  end;
XMbRightClick:=0;
YMbRightClick:=0;
end;

procedure VisibleAllElement(TypeVisible:Byte);
var
  i:LongWord;
begin
for i:=1 to 6 do
  begin
  If TypeVisible=0 then
    begin
     VisibleSheep(FleetFightN1.Sheep[i],clBtnFace);
     VisibleSheep(FleetFightN2.Sheep[i],clBtnFace);
    end;
  If TypeVisible=1 then
    begin
    if i<>NomSelectSheepFleet[1] then
      VisibleSheep(FleetFightN1.Sheep[i],clGreen)
    else
      VisibleSheep(FleetFightN1.Sheep[i],clYellow);
    if i<>NomSelectSheepFleet[2] then
      VisibleSheep(FleetFightN2.Sheep[i],clRed)
    else
      VisibleSheep(FleetFightN2.Sheep[i],clBlue);
    end;
  end;
end;



procedure TFFight.BtGoShagClick(Sender: TObject);
var
  TimeGo:Double;
    i:LongWord;
    CurrentAngle:Double;
  aRotate,aSpeed,aStreif:Double;
  TimeGoRotateSpeed,TimeStopRotateSpeed,TimeRotateInMaxSpeed:Double;
  AngleGoRotateMaxSpeed,AngleStopRotate,AngleRotateInMaxSpeed:Double;
begin
TimeGo:=StrToFloat(EdTimeFight.Text);
TimeGo:=TimeGo+StrToFloat(EdShagTimeFight.Text);
EdTimeFight.Text:=FloatToStr(TimeGo);
VisibleAllElement(0);
for i:=1 to 6 do
  begin
  //Вычисление ускорений
  aRotate:=FleetFightN1.Sheep[i].SpeedMaxRotate/ConstTimeRotate;
  aSpeed:=FleetFightN1.Sheep[i].SpeedMaxUp/ConstTimeUp;
  aStreif:=FleetFightN1.Sheep[i].SpeedMaxStreif/ConstTimeStreif;
  //Если необходимо изменить угол поворота
  If not ((FleetFightN1.Sheep[i].TypeGoToXY=2) and (FleetFightN1.Sheep[i].Angle=FleetFightN1.Sheep[i].GoToAngle)) then
  begin
  //Вычисление Времени, необходимого для достижения максимальной скорости поворота
  TimeGoRotateSpeed:=(FleetFightN1.Sheep[i].SpeedMaxRotate-FleetFightN1.Sheep[i].SpeedCurrentRotate)/aRotate;
  //Вычисление угла, который будет получен в результате Достижения необходимой скорости вращения
  AngleGoRotateMaxSpeed:=FleetFightN1.Sheep[i].SpeedCurrentRotate*TimeGoRotateSpeed+aRotate*sqr(TimeGoRotateSpeed)/2;
  //Вычисление Времени, необходимого для для торможения до 0 скорости поворота
  TimeStopRotateSpeed:=(FleetFightN1.Sheep[i].SpeedMaxRotate)/aRotate;
  //Вычисление угла, который будет получен в результате Торможения
  AngleStopRotate:=FleetFightN1.Sheep[i].SpeedCurrentRotate*TimeStopRotateSpeed+aRotate*sqr(TimeStopRotateSpeed)/2;
  //Определения необходимого угла поворота корабля
  CurrentAngle:=GoAngle(FleetFightN1.Sheep[i].X,FleetFightN1.Sheep[i].Y,FleetFightN1.Sheep[i].GoToX,FleetFightN1.Sheep[i].GoToY);
  //Вращение по часовой стрелки
  IF CurrentAngle>FleetFightN1.Sheep[i].Angle then
    begin
    If CurrentAngle>FleetFightN1.Sheep[i].Angle+AngleGoRotateMaxSpeed+AngleStopRotate then
      //Если необходимый угол не будет достигнут в результате ускорения и замедления скорости вращения
      begin
      //Определяем оставшийся угол поворота
      AngleRotateInMaxSpeed:=CurrentAngle-(FleetFightN1.Sheep[i].Angle+AngleGoRotateMaxSpeed+AngleStopRotate);
      //Вычисляем время поворота на максимальной скороти
      TimeRotateInMaxSpeed:=AngleRotateInMaxSpeed/FleetFightN1.Sheep[i].SpeedMaxRotate;
      end;

    end
  //Вращение против часовой стрелки
  else
    begin
     If CurrentAngle<FleetFightN1.Sheep[i].Angle-(AngleGoRotateMaxSpeed+AngleStopRotate) then
      //Если необходимый угол не будет достигнут в результате ускорения и замедления скорости вращения
      begin
      //Определяем оставшийся угол поворота
      AngleRotateInMaxSpeed:=-(CurrentAngle-(FleetFightN1.Sheep[i].Angle-(AngleGoRotateMaxSpeed+AngleStopRotate)));
      //Вычисляем время поворота на максимальной скороти
      TimeRotateInMaxSpeed:=AngleRotateInMaxSpeed/FleetFightN1.Sheep[i].SpeedMaxRotate;
      end;
    end;

  end;
  //Определение результирующей скорости
  //Определение проекции скорости на оси координат
  //Приращение перемещения по осям координат


  //Проверка необходимости ускорения вращения
  if ((FleetFightN1.Sheep[i].GoToAngle-FleetFightN1.Sheep[i].Angle)>FleetFightN1.Sheep[i].SpeedCurrentRotate) and (FleetFightN1.Sheep[i].SpeedCurrentRotate<>FleetFightN1.Sheep[i].SpeedMaxRotate) then
      FleetFightN1.Sheep[i].SpeedCurrentRotate:=FleetFightN1.Sheep[i].SpeedMaxRotate;
  //Проверка необходимости замедления вращения
  if ((FleetFightN1.Sheep[i].GoToAngle-FleetFightN1.Sheep[i].Angle)>FleetFightN1.Sheep[i].SpeedCurrentRotate) and (FleetFightN1.Sheep[i].SpeedCurrentRotate<>FleetFightN1.Sheep[i].SpeedMaxRotate) then
      FleetFightN1.Sheep[i].SpeedCurrentRotate:=FleetFightN1.Sheep[i].SpeedMaxRotate;

  //Проверка необходимости ускорения по направлению движения

  //Проверка необходимости замедления по направлению движения

  //Проверка необходимости ускорения стрейфа

  //Проверка необходимости замедления стрейфа

  //Вычисление скорости по направлению движения
  //Определение угла между направлением необходимой точки и  осью
  //Вычисление угла между направлением движения и направлением необходимой точки
  //Определение скорости перемещения по данному направлению
  //Определение скорости стрейфа по данному направлению

  end;

end;

end.
