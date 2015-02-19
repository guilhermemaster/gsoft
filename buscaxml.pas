unit buscaxml;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrNFe, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Datasnap.DBClient, uFrmpnte, uFrmcadastrodeprodutos, uFrmcadastrofornecedor;

type
  TForm6 = class(TForm)
    DBGrid2: TDBGrid;
    ACBrNFe1: TACBrNFe;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lbl3: TLabel;
    cnpjemit: TEdit;
    Label1: TLabel;
    nomeemit: TEdit;
    Label2: TLabel;
    fantasiaemit: TEdit;
    ieemit: TEdit;
    Label3: TLabel;
    cnpjdest: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    iedest: TEdit;
    nomedest: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    emaildest: TEdit;
    dsmemory_itens: TDataSource;
    cdsmemory_itens: TClientDataSet;
    strngfld_itensproduto: TStringField;
    colunMemoryQuantidade: TFloatField;
    colun_itensvalorunitario: TFloatField;
    cdsmemory_itenscodigoproduto: TStringField;
    cdsmemory_itensquantida: TStringField;
    Button2: TButton;
    Label8: TLabel;
    Label9: TLabel;
    emitende: TEdit;
    Label10: TLabel;
    numemit: TEdit;
    Label11: TLabel;
    bairroemit: TEdit;
    Label12: TLabel;
    ufemit: TEdit;
    Label13: TLabel;
    cepemit: TEdit;
    GroupBox3: TGroupBox;
    serienota: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    numeronota: TEdit;
    Label16: TLabel;
    datanota: TEdit;
    Label17: TLabel;
    totalnota: TEdit;
    Label18: TLabel;
    tributonota: TEdit;
    cdsmemory_itenscean: TStringField;
    cdsprodutos: TClientDataSet;
    cdsprodutoscodigo: TIntegerField;
    cdsprodutosdescricao: TWideStringField;
    cdsprodutoscfop: TWideStringField;
    cdsprodutosespecie: TWideStringField;
    cdsprodutosdata_cadastro: TDateField;
    cdsprodutosstatus_produto: TWideStringField;
    cdsprodutoscomplemento: TWideStringField;
    cdsprodutosmarca: TWideStringField;
    cdsprodutosfabricante: TWideStringField;
    cdsprodutosfornecedor: TWideStringField;
    cdsprodutoscod_barra: TWideStringField;
    cdsprodutossit_tributaria: TWideStringField;
    cdsprodutosncm: TWideStringField;
    cdsprodutoscean: TWideStringField;
    cdsprodutossaldo_loja: TFloatField;
    cdsprodutossaldo_deposito: TFloatField;
    cdsprodutoscompra: TFloatField;
    cdsprodutosvenda: TFloatField;
    cdsprodutospromocao: TFloatField;
    cdsprodutosultimo_reajuste: TDateField;
    cdsprodutosultima_venda: TDateField;
    cdsprodutosdes_max: TFloatField;
    cdsprodutosvalidade_produto: TDateField;
    cdsmemory_itensN: TStringField;
    cdsfornecedor: TClientDataSet;
    cdsfornecedoridfornecedor: TIntegerField;
    cdsfornecedornome: TWideStringField;
    cdsfornecedorcep: TWideStringField;
    cdsfornecedorendereco: TWideStringField;
    cdsfornecedorcidade: TWideStringField;
    cdsfornecedoruf: TWideStringField;
    cdsfornecedorcomissao: TFloatField;
    cdsfornecedorcnpj: TWideStringField;
    cdsfornecedorinsc_estadual: TWideStringField;
    cdsfornecedoremail: TWideStringField;
    cdsfornecedortelefone_1: TWideStringField;
    cdsfornecedortelefone_2: TWideStringField;
    cdsfornecedordata_cadastro: TDateField;
    cdsfornecedorstatus_fornecedor: TWideStringField;
    cdsfornecedorobser: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure cdsmemory_itenscodigoprodutoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    vizu : string;
    procedure primordial();
    procedure produtosfinal();
    function exitecean(cean : String): Boolean;
    function ValidaCeanExistentes(): Boolean;
    procedure carregaemit();
    procedure carregadest();
    procedure carregainfornota();
    procedure insercaokardex();
    function exiteCNPJ(cnpj : String): Boolean;
    function ValidaCNPJExistentes(): Boolean;


    { Public declarations }
  end;

