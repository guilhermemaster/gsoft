unit uFrminforprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    lbl11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edticms: TEdit;
    Label3: TLabel;
    edtiof: TEdit;
    Label5: TLabel;
    edtpis: TEdit;
    Label6: TLabel;
    edtconfins: TEdit;
    cdsprodutos: TClientDataSet;
    ds_produtos: TDataSource;
    cdsprodutoscodigo: TIntegerField;
    cdsprodutosdescricao: TWideStringField;
    cdsprodutoscfop: TWideStringField;
    cdsprodutosespecie: TWideStringField;
    cdsprodutosdata_cadastro: TDateField;
    cdsprodutosstatus_produto: TWideStringField;
    cdsprodutoscomplemento: TWideStringField;
    cdsprodutosmarca: TWideStringField;
    cdsprodutosfabricante: TWideStringField;
    cdsprodutosfornecedor: TWideStringField;
    cdsprodutoscod_barra: TWideStringField;
    cdsprodutossit_tributaria: TWideStringField;
    cdsprodutosncm: TWideStringField;
    cdsprodutoscean: TWideStringField;
    cdsprodutossaldo_loja: TFloatField;
    cdsprodutossaldo_deposito: TFloatField;
    cdsprodutoscompra: TFloatField;
    cdsprodutosvenda: TFloatField;
    cdsprodutospromocao: TFloatField;
    cdsprodutosultimo_reajuste: TDateField;
    cdsprodutosultima_venda: TDateField;
    cdsprodutosdes_max: TFloatField;
    cdsprodutosvalidade_produto: TDateField;
    edtcean: TDBEdit;
    edtprod: TDBEdit;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses buscaxml;

procedure TForm7.Button1Click(Sender: TObject);
begin

      Try
       cdsprodutos.Post;
  Except
  ShowMessage('Produto j� cadastrado');
  Close;
  End;

  cdsprodutos.ApplyUpdates(0);

      cdsprodutos.Insert;
      cdsprodutos.Close;
      cdsprodutos.Open;
      cdsprodutos.Insert;
      Close;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  cdsprodutos.Close;
  cdsprodutos.Open;

  cdsprodutos.Append;
  cdsprodutos.FieldByName('status_produto').Text := '0';

  edtpis.Text:=Form6.pis;
  edtconfins.Text:=Form6.confins;
  edtcean.Text:=Form6.cean;
  edtprod.Text:=Form6.prod;
  edtiof.Text:=Form6.iof;
  edticms.Text:=Form6.icms;
end;

end.
