unit uFrmcompraporxml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Vcl.StdCtrls, ACBrBase, ACBrNFe, ACBrNFSe,
  ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, Xml.xmldom, Xml.XMLIntf,
  Xml.Win.msxmldom, Xml.XMLDoc;

type
  TTuFrmcompraporxml = class(TForm)
    dlgOpen1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    DBGrid1: TDBGrid;
    procedure carregaClick(Sender: TObject);



  private
    { Private declarations }
  public
    local: string;
    { Public declarations }
  end;

var
  TuFrmcompraporxml: TTuFrmcompraporxml;

implementation

{$R *.dfm}


procedure TTuFrmcompraporxml.carregaClick(Sender: TObject);
begin
   if dlgOpen1.Execute then
   begin
      ACBrNFe1.NotasFiscais.Clear;
      Acbrnfe1.NotasFiscais.LoadFromFile(dlgOpen1.FileName);
     // carregaCabecalho;
      //carregaItens;
   end;
end;


end.
