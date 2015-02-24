unit uFrmbuscarproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient;

type
  TTuFrmbuscarproduto = class(TForm)
    lbl11: TLabel;
    edt1: TEdit;
    btn1: TButton;
    cdsbuscaprodutos: TClientDataSet;
    dsbuscaprodutos: TDataSource;
    dbgrd1: TDBGrid;
    cdsbuscaprodutoscodigo: TIntegerField;
    cdsbuscaprodutosdescricao: TWideStringField;
    cdsbuscaprodutoscfop: TWideStringField;
    cdsbuscaprodutosespecie: TWideStringField;
    cdsbuscaprodutosdata_cadastro: TDateField;
    cdsbuscaprodutosstatus_produto: TWideStringField;
    cdsbuscaprodutoscomplemento: TWideStringField;
    cdsbuscaprodutosmarca: TWideStringField;
    cdsbuscaprodutosfabricante: TWideStringField;
    cdsbuscaprodutosfornecedor: TWideStringField;
    cdsbuscaprodutoscod_barra: TWideStringField;
    cdsbuscaprodutossit_tributaria: TWideStringField;
    cdsbuscaprodutosncm: TWideStringField;
    cdsbuscaprodutoscean: TWideStringField;
    cdsbuscaprodutossaldo_loja: TFloatField;
    cdsbuscaprodutossaldo_deposito: TFloatField;
    cdsbuscaprodutoscompra: TFloatField;
    cdsbuscaprodutosvenda: TFloatField;
    cdsbuscaprodutospromocao: TFloatField;
    cdsbuscaprodutosultimo_reajuste: TDateField;
    cdsbuscaprodutosultima_venda: TDateField;
    cdsbuscaprodutosdes_max: TFloatField;
    cdsbuscaprodutosvalidade_produto: TDateField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    produto, valor : string;
    { Public declarations }
  end;

var
  TuFrmbuscarproduto: TTuFrmbuscarproduto;

implementation

{$R *.dfm}

procedure TTuFrmbuscarproduto.btn1Click(Sender: TObject);
begin
  cdsbuscaprodutos.CommandText:='select * from produtos where status_produto like'+QuotedStr('1');
  cdsbuscaprodutos.Close;
  cdsbuscaprodutos.Open;
  cdsbuscaprodutos.First;
end;

procedure TTuFrmbuscarproduto.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key=VK_RETURN then
  begin
  produto:=cdsbuscaprodutosdescricao.AsString;
  valor:=cdsbuscaprodutoscompra.AsString;
  Close;
  end;

  if Key = VK_ESCAPE then
  begin
  Close;
  end;
end;

procedure TTuFrmbuscarproduto.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
  begin
  cdsbuscaprodutos.CommandText:='select * from produtos where status_produto='+QuotedStr('1')+' and descricao like '+QuotedStr('%'+edt1.Text+'%');

  cdsbuscaprodutos.Close;
  cdsbuscaprodutos.Open;
  cdsbuscaprodutos.First;
  end;
end;

procedure TTuFrmbuscarproduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  edt1.Clear;
end;

procedure TTuFrmbuscarproduto.FormShow(Sender: TObject);
begin
  cdsbuscaprodutos.CommandText:='select * from produtos where status_produto like'+QuotedStr('1');
  cdsbuscaprodutos.Close;
  cdsbuscaprodutos.Open;
  cdsbuscaprodutos.First;
end;

end.
