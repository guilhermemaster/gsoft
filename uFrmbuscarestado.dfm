object Tufrmbuscarestado: TTufrmbuscarestado
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Buscar Estado'
  ClientHeight = 349
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl11: TLabel
    Left = 2
    Top = 0
    Width = 122
    Height = 16
    Caption = 'Unidade Federativa *'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 0
    Top = 22
    Width = 496
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = edt1KeyDown
  end
  object btn1: TButton
    Left = 502
    Top = 18
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 67
    Width = 577
    Height = 282
    DataSource = dsestados
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = dbgrd1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Estado'
        Width = 333
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sigla'
        Title.Caption = 'Sigla'
        Width = 161
        Visible = True
      end>
  end
  object cdsestados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspestados'
    RemoteServer = ponte.conponte
    Left = 504
    Top = 56
    object coluncdsestadosid: TIntegerField
      FieldName = 'id'
    end
    object coluncdsestadosnome: TWideStringField
      FieldName = 'nome'
      Size = 200
    end
    object coluncdsestadossigla: TWideStringField
      FieldName = 'sigla'
      Size = 200
    end
  end
  object dsestados: TDataSource
    DataSet = cdsestados
    Left = 504
    Top = 120
  end
end
