unit uFrminicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, IniFiles, uFrmpnte, uFrmclientes, uFrmcadastrodeprodutos,
   uFrmcadastrodemunicipios, uFrmcadastrofornecedor, uFrmcompraproduto, ExtCtrls, uFrmkardex, buscaxml,
  dxGDIPlusClasses, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Sair1: TMenuItem;
    Produtos1: TMenuItem;
    F3Cidades1: TMenuItem;
    F4Fornecedor1: TMenuItem;
    CompraVenda1: TMenuItem;
    Compra1: TMenuItem;
    Kardex1: TMenuItem;
    CompraporXML1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Image1: TImage;
    ToolButton3: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Produtos1Click(Sender: TObject);
    procedure F3Cidades1Click(Sender: TObject);
    procedure F4Fornecedor1Click(Sender: TObject);
    procedure Compra1Click(Sender: TObject);
    procedure Kardex1Click(Sender: TObject);
    procedure CompraporXML1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TFurmcadastrofornecedor.ShowModal;
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
 Form2.ShowModal;
end;

procedure TForm1.Compra1Click(Sender: TObject);
begin
    TuFrmcompraproduto.ShowModal;
end;

procedure TForm1.CompraporXML1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.F3Cidades1Click(Sender: TObject);
begin
       FuFrmcadastrodemunicipios.ShowModal;
end;

procedure TForm1.F4Fornecedor1Click(Sender: TObject);
begin
       TFurmcadastrofornecedor.ShowModal;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_F1 then
        begin
          Form2.ShowModal;
        end;
      if Key = VK_F2 then
        begin
            Form5.ShowModal;
        end;

         if Key = VK_F3 then
        begin
            FuFrmcadastrodemunicipios.ShowModal;
        end;

            if Key = VK_F4 then
        begin
            TFurmcadastrofornecedor.ShowModal;
        end;

end;

procedure TForm1.FormShow(Sender: TObject);
var
  fim : Integer;
  ArquivoINI: TIniFile;
  hostname :string;
  database : string;
  user_name : string;
  password : string;
  port : string;
begin

  //Carregando INI para a conexão

  ArquivoINI := TIniFile.Create('C:\Configuracao.ini');

  hostname:= ArquivoINI.ReadString('Ajuste', 'Hostname', '');
  database := ArquivoINI.ReadString('Ajuste', 'DataBase', '');
  user_name:= ArquivoINI.ReadString('Ajuste', 'User_Name', '');
  password := ArquivoINI.ReadString('Ajuste', 'Password', '');
  port := ArquivoINI.ReadString('Ajuste', 'port', '');

  ponte.con1.Params.Add('hostname='+ hostname);
  ponte.con1.Params.Add('Database='+database);
  ponte.con1.Params.Add('User_Name='+user_name);
  ponte.con1.Params.Add('Password='+password);
  ponte.con1.Params.Add('Port='+port);

  ponte.con1.Connected := True;

  ArquivoINI.Free;

end;

procedure TForm1.Kardex1Click(Sender: TObject);
begin
   TuFrmkardex.ShowModal;
end;

procedure TForm1.Produtos1Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
            Close;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  TFurmcadastrofornecedor.ShowModal;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
Form6.ShowModal;
end;

end.
