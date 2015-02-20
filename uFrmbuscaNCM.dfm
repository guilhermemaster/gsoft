object buscaNCM: TbuscaNCM
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Buscar NCM'
  ClientHeight = 329
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl11: TLabel
    Left = 107
    Top = 0
    Width = 72
    Height = 16
    Caption = 'Buscar NCM '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 107
    Top = 18
    Width = 416
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 529
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 45
    Width = 727
    Height = 284
    DataSource = ds_ncm
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'c_codigo'
        Title.Caption = 'C'#243'digo NCM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_descr'
        Title.Caption = 'Descri'#231#227'o'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_ex'
        Title.Caption = 'C'#243'digo de exporta'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_tabela'
        Title.Caption = 'C'#243'digo interno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_aliqnac'
        Title.Caption = 'Percentual da al'#237'quota nacional'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_aliqimp'
        Title.Caption = 'Al'#237'quota de importa'#231#227'o'
        Visible = True
      end>
  end
  object cdsncm: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dsncm'
    RemoteServer = ponte.conponte
    Left = 400
    Top = 104
    object cdsncmc_codigo: TWideStringField
      FieldName = 'c_codigo'
      Size = 8
    end
    object cdsncmc_descr: TWideStringField
      FieldName = 'c_descr'
      Size = 80
    end
    object cdsncmc_ex: TFMTBCDField
      FieldName = 'c_ex'
      Precision = 3
      Size = 0
    end
    object cdsncmc_tabela: TWideStringField
      FieldName = 'c_tabela'
      Size = 1
    end
    object cdsncmc_aliqnac: TFMTBCDField
      FieldName = 'c_aliqnac'
      Precision = 6
      Size = 2
    end
    object cdsncmc_aliqimp: TFMTBCDField
      FieldName = 'c_aliqimp'
      Precision = 6
      Size = 2
    end
    object cdsncmsr_recno: TFMTBCDField
      FieldName = 'sr_recno'
      Precision = 15
      Size = 0
    end
  end
  object ds_ncm: TDataSource
    DataSet = cdsncm
    Left = 400
    Top = 224
  end
end
