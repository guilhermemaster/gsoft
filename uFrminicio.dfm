object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'GSoft v1.0.0'
  ClientHeight = 264
  ClientWidth = 546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 208
    Top = 56
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'F1 - Clientes'
        OnClick = Clientes1Click
      end
      object Produtos1: TMenuItem
        Caption = 'F2 - Produtos'
        OnClick = Produtos1Click
      end
      object F3Cidades1: TMenuItem
        Caption = 'F3 - Cidades'
        OnClick = F3Cidades1Click
      end
      object F4Fornecedor1: TMenuItem
        Caption = 'F4 - Fornecedor'
        OnClick = F4Fornecedor1Click
      end
    end
    object CompraVenda1: TMenuItem
      Caption = 'Compra / Venda'
      object Compra1: TMenuItem
        Caption = 'Compra'
        OnClick = Compra1Click
      end
      object CompraporXML1: TMenuItem
        Caption = 'Importa NFe Compra'
        OnClick = CompraporXML1Click
      end
      object Kardex1: TMenuItem
        Caption = 'Kardex'
        OnClick = Kardex1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end