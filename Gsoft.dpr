program Gsoft;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uDmimagens in 'uDmimagens.pas' {DataModule2: TDataModule},
  uFrmbuscacidade in 'uFrmbuscacidade.pas' {Form3},
  uFrmcadastrofornecedor in 'uFrmcadastrofornecedor.pas' {TFurmcadastrofornecedor},
  uFrmbuscarestado in 'uFrmbuscarestado.pas' {Tufrmbuscarestado},
  uFrmbuscarfornecedor in 'uFrmbuscarfornecedor.pas' {TuFrmbuscarfornecedor},
  uFrmbuscarproduto in 'uFrmbuscarproduto.pas' {TuFrmbuscarproduto},
  uFrmcadastrodemunicipios in 'uFrmcadastrodemunicipios.pas' {FuFrmcadastrodemunicipios},
  uFrmcadastrodeprodutos in 'uFrmcadastrodeprodutos.pas' {Form5},
  uFrmclientes in 'uFrmclientes.pas' {Form2},
  uFrmcompraproduto in 'uFrmcompraproduto.pas' {TuFrmcompraproduto},
  uFrminicio in 'uFrminicio.pas' {Form1},
  uFrmlayout in 'uFrmlayout.pas' {Form4},
  uFrmpnte in 'uFrmpnte.pas' {ponte: TDataModule},
  uFrmkardex in 'uFrmkardex.pas' {TuFrmkardex},
  buscaxml in 'buscaxml.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tponte, ponte);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFuFrmcadastrodemunicipios, FuFrmcadastrodemunicipios);
  Application.CreateForm(TTufrmbuscarestado, Tufrmbuscarestado);
  Application.CreateForm(TTFurmcadastrofornecedor, TFurmcadastrofornecedor);
  Application.CreateForm(TTuFrmbuscarfornecedor, TuFrmbuscarfornecedor);
  Application.CreateForm(TTuFrmcompraproduto, TuFrmcompraproduto);
  Application.CreateForm(TTuFrmbuscarproduto, TuFrmbuscarproduto);
  Application.CreateForm(TTuFrmkardex, TuFrmkardex);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TTufrmbuscarestado, Tufrmbuscarestado);
  Application.CreateForm(TTuFrmbuscarfornecedor, TuFrmbuscarfornecedor);
  Application.CreateForm(TTuFrmbuscarproduto, TuFrmbuscarproduto);
  Application.CreateForm(TFuFrmcadastrodemunicipios, FuFrmcadastrodemunicipios);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TTFurmcadastrofornecedor, TFurmcadastrofornecedor);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TTuFrmcompraproduto, TuFrmcompraproduto);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTuFrmkardex, TuFrmkardex);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tponte, ponte);
  Application.CreateForm(TTufrmbuscarestado, Tufrmbuscarestado);
  Application.CreateForm(TTufrmbuscarestado, Tufrmbuscarestado);
  Application.CreateForm(TTuFrmbuscarfornecedor, TuFrmbuscarfornecedor);
  Application.CreateForm(TTuFrmbuscarfornecedor, TuFrmbuscarfornecedor);
  Application.CreateForm(TTuFrmbuscarproduto, TuFrmbuscarproduto);
  Application.CreateForm(TFuFrmcadastrodemunicipios, FuFrmcadastrodemunicipios);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TTuFrmcompraproduto, TuFrmcompraproduto);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTuFrmkardex, TuFrmkardex);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tponte, ponte);
  Application.CreateForm(TTuFrmkardex, TuFrmkardex);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
