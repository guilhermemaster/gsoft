object TuFrmbuscarfornecedor: TTuFrmbuscarfornecedor
  Left = 0
  Top = 0
  Caption = 'Buscar Fornecedor'
  ClientHeight = 356
  ClientWidth = 588
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
  object lbl4: TLabel
    Left = 1
    Top = 2
    Width = 107
    Height = 16
    Caption = 'Buscar Fornecedor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 1
    Top = 24
    Width = 505
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = edt1KeyDown
  end
  object btn1: TButton
    Left = 512
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 1
    Top = 51
    Width = 586
    Height = 302
    DataSource = dsbuscarfornecedor
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
        FieldName = 'idfornecedor'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Title.Caption = 'CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insc_estadual'
        Title.Caption = 'I.E.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_fornecedor'
        Title.Caption = 'Status'
        Width = 60
        Visible = True
      end>
  end
  object cdsbuscarfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_fornecedor'
    RemoteServer = ponte.conponte
    Left = 512
    Top = 72
    object coluncdsbuscarfornecedoridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
    end
    object coluncdsbuscarfornecedornome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object coluncdsbuscarfornecedorcep: TWideStringField
      FieldName = 'cep'
      Size = 100
    end
    object coluncdsbuscarfornecedorendereco: TWideStringField
      FieldName = 'endereco'
      Size = 150
    end
    object coluncdsbuscarfornecedorcidade: TWideStringField
      FieldName = 'cidade'
      Size = 200
    end
    object coluncdsbuscarfornecedoruf: TWideStringField
      FieldName = 'uf'
      Size = 150
    end
    object coluncdsbuscarfornecedorcomissao: TFloatField
      FieldName = 'comissao'
    end
    object coluncdsbuscarfornecedorcnpj: TWideStringField
      FieldName = 'cnpj'
    end
    object colun_estadual: TWideStringField
      FieldName = 'insc_estadual'
      Size = 200
    end
    object coluncdsbuscarfornecedoremail: TWideStringField
      FieldName = 'email'
      Size = 150
    end
    object colun_1: TWideStringField
      FieldName = 'telefone_1'
      Size = 50
    end
    object colun_2: TWideStringField
      FieldName = 'telefone_2'
      Size = 50
    end
    object colun_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object colun_fornecedor: TWideStringField
      FieldName = 'status_fornecedor'
    end
    object coluncdsbuscarfornecedorobser: TWideStringField
      FieldName = 'obser'
      Size = 300
    end
  end
  object dsbuscarfornecedor: TDataSource
    DataSet = cdsbuscarfornecedor
    Left = 512
    Top = 136
  end
end
