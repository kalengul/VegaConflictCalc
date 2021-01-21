object FFight: TFFight
  Left = 237
  Top = 167
  Width = 1247
  Height = 780
  HorzScrollBar.Tracking = True
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088' '#1073#1086#1077#1074
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
  object Label7: TLabel
    Left = 8
    Top = 32
    Width = 31
    Height = 13
    Caption = #1065#1080#1090#1099
  end
  object Label8: TLabel
    Left = 8
    Top = 48
    Width = 30
    Height = 13
    Caption = #1041#1088#1086#1085#1103
  end
  object Label9: TLabel
    Left = 8
    Top = 64
    Width = 36
    Height = 13
    Caption = #1056#1077#1084#1086#1085#1090
  end
  object Label10: TLabel
    Left = 8
    Top = 80
    Width = 22
    Height = 13
    Caption = #1044#1055#1057
  end
  object Pn1: TPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 81
    Align = alTop
    TabOrder = 0
    object Pn5: TPanel
      Left = 1
      Top = 1
      Width = 88
      Height = 79
      Align = alLeft
      TabOrder = 0
      object Label11: TLabel
        Left = 16
        Top = 0
        Width = 51
        Height = 13
        Caption = #1042#1088#1077#1084#1103' '#1073#1086#1103
      end
      object Label20: TLabel
        Left = 32
        Top = 37
        Width = 21
        Height = 13
        Caption = #1064#1072#1075
      end
      object EdTimeFight: TEdit
        Left = 0
        Top = 16
        Width = 81
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object EdShagTimeFight: TEdit
        Left = 0
        Top = 53
        Width = 81
        Height = 21
        TabOrder = 1
        Text = '0,01'
      end
    end
    object Gb3: TGroupBox
      Left = 241
      Top = 1
      Width = 304
      Height = 79
      Align = alLeft
      Caption = #1042#1077#1089#1100' '#1092#1083#1086#1090
      TabOrder = 1
      object CbVivodSpeed: TCheckBox
        Left = 8
        Top = 16
        Width = 161
        Height = 17
        Caption = #1042#1099#1074#1077#1089#1090#1080' '#1089#1082#1086#1088#1086#1089#1090#1080' '#1082#1086#1088#1072#1073#1083#1077#1081
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CbVivodLineGoTo: TCheckBox
        Left = 8
        Top = 32
        Width = 217
        Height = 17
        Caption = #1042#1099#1074#1077#1089#1090#1080' '#1085#1072#1087#1072#1088#1072#1074#1083#1077#1085#1080#1077' '#1087#1077#1088#1077#1097#1077#1097#1077#1085#1080#1103
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CbVivodSektorBang: TCheckBox
        Left = 8
        Top = 48
        Width = 209
        Height = 17
        Caption = #1042#1099#1074#1077#1089#1090#1080' '#1089#1077#1082#1090#1086#1088' '#1089#1090#1088#1077#1083#1100#1073#1099
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
    object Gb4: TGroupBox
      Left = 89
      Top = 1
      Width = 152
      Height = 79
      Align = alLeft
      Caption = #1047#1072#1087#1091#1089#1082' '#1084#1086#1076#1077#1083#1080
      TabOrder = 2
      object BtGoShag: TButton
        Left = 8
        Top = 16
        Width = 75
        Height = 25
        Caption = #1047#1072#1087#1091#1089#1082' '#1085#1072' '#1096#1072#1075
        TabOrder = 0
        OnClick = BtGoShagClick
      end
    end
  end
  object Pn2: TPanel
    Left = 0
    Top = 81
    Width = 185
    Height = 660
    Align = alLeft
    Color = clGreen
    TabOrder = 1
    object Gb1: TGroupBox
      Left = 1
      Top = 1
      Width = 183
      Height = 658
      Align = alClient
      Caption = #1060#1083#1086#1090' '#8470'1'
      TabOrder = 0
      object Label1: TLabel
        Left = 48
        Top = 44
        Width = 87
        Height = 13
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1092#1083#1086#1090
      end
      object LaNomSelectFleetFightN1: TLabel
        Left = 152
        Top = 68
        Width = 3
        Height = 13
      end
      object BtLoadFleetFightN1: TButton
        Left = 8
        Top = 16
        Width = 161
        Height = 25
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1083#1086#1090
        TabOrder = 0
        OnClick = BtLoadFleetFightN1Click
      end
      object CbSelectFleetFightN1: TComboBox
        Left = 8
        Top = 64
        Width = 137
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnChange = CbSelectFleetFightN1Change
      end
      object GbSheep1N1: TGroupBox
        Left = 8
        Top = 120
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'1'
        TabOrder = 2
        OnClick = GbSheep1N1Click
        object LaNameSheep1N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label3: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label4: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label5: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label6: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep1N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep1N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep1N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep1N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep2N1: TGroupBox
        Left = 8
        Top = 217
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'2'
        TabOrder = 3
        OnClick = GbSheep2N1Click
        object LaNameSheep2N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label12: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label13: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label14: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label15: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep2N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep2N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep2N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep2N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep3N1: TGroupBox
        Left = 8
        Top = 314
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'3'
        TabOrder = 4
        OnClick = GbSheep3N1Click
        object LaNameSheep3N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label21: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label22: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label23: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label24: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep3N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep3N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep3N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep3N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep4N1: TGroupBox
        Left = 8
        Top = 411
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'4'
        TabOrder = 5
        OnClick = GbSheep4N1Click
        object LaNameSheep4N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label30: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label31: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label32: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label33: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep4N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep4N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep4N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep4N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep5N1: TGroupBox
        Left = 8
        Top = 508
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'5'
        TabOrder = 6
        OnClick = GbSheep5N1Click
        object LaNameSheep5N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label39: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label40: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label41: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label42: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep5N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep5N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep5N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep5N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep6N1: TGroupBox
        Left = 8
        Top = 605
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'6'
        TabOrder = 7
        OnClick = GbSheep6N1Click
        object LaNameSheep6N1: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label48: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label49: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label50: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label51: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep6N1: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep6N1: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep6N1: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep6N1: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
    end
  end
  object Pn3: TPanel
    Left = 1046
    Top = 81
    Width = 185
    Height = 660
    Align = alRight
    Color = clRed
    TabOrder = 2
    object Gb2: TGroupBox
      Left = 1
      Top = 1
      Width = 183
      Height = 658
      Align = alClient
      Caption = #1060#1083#1086#1090' '#8470'2'
      TabOrder = 0
      object Label2: TLabel
        Left = 48
        Top = 44
        Width = 87
        Height = 13
        Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1081' '#1092#1083#1086#1090
      end
      object LaNomSelectFleetFightN2: TLabel
        Left = 152
        Top = 68
        Width = 3
        Height = 13
      end
      object BtLoadFleetFightN2: TButton
        Left = 8
        Top = 16
        Width = 161
        Height = 25
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1083#1086#1090
        TabOrder = 0
        OnClick = BtLoadFleetFightN2Click
      end
      object CbSelectFleetFightN2: TComboBox
        Left = 8
        Top = 64
        Width = 137
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        OnChange = CbSelectFleetFightN2Change
      end
      object GbSheep1N2: TGroupBox
        Left = 8
        Top = 120
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'1'
        TabOrder = 2
        OnClick = GbSheep1N2Click
        object LaNameSheep1N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label16: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label17: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label18: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label19: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep1N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep1N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep1N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep1N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep2N2: TGroupBox
        Left = 8
        Top = 217
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'2'
        TabOrder = 3
        OnClick = GbSheep2N2Click
        object LaNameSheep2N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label29: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label34: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label35: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label36: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep2N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep2N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep2N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep2N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep3N2: TGroupBox
        Left = 8
        Top = 314
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'3'
        TabOrder = 4
        OnClick = GbSheep3N2Click
        object LaNameSheep3N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label46: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label47: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label52: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label53: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep3N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep3N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep3N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep3N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep4N2: TGroupBox
        Left = 8
        Top = 411
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'4'
        TabOrder = 5
        OnClick = GbSheep4N2Click
        object LaNameSheep4N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label59: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label60: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label61: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label62: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep4N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep4N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep4N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep4N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep5N2: TGroupBox
        Left = 8
        Top = 508
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'5'
        TabOrder = 6
        OnClick = GbSheep5N2Click
        object LaNameSheep5N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label68: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label69: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label70: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label71: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep5N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep5N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep5N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep5N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
      object GbSheep6N2: TGroupBox
        Left = 8
        Top = 605
        Width = 169
        Height = 97
        Caption = #1050#1086#1088#1072#1073#1083#1100' '#8470'6'
        TabOrder = 7
        OnClick = GbSheep6N2Click
        object LaNameSheep6N2: TLabel
          Left = 8
          Top = 16
          Width = 3
          Height = 13
        end
        object Label77: TLabel
          Left = 8
          Top = 32
          Width = 31
          Height = 13
          Caption = #1065#1080#1090#1099
        end
        object Label78: TLabel
          Left = 8
          Top = 48
          Width = 30
          Height = 13
          Caption = #1041#1088#1086#1085#1103
        end
        object Label79: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = #1056#1077#1084#1086#1085#1090
        end
        object Label80: TLabel
          Left = 8
          Top = 80
          Width = 22
          Height = 13
          Caption = #1044#1055#1057
        end
        object LaShieldSheep6N2: TLabel
          Left = 48
          Top = 32
          Width = 3
          Height = 13
        end
        object LaArmourSheep6N2: TLabel
          Left = 48
          Top = 48
          Width = 3
          Height = 13
        end
        object LaRemontSheep6N2: TLabel
          Left = 48
          Top = 64
          Width = 3
          Height = 13
        end
        object LaDPSSheep6N2: TLabel
          Left = 48
          Top = 79
          Width = 3
          Height = 13
        end
      end
    end
  end
  object Pn4: TPanel
    Left = 185
    Top = 81
    Width = 861
    Height = 660
    Align = alClient
    TabOrder = 3
    object PbFight: TPaintBox
      Left = 1
      Top = 1
      Width = 859
      Height = 658
      Align = alClient
      OnMouseDown = PbFightMouseDown
      OnMouseMove = PbFightMouseMove
      OnMouseUp = PbFightMouseUp
    end
  end
end
