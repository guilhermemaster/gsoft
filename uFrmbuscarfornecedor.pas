unit uFrmbuscarfornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls;

type
  TTuFrmbuscarfornecedor = class(TForm)
    lbl4: TLabel;
    edt1: TEdit;
    btn1: TButton;
    cdsbuscarfornecedor: TClientDataSet;
    dsbuscarfornecedor: TDataSource;
    dbgrd1: TDBGrid;
    coluncdsbuscarfornecedoridfornecedor: TIntegerField;
    coluncdsbuscarfornecedornome: TWideStringField;
    coluncdsbuscarfornecedorcep: TWideStringField;
    coluncdsbuscarfornecedorendereco: TWideStringField;
    coluncdsbuscarfornecedorcidade: TWideStringField;
    coluncdsbuscarfornecedoruf: TWideStringField;
    coluncdsbuscarfornecedorcomissao: TFloatField;
    coluncdsbuscarfornecedorcnpj: TWideStringField;
    colun_estadual: TWideStringField;
    coluncdsbuscarfornecedoremail: TWideStringField;
    colun_1: TWideStringField;
    colun_2: TWideStringField;
    colun_cadastro: TDateField;
    colun_fornecedor: TWideStringField;
    coluncdsbuscarfornecedorobser: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public

    nome_fornecedor, cnpj_fornecedor: String;
    { Public declarations }
  end;

var
  TuFrmbuscarfornecedor: TTuFrmbuscarfornecedor;

implementation

{$R *.dfm}

procedure TTuFrmbuscarfornecedor.btn1Click(Sender: TObject);
begin
             cdsbuscarfornecedor.CommandText:='select * from fornecedores where status_fornecedor='+QuotedStr('1');

             cdsbuscarfornecedor.Close;
             cdsbuscarfornecedor.Open;
             cdsbuscarfornecedor.First;
end;

procedure TTuFrmbuscarfornecedor.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
                //Aqui

                if Key=VK_RETURN then
              begin
                 nome_fornecedor:=coluncdsbuscarfornecedornome.AsString;
                 cnpj_fornecedor:=coluncdsbuscarfornecedorcnpj.AsString;
                 Close;
              end;

            if Key = VK_ESCAPE then
             begin
               Close;

             end;


             if key =VK_F2 then
             begin
                 btn1.Click;
                 ShowMessage(cdsbuscarfornecedor.CommandText);

             end;


end;

procedure TTuFrmbuscarfornecedor.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
         if Key=VK_RETURN then
            begin
            cdsbuscarfornecedor.CommandText:='select * from fornecedores where status_fornecedor='+QuotedStr('1')+' and nome like '+QuotedStr('%'+edt1.Text+'%');

            cdsbuscarfornecedor.Close;
            cdsbuscarfornecedor.Open;
            cdsbuscarfornecedor.First;
            end;

end;

procedure TTuFrmbuscarfornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
                  edt1.Clear;
end;

procedure TTuFrmbuscarfornecedor.FormShow(Sender: TObject);
begin
            cdsbuscarfornecedor.CommandText:='select * from fornecedores where status_fornecedor='+QuotedStr('1');
            cdsbuscarfornecedor.Close;
            cdsbuscarfornecedor.Open;
            cdsbuscarfornecedor.First;
end;

end.
