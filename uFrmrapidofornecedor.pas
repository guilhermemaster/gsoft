unit uFrmrapidofornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, RzButton, RzRadChk, RzDBChk;

type
  TTuFrmrapidofornecedor = class(TForm)
    cdsfornecedor: TClientDataSet;
    ds_fornecedor: TDataSource;
    lbl3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Button1: TButton;
    RzDBCheckBox1: TRzDBCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TuFrmrapidofornecedor: TTuFrmrapidofornecedor;

implementation

uses buscaxml;

{$R *.dfm}


procedure TTuFrmrapidofornecedor.Button1Click(Sender: TObject);
begin



                    cdsfornecedor.Post;
                    cdsfornecedor.ApplyUpdates(0);

                    cdsfornecedor.Insert;
                    cdsfornecedor.Close;
                    cdsfornecedor.Open;
                    cdsfornecedor.Insert;
                    Close;
end;

procedure TTuFrmrapidofornecedor.FormShow(Sender: TObject);
begin

                cdsfornecedor.Close;
                cdsfornecedor.Open;

                  cdsfornecedor.Append;
                  cdsfornecedor.FieldByName('status_fornecedor').Text := '1';
                  DBEdit1.Text:=Form6.cnpjemit.Text;
                  DBEdit3.Text:=Form6.nomeemit.Text;
                  DBEdit5.Text:=Form6.emitende.Text;
                  DBEdit8.Text:=Form6.bairroemit.Text;
                  DBEdit7.Text:=Form6.ufemit.Text;
                  DBEdit9.Text:=Form6.ufemit.Text;
end;

end.