var
    Form6: TForm6;
implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
   if OpenDialog1.Execute then
   begin
   cdsmemory_itens.Insert;

   ACBrNFe1.NotasFiscais.Clear;
   Acbrnfe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);


   primordial();
   produtosfinal();
   end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
while not ValidaCNPJExistentes() do
  begin
       //ValidaCeanExistentes();
       //Form5.ShowModal;
       TFurmcadastrofornecedor.ShowModal;
  end;


while not ValidaCeanExistentes() do
  begin
       //ValidaCeanExistentes();
       Form5.ShowModal;
  end;
   //4971850787518
   insercaokardex();
    Button2.Enabled:=False;

end;

procedure TForm6.FormShow(Sender: TObject);
begin
        cdsprodutos.CommandText:='select * from produtos where status_produto='+QuotedStr('1') ;
        cdsprodutos.Close;
        cdsprodutos.Open;
        cdsprodutos.First;

        cdsfornecedor.CommandText:='select * from fornecedores where status_fornecedor='+QuotedStr('1');
        cdsfornecedor.Close;
        cdsfornecedor.Open;
        cdsfornecedor.First;

        Button2.Enabled:=False;

        cdsmemory_itens.CreateDataSet;
        cdsmemory_itens.Open;
end;

procedure TForm6.primordial;
begin

  carregaemit();
  carregadest();
  carregainfornota();


end;

procedure TForm6.produtosfinal();
var
i : Integer;
begin

     for i := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count - 1 do
   begin
    cdsmemory_itens.Open;
    cdsmemory_itens.Insert;

    cdsmemory_itensN.AsString:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count);
    strngfld_itensproduto.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
    cdsmemory_itensquantida.AsFloat:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.qCom;
    colun_itensvalorunitario.AsFloat:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.vUnCom;
    cdsmemory_itenscean.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cEAN;

   end;

end;
function TForm6.exitecean(cean : String): Boolean;
begin
   cdsprodutos.commandText:='select * from  produtos where cean='+QuotedStr(cean);
   cdsprodutos.close;
   cdsprodutos.open;

   Result:=(cdsprodutos.recordcount>0);
end;

function TForm6.ValidaCeanExistentes(): Boolean;
var
  itens : string;
begin
  cdsmemory_itens.First;

  while not (cdsmemory_itens.Eof) do
  begin
    if not exitecean(cdsmemory_itenscean.Asstring) then
		begin
			Itens := Concat(Itens, cdsmemory_itenscean.Asstring) + ' ';
		end;

		cdsmemory_itens.Next;
  end;

  if itens <> '' then
  begin
     Showmessage('itens da nota n�o cadastrados no sistema:'+itens);
     Result:=False;
  end
    else
    begin
      Result:=True;
    end;

end;

function TForm6.exiteCNPJ(cnpj : String): Boolean;
begin
   cdsfornecedor.commandText:='select * from fornecedores where cnpj='+QuotedStr(cnpj);
   cdsfornecedor.close;
   cdsfornecedor.open;

   Result:=(cdsfornecedor.recordcount>0);
end;

function TForm6.ValidaCNPJExistentes(): Boolean;
var
  itens : Integer;

begin
  cdsmemory_itens.First;

  while not (cdsmemory_itens.Eof) do
  begin
    if not exiteCNPJ(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) then
		begin
			itens := itens+1;
		end;

		cdsmemory_itens.Next;
  end;

  if itens =1 then
  begin

     Showmessage('itens da nota n�o cadastrados no sistema:');
     Result:=False;

  end
    else
    begin
      Result:=True;


    end;

end;

procedure TForm6.carregaemit();
begin
//Carrega informa��es do emitente
  cnpjemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
  nomeemit.Text:= ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
  fantasiaemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xFant;
  ieemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
  emitende.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
  numemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
  bairroemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
  ufemit.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
  cepemit.Text:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);

  if cnpjemit.text <> '' then
  begin
    Button2.Enabled:=True;
  end;
