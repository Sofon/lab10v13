object Form1: TForm1
  Left = 283
  Top = 262
  Caption = #1057#1087#1080#1089#1082#1080',10 '#1083#1072#1073#1072#1088#1072#1090#1086#1088#1085#1072#1103' '#1088#1072#1073#1086#1090#1072','#1057#1072#1092#1086#1085#1077#1085#1082#1086' '#1042#1072#1088#1080#1072#1085#1090' 13'
  ClientHeight = 247
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 12
    Width = 122
    Height = 16
    Caption = #1050#1086#1083'-'#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 89
    Width = 92
    Height = 16
    Caption = #1063#1090#1086' '#1076#1086#1073#1072#1074#1080#1090#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 160
    Top = 176
    Width = 32
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 0
    Width = 1
    Height = 247
    ExplicitHeight = 249
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 33
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = '5'
  end
  object UpDown1: TUpDown
    Left = 169
    Top = 8
    Width = 16
    Height = 24
    Associate = Edit1
    Max = 10
    Position = 5
    TabOrder = 1
  end
  object Button1: TButton
    Left = 192
    Top = 8
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1089#1077#1074#1076#1086#1089#1083#1091#1095#1072#1081#1085#1099#1077
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 337
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1090#1077#1082#1089#1090#1086#1074#1086#1075#1086' '#1092#1072#1081#1083#1072
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 88
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 120
    Width = 329
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1089#1087#1080#1089#1082#1072' '#1080' '#1086#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1087#1072#1084#1103#1090#1100
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 168
    Width = 145
    Height = 25
    Caption = #1053#1072#1081#1090#1080' '#1074' '#1089#1087#1080#1089#1082#1077
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 216
    Width = 329
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 7
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 104
    Top = 88
    Width = 57
    Height = 21
    TabOrder = 8
  end
  object Memo1: TMemo
    Left = 360
    Top = 8
    Width = 193
    Height = 201
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 8
    Top = 72
    Width = 337
    Height = 9
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 10
    object Panel2: TPanel
      Left = -8
      Top = 8
      Width = 337
      Height = 9
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 152
    Width = 337
    Height = 9
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 11
    object Panel4: TPanel
      Left = -8
      Top = 8
      Width = 337
      Height = 9
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 8
    Top = 200
    Width = 337
    Height = 9
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 12
    object Panel6: TPanel
      Left = -8
      Top = 8
      Width = 337
      Height = 9
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  object Button7: TButton
    Left = 360
    Top = 215
    Width = 193
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1087#1080#1089#1086#1082
    TabOrder = 13
    OnClick = Button7Click
  end
  object XPManifest1: TXPManifest
    Left = 376
    Top = 88
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 88
  end
end
