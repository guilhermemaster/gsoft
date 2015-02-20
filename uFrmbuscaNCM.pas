unit uFrmbuscaNCM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient;

type
  TbuscaNCM = class(TForm)
    cdsncm: TClientDataSet;
    ds_ncm: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    lbl11: TLabel;
    cdsncmc_codigo: TWideStringField;
    cdsncmc_descr: TWideStringField;
    cdsncmc_ex: TFMTBCDField;
    cdsncmc_tabela: TWideStringField;
    cdsncmc_aliqnac: TFMTBCDField;
    cdsncmc_aliqimp: TFMTBCDField;
    cdsncmsr_recno: TFMTBCDField;
    DBGrid1: TDBGrid;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  numero : string;
    { Public declarations }
  end;

var
  buscaNCM: TbuscaNCM;

implementation

{$R *.dfm}

procedure TbuscaNCM.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//puxa os valores selecionados para a variavel global e fecha a tela
  if Key=VK_RETURN then
  begin
    numero:=cdsncmc_codigo.AsString;
    Close;
  end;

  //fecha a tela
  if Key = VK_ESCAPE then
  begin
    Close;
  end;
end;

procedure TbuscaNCM.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//Ao aberta enter e feita a busca com o que tem digitado
  if Key=VK_RETURN then
  begin
    cdsncm.CommandText:='select * from  a_tabncm where c_descr like  '+QuotedStr('%'+Edit1.Text+'%');
    cdsncm.Close;
    cdsncm.Open;
    cdsncm.First;
  end;

    //vai passando de célula por célula
  if Key = VK_PRIOR then
  begin
    cdsncm.Prior;
  end;

  //vai passando de célula por célula
  if Key = VK_NEXT then
  begin
    cdsncm.Next;
  end;
end;

procedure TbuscaNCM.FormShow(Sender: TObject);
begin
  cdsncm.CommandText:='select * from  a_tabncm ';
  cdsncm.Close;
  cdsncm.Open;
  cdsncm.First;
end;

end.
