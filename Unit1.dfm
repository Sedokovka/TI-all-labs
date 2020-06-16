object Form1: TForm1
  Left = 264
  Top = 11
  Width = 900
  Height = 693
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 209
    TabOrder = 0
    object lbl1: TLabel
      Left = 224
      Top = 0
      Width = 214
      Height = 16
      Caption = #1046#1077#1083#1077#1079#1085#1086#1076#1086#1088#1086#1078#1085#1072#1103' '#1080#1079#1075#1086#1088#1086#1076#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 16
      Caption = #1050#1083#1102#1095
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 408
      Top = 104
      Width = 179
      Height = 16
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 408
      Top = 16
      Width = 170
      Height = 16
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 72
      Width = 121
      Height = 16
      Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt1: TEdit
      Left = 64
      Top = 24
      Width = 185
      Height = 21
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object mmo1: TMemo
      Left = 392
      Top = 32
      Width = 441
      Height = 57
      Lines.Strings = (
        'mmo1')
      TabOrder = 1
    end
    object mmo2: TMemo
      Left = 392
      Top = 120
      Width = 441
      Height = 57
      Lines.Strings = (
        'mmo1')
      TabOrder = 2
    end
    object mmo3: TMemo
      Left = 16
      Top = 88
      Width = 233
      Height = 89
      Lines.Strings = (
        'mmo3')
      TabOrder = 3
      OnKeyPress = mmo3KeyPress
    end
    object btn1: TButton
      Left = 752
      Top = 88
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 4
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 752
      Top = 176
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 5
      OnClick = btn2Click
    end
    object btnKeyBtn: TButton
      Left = 168
      Top = 48
      Width = 75
      Height = 25
      Caption = #1042#1074#1086#1076
      TabOrder = 6
      OnClick = btnKeyBtnClick
    end
    object btn3: TButton
      Left = 168
      Top = 176
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 7
      OnClick = btn3Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 208
    Width = 873
    Height = 217
    TabOrder = 1
    object lbl6: TLabel
      Left = 224
      Top = 0
      Width = 268
      Height = 16
      Caption = #1052#1077#1090#1086#1076' '#1087#1086#1074#1086#1088#1072#1095#1080#1074#1072#1102#1097#1077#1081#1089#1103' '#1088#1077#1096#1077#1090#1082#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 400
      Top = 16
      Width = 170
      Height = 16
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 408
      Top = 104
      Width = 179
      Height = 16
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 16
      Top = 48
      Width = 121
      Height = 16
      Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mmo4: TMemo
      Left = 16
      Top = 64
      Width = 233
      Height = 89
      Lines.Strings = (
        'mmo4')
      TabOrder = 0
      OnKeyPress = mmo4KeyPress
    end
    object mmo5: TMemo
      Left = 400
      Top = 32
      Width = 433
      Height = 57
      Lines.Strings = (
        'mmo5')
      TabOrder = 1
    end
    object mmo6: TMemo
      Left = 400
      Top = 128
      Width = 433
      Height = 57
      Lines.Strings = (
        'mmo6')
      TabOrder = 2
    end
    object btn4: TButton
      Left = 752
      Top = 96
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 3
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 752
      Top = 184
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 4
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 168
      Top = 152
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 5
      OnClick = btn6Click
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 424
    Width = 873
    Height = 249
    TabOrder = 2
    object lbl10: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 16
      Caption = #1050#1083#1102#1095
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl11: TLabel
      Left = 408
      Top = 16
      Width = 170
      Height = 16
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 408
      Top = 96
      Width = 179
      Height = 16
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl13: TLabel
      Left = 312
      Top = 0
      Width = 126
      Height = 16
      Caption = #1052#1077#1090#1086#1076' '#1042#1080#1078#1077#1085#1077#1088#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl14: TLabel
      Left = 16
      Top = 64
      Width = 121
      Height = 16
      Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl15: TLabel
      Left = 16
      Top = 192
      Width = 161
      Height = 16
      Caption = #1055#1088#1086#1075#1088#1077#1089#1089#1080#1074#1085#1099#1081' '#1082#1083#1102#1095
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object mmo7: TMemo
      Left = 408
      Top = 32
      Width = 425
      Height = 57
      Lines.Strings = (
        'mmo7')
      TabOrder = 0
    end
    object mmo8: TMemo
      Left = 408
      Top = 120
      Width = 425
      Height = 57
      Lines.Strings = (
        'mmo8')
      TabOrder = 1
    end
    object btn7: TButton
      Left = 744
      Top = 88
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 2
      OnClick = btn7Click
    end
    object btn8: TButton
      Left = 744
      Top = 176
      Width = 75
      Height = 25
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      TabOrder = 3
      OnClick = btn8Click
    end
    object edt2: TEdit
      Left = 72
      Top = 24
      Width = 177
      Height = 21
      TabOrder = 4
      OnKeyPress = edt2KeyPress
    end
    object mmo9: TMemo
      Left = 16
      Top = 80
      Width = 233
      Height = 89
      Lines.Strings = (
        'mmo9')
      TabOrder = 5
      OnKeyPress = mmo9KeyPress
    end
    object btn9: TButton
      Left = 256
      Top = 48
      Width = 75
      Height = 25
      Caption = #1042#1074#1086#1076
      TabOrder = 6
      OnClick = btn9Click
    end
    object btn10: TButton
      Left = 256
      Top = 144
      Width = 75
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      TabOrder = 7
      OnClick = btn10Click
    end
    object edt3: TEdit
      Left = 200
      Top = 192
      Width = 233
      Height = 21
      TabOrder = 8
      OnKeyPress = edt2KeyPress
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 264
    Top = 24
  end
end
