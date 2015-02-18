unit uFrmbuscarestado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient;

type
  TTufrmbuscarestado = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    cdsestados: TClientDataSet;
    dsestados: TDataSource;
    dbgrd1: TDBGrid;
    lbl11: TLabel;
    coluncdsestadosid: TIntegerField;
    coluncdsestadosnome: TWideStringField;
    coluncdsestadossigla: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    numero, nome, sigla:string;
    { Public declarations }
  end;

var
  Tufrmbuscarestado: TTufrmbuscarestado;

implementation

{$R *.dfm}

procedure TTufrmbuscarestado.btn1Click(Sender: TObject);
begin
             cdsestados.CommandText:='select * from estados ';

             cdsestados.Close;
             cdsestados.Open;
             cdsestados.First;
end;

procedure TTufrmbuscarestado.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);


begin
            if Key=VK_RETURN then
              begin
                 numero:=coluncdsestadosid.AsString;
                 nome:=coluncdsestadosnome.AsString;
                 sigla:=coluncdsestadossigla.AsString;
                 Close;
              end;

            if Key = VK_ESCAPE then
             begin
               Close;
             end;
end;

procedure TTufrmbuscarestado.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if Key=VK_RETURN then
            begin
            cdsestados.CommandText:='select * from estados where nome like '+QuotedStr('%'+edt1.Text+'%');

            cdsestados.Close;
            cdsestados.Open;
            cdsestados.First;
            end;

end;

procedure TTufrmbuscarestado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
           edt1.Clear;
end;

procedure TTufrmbuscarestado.FormShow(Sender: TObject);
begin

            cdsestados.CommandText:='select * from estados ';
            cdsestados.Close;
            cdsestados.Open;
            cdsestados.First;
end;

end.
