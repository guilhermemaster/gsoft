object Form7: TForm7
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Informa'#231#245'es Tribut'#225'rias sobre o Produto'
  ClientHeight = 145
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 145
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 13
      Top = 0
      Width = 545
      Height = 137
      Caption = '  Item  '
      TabOrder = 0
      object lbl11: TLabel
        Left = 11
        Top = 22
        Width = 106
        Height = 16
        Caption = 'CEAN do produto: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 211
        Top = 22
        Width = 53
        Height = 16
        Caption = 'Produto: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 70
        Width = 39
        Height = 16
        Caption = 'ICMS: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 123
        Top = 70
        Width = 25
        Height = 16
        Caption = 'IOF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 237
        Top = 70
        Width = 28
        Height = 16
        Caption = 'PIS: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 340
        Top = 70
        Width = 57
        Height = 16
        Caption = 'CONFINS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtcean: TEdit
        Left = 11
        Top = 44
        Width = 166
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'edtcean'
      end
      object edtprod: TEdit
        Left = 211
        Top = 44
        Width = 331
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = 'Edit1'
      end
      object edticms: TEdit
        Left = 11
        Top = 92
        Width = 106
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = 'Edit1'
      end
      object edtiof: TEdit
        Left = 123
        Top = 92
        Width = 102
        Height = 21
        Enabled = False
        TabOrder = 3
        Text = 'Edit1'
      end
      object edtpis: TEdit
        Left = 237
        Top = 92
        Width = 97
        Height = 21
        Enabled = False
        TabOrder = 4
        Text = 'Edit1'
      end
      object edtconfins: TEdit
        Left = 340
        Top = 92
        Width = 97
        Height = 21
        Enabled = False
        TabOrder = 5
        Text = 'Edit1'
      end
    end
  end
end
