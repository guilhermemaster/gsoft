object TuFrmbuscarproduto: TTuFrmbuscarproduto
  Left = 0
  Top = 0
  Caption = 'Buscar produto'
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
    Width = 99
    Height = 16
    Caption = 'Nome do produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 2
    Top = 22
    Width = 485
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyDown = edt1KeyDown
  end
  object btn1: TButton
    Left = 493
    Top = 18
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 2
    Top = 49
    Width = 566
    Height = 296
    DataSource = dsbuscaprodutos
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
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Produto'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'compra'
        Title.Caption = 'Valor de compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especie'
        Title.Caption = 'Esp'#233'cie'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_produto'
        Title.Caption = 'Status'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        Title.Caption = 'Complemento'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marca'
        Title.Caption = 'Marca'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fabricante'
        Title.Caption = 'Fabricante'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Title.Caption = 'Fornecedor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_barra'
        Title.Caption = 'Cod. de Barra'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_loja'
        Title.Caption = 'Saldo da Loja'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_deposito'
        Title.Caption = 'Saldo do Deposito'
        Width = 122
        Visible = True
      end>
  end
  object cdsbuscaprodutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspprosutos'
    RemoteServer = ponte.conponte
    Left = 512
    Top = 72
    object cdsbuscaprodutoscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsbuscaprodutosdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 150
    end
    object cdsbuscaprodutoscfop: TWideStringField
      FieldName = 'cfop'
      Size = 150
    end
    object cdsbuscaprodutosespecie: TWideStringField
      FieldName = 'especie'
      Size = 150
    end
    object cdsbuscaprodutosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object cdsbuscaprodutosstatus_produto: TWideStringField
      FieldName = 'status_produto'
      Size = 45
    end
    object cdsbuscaprodutoscomplemento: TWideStringField
      FieldName = 'complemento'
      Size = 300
    end
    object cdsbuscaprodutosmarca: TWideStringField
      FieldName = 'marca'
      Size = 150
    end
    object cdsbuscaprodutosfabricante: TWideStringField
      FieldName = 'fabricante'
      Size = 150
    end
    object cdsbuscaprodutosfornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 150
    end
    object cdsbuscaprodutoscod_barra: TWideStringField
      FieldName = 'cod_barra'
      Size = 150
    end
    object cdsbuscaprodutossit_tributaria: TWideStringField
      FieldName = 'sit_tributaria'
      Size = 150
    end
    object cdsbuscaprodutosncm: TWideStringField
      FieldName = 'ncm'
      Size = 50
    end
    object cdsbuscaprodutoscean: TWideStringField
      FieldName = 'cean'
      Size = 100
    end
    object cdsbuscaprodutossaldo_loja: TFloatField
      FieldName = 'saldo_loja'
    end
    object cdsbuscaprodutossaldo_deposito: TFloatField
      FieldName = 'saldo_deposito'
    end
    object cdsbuscaprodutoscompra: TFloatField
      FieldName = 'compra'
    end
    object cdsbuscaprodutosvenda: TFloatField
      FieldName = 'venda'
    end
    object cdsbuscaprodutospromocao: TFloatField
      FieldName = 'promocao'
    end
    object cdsbuscaprodutosultimo_reajuste: TDateField
      FieldName = 'ultimo_reajuste'
    end
    object cdsbuscaprodutosultima_venda: TDateField
      FieldName = 'ultima_venda'
    end
    object cdsbuscaprodutosdes_max: TFloatField
      FieldName = 'des_max'
    end
    object cdsbuscaprodutosvalidade_produto: TDateField
      FieldName = 'validade_produto'
    end
  end
  object dsbuscaprodutos: TDataSource
    DataSet = cdsbuscaprodutos
    Left = 512
    Top = 136
  end
end
