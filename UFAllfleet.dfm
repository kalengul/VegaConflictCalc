object FFleetAll: TFFleetAll
  Left = 221
  Top = 151
  Width = 1326
  Height = 656
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1092#1083#1086#1090#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Pn2: TPanel
    Left = 0
    Top = 49
    Width = 1310
    Height = 128
    Align = alTop
    TabOrder = 0
    object Pn7: TPanel
      Left = 1118
      Top = 1
      Width = 191
      Height = 126
      Align = alRight
      TabOrder = 0
      object Pn8: TPanel
        Left = 1
        Top = 1
        Width = 96
        Height = 124
        Align = alLeft
        TabOrder = 0
        object PnSheep1: TPanel
          Left = 1
          Top = 1
          Width = 94
          Height = 40
          Align = alTop
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'1'
          Color = clRed
          TabOrder = 0
        end
        object PnSheep5: TPanel
          Left = 1
          Top = 82
          Width = 94
          Height = 41
          Align = alBottom
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'5'
          Color = clRed
          TabOrder = 1
        end
        object PnSheep3: TPanel
          Left = 1
          Top = 41
          Width = 94
          Height = 41
          Align = alClient
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'3'
          Color = clRed
          TabOrder = 2
        end
      end
      object Pn9: TPanel
        Left = 97
        Top = 1
        Width = 93
        Height = 124
        Align = alClient
        TabOrder = 1
        object PnSheep2: TPanel
          Left = 1
          Top = 1
          Width = 91
          Height = 40
          Align = alTop
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'2'
          Color = clRed
          TabOrder = 0
        end
        object PnSheep6: TPanel
          Left = 1
          Top = 82
          Width = 91
          Height = 41
          Align = alBottom
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'6'
          Color = clRed
          TabOrder = 1
        end
        object PnSheep4: TPanel
          Left = 1
          Top = 41
          Width = 91
          Height = 41
          Align = alClient
          Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'4'
          Color = clRed
          TabOrder = 2
        end
      end
    end
    object GbSheepCurrent: TGroupBox
      Left = 1
      Top = 1
      Width = 1117
      Height = 126
      Align = alClient
      Caption = #1056#1072#1089#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1099#1081' '#1082#1086#1088#1072#1073#1083#1100
      Color = clSkyBlue
      ParentColor = False
      TabOrder = 1
      object LaNameCurrentSheep: TLabel
        Left = 144
        Top = 16
        Width = 178
        Height = 19
        Caption = 'LaNameCurrentSheep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 504
        Top = 8
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label18: TLabel
        Left = 664
        Top = 8
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object Label1: TLabel
        Left = 33
        Top = 20
        Width = 66
        Height = 13
        Caption = #1042#1089#1077#1075#1086' '#1089#1073#1086#1088#1086#1082
      end
      object Label2: TLabel
        Left = 7
        Top = 68
        Width = 128
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1089#1073#1086#1088#1082#1080
      end
      object Label3: TLabel
        Left = 818
        Top = 13
        Width = 76
        Height = 13
        Caption = #1053#1086#1084#1077#1088' '#1082#1086#1088#1072#1073#1083#1103
      end
      object LeMassCurrentSheep: TLabeledEdit
        Left = 144
        Top = 56
        Width = 73
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = #1052#1072#1089#1089#1072
        TabOrder = 0
      end
      object LeDPSCurrentSheep: TLabeledEdit
        Left = 144
        Top = 96
        Width = 73
        Height = 21
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.Caption = #1044#1055#1057
        TabOrder = 1
      end
      object LeSpeedUpCurrentSheep: TLabeledEdit
        Left = 232
        Top = 56
        Width = 97
        Height = 21
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1082#1088#1086#1089#1090#1100
        TabOrder = 2
      end
      object LeSpeedRotateCurrentSheep: TLabeledEdit
        Left = 232
        Top = 96
        Width = 97
        Height = 21
        EditLabel.Width = 99
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1086#1074#1086#1088#1086#1090#1072
        TabOrder = 3
      end
      object LeSpeedStreifCurrentSheep: TLabeledEdit
        Left = 336
        Top = 56
        Width = 97
        Height = 21
        EditLabel.Width = 94
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1089#1090#1088#1077#1081#1092#1072
        TabOrder = 4
      end
      object LeSpeedSektorCurrentSheep: TLabeledEdit
        Left = 336
        Top = 96
        Width = 97
        Height = 21
        EditLabel.Width = 101
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1074' '#1089#1077#1082#1090#1086#1088#1077
        TabOrder = 5
      end
      object MeSostavCurrentSheep: TMemo
        Left = 448
        Top = 24
        Width = 161
        Height = 89
        ScrollBars = ssBoth
        TabOrder = 6
      end
      object MeOsobennostiCurrentSheep: TMemo
        Left = 616
        Top = 24
        Width = 169
        Height = 89
        ScrollBars = ssBoth
        TabOrder = 7
      end
      object EdMaxSborok: TEdit
        Left = 40
        Top = 40
        Width = 65
        Height = 21
        Enabled = False
        TabOrder = 8
      end
      object SeNomSborki: TSpinEdit
        Left = 40
        Top = 88
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 9
        Value = 0
        OnChange = SeNomSborkiChange
      end
      object SeNomSheep: TSpinEdit
        Left = 830
        Top = 32
        Width = 51
        Height = 22
        MaxValue = 6
        MinValue = 1
        TabOrder = 10
        Value = 1
      end
      object BtAddFleetNomber: TButton
        Left = 800
        Top = 56
        Width = 113
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1086' '#1092#1083#1086#1090
        TabOrder = 11
        OnClick = BtAddFleetNomberClick
      end
      object BtDeleteSheep: TButton
        Left = 800
        Top = 88
        Width = 113
        Height = 25
        Caption = #1059#1073#1088#1072#1090#1100' '#1082#1086#1088#1072#1073#1083#1100
        TabOrder = 12
        OnClick = BtDeleteSheepClick
      end
      object BtGoCalcSheepForm: TButton
        Left = 952
        Top = 24
        Width = 129
        Height = 81
        Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1082#1086#1088#1072#1073#1083#1077#1081
        TabOrder = 13
        OnClick = BtGoCalcSheepFormClick
      end
    end
  end
  object Pn3: TPanel
    Left = 1125
    Top = 177
    Width = 185
    Height = 441
    Align = alRight
    Color = clMoneyGreen
    TabOrder = 1
    object Label16: TLabel
      Left = 8
      Top = 88
      Width = 76
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1087#1086#1088#1090#1072
    end
    object LaPrevishenieMass: TLabel
      Left = 8
      Top = 128
      Width = 129
      Height = 16
      Caption = #1055#1056#1045#1042#1067#1064#1045#1053#1048#1045' '#1052#1040#1057#1057#1067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 32
      Top = 152
      Width = 122
      Height = 13
      Caption = #1057#1077#1082#1090#1086#1088#1072#1083#1100#1085#1072#1103' '#1089#1082#1086#1088#1086#1089#1090#1100
    end
    object Label23: TLabel
      Left = 136
      Top = 8
      Width = 30
      Height = 13
      Caption = #1052#1072#1089#1089#1072
    end
    object Label24: TLabel
      Left = 77
      Top = 67
      Width = 48
      Height = 13
      Caption = #1054#1089#1090#1072#1083#1086#1089#1100
    end
    object Label25: TLabel
      Left = 78
      Top = 28
      Width = 58
      Height = 13
      Caption = #1053#1072' '#1082#1086#1088#1072#1073#1083#1100
    end
    object LaFleetOstalos: TLabel
      Left = 136
      Top = 66
      Width = 3
      Height = 13
    end
    object LaSheepOstalos: TLabel
      Left = 139
      Top = 27
      Width = 3
      Height = 13
    end
    object LeKolSheeps: TLabeledEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1082#1086#1088#1072#1073#1083#1077#1081
      TabOrder = 0
      Text = '0'
    end
    object LeMassAllSheeps: TLabeledEdit
      Left = 8
      Top = 64
      Width = 65
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1091#1084#1084#1072#1088#1085#1072#1103' '#1084#1072#1089#1089#1072
      TabOrder = 1
      Text = '0'
      OnChange = LeMassAllSheepsChange
    end
    object CbPort: TComboBox
      Left = 8
      Top = 104
      Width = 65
      Height = 21
      ItemHeight = 13
      ItemIndex = 10
      TabOrder = 2
      Text = '11'
      OnChange = CbPortChange
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11')
    end
    object LeMassPort: TLabeledEdit
      Left = 104
      Top = 104
      Width = 65
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = #1052#1072#1089#1089#1072' '#1087#1086#1088#1090#1072
      TabOrder = 3
      Text = '42750'
      OnChange = LeMassAllSheepsChange
    end
    object LeSpeedSektorSheep1: TLabeledEdit
      Left = 8
      Top = 184
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'1'
      TabOrder = 4
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorSheep2: TLabeledEdit
      Left = 88
      Top = 184
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'2'
      TabOrder = 5
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorSheep3: TLabeledEdit
      Left = 8
      Top = 224
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'3'
      TabOrder = 6
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorSheep4: TLabeledEdit
      Left = 88
      Top = 224
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'4'
      TabOrder = 7
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorSheep5: TLabeledEdit
      Left = 8
      Top = 264
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'5'
      TabOrder = 8
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorSheep6: TLabeledEdit
      Left = 88
      Top = 264
      Width = 57
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'6'
      TabOrder = 9
      Text = '0'
      OnChange = LeSpeedSektorSheep1Change
    end
    object LeSpeedSektorFleet: TLabeledEdit
      Left = 56
      Top = 312
      Width = 57
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #1060#1051#1054#1058#1040
      EditLabel.ParentBiDiMode = False
      TabOrder = 10
    end
  end
  object Pn4: TPanel
    Left = 0
    Top = 177
    Width = 1125
    Height = 441
    Align = alClient
    TabOrder = 2
    object GbSheep1: TGroupBox
      Left = 1
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'1'
      Color = clRed
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 0
      object Label4: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label5: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet1: TLabel
        Left = 7
        Top = 18
        Width = 3
        Height = 13
      end
      object MeSheep1Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep1Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object GbSheep2: TGroupBox
      Left = 185
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'2'
      Color = clRed
      ParentColor = False
      TabOrder = 1
      object Label6: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label7: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet2: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object MeSheep2Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep2Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object GbSheep3: TGroupBox
      Left = 369
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'3'
      Color = clRed
      ParentColor = False
      TabOrder = 2
      object Label8: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label9: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet3: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object MeSheep3Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep3Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object GbSheep4: TGroupBox
      Left = 553
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'4'
      Color = clRed
      ParentColor = False
      TabOrder = 3
      object Label10: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label11: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet4: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object MeSheep4Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep4Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object GbSheep5: TGroupBox
      Left = 737
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'5'
      Color = clRed
      ParentColor = False
      TabOrder = 4
      object Label12: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label13: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet5: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object MeSheep5Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep5Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object GbSheep6: TGroupBox
      Left = 921
      Top = 1
      Width = 184
      Height = 439
      Align = alLeft
      Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'6'
      Color = clRed
      ParentColor = False
      TabOrder = 5
      object Label14: TLabel
        Left = 66
        Top = 40
        Width = 36
        Height = 13
        Caption = #1057#1086#1089#1090#1072#1074
      end
      object Label15: TLabel
        Left = 56
        Top = 240
        Width = 66
        Height = 13
        Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1080
      end
      object LaSheepInFleet6: TLabel
        Left = 8
        Top = 16
        Width = 3
        Height = 13
      end
      object MeSheep6Element: TMemo
        Left = 8
        Top = 56
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object MeSheep6Osoben: TMemo
        Left = 8
        Top = 256
        Width = 169
        Height = 177
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object Pn15: TPanel
    Left = 0
    Top = 0
    Width = 1310
    Height = 49
    Align = alTop
    Color = clMedGray
    TabOrder = 3
    object Label20: TLabel
      Left = 9
      Top = 4
      Width = 69
      Height = 13
      Caption = #1042#1089#1077#1075#1086' '#1092#1083#1086#1090#1086#1074
    end
    object Label21: TLabel
      Left = 87
      Top = 4
      Width = 130
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1092#1083#1086#1090#1072
    end
    object Label22: TLabel
      Left = 247
      Top = 4
      Width = 83
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1083#1086#1090#1072
    end
    object EdAllFleet: TEdit
      Left = 8
      Top = 20
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object SeNomFleet: TSpinEdit
      Left = 120
      Top = 19
      Width = 65
      Height = 22
      MaxValue = 1
      MinValue = 0
      TabOrder = 1
      Value = 0
      OnChange = SeNomFleetChange
    end
    object BtAddNewFleet: TButton
      Left = 368
      Top = 16
      Width = 75
      Height = 25
      Caption = #1053#1086#1074#1099#1081' '#1092#1083#1086#1090
      TabOrder = 2
      OnClick = BtAddNewFleetClick
    end
    object BtSaveFleet: TButton
      Left = 448
      Top = 16
      Width = 97
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1083#1086#1090
      TabOrder = 3
      OnClick = BtSaveFleetClick
    end
    object BtLoadFleet: TButton
      Left = 552
      Top = 16
      Width = 97
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1083#1086#1090
      TabOrder = 4
      OnClick = BtLoadFleetClick
    end
    object EdNameFleet: TEdit
      Left = 224
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 5
      OnChange = EdNameFleetChange
    end
  end
end
