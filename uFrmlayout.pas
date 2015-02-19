unit uFrmlayout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RzEdit, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDesignLayer, ppParameter;

type
  TForm4 = class(TForm)
    tlb1: TToolBar;
    btnnovo: TToolButton;
    btneditar: TToolButton;
    btngravar: TToolButton;
    btnexcluir: TToolButton;
    btndesistir: TToolButton;
    btninicio: TToolButton;
    btnanterio: TToolButton;
    btnproximo: TToolButton;
    btnultimo: TToolButton;
    btn10: TToolButton;
    btn11: TToolButton;
    pnl1: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    cbb1: TComboBoxEx;
    chk1: TCheckBox;
    cbb2: TComboBoxEx;
    edt1: TRzDateTimeEdit;
    edt2: TEdit;
    btn12: TButton;
    btn13: TButton;
    procedure btn11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure inicio();
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.btn11Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
//Toda vez que for iniciado ele ira seta primeiro a primeira aba
  pgc1.ActivePage := ts1;
end;

procedure TForm4.inicio();
begin
//Traz os botões para a forma inicial
  btnnovo.Enabled:=True;
  btneditar.Enabled:=True;
  btngravar.Enabled:=False;
  btnexcluir.Enabled:=True;
  btndesistir.Enabled:=False;

  btninicio.Enabled:=True;
  btnanterio.Enabled:=True;
  btnproximo.Enabled:=True;
  btnultimo.Enabled:=True;
end;


end.
