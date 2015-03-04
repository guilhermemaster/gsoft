unit uFrmkardex;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzEdit, uXEdit, Vcl.Mask,
  RzDBEdit, RzDBBnEd, uXDbEdit, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDesignLayer, ppParameter, uFrmbuscarproduto, RzBtnEdt, ppCtrls,
  dxGDIPlusClasses, ppPrnabl, ppBands, ppCache, ppVar, Vcl.Grids, Vcl.DBGrids;

type
  TTuFrmkardex = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl4: TLabel;
    cbbtipo: TComboBox;
    btn1: TButton;
    cdskardex: TClientDataSet;
    dskardex: TDataSource;
    pdbplnkardex: TppDBPipeline;
    Relatoriokardex: TppReport;
    btncbbproduto: TxButtonEdit;
    btn2: TButton;
    phdrbnd1: TppHeaderBand;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    pshp1: TppShape;
    pmg1: TppImage;
    plbl2: TppLabel;
    plbl12: TppLabel;
    pdbclc1: TppDBCalc;
    plbl1: TppLabel;
    pdbtxtdata_lancamento: TppDBText;
    plbl3: TppLabel;
    pdbtxttipo: TppDBText;
    plbl4: TppLabel;
    pdbtxtquantidade: TppDBText;
    plbl5: TppLabel;
    pdbtxtestoque: TppDBText;
    plbl6: TppLabel;
    pdbtxtnota_referente: TppDBText;
    psystmvrbl3: TppSystemVariable;
    plbl7: TppLabel;
    pdbtxtproduto: TppDBText;
    dbgrd1: TDBGrid;
    plbl14: TppLabel;
    plbl8: TppLabel;
    psystmvrbl1: TppSystemVariable;
    plbl9: TppLabel;
    psystmvrbl2: TppSystemVariable;
    btn3: TButton;
    cdskardexidlancamneto: TIntegerField;
    cdskardexnota_referente: TIntegerField;
    cdskardexproduto: TWideStringField;
    cdskardexdata_lancamento: TDateField;
    cdskardexestoque: TFloatField;
    cdskardextipo: TWideStringField;
    cdskardexquantidade: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbprodutoButtonClick(Sender: TObject);
    procedure btn2ButtonClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;




var
  TuFrmkardex: TTuFrmkardex;

implementation

{$R *.dfm}

procedure TTuFrmkardex.btn1Click(Sender: TObject);
var
produto, tipo, data, data2 : string;
passo: Integer;

begin
  passo:=0;

  if not (btncbbproduto.Text='') then
  begin
  produto:='produto like '+QuotedStr('%'+btncbbproduto.Text+'%');
  passo:=1;
  end;

  if not (cbbtipo.Text='') then
  begin
  if passo = 1 then
  begin
  tipo:='and tipo like '+QuotedStr('%'+cbbtipo.Text+'%');
  end
    else
      begin
      tipo:='tipo like '+QuotedStr('%'+cbbtipo.Text+'%');
      passo:=passo+1;
      end;
  end;

  if passo = 0 then
  begin
  cdskardex.CommandText:='select * from kardex ';
  end
    else
      begin
      cdskardex.CommandText:='select * from kardex where '+produto+tipo+data+data2;
      end;

  cdskardex.Close;
  cdskardex.Open;
  cdskardex.First;
end;

procedure TTuFrmkardex.btn2ButtonClick(Sender: TObject);
begin
  TuFrmbuscarproduto.showmodal;
  btncbbproduto.Text:=TuFrmbuscarproduto.produto;
end;

procedure TTuFrmkardex.btn2Click(Sender: TObject);
begin
  btncbbproduto.Clear;
  cbbtipo.Clear;

  cbbtipo.Items.Add('E');
  cbbtipo.Items.Add('S');
end;

procedure TTuFrmkardex.btn3Click(Sender: TObject);
begin
     Relatoriokardex.Print;
end;

procedure TTuFrmkardex.cbbprodutoButtonClick(Sender: TObject);
begin
  TuFrmbuscarproduto.showmodal;
 end;

procedure TTuFrmkardex.FormShow(Sender: TObject);
begin
  cdskardex.Close;
  cdskardex.Open;
  cdskardex.First;
end;

end.
