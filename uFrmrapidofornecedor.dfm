object TuFrmrapidofornecedor: TTuFrmrapidofornecedor
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Cadastro R'#225'pido de Fornecedor'
  ClientHeight = 185
  ClientWidth = 459
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
  object lbl3: TLabel
    Left = 0
    Top = 4
    Width = 37
    Height = 16
    Caption = 'CNPJ: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 200
    Top = 4
    Width = 20
    Height = 16
    Caption = 'I.E:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 44
    Width = 38
    Height = 16
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 0
    Top = 86
    Width = 58
    Height = 16
    Caption = 'Endere'#231'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 245
    Top = 86
    Width = 20
    Height = 16
    Caption = 'UF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 0
    Top = 121
    Width = 58
    Height = 16
    Caption = 'Munic'#237'pio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 248
    Top = 121
    Width = 27
    Height = 16
    Caption = 'CEP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 43
    Top = 0
    Width = 145
    Height = 21
    DataField = 'cnpj'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 237
    Top = 0
    Width = 145
    Height = 21
    DataField = 'insc_estadual'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 40
    Width = 145
    Height = 21
    DataField = 'nome'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 64
    Top = 81
    Width = 174
    Height = 21
    DataField = 'endereco'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 270
    Top = 81
    Width = 48
    Height = 21
    DataField = 'uf'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 4
  end
  object DBEdit8: TDBEdit
    Left = 64
    Top = 116
    Width = 174
    Height = 21
    DataField = 'endereco'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 5
  end
  object DBEdit9: TDBEdit
    Left = 281
    Top = 116
    Width = 110
    Height = 21
    DataField = 'cep'
    DataSource = ds_fornecedor
    Enabled = False
    TabOrder = 6
  end
  object Button1: TButton
    Left = 310
    Top = 143
    Width = 149
    Height = 42
    Caption = 'Gravar Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageIndex = 9
    Images = DataModule2.imgmenu
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object cdsfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_fornecedor'
    RemoteServer = ponte.conponte
    Left = 400
    Top = 16
  end
  object ds_fornecedor: TDataSource
    DataSet = cdsfornecedor
    Left = 400
    Top = 72
  end
end
