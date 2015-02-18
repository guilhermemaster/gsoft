object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'layout geral'
  ClientHeight = 407
  ClientWidth = 697
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 697
    Height = 57
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
    end
    object btneditar: TToolButton
      Left = 63
      Top = 0
      Caption = 'btneditar'
      ImageIndex = 1
    end
    object btngravar: TToolButton
      Left = 126
      Top = 0
      Caption = 'btngravar'
      ImageIndex = 9
    end
    object btnexcluir: TToolButton
      Left = 189
      Top = 0
      Caption = 'btnexcluir'
      ImageIndex = 8
    end
    object btndesistir: TToolButton
      Left = 252
      Top = 0
      Caption = 'btndesistir'
      ImageIndex = 10
    end
    object btninicio: TToolButton
      Left = 315
      Top = 0
      Caption = 'btninicio'
      ImageIndex = 5
    end
    object btnanterio: TToolButton
      Left = 378
      Top = 0
      Caption = 'btnanterio'
      ImageIndex = 3
    end
    object btnproximo: TToolButton
      Left = 441
      Top = 0
      Caption = 'btnproximo'
      ImageIndex = 4
    end
    object btnultimo: TToolButton
      Left = 504
      Top = 0
      Caption = 'btnultimo'
      ImageIndex = 6
    end
    object btn10: TToolButton
      Left = 567
      Top = 0
      Caption = 'btn10'
      ImageIndex = 7
    end
    object btn11: TToolButton
      Left = 630
      Top = 0
      Caption = 'btn11'
      ImageIndex = 2
      OnClick = btn11Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 53
    Width = 719
    Height = 356
    TabOrder = 1
    object pgc1: TPageControl
      Left = 0
      Top = 10
      Width = 693
      Height = 343
      ActivePage = ts1
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'Listar'
        object edt2: TEdit
          Left = 303
          Top = 23
          Width = 192
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object cbb1: TComboBoxEx
          Left = 0
          Top = 23
          Width = 145
          Height = 22
          ItemsEx = <>
          TabOrder = 0
          Text = 'PROCURA POR'
        end
        object chk1: TCheckBox
          Left = 0
          Top = 3
          Width = 133
          Height = 17
          Caption = 'Mostra clientes inativos'
          TabOrder = 1
        end
        object cbb2: TComboBoxEx
          Left = 149
          Top = 23
          Width = 145
          Height = 22
          ItemsEx = <>
          TabOrder = 2
          Text = 'CRIT'#201'RIO'
        end
        object edt1: TRzDateTimeEdit
          Left = 304
          Top = 24
          Width = 121
          Height = 21
          EditType = etDate
          TabOrder = 3
        end
        object btn12: TButton
          Left = 501
          Top = 24
          Width = 75
          Height = 21
          Caption = 'Buscar'
          TabOrder = 5
        end
        object btn13: TButton
          Left = 582
          Top = 24
          Width = 75
          Height = 21
          Caption = 'Limpar Busca'
          TabOrder = 6
        end
      end
      object ts2: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
      end
    end
  end
end
