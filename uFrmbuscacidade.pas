unit uFrmbuscacidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    edtbuscar: TEdit;
    btn2: TButton;
    lbl4: TLabel;
    dbgrd1: TDBGrid;
    cdscidades_estados: TClientDataSet;
    dscidades_estados: TDataSource;
    colun_estadosid: TIntegerField;
    colun_estadosnome: TWideStringField;
    colun_estadoscodigo_ibge: TIntegerField;
    colun_estadosnome_1: TWideStringField;
    colun_estadossigla: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1ColEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtbuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    cidadenome :string;
    estadonome : string;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

//Limpar campo de busca
procedure TForm3.btn2Click(Sender: TObject);
begin
    edtbuscar.Clear;
end;

//setar os vampos selecionados nas vatiaveis publicas
procedure TForm3.dbgrd1ColEnter(Sender: TObject);
begin
      cidadenome := colun_estadosnome.AsString;
      estadonome :=  colun_estadossigla.AsString;


end;

procedure TForm3.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //senta para o campo de texto
  if Key = VK_F8 then
  begin
    edtbuscar.SetFocus;
  end;

  //fechar tela
  if Key = VK_ESCAPE then
  begin
    Close;
  end;

  //setar os vampos selecionados nas vatiaveis publicas e fechar a tela
  if Key=VK_RETURN then
  begin
    cidadenome := colun_estadosnome.AsString;
    estadonome :=  colun_estadossigla.AsString;
    Close;
  end;

end;

procedure TForm3.edtbuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

//faz a busca no que foi digitado
  if Key = VK_RETURN then
  begin
    cdscidades_estados.CommandText:='select * from cidades join estados on cidades.estado_id=estados.id where cidades.nome LIKE '+QuotedStr('%'+edtbuscar.Text+'%');
    cdscidades_estados.Close;
    cdscidades_estados.Open;
    cdscidades_estados.First;
  end;

  //vai passando de c�lula por c�lula
  if Key = VK_PRIOR then
  begin
    cdscidades_estados.Prior;
  end;

  //vai passando de c�lula por c�lula
  if Key = VK_NEXT then
  begin
    cdscidades_estados.Next;
  end;



end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //quando fechado a tela, limpar o campo de busca
  edtbuscar.Clear;
end;



procedure TForm3.FormShow(Sender: TObject);
begin
  {
  Inicializa com um join entre duas tabelas trazendo o primeiro dentre elas e setando
  o foco no campo de busca
  }
  cdscidades_estados.CommandText:='select * from cidades join estados on cidades.estado_id=estados.id';
  cdscidades_estados.Close;
  cdscidades_estados.Open;
  cdscidades_estados.First;
  edtbuscar.SetFocus;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  //Fecha a tela
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
