object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 417
  ClientWidth = 707
  Color = clBtnFace
  Constraints.MaxHeight = 445
  Constraints.MaxWidth = 713
  Constraints.MinHeight = 445
  Constraints.MinWidth = 713
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 707
    Height = 49
    ButtonHeight = 49
    ButtonWidth = 63
    Caption = 'tlb1'
    Images = DataModule2.imgmenu
    TabOrder = 0
    object btnnovo: TToolButton
      Left = 0
      Top = 0
      Caption = 'btnnovo'
      ImageIndex = 0
      OnClick = btnnovoClick
    end
    object btneditar: TToolButton
      Left = 63
      Top = 0
      Caption = 'btneditar'
      ImageIndex = 1
      OnClick = btneditarClick
    end
    object btngravar: TToolButton
      Left = 126
      Top = 0
      Caption = 'btngravar'
      ImageIndex = 9
      OnClick = btngravarClick
    end
    object btnexcluir: TToolButton
      Left = 189
      Top = 0
      Caption = 'btnexcluir'
      ImageIndex = 8
      OnClick = btnexcluirClick
    end
    object btndesistir: TToolButton
      Left = 252
      Top = 0
      Caption = 'btndesistir'
      ImageIndex = 10
      OnClick = btndesistirClick
    end
    object btninicio: TToolButton
      Left = 315
      Top = 0
      Caption = 'btninicio'
      ImageIndex = 5
      OnClick = btninicioClick
    end
    object btnanterio: TToolButton
      Left = 378
      Top = 0
      Caption = 'btnanterio'
      ImageIndex = 3
      OnClick = btnanterioClick
    end
    object btnproximo: TToolButton
      Left = 441
      Top = 0
      Caption = 'btnproximo'
      ImageIndex = 4
      OnClick = btnproximoClick
    end
    object btnultimo: TToolButton
      Left = 504
      Top = 0
      Caption = 'btnultimo'
      ImageIndex = 6
      OnClick = btnultimoClick
    end
    object btn10: TToolButton
      Left = 567
      Top = 0
      Caption = 'btn10'
      ImageIndex = 7
      OnClick = btn10Click
    end
    object btn11: TToolButton
      Left = 630
      Top = 0
      Caption = 'btn11'
      ImageIndex = 2
      OnClick = btn11Click
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 55
    Width = 707
    Height = 362
    ActivePage = ts1
    TabOrder = 1
    object ts1: TTabSheet
      Caption = 'Listar'
      object dbgrd1: TDBGrid
        Left = 3
        Top = 48
        Width = 693
        Height = 281
        DataSource = dscliente
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgrd1CellClick
        OnDblClick = dbgrd1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'idcodigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo_pessoa'
            Title.Caption = 'Tipo de Pessoa'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF/CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Caption = 'CEP'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_nascimento'
            Title.Caption = 'Data de Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'municipio'
            Title.Caption = 'Munic'#237'pio'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Title.Caption = 'UF'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone_1'
            Title.Caption = 'Telefone 1'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status_cliente'
            Title.Caption = 'Status do Cliente'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_cadastro'
            Title.Caption = 'Data do Cadastro'
            Visible = True
          end>
      end
      object chkclientes: TCheckBox
        Left = 3
        Top = 1
        Width = 140
        Height = 17
        Caption = 'Mostra clientes inativos'
        TabOrder = 1
        OnClick = chkclientesClick
      end
      object cbb1: TComboBoxEx
        Left = 3
        Top = 20
        Width = 145
        Height = 22
        ItemsEx = <
          item
            Caption = 'C'#211'DIGO'
          end
          item
            Caption = 'NOME'
          end
          item
            Caption = 'CPF/CNPJ'
          end
          item
            Caption = 'DATA DE NASCIMENTO'
          end
          item
            Caption = 'TELEFONE'
          end>
        TabOrder = 2
        OnExit = cbb1Exit
      end
      object cbb2: TComboBoxEx
        Left = 154
        Top = 20
        Width = 145
        Height = 22
        ItemsEx = <>
        TabOrder = 3
      end
      object edt1: TEdit
        Left = 305
        Top = 21
        Width = 230
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object btn1: TButton
        Left = 541
        Top = 20
        Width = 72
        Height = 22
        Caption = 'Buscar'
        TabOrder = 5
        OnClick = btn1Click
      end
      object btn2: TButton
        Left = 619
        Top = 20
        Width = 72
        Height = 22
        Caption = 'Limpar Busca'
        TabOrder = 6
        OnClick = btn2Click
      end
      object edt2: TRzDateTimeEdit
        Left = 305
        Top = 21
        Width = 121
        Height = 21
        EditType = etDate
        TabOrder = 7
      end
    end
    object ts2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      OnEnter = ts2Enter
      OnShow = ts2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl11: TLabel
        Left = 3
        Top = -1
        Width = 99
        Height = 16
        Caption = 'Tipo de Pessoa *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 111
        Top = -1
        Width = 34
        Height = 16
        Caption = 'CPF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 238
        Top = -1
        Width = 45
        Height = 16
        Caption = 'Nome *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 474
        Top = -1
        Width = 36
        Height = 16
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 3
        Top = 38
        Width = 111
        Height = 16
        Caption = 'Data do Cadastro *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 134
        Top = 38
        Width = 28
        Height = 16
        Caption = 'RG *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 259
        Top = 38
        Width = 126
        Height = 16
        Caption = 'Data de Nascimento *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 391
        Top = 38
        Width = 77
        Height = 16
        Caption = 'Estado Civil *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 3
        Top = 80
        Width = 34
        Height = 16
        Caption = 'CEP *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 132
        Top = 80
        Width = 65
        Height = 16
        Caption = 'Endere'#231'o *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl17: TLabel
        Left = 269
        Top = 80
        Width = 65
        Height = 16
        Caption = 'Munic'#237'pio *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl34: TLabel
        Left = 452
        Top = 80
        Width = 46
        Height = 16
        Caption = 'Bairro *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 3
        Top = 122
        Width = 83
        Height = 16
        Caption = 'Telefone (1) *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl14: TLabel
        Left = 134
        Top = 122
        Width = 75
        Height = 16
        Caption = 'Telefone (2) '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl15: TLabel
        Left = 259
        Top = 122
        Width = 43
        Height = 16
        Caption = 'Email *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 396
        Top = 80
        Width = 27
        Height = 16
        Caption = 'UF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object pgc2: TPageControl
        Left = 0
        Top = 174
        Width = 646
        Height = 159
        ActivePage = ts3
        TabOrder = 15
        object ts3: TTabSheet
          Caption = 'Dados do Trabalho'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl16: TLabel
            Left = 8
            Top = 0
            Width = 48
            Height = 16
            Caption = 'Renda *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl35: TLabel
            Left = 149
            Top = -2
            Width = 169
            Height = 16
            Caption = 'Nome do Local de Trabalho *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl12: TLabel
            Left = 528
            Top = 0
            Width = 101
            Height = 16
            Caption = 'Limite de Cr'#233'dito '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl36: TLabel
            Left = 8
            Top = 44
            Width = 65
            Height = 16
            Caption = 'Endere'#231'o *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl37: TLabel
            Left = 149
            Top = 44
            Width = 34
            Height = 16
            Caption = 'CEP *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl38: TLabel
            Left = 403
            Top = 44
            Width = 27
            Height = 16
            Caption = 'UF *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl39: TLabel
            Left = 465
            Top = 44
            Width = 46
            Height = 16
            Caption = 'Bairro *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl40: TLabel
            Left = 267
            Top = 44
            Width = 65
            Height = 16
            Caption = 'Munic'#237'pio *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl41: TLabel
            Left = 8
            Top = 82
            Width = 62
            Height = 16
            Caption = 'Telefone *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl42: TLabel
            Left = 149
            Top = 82
            Width = 43
            Height = 16
            Caption = 'Email *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dbedtrenda: TDBEdit
            Left = 8
            Top = 20
            Width = 112
            Height = 21
            Hint = 'Renda'
            CharCase = ecUpperCase
            DataField = 'renda'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnKeyPress = dbedtrendaKeyPress
          end
          object dbedtnome_trabalho: TDBEdit
            Left = 149
            Top = 20
            Width = 204
            Height = 21
            Hint = 'Nome do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'nome_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object dbedtlimite_credito: TDBEdit
            Left = 528
            Top = 20
            Width = 106
            Height = 21
            CharCase = ecUpperCase
            DataField = 'limite_credito'
            DataSource = dscliente
            Enabled = False
            TabOrder = 2
          end
          object dbedtendereco_trabalho: TDBEdit
            Left = 8
            Top = 60
            Width = 135
            Height = 21
            Hint = 'Endere'#231'o do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'endereco_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object dbedtcep_trabalho: TDBEdit
            Left = 149
            Top = 60
            Width = 121
            Height = 21
            Hint = 'CEP do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'cep_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnKeyPress = dbedtcep_trabalhoKeyPress
          end
          object dbedtbairro_trabalho: TDBEdit
            Left = 466
            Top = 60
            Width = 121
            Height = 21
            Hint = 'Bairro do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'bairro_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object dbedttelefone_trabalho: TDBEdit
            Left = 8
            Top = 99
            Width = 121
            Height = 21
            Hint = 'Telefone do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'telefone_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnKeyPress = dbedttelefone_trabalhoKeyPress
          end
          object dbedtemail_trabalho: TDBEdit
            Left = 149
            Top = 99
            Width = 192
            Height = 21
            Hint = 'Email do local de trabalho'
            CharCase = ecUpperCase
            DataField = 'email_trabalho'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
          end
          object dbedtmunicipio_trabalho: TxDbButtonEdit
            Left = 271
            Top = 60
            Width = 130
            Height = 21
            Hint = 'Munic'#237'pio do local de trabalho'
            DataSource = dscliente
            DataField = 'municipio_trabalho'
            Color = clWhite
            FocusColor = 13431548
            ParentShowHint = False
            ReadOnlyColor = clBtnFace
            ShowHint = True
            TabOrder = 5
            ButtonHint = 'Pressione (F8) para consultar.'
            ButtonKind = bkFind
            ButtonShortCut = 119
            AltBtnWidth = 15
            ButtonWidth = 15
            OnButtonClick = dbedtmunicipio_trabalhoButtonClick
            EnterPressF8 = False
            EnterPressConsulta = False
            Numerico = False
            CaractereDecimal = #0
            Padrao = False
          end
          object cbbuf_trabalho: TDBEdit
            Left = 407
            Top = 60
            Width = 53
            Height = 21
            Hint = 'UF do local de trabalho'
            DataField = 'uf_trabalho'
            DataSource = dscliente
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
          end
        end
        object ts4: TTabSheet
          Caption = 'Refer'#234'ncias Pessoais'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object lbl19: TLabel
            Left = 3
            Top = 3
            Width = 37
            Height = 16
            Caption = 'Nome '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl18: TLabel
            Left = 270
            Top = 3
            Width = 50
            Height = 16
            Caption = 'Telefone'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl20: TLabel
            Left = 400
            Top = 3
            Width = 41
            Height = 16
            Caption = 'V'#237'nculo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl30: TLabel
            Left = 3
            Top = 59
            Width = 37
            Height = 16
            Caption = 'Nome '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl33: TLabel
            Left = 270
            Top = 59
            Width = 50
            Height = 16
            Caption = 'Telefone'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl21: TLabel
            Left = 400
            Top = 59
            Width = 41
            Height = 16
            Caption = 'V'#237'nculo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dbedtnome_pessoal_1: TDBEdit
            Left = 3
            Top = 25
            Width = 261
            Height = 21
            Hint = 'Nome da pessoa'
            DataField = 'nome_pessoal_1'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object dbedtnome_pessoal_2: TDBEdit
            Left = 3
            Top = 81
            Width = 261
            Height = 21
            Hint = 'Nome da pessoa'
            DataField = 'nome_pessoal_2'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object dbedttelefone_pessoal_1: TDBEdit
            Left = 270
            Top = 25
            Width = 121
            Height = 21
            Hint = 'Telefone da pessoa'
            DataField = 'telefone_pessoal_1'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyPress = dbedttelefone_pessoal_1KeyPress
          end
          object dbedtvinculo_pessoa_1: TDBEdit
            Left = 400
            Top = 25
            Width = 121
            Height = 21
            Hint = 'V'#237'nculo pessoal'
            DataField = 'vinculo_pessoa_1'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object dbedttelefone_pessoal_2: TDBEdit
            Left = 270
            Top = 81
            Width = 121
            Height = 21
            Hint = 'Telefone da pessoa'
            DataField = 'telefone_pessoal_2'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnKeyPress = dbedttelefone_pessoal_2KeyPress
          end
          object dbedtvinculo_pessoa_2: TDBEdit
            Left = 400
            Top = 81
            Width = 121
            Height = 21
            Hint = 'V'#237'nculo pessoal'
            DataField = 'vinculo_pessoa_2'
            DataSource = dscliente
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
        end
      end
      object dbedtcpf: TDBEdit
        Left = 111
        Top = 15
        Width = 121
        Height = 21
        Hint = 'CPF/CNPJ'
        CharCase = ecUpperCase
        DataField = 'cpf'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyPress = dbedtcpfKeyPress
      end
      object dbedtnome: TDBEdit
        Left = 238
        Top = 15
        Width = 219
        Height = 21
        Hint = 'Nome do cliente'
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object cbbtipo_pessoa: TRzDBComboBox
        Left = 3
        Top = 15
        Width = 102
        Height = 21
        Hint = 'Tipo de pessoa'
        DataField = 'tipo_pessoa'
        DataSource = dscliente
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = cbbtipo_pessoaExit
      end
      object edtdata_cadastro: TRzDBDateTimeEdit
        Left = 3
        Top = 53
        Width = 121
        Height = 21
        DataSource = dscliente
        DataField = 'data_cadastro'
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 16
        EditType = etDate
      end
      object dbedtrg: TDBEdit
        Left = 134
        Top = 53
        Width = 121
        Height = 21
        Hint = 'RG/I.E.'
        CharCase = ecUpperCase
        DataField = 'rg'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object edtdata_nascimento: TRzDBDateTimeEdit
        Left = 259
        Top = 53
        Width = 121
        Height = 21
        Hint = 'Data de nascimento'
        DataSource = dscliente
        DataField = 'data_nascimento'
        CharCase = ecUpperCase
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        EditType = etDate
      end
      object cbbestado_civil: TRzDBComboBox
        Left = 391
        Top = 53
        Width = 144
        Height = 21
        Hint = 'Estado civil'
        DataField = 'estado_civil'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object dbedtcep: TDBEdit
        Left = 3
        Top = 95
        Width = 121
        Height = 21
        Hint = 'CEP'
        CharCase = ecUpperCase
        DataField = 'cep'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyPress = dbedtcepKeyPress
      end
      object dbedtendereco: TDBEdit
        Left = 132
        Top = 95
        Width = 131
        Height = 21
        Hint = 'Endere'#231'o'
        CharCase = ecUpperCase
        DataField = 'endereco'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object dbedtbairro: TDBEdit
        Left = 452
        Top = 95
        Width = 110
        Height = 21
        Hint = 'Bairro'
        CharCase = ecUpperCase
        DataField = 'bairro'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object dbedttelefone_1: TDBEdit
        Left = 5
        Top = 144
        Width = 121
        Height = 21
        Hint = 'Telefone 1'
        CharCase = ecUpperCase
        DataField = 'telefone_1'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyPress = dbedttelefone_1KeyPress
      end
      object dbedttelefone_2: TDBEdit
        Left = 132
        Top = 143
        Width = 121
        Height = 21
        Hint = 'Telefone 2'
        CharCase = ecUpperCase
        DataField = 'telefone_2'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyPress = dbedttelefone_2KeyPress
      end
      object dbedtemail: TDBEdit
        Left = 259
        Top = 143
        Width = 209
        Height = 21
        Hint = 'Email'
        CharCase = ecUpperCase
        DataField = 'email'
        DataSource = dscliente
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object dbedtmunicipio: TxDbButtonEdit
        Left = 269
        Top = 95
        Width = 121
        Height = 21
        Hint = 'Munic'#237'pio'
        DataSource = dscliente
        DataField = 'municipio'
        Color = clWhite
        FocusColor = 13431548
        ParentShowHint = False
        ReadOnlyColor = clBtnFace
        ShowHint = True
        TabOrder = 9
        ButtonHint = 'Pressione (F8) para consultar.'
        ButtonKind = bkFind
        ButtonShortCut = 119
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = dbedtmunicipioButtonClick
        EnterPressF8 = False
        EnterPressConsulta = False
        Numerico = False
        CaractereDecimal = #0
        Padrao = False
      end
      object cbbuf: TDBEdit
        Left = 396
        Top = 95
        Width = 50
        Height = 21
        Hint = 'UF do cliente'
        CharCase = ecUpperCase
        DataField = 'uf'
        DataSource = dscliente
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object marcacaostatus_cliente: TRzDBCheckBox
        Left = 474
        Top = 21
        Width = 44
        Height = 15
        DataField = 'status_cliente'
        DataSource = dscliente
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Ativo'
        TabOrder = 3
      end
    end
  end
  object cdscliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    RemoteServer = ponte.conponte
    OnPostError = cdsclientePostError
    Left = 592
    Top = 160
    object coluncdsclienteidcodigo: TIntegerField
      FieldName = 'idcodigo'
    end
    object coluncdsclientenome: TWideStringField
      FieldName = 'nome'
      Size = 150
    end
    object coluncdsclientecpf: TWideStringField
      FieldName = 'cpf'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object colunr: TWideStringField
      FieldName = 'endereco'
      Size = 150
    end
    object colunr1: TWideStringField
      FieldName = 'status_cliente'
      Size = 45
    end
    object colunrr: TWideStringField
      FieldName = 'cep'
      EditMask = '00000\-9999;1;_'
      Size = 45
    end
    object colun_nascimento: TDateField
      FieldName = 'data_nascimento'
      EditMask = '!99/99/00;1;_'
    end
    object coluncdsclienteuf: TWideStringField
      FieldName = 'uf'
    end
    object colun_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object colun_civil: TWideStringField
      FieldName = 'estado_civil'
      Size = 45
    end
    object coluncdsclienterg: TWideStringField
      FieldName = 'rg'
      Size = 45
    end
    object coluncdsclientemunicipio: TWideStringField
      FieldName = 'municipio'
      Size = 100
    end
    object coluncdsclientebairro: TWideStringField
      FieldName = 'bairro'
      Size = 45
    end
    object colun_pessoa: TWideStringField
      FieldName = 'tipo_pessoa'
      Size = 45
    end
    object colun_1: TWideStringField
      FieldName = 'telefone_1'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 45
    end
    object colun_2: TWideStringField
      FieldName = 'telefone_2'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 45
    end
    object coluncdsclienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object coluncdsclienterenda: TFloatField
      FieldName = 'renda'
      DisplayFormat = 'R$ ###,###,##0.00'
      EditFormat = 'R$ ###,###,##0.00'
    end
    object colun_trabalho: TWideStringField
      FieldName = 'nome_trabalho'
      Size = 150
    end
    object colun_trabalho1: TWideStringField
      FieldName = 'endereco_trabalho'
      Size = 150
    end
    object colun_trabalho2: TWideStringField
      FieldName = 'cep_trabalho'
      EditMask = '00000\-9999;1;_'
      Size = 45
    end
    object colun_trabalho3: TWideStringField
      FieldName = 'uf_trabalho'
    end
    object colun_trabalho4: TWideStringField
      FieldName = 'bairro_trabalho'
      Size = 150
    end
    object colun_trabalho5: TWideStringField
      FieldName = 'municipio_trabalho'
      Size = 150
    end
    object colun_trabalho6: TWideStringField
      FieldName = 'telefone_trabalho'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 45
    end
    object colun_trabalho7: TWideStringField
      FieldName = 'email_trabalho'
      Size = 45
    end
    object colun_credito: TFloatField
      FieldName = 'limite_credito'
    end
    object colun_pessoal_1: TWideStringField
      FieldName = 'nome_pessoal_1'
      Size = 150
    end
    object colun_pessoal_2: TWideStringField
      FieldName = 'telefone_pessoal_1'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 45
    end
    object colun_pessoa_1: TWideStringField
      FieldName = 'vinculo_pessoa_1'
      Size = 150
    end
    object colun_pessoal_3: TWideStringField
      FieldName = 'nome_pessoal_2'
      Size = 150
    end
    object colun_pessoal_4: TWideStringField
      FieldName = 'telefone_pessoal_2'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 45
    end
    object colun_pessoa_2: TWideStringField
      FieldName = 'vinculo_pessoa_2'
      Size = 150
    end
  end
  object dscliente: TDataSource
    DataSet = cdscliente
    Left = 584
    Top = 216
  end
  object pdbplncliente: TppDBPipeline
    DataSource = dscliente
    UserName = 'pdbplncliente'
    Left = 584
    Top = 280
  end
  object Relatoriocliente: TppReport
    AutoStop = False
    DataPipeline = pdbplncliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Users\Windows\Documents\Guilherme\Progrmas em Delphi\Gsoft\la' +
      'yot_cadastro.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 584
    Top = 344
    Version = '15.03'
    mmColumnWidth = 0
    DataPipelineName = 'pdbplncliente'
    object phdrbnd1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object plbl1: TppLabel
        UserName = 'plbl1'
        AutoSize = False
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 15990
        mmWidth = 14363
        BandType = 0
        LayerName = Foreground
      end
      object pshp1: TppShape
        UserName = 'pshp1'
        Brush.Color = clScrollBar
        Pen.Color = clInactiveBorder
        mmHeight = 15686
        mmLeft = 0
        mmTop = 189
        mmWidth = 191634
        BandType = 0
        LayerName = Foreground
      end
      object plbl3: TppLabel
        UserName = 'plbl3'
        AutoSize = False
        Caption = 'Tipo de Pessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 16085
        mmTop = 15990
        mmWidth = 25787
        BandType = 0
        LayerName = Foreground
      end
      object plbl4: TppLabel
        UserName = 'plbl4'
        AutoSize = False
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 42632
        mmTop = 15990
        mmWidth = 11187
        BandType = 0
        LayerName = Foreground
      end
      object plbl5: TppLabel
        UserName = 'plbl5'
        AutoSize = False
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 69586
        mmTop = 15943
        mmWidth = 17815
        BandType = 0
        LayerName = Foreground
      end
      object plbl6: TppLabel
        UserName = 'plbl6'
        AutoSize = False
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 94041
        mmTop = 15875
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object plbl7: TppLabel
        UserName = 'plbl7'
        Caption = 'Relat'#243'rio de Clientes Cadastrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 1852
        mmTop = 1588
        mmWidth = 95603
        BandType = 0
        LayerName = Foreground
      end
      object plbl8: TppLabel
        UserName = 'plbl8'
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 163873
        mmTop = 1588
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object psystmvrbl1: TppSystemVariable
        UserName = 'psystmvrbl1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174055
        mmTop = 1580
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object plbl9: TppLabel
        UserName = 'plbl9'
        Caption = 'HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3528
        mmLeft = 163139
        mmTop = 6540
        mmWidth = 9789
        BandType = 0
        LayerName = Foreground
      end
      object psystmvrbl2: TppSystemVariable
        UserName = 'psystmvrbl2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 6350
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object plbl10: TppLabel
        UserName = 'plbl10'
        AutoSize = False
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 125379
        mmTop = 15875
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object plbl11: TppLabel
        UserName = 'plbl11'
        AutoSize = False
        Caption = 'Data de Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 141112
        mmTop = 15875
        mmWidth = 30049
        BandType = 0
        LayerName = Foreground
      end
      object plbl13: TppLabel
        UserName = 'plbl13'
        AutoSize = False
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 171470
        mmTop = 15875
        mmWidth = 17576
        BandType = 0
        LayerName = Foreground
      end
    end
    object pdtlbnd1: TppDetailBand
      Background1.Gradient.EndColor = cl3DLight
      Background1.Gradient.StartColor = cl3DLight
      Background1.Gradient.Style = gsHorizontal
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object pdbtxtidcodigo: TppDBText
        UserName = 'pdbtxtidcodigo'
        DataField = 'idcodigo'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 1678
        mmTop = 505
        mmWidth = 13418
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxttipo_pessoa: TppDBText
        UserName = 'pdbtxttipo_pessoa'
        DataField = 'tipo_pessoa'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 2910
        mmLeft = 16140
        mmTop = 604
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtnome: TppDBText
        UserName = 'pdbtxtnome'
        DataField = 'nome'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 42632
        mmTop = 681
        mmWidth = 26080
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtcpf: TppDBText
        UserName = 'pdbtxtcpf'
        DataField = 'cpf'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 69850
        mmTop = 681
        mmWidth = 24191
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtendereco: TppDBText
        UserName = 'pdbtxtendereco'
        DataField = 'endereco'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 2910
        mmLeft = 94106
        mmTop = 604
        mmWidth = 31372
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtcep: TppDBText
        UserName = 'pdbtxtcep'
        DataField = 'cep'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 124884
        mmTop = 529
        mmWidth = 16064
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtdata_nascimento: TppDBText
        UserName = 'pdbtxtdata_nascimento'
        DataField = 'data_nascimento'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 140956
        mmTop = 570
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxttelefone_1: TppDBText
        UserName = 'pdbtxttelefone_1'
        DataField = 'telefone_1'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tw Cen MT Condensed'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3024
        mmLeft = 171552
        mmTop = 570
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
    end
    object pftrbnd1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object pmg1: TppImage
        UserName = 'pmg1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000003C
          000000380806000000A16D9B64000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00001874455874536F667477617265007061696E742E6E657420342E302E338C
          E6975000001771494441546843BD5A09589565DA4E5CCBAC9C6CD16AFA47272B
          5B9C9669FC9BBF9AA652736A26B3CCDC3071C15DC08545451145147103641114
          5191451190C5008F72D8444145944540165734C50D50CFF99EFFBE5FFC667099
          4605C7EB7AAEEF78CEF77DBCF7733FDBFB3ECF238F3CA47F22D2222323E3D1CC
          CCCCE78C4663D714A3B167C6DEBD7FCECCDCDB2F2D2DADDFAE5D0D929696D9CF
          6030F64A4949E9999464EC1A633074E2730F6959CDFFDA9253A79E351A33BF30
          1AD35D5353D337A66564ED8614A467ECB99891B9A77ECF9EBD929DBD4FC9DEBD
          39B207D7CCACECDACCCCEC8B597BF616646466271B76A76E34EC36BA47C5C47C
          161E1EFE78F3AFB2896F249BFBF6E5BD969E9EEEBE7BB7F1C8EED4B4D3C6B48C
          EB00280021D900B62F67BFE4E41E90FDFB0F36C8813C3940397848C9C1BC7C75
          E5F7BC0FF79BA0905306C3AEACB8B8B8B978F79B4D5C66D31F37180CAD727272
          BAA4A6A52FDC69D85D63D8956A0250D181923D02E6FF296052FD5F17FEAE0B95
          B2775FAEE44219B72940CBCD3D604A4D4DAB494848F04C4C4C7CC9CFCFAF75D3
          577F9F6F484A4AEA9EB063C7BCF8F8C473F1093BE4E7A414494E3108802B0178
          4935A64B5A7AA602AAB34C40B70B1905280598F7E94AA05590F183603E2FEF90
          E4E4E4CAAEDDBBCB530C06F7E8F8F8B761EE2DEF73D9F77F3B587D3C2E2E7162
          54746C6E4C6C9C392E3E511A4B42E2CF0A3C41EFDA6D14F8B2646464491641D3
          6F018A200EE51F91FCC30592CF2BE4D0A1C3CAACF91B154225E80AE073FBF09C
          CE3C14A119D3320B626262C6633DEDEE1FC53D3E8197778A8E89D9B065EBB6CB
          D131DB657B5C82F01ABB3D5E08342979A7180014E6D7C02C7D58074A93A52F63
          E1BA10D861802E2C2C968282223972A4104A20F87C80A73F1F54BECFFB099AAE
          4045E44139F4FF3D7BB22F474545073D14D0DBB76F7F3932327253C4962D1A41
          825DD9161DAB40EFF83959314A13D6D924389AE9012CBAC124F395108C2EFC9E
          BF73F13AF0A2A222802FC0FF0FC30A000CF7E88C2BD0371548ABE0FBA0540D3E
          ED778F9CDDDB6DB1B1B11F6D8D8ACE8988DC2A5BB7C5083E2BB034659A2F4D97
          8C32E5D0CF188509EAC89102292A2A96929212292B2B93F2F272A9A8A8F8A7F0
          FFC78E1D93D2D252DCD70094D7E2E26225649D8A508C328233A04139B404CACE
          9DBB243070AD808CF07B43F21FEE62BAC1CBFA6E0E8B3C1C161EA9456EDD26E1
          5BA3240AA019A818A408961198C146075A5858A84010506565A5545555A9EBD1
          A347152BD9D988DCF06B9AFCFEFDFB154802D7C1F33E2AA9B4B40CBF1D6D3075
          304A051C3D5A0A6594481214BD6A95B7AC591324D1D1D1CD031869A073E8E630
          E3A6D0308DEC8645442A7669C6F457FA2A17BD6F5F8E324D32CA45565410E471
          3979F2A46218915C7C7DFDC4DD7DB1CC9B375F66CD9A23F6F68E326DDA0CB1B1
          B1159BA9B632DB698E0407AF8785E42865E9A06911FCAC2B904AD9B163872C58
          B050162D5A2CEBD6AD17B85AD301EFDBB7AF7554D4B6551B36860AD895D0CDE1
          8260A502147D96CC3680CD553E4A60E5E5C7E4F8F1E3525E51A5BE8B849256AE
          F492254B9662816E0AECECD9CEE2E0E024D3A7CF94A9003A61C224193BDA5A46
          8EB092614386CB90214364CE1C6728291E4A3CA098A6859C387102C04B64F3E6
          CD50960394365BBD73EDDA60D9B46953D30147444458132CD8958D9B364B78C4
          161591099639361D2649B04C275C0859255846D784C424590BCDFBACF697152B
          5689A7E77259BA7499787878CAE2C51E8A99850B17C9FCF90BC4D9799E3839CE
          92E9763364CAA4A90A3C817F3F60A0D8D9DA49647884141C392287F3F3C5CBCB
          47A64CB1518A9A31C35EDCDCDC6139FEB261C3869026F930FCF64F6BD7AE3D11
          B26193E8A069CA0C52290814ACA61831E98F64A0B2B21C604F487A7A1658DD26
          EB43422560CD3A000E105F3F0816E5E3E3AB164CC6972D5BA15877775FA280BB
          CE5F28F3E7B9CADC39F36496E36C99316DA6D84CB19531A3C6C888E196B260BE
          ABD8CF98293F8D1829A3F0DDB87113E00A76E2EABA107EEC15B375EBD66E0F0C
          98E5E2FAF51B37AF0B5E6F26E0F5211B6F61573765A61C069BF28A72A93E5B8D
          A0B50FFE1D038B88805F6D94A0A0F5B26E6D08AEC1121010A8407B7BAF5680C1
          B806C01A006B64890BA7B93B03307DD9D1DE09001D14703B9B690AF8B7DF0C90
          41037F9461432DC5CA6AB44C9E3C55F3F4F4FCD9D7D7B7F30383E5835BB66CE9
          1518B4EE58F0FA0DB22E3844314CDFD5D965FA618E659E6414BE50532365B8C6
          27244AE49668053864C36698D96659CF77AC0B360505AD3DEDEF1F70D8DF7F4D
          5A50D0BA2400F601601F98F81A6F6F6F234C3C67FE7CD7A373E7CE3B0FC09A0E
          9866DE0078ACF4EBDB4FBEF97B7F19F8FD0F327CF8883A2727A788D0D0D0979A
          0496EC86848438AD090C32116C1002C2E6B008957313772435042A247E3D989C
          397316BE5B0533DF8D422441010E0BDF8A6710E442C34E464444624DA1560834
          9FE2DDFFC3F733D5355EA4B3B3B3457E7EFE6F0203037BB8BB2FEDE7B6C06D8E
          8BCBFC6C077B47F374BBE9623BD54E01FEF493BFCA977DFA82E1A1E7EDEDED9D
          C2C2C29E6912583E1C1515F5547070701A810620BF9165062B4666A621E5BB8A
          DD2328248EA9927027C0C6C5EF8052E264EBD65880DE265151319B1007DEDBBE
          DDD8F17E17850D411B7777F72E1E1E1E5F38393A6593E1512347CBFFF6FA102C
          7F593869D2A4BECD7640E0E717FC5B00AD27607FF81D7D38724B94CABB2C32D2
          0098C5852A2C503961B30E652402EC761423DBCD31517185F1F13B3F2393007A
          0B93F70B9C96808AB1D3ECD9B3FDADACACAE7CFCF1C795B6B6B67D6EB790FB7D
          EF2DF7C34C06FBFAF92B7629F45F46675655AC955951B16464B02A2A3EAAD28F
          62366ABB2936367E1B8E695E6DD60561753479F8AB25C0BED32470777B18F9CC
          CFCF7F8D4A2504CC1CCC3292FECBDCCBDD0A4B3C563E070EE65D88898D27B312
          17B7232C3EDEF062B32FE861BF10267C4807BC064539AB2B062CBDB262EE65F9
          C8DC9B94B4736734D8C5B6D088C380A71FF6DA1EF4FDB0380B4D3BD0FEAECFFB
          FAAD2922E0D5C899484D0AB05E5DE19CEA663A2A20C3257171F1BBE36213CAE3
          E3937B3CE8621A3FA755EFED7C66F9B093E7977C597DC1B37775CDCACFAA2F7A
          7F5C7DD9B757F565FF3F555FF5EF555DEBFF47C8FBD5B501EF56D705BC535DEF
          FF56759DFFDBB8BE83EBFB903F3588DF07D5B5BE1F54D7AD7EAFFAA2CF87672F
          AD1B105A63F4B93380AEF4F2F98F80B9730160A3C1905A9B909064CB9ABB5900
          9FCCED7175DCF39A69A48598AD21535A88361DE264219A734BD15CDA89B6A083
          680B3B8AB6A89368EECF89B6F83931434C8B3B8B79E94B625EF63B312FEF26DA
          725EBB8A7876C3F545B9B2FA8F5135894B7F73C73ABDBC5717D17F7586E9C37A
          0E26C33469EE4F8B8B8F1A77198C070D86F4D79A032CDFA19DCCEF7179E28B9A
          D9AAA55CB7B41093550B318F07605B880340CF410A07682168B7A700B813C03E
          2F66F767C4ECD6514CB86ACBBA8969E56B625ED11DD757C484AB19DFD5AEFE73
          544DC66D8091FC1F47C17F9E807D56FB097D989B06062D1EDF3068F1708D410B
          7BD453A9A91908A062D19C80AF4EEAA29947B5901B431F116D044002B0D9F611
          313B8271E7368A61B3DBD38A55F3922EA22D79112C77568C9BA904CF2E625A05
          C05EAF8BB692D25DB415BF973ADFBB00C646FC8588C82D37C82E01EB79584F4B
          DC34302D71C3C0820381EB95E602FB4F86A774D6CC635B886938008F04B31371
          9D01C073007E3E4C1A4CD28C65E98B22305FA1F9E2AA2D7941CC006D2270AF57
          C5ECF39668DE6F88AC7A43CC60BCD6FFA3282D23E0569306004BB069F2C6AE86
          8019BC5869E985072B2D161E3C62E1C9437171A94D7303BE32050C8F059B6477
          14640A00DB43E6B616CDF57198F1B3A22DFD2D5803735E6F00D45B625E052697
          7505E8CE6272FB8D983C5F16CDE70F00FD07FCDE130A78536A033FBD13304E12
          C2B76C89D2E0C72A0F9369EE69B9F96F1CA9B907A61F1715951870F8D06C47A4
          F4E1AB535FD0B471003CAEA50A5A667B7C9ED3464C0BDA83C1A745F3780101E9
          F7000B067DDF13B3DF1F1530F38A57F1DB4B30ED8E72CDED1991D5EFE2B7F7D5
          3D267CAE5BD7E756C0AC8E8E1D2B2F0CDD1CA140925D324D3F66E06A5C6D71F3
          C0F36344EB6A94989F3517CB1AA2F4451B303C01206D218E008CE86C82299B00
          C4C4000576CD2B5E81A9BE2DE6D5000C409AF7DB2208501ACC5C03C3D75D9F80
          127A8A29A09788EFFB5217DC57EAC2874569F961FF32691C9FFC16802B366E0A
          53F5B3CE3081F3FF3CCFD2EB696E2078568C837433825710CE9A9E6C0ED097F2
          937B54D9BCA19D9BF49C9CB77D566A6674924BB33ACA25E78E72C5E569B9EAFA
          8C5C5DD445EA57758519771781A9D2A45570BA69D2DAC227A1A04711B85E1773
          C087620AFA5C6AE3ACA52E6CF0AD80CF9C39F37C69E9B1726E05D7876C52018B
          A5A56ED62C401A476B062F76088E14145C415D3D8DD54C5341E7062EE8B1BBFF
          73DA9E01ED25E787C7E4C08F8F4AFEB0765230A2AD1C1DD556CAC6B49113F64F
          491D732C00CAB2DFABA0254B11BC68EA3079717D4CF9FB75CFAE620AFC58EAA3
          474B6DC420B9123664839C31FCAB0B89B3A857C170154191518225BBFA264267
          59DF263227F30C9AE75930EB4B60D9AEA99B86E240871EE95F77D072BE692179
          035AC8E1812DA4F8C716523AEC112943315235B18D5C8159DFF0785E8429C9A3
          0B80E28AEF84FEBDB083C83C04B7D91672DDE365B916D247EA92ECA43EF013B9
          123A70C52DEB6BF0E18AC329C9BB71CE8B53C0D07065D6F461B24DBFD659D6CF
          A369DA39B9FB557F0869EA2AAAAFD1C8E56D1E946902DEF36D7BEDE0F7165230
          A885940CB19052CB965205B095531E954B1E9DE5861BF230FC99858650507599
          173E81FCDC5EB479F075FAFC2CA4B565AF487DC264A9DDF08D5CF77EEB7ACDB6
          31F677ACABBCBC72338E6E34FF80B50018A252526396F5B32DB658B87B625EE6
          714F4ECE011423AAC3700EA96D163A060FB46B22E0FD3FB4D70AC0EA51B2FA93
          85948F86195BB7942BCB5F937A8F67C5E4FA28D2D363626699E9D2B641E6A120
          716E25E659A8CE1C5B23D0B595FA808FA43ED9516E78F594FA65AFD75CDEB5E0
          8B3B00A33310825E8E46F3D57D97A0C9B22EDC1F332FEBA0B947C6C802361560
          FA103B038575F0E94CC824BCEFCEDAF557E82F0F71E89133FC19EDA8653BF8EB
          9352B1A4AF9C09B795D34EDDA4CEF34DA9F7794DAE2D41149EDF46CCF300702E
          5217406A88E6DA4C447408EBEEEB2E1D60C2FDE59AFF07720D79FBB2D7FB87B5
          826D1DEE06D8ADA8B8D84C30DE283CBC909678AE45B03C01E1EE8957A6291EEA
          F13E75466D4895346326EAEC1C558501344CBCE82A227826FA4963D039B8A763
          9EF8152BDA9EDBE5E3F84BE6A60DA772932E9F2ECE93AAB252395B9C2117232D
          51177793FAA59D00A24383E9CE01488245AD6D9E8A3436C3426ECC69275756BE
          27577D3F12D3DCC7A4CEE531B9143B65E35DF58C48DD0D81EB127DD3D73F5096
          7BAD56B9982C132CC1D39779256832AD772178FCC340C6C379B633596F735705
          DFD6B0D1B806538F84CC4471D30B4AE8097F7F8982C3C0DFE1FA2E2CA23F82DF
          ECA2C2C25DC545C51A4F4329A500CC16CB99FC44B9B4F66FF0E14E523F17C10B
          667DC309A05963DB01B00DFCD601DFBB75938B019FC90507142050C0F945DD6A
          257FC31FFEAD61818D20E4576D2382D64A005EBE7C95AC06DB044D760956171D
          34AB30BD8BA877FD99B654031BA92B1F2D4F1E1A1414164921DA31901BF87C8A
          82EFAB691137AD424AD0C1282929A58520181E565DFF2385880F4770FE7D2059
          CE877C2F579D1F97F3535BCBF9E96DA56E462B31D98159BB5652E7FCBC9C717B
          57CE4C7D527E01E3358EEDA1A4FECBD1DAF8F729137EF7494969D92FC6B42CF1
          F2F693E5CBD026418B6439DA250C5A044EA12FEB579E6AB212D39BE27AF79F8C
          379EF760375F8D36DC9CE1601EA7D00D58AA5298E6D816E57DD9B83F534DFBE0
          5818C0F30EE54951B6414E6F1C25D536EDA57C542BA9B46E23576DDA4AED8CA7
          A4DAE565A9B2ED20E76C5B498D432B39B7EA9D828BB1937F7D8373E1C285A7D0
          234A2EC06E2832324A9679AE90A537FB418BD11AD14D9A818D0C13343F3365B1
          1AE3DEB931709A3AA33999E799369540518D7358410E2A3676307865F5D6688C
          49D2F1BB115900DB5031A41AB135C5F4402E1A777B8C5215E624A5A39E90BCEF
          2CE4D0E07672CEE559A99ED55ECE0268B5530BF9655E47F38530CBF972EC1EC6
          2150848C80DFD4B3B3C0DEABDE03624B84C2063481EBA0B967E6675E59A9A9A6
          391867506339CABCCDE0C6DD963E25D0789A879F099EFE4F61AAA342A8202A8A
          4AA3D5F0F9F4744C08F1FEB474B8E67CC91EF28C18FB324FB791D3332DA47A46
          4B39EDD0522A17BD9F72397DC9B3F754139CC260197C390EC1C49C95B547F9B0
          DEEDD37B40EC04B23021480A19D685CC7387A583A67F13B03EE1733BDB645C07
          4785D022782F01F23982E577CA3210503122C58EBF042C5B2C3F0FEF2EC6DE2D
          A57C02F2F5B41672627A1B295BFCDEB1AA00ABB7EF09AC7E1322E4BB901AF67C
          53F0C7D9EE642FD6C5051DBEB92EE8DFCE15675CD9FADC087F26ABF465A62B7D
          FE83579AB83EF442A67972C2A24507423014FE9FC2DFF4292082A422C8B6EE0A
          493FEF9479F8BBE326DA8893CD14891AD455D27B5B4899756BA9B46B2DC75CDE
          292D09B07CEFBEC0F266969A30ED8168A7DC60C4DC8185B0B5A9036653DBC969
          B66A6CCF9CE9208BF01B7A498A551D2099D501F24AC0FA78133F375640E3192F
          DDC775A03B0D603C3945BC5679C9B7FDBF13CB21435583CD69EA64D936E47553
          6A9F965AD998765234EB8D1347575BFDA549353DA2F66CE4CFBA861ED22ED5D7
          65039B801DD1C4265876F2EDD8F4B29DA6AC2018A98BC01301529FD5D24D5537
          4DFA294F4F74501C9D50115DF970064C7A271417ABF2BF8383A3F4FBB29F7CFE
          D7CFC57298A5EA1B2BC01899D8B0D0DE3765F85B5987A676CF2DF41BF9CDAFA6
          A07BA1FDDCB9734FC09F57606EA396E69D999925684DFC736C815D7802265876
          E5D99DA7F07BB2CE7E30151003F3E6FC16478E380372FAF41935FF71F0609E64
          007C0A18DC8A619900ECD05C5D5DF13E5B7609A54FEFDE00FA997C37E03BD523
          E684C0D4C9360A347AC7262878F091608FEEA90B8761837C6B57F25EF0DDF51E
          98F6D398B170418564E628D1C18307D11D8C56A0094C679740274E9C2CE3C74F
          146BEBF13276EC3825ECD6F3370EB07090057D608C3E78A0F3BF10163253264D
          9C0430A365F8D061F2DDB703E46F60B3F7E75FC85FFFF2A97C85CF569623643C
          DE3769C264993C718A1205DAC6EE849393F3870F0CECD71EE44C2318B106DB17
          005A63332D2B2B0B731B4BB1687B357E808EBC024C80043C1A3D5DB63939AC62
          396C44C3C0CA8F4395FCF8C360F9E1FB4132003EC926F7D77FFB9AAD50D5FFED
          F3456F751D3CE847B11E632DE3C68E07E0093261DC44993861A23661C2842B0E
          331DB27D7C7CDE6C3656EF069E2D5080FE12A0E3C1F67536D4B0FF45230D9B0D
          982E7D5A073C060B1D65354681FDC97224D8B394A1838701C4100594032B3AD8
          BF7FF50FF9AADF57F2F7AFBEC658437F05D4EAA7918AF5B1A3C7AA211782E654
          80B797F7F98080807137DBB10F85DC3B5E7AF6ECD92E30F129005EC5C29E66CE
          06B9D198266161E16A5E832C8FC21CC6EDEC724663E0773FC074BF57331BFDFF
          F1AD024FC68721FAFE04F31D39E2275886959271D6E35003B8CBB66DD1F0F50C
          6E24AEA14E980E66D97FFEEFFDC31F6C8DDD554F44F174E4EB1B1C2B24E36C94
          B37FCC964C280A920598CEA1390E47741D3CA8C18C290448D326F314465F4EEB
          10ECD4C953640906D822A0BCEC3DD9A8B55143DF9CD4C3DFCBE271D47F0FE96D
          7F898D349C78BE0BC663CA31CE03E0750D537425EC3F292570B11C2F4C4E4EE6
          C49C1A74E1548F1F2A350CB9C8FAE0608942848699AAD911CE5BEABBA79BD378
          57614D95F81BD1A74F9FC6996C3345E3A6688DA7969595E75E387EFCA435460E
          57017C1ECEC86ACACACACD5400FBC91402A0226E152AA741384789D3534A6D59
          59452E70861F3F7E6A0498C51165D34F469B82F1DF3E8B85B5031BAF60911F54
          569EE88FCF01F81C0D2986F99BF4695A7D935F5E517903DF91C488F2F2E37E30
          D909B09AFFABA838D3ADA6A6E6BE8E891E0AA0FB79295941506B0BB08FC2E71F
          E7C6048C3FD758F81D0B1C9C86B4E3BDCD3110F36B6BFC7F140BF100A10A5675
          0000000049454E44AE426082}
        mmHeight = 16253
        mmLeft = 1852
        mmTop = 529
        mmWidth = 17463
        BandType = 8
        LayerName = Foreground
      end
      object plbl2: TppLabel
        UserName = 'plbl2'
        Caption = 'GSoft v1.0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 19315
        mmTop = 11906
        mmWidth = 24694
        BandType = 8
        LayerName = Foreground
      end
      object psystmvrbl3: TppSystemVariable
        UserName = 'psystmvrbl3'
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 188119
        mmTop = 12700
        mmWidth = 9525
        BandType = 8
        LayerName = Foreground
      end
    end
    object psmrybnd1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object plbl12: TppLabel
        UserName = 'plbl12'
        Caption = 'Total de Clientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 1058
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object pdbclc1: TppDBCalc
        UserName = 'pdbclc1'
        DataField = 'idcodigo'
        DataPipeline = pdbplncliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'pdbplncliente'
        mmHeight = 3780
        mmLeft = 27632
        mmTop = 984
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground
      end
      object pln1: TppLine
        UserName = 'pln1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 176
        mmWidth = 191559
        BandType = 7
        LayerName = Foreground
      end
    end
    object pdsgnlyrs1: TppDesignLayers
      object pdsgnlyr1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object prmtrlst1: TppParameterList
    end
  end
end