end;

procedure TForm6.carregainfornota;
begin
  numeronota.Text:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF);
  serienota.Text:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
  datanota.Text:=DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt);
  totalnota.Text:= FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF);
  tributonota.Text:=FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib);
end;

procedure TForm6.cdsmemory_itenscodigoprodutoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);

begin


     //ShowMessage(vizu);
end;

procedure TForm6.DBGrid2CellClick(Column: TColumn);
var
i : Integer;
text : string;
icms : string;
iof : string;
pis, confins : string;


begin
 //ShowMessage(vizu);
     i:=cdsmemory_itens.FieldByName('N�').AsInteger;
     i:=i-1;
 //i:=0;

    strngfld_itensproduto.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd;
    cdsmemory_itensquantida.AsFloat:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.qCom;
    colun_itensvalorunitario.AsFloat:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.vUnCom;
    cdsmemory_itenscean.AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cEAN;
    icms:=FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Imposto.ICMS.vICMS);
    iof:=FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Imposto.II.vIOF);
    pis:=FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Imposto.PIS.vPIS);
    confins:=FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Imposto.COFINS.vCOFINS);

    text:= 'CEAN do produto: '+ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cEAN+' | '+
    'Produto: ' +ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.xProd+' | '+
     'ICMS do produto: '+icms+' | '+'IOF do Produto: '+iof+' | '+'PIS do Produto: '+pis+' | '+
     'CONFINS do Produto: '+confins;

    ShowMessage(text);
end;

procedure TForm6.DBGrid2ColEnter(Sender: TObject);
begin
  //messagebox (0,'Campo Tipo de Pessoa � obrigat�rio.','GSoft',mb_ok);
  //aqui

end;

procedure TForm6.carregadest();
begin
  cnpjdest.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
  ShowMessage('CNPJ do destinat�rio'+cnpjdest.Text);
  nomedest.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
  emaildest.Text:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email;
  iedest.Text:= ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.IE;
end;

procedure TForm6.insercaokardex();
var
  sql: TDataSet;
  query: TStringBuilder;
  antes, depois : string;
  data : TDate;
begin
  cdsmemory_itens.First;
    while (not cdsmemory_itens.Eof) do
    begin
      cdsprodutos.CommandText:='select * from produtos where cean='+ QuotedStr(cdsmemory_itenscean.AsString);

      cdsprodutos.Close;
      cdsprodutos.Open;
      cdsprodutos.First;

      antes:= FloatToStr(cdsprodutossaldo_deposito.AsFloat+cdsmemory_itensquantida.AsFloat);
      depois:= StringReplace(antes, ',', '.', [rfReplaceAll, rfIgnoreCase]);

      data := Now;

      query := TStringBuilder.Create;
      query.AppendFormat
      ('insert into kardex (nota_referente, produto, data_lancamento, estoque, tipo, quantidade) values(%d, %s, %s, %s, %s, %d)',
      [StrToInt(numeronota.Text), QuotedStr(strngfld_itensproduto.AsString), QuotedStr(DateToStr(data)), depois, QuotedStr('E'), cdsmemory_itensquantida.AsInteger]);
      ponte.sqlqryparametros.Close;
      ponte.sqlqryparametros.sql.Clear;
      ponte.sqlqryparametros.sql.Add(query.ToString);
      ponte.sqlqryparametros.ExecSQL();
      FreeAndNil(query);




      query := TStringBuilder.Create;
      query.AppendFormat
       ('update produtos set saldo_deposito=%s where cean=%s ',
        [depois, QuotedStr(cdsmemory_itenscean.AsString)]);
      ponte.sqlqryparametros.Close;
      ponte.sqlqryparametros.sql.Clear;
      ponte.sqlqryparametros.sql.Add(query.ToString);
      ponte.sqlqryparametros.ExecSQL();
      FreeAndNil(query);







      cdsmemory_itens.Next;
    end;
end;

end.
