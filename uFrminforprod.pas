unit uFrminforprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    lbl11: TLabel;
    edtcean: TEdit;
    Label1: TLabel;
    edtprod: TEdit;
    Label2: TLabel;
    edticms: TEdit;
    Label3: TLabel;
    edtiof: TEdit;
    Label5: TLabel;
    edtpis: TEdit;
    Label6: TLabel;
    edtconfins: TEdit;
    procedure FormShow(Sender: TObject);
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

procedure TForm7.FormShow(Sender: TObject);
begin
  edtpis.Text:=Form6.pis;
  edtconfins.Text:=Form6.confins;
  edtcean.Text:=Form6.cean;
  edtprod.Text:=Form6.prod;
  edtiof.Text:=Form6.iof;
  edticms.Text:=Form6.icms;
end;

end.
