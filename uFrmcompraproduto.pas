unit uFrmcompraproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  RzEdit, RzDBEdit, RzDBBnEd, uXDbEdit, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Datasnap.DBClient, uFrmbuscarproduto, uFrmbuscarfornecedor, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDesignLayer, ppParameter, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppVar, dxGDIPlusClasses, uFrmpnte;

type
  TTuFrmcompraproduto = class(TForm)
    grp1: TGroupBox;
    lbl11: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtmodelo: TDBEdit;
    lbl4: TLabel;
    edtchave_nfe: TDBEdit;
    cbbfornecedor: TxDbButtonEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    edtcnpj_fornecedor: TDBEdit;
    pnl1: TPanel;
    cdscompra_produto: TClientDataSet;
    cdsitens_nota: TClientDataSet;
    btn1: TButton;
    btn2: TButton;
    dsitens_nota: TDataSource;
    dscompra_produto: TDataSource;
    edtdata_entrada: TRzDBDateTimeEdit;
    edtdata_emissao: TRzDBDateTimeEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    edtvalor_da_total_nota: TDBEdit;
    edtdesconto: TDBEdit;
    btnfinaliza: TButton;
    btnaltera: TButton;
    dsmemory_itens: TDataSource;
    edttotal: TEdit;
    btn3: TButton;
    lbl10: TLabel;
    grp2: TGroupBox;
    lbl9: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    pdbplnrecibo: TppDBPipeline;
    Relatoriorecibo: TppReport;
    prmtrlst1: TppParameterList;
    pdsgnlyrs1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
    phdrbnd1: TppHeaderBand;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    pshp1: TppShape;
    psmrybnd2: TppSummaryBand;
    pmg1: TppImage;
    plbl2: TppLabel;
    plbl12: TppLabel;
    pdbclc2: TppDBCalc;
    plbl7: TppLabel;
    plbl14: TppLabel;
    plblnumerodanota: TppLabel;
    plbl1: TppLabel;
    pdbtxtNumerodaNotaFiscal: TppDBText;
    plbl3: TppLabel;
    pdbtxtproduto: TppDBText;
    plbl5: TppLabel;
    plbl6: TppLabel;
    pdbtxtvalortotal: TppDBText;
    plbl8: TppLabel;
    plbldataentrada: TppLabel;
    plbl9: TppLabel;
    plbldataemissao: TppLabel;
    plbl10: TppLabel;
    plblmodelonfe: TppLabel;
    plbl11: TppLabel;
    plblchavenfe: TppLabel;
    plbl13: TppLabel;
    plblfornecedor: TppLabel;
    plbl15: TppLabel;
    plblcnpj: TppLabel;
    pln2: TppLine;
    plbl16: TppLabel;
    plblsubtotal: TppLabel;
    plbl17: TppLabel;
    plbldesconto: TppLabel;
    pln1: TppLine;
    plbl18: TppLabel;
    plbltotalbruto: TppLabel;
    lbl15: TLabel;
    cdsmemory_itens: TClientDataSet;
    colunMemoryQuantidade: TFloatField;
    strngfld_itensproduto: TStringField;
    colun_itensvalorunitario: TFloatField;
    colun_itensvalortotal: TFloatField;
    dbgrd1: TDBGrid;
    plbl4: TppLabel;
    pdbtxtQuantidade: TppDBText;
    pdbtxtvalorunitario: TppDBText;
    edtnumero_nota: TDBEdit;
    colun_produtonumero_nota: TIntegerField;
    colun_produtodata_entrada: TDateField;
    colun_produtodata_emissao: TDateField;
    colun_produtomodelo: TWideStringField;
    colun_produtochave_nfe: TWideStringField;
    colun_produtofornecedor: TWideStringField;
    colun_produtocnpj_fornecedor: TWideStringField;
    colun_produtovalor_da_total_nota: TFloatField;
    colun_produtodesconto: TFloatField;
    lbl16: TLabel;
    cdsconsultanumeroestado: TClientDataSet;
    dsconsultanumeroestado: TDataSource;
    coluncdsconsultanumeroestadouf: TWideStringField;
    coluncdsconsultanumeroestadoid: TIntegerField;
    cdsproduto: TClientDataSet;
    dsproduto: TDataSource;
    cdsitens_notanumero_da_nota_referencia: TIntegerField;
    cdsitens_notaucom: TWideStringField;
    cdsitens_notaqcom: TWideStringField;
    cdsitens_notavuncom: TWideStringField;
    cdsitens_notavprod: TWideStringField;
    cdsitens_notaceantrib: TWideStringField;
    cdsitens_notautrib: TWideStringField;
    cdsitens_notaqtrib: TWideStringField;
    cdsitens_notavdntrib: TWideStringField;
    cdsitens_notaicms_orig: TWideStringField;
    cdsitens_notaicms_cst: TWideStringField;
    cdsitens_notaicms_modbc: TWideStringField;
    cdsitens_notaicms_picms: TWideStringField;
    cdsitens_notaicms_vicms: TWideStringField;
    cdsitens_notapis_cst: TWideStringField;
    cdsitens_notapis_vbc: TWideStringField;
    cdsitens_notapis_ppis: TWideStringField;
    cdsitens_notapis_vpis: TWideStringField;
    cdsitens_notaconfins_cst: TWideStringField;
    cdsitens_notaconfins_vbc: TWideStringField;
    cdsitens_notaconfins_pcofins: TWideStringField;
    cdsitens_notaconfins_vconfins: TWideStringField;
    cdsitens_notaitem: TWideStringField;
    cdsitens_notaquantidade: TFMTBCDField;
    cdsprodutocodigo: TIntegerField;
    cdsprodutodescricao: TWideStringField;
    cdsprodutocfop: TWideStringField;
    cdsprodutoespecie: TWideStringField;
    cdsprodutodata_cadastro: TDateField;
    cdsprodutostatus_produto: TWideStringField;
    cdsprodutocomplemento: TWideStringField;
    cdsprodutomarca: TWideStringField;
    cdsprodutofabricante: TWideStringField;
    cdsprodutofornecedor: TWideStringField;
    cdsprodutocod_barra: TWideStringField;
    cdsprodutosit_tributaria: TWideStringField;
    cdsprodutoncm: TWideStringField;
    cdsprodutocean: TWideStringField;
    cdsprodutosaldo_loja: TFloatField;
    cdsprodutosaldo_deposito: TFloatField;
    cdsprodutocompra: TFloatField;
    cdsprodutovenda: TFloatField;
    cdsprodutopromocao: TFloatField;
    cdsprodutoultimo_reajuste: TDateField;
    cdsprodutoultima_venda: TDateField;
    cdsprodutodes_max: TFloatField;
    cdsprodutovalidade_produto: TDateField;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnfinalizaClick(Sender: TObject);
    procedure btnalteraClick(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbfornecedorButtonClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cdsmemory_itensCalcFields(DataSet: TDataSet);
    procedure edtdescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn3Click(Sender: TObject);
    procedure edtmodeloExit(Sender: TObject);
    procedure edtmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure edtchave_nfeKeyPress(Sender: TObject; var Key: Char);
    procedure edtdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure sub_total();
    function validarNFe(nfe, cnpj: string): Boolean;
    procedure limpar();
    { Private declarations }
  public
    valorTotal: Double;
    { Public declarations }
  end;

var
  TuFrmcompraproduto: TTuFrmcompraproduto;

implementation

{$R *.dfm}

procedure TTuFrmcompraproduto.btn1Click(Sender: TObject);
begin

  limpar();

  edtnumero_nota.Clear;

  edtnumero_nota.Enabled := True;
  edtdata_entrada.Enabled := True;
  edtdata_emissao.Enabled := True;
  edtmodelo.Enabled := True;
  edtchave_nfe.Enabled := True;
  cbbfornecedor.Enabled := True;

  edtdesconto.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btnfinaliza.Enabled := True;
  btnaltera.Enabled := True;

 

  if cdsmemory_itens.Active then
  begin
  cdsmemory_itens.EmptyDataSet;
  end
  else
  begin
  cdsmemory_itens.CreateDataSet;
  end;

  cdsmemory_itens.Insert;

  cdscompra_produto.Append;
  edtnumero_nota.SetFocus;
end;

procedure TTuFrmcompraproduto.btnfinalizaClick(Sender: TObject);
begin
  edtnumero_nota.Text;
  if colun_produtonumero_nota.IsNull then
  begin
  messagebox(0, 'N�mero da nota � obrigat�rio', 'GSoft', mb_ok);
  Exit;
  end;

  if edtdata_emissao.Date > edtdata_entrada.Date then
  begin
  messagebox(0, 'Data da Emiss�o maior que a data de Entrada',
  'GSoft', mb_ok);
  end
  else
    begin
    if edtmodelo.Text = '55' then
    begin

  if not validarNFe(edtchave_nfe.Text, edtcnpj_fornecedor.Text) then
  begin
  messagebox(0, 'Chave NF-e n�o coresponde ao CNPJ do fornecedor',
  'GSoft', mb_ok);
  Exit;
  end;
 end;

  edtnumero_nota.Enabled := False;
  edtdata_entrada.Enabled := False;
  edtdata_emissao.Enabled := False;
  edtmodelo.Enabled := False;
  edtchave_nfe.Enabled := False;
  cbbfornecedor.Enabled := False;
  btnaltera.Enabled := True;
  btnfinaliza.Enabled := False;

  dbgrd1.Enabled := True;
end;

end;

procedure TTuFrmcompraproduto.cbbfornecedorButtonClick(Sender: TObject);
begin
  TuFrmbuscarfornecedor.ShowModal;
  cbbfornecedor.Text := TuFrmbuscarfornecedor.nome_fornecedor;
  edtcnpj_fornecedor.Text := TuFrmbuscarfornecedor.cnpj_fornecedor;
end;

procedure TTuFrmcompraproduto.cdsmemory_itensCalcFields(DataSet: TDataSet);
begin
  colun_itensvalortotal.AsFloat := colun_itensvalorunitario.AsFloat *colunMemoryQuantidade.AsInteger;
end;

procedure TTuFrmcompraproduto.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F1 then
  begin
  cdsmemory_itens.Open;
  cdsmemory_itens.Insert;
  TuFrmbuscarproduto.ShowModal;

  strngfld_itensproduto.AsString := TuFrmbuscarproduto.produto;
  colun_itensvalorunitario.AsFloat := StrToFloat(TuFrmbuscarproduto.valor);

  end;

  if Key = VK_F2 then
  begin
  cdsmemory_itens.Edit;
  end;

  if Key = VK_RETURN then
  begin
  sub_total();
  end;

  if Key = VK_DELETE then
  begin
  cdsmemory_itens.Delete;
  sub_total();
  end;

  if Key = VK_ESCAPE then
  begin
  edtdesconto.SetFocus;
  end;
end;

procedure TTuFrmcompraproduto.btn2Click(Sender: TObject);
begin
  cdsmemory_itens.EmptyDataSet;

  edtnumero_nota.Enabled := False;
  edtdata_entrada.Enabled := False;
  edtdata_emissao.Enabled := False;
  edtmodelo.Enabled := False;
  edtchave_nfe.Enabled := False;
  cbbfornecedor.Enabled := False;
  edtcnpj_fornecedor.Enabled := False;

  dbgrd1.Enabled := False;

  edtdesconto.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btnfinaliza.Enabled := False;
  btnaltera.Enabled := False;
end;

procedure TTuFrmcompraproduto.btn3Click(Sender: TObject);
var
sql: TDataSet;
query: TStringBuilder;

nota, teste, numero_nota_fim: Integer;
produto, anos_passa, numero_estado, antes, depois: string;
quantidade: Double;
valorfinal : Double;

desconto, total, numero_nota, chave_nfe, modelo, data_entrada, data_emissao, fornecedor, cnpj  : String;
begin
  desconto:=edtdesconto.Text;
  total:=edtvalor_da_total_nota.Text;
  numero_nota:=edtnumero_nota.Text;
  chave_nfe:=edtchave_nfe.Text;
  modelo:=edtmodelo.Text;
  data_entrada:=edtdata_entrada.Text;
  data_emissao:=edtdata_emissao.Text;
  fornecedor:=cbbfornecedor.Text;
  cnpj:=edtcnpj_fornecedor.Text;


  sub_total();
  valorfinal := StrToFloat(edttotal.Text) - (StrToFloat(edttotal.Text) * StrToFloat(edtdesconto.Text) / 100);
  edtvalor_da_total_nota.Text := FloatToStr(valorfinal);

  if edtdesconto.Text = '' then
  begin
  messagebox(0, 'Valor do Desconto n�o informado', 'GSoft', mb_ok);
  Exit;
  end
    else
      begin
      sub_total();
      if (edtnumero_nota.Text = '') then
      begin
      messagebox(0, 'N�mero da Nota Fiscal � obrigat�rio.', 'GSoft', mb_ok);
      Exit;
      end;

  if (edtdata_entrada.Text = '') then
  begin
  messagebox(0, 'Data de entrada � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  if (edtdata_emissao.Text = '') then
  begin
  messagebox(0, 'Data de emiss�o � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  if (edtmodelo.Text = '') then
  begin
  messagebox(0, 'Modelo � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  if (edtchave_nfe.Text = '') and (edtmodelo.Text = '55') then
  begin
  messagebox(0, 'NF-e � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  if (cbbfornecedor.Text = '') then
  begin
  messagebox(0, 'Nome do fornecedor � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  if (edtcnpj_fornecedor.Text = '') then
  begin
  messagebox(0, 'CNPj do fornecedor � obrigat�rio.', 'GSoft', mb_ok);
  Exit;
  end;

  numero_nota_fim:=StrToInt(edtnumero_nota.Text);


  cdscompra_produto.Post;
  try
  cdscompra_produto.ApplyUpdates(0);
  except
  on E: Exception do
  messagebox(0, 'Nota com esse n�mero j� cadastrada', 'GSoft', mb_ok);
  end;

  cdscompra_produto.Insert;
  cdscompra_produto.Close;
  cdscompra_produto.Open;
  cdscompra_produto.Insert;

  cdsmemory_itens.First;
  while (not cdsmemory_itens.Eof) do
  begin

  query := TStringBuilder.Create;
  query.AppendFormat('update produtos set saldo_deposito=%d+(select sum(saldo_deposito) from produtos where descricao=%s ) where descricao=%s',
  [colunMemoryQuantidade.AsInteger, QuotedStr(strngfld_itensproduto.AsString),
  QuotedStr(strngfld_itensproduto.AsString)]);
  ponte.sqlqryparametros.Close;
  ponte.sqlqryparametros.sql.Clear;
  ponte.sqlqryparametros.sql.Add(query.ToString);
  ponte.sqlqryparametros.ExecSQL();
  FreeAndNil(query);

  cdsmemory_itens.Next;
  end;



                   cdsconsultanumeroestado.CommandText:='select fornecedores.uf, estados.id from fornecedores join estados on estados.sigla=fornecedores.uf where fornecedores.cnpj='+QuotedStr(cnpj);
  cdsconsultanumeroestado.Close;
  cdsconsultanumeroestado.Open;
  cdsconsultanumeroestado.First;



  anos_passa:=data_emissao;
  numero_estado:= IntToStr(coluncdsconsultanumeroestadoid.AsInteger);

  cdsmemory_itens.First;
  while (not cdsmemory_itens.Eof) do
  begin

  cdsproduto.CommandText:='select * from produtos where descricao like '+ QuotedStr(strngfld_itensproduto.AsString);

  cdsproduto.Close;
  cdsproduto.Open;
  cdsproduto.First;

  antes:= FloatToStr(cdsprodutosaldo_deposito.AsFloat);
  depois:= StringReplace(antes, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  query := TStringBuilder.Create;
  query.AppendFormat
  ('insert into kardex (nota_referente, produto, data_lancamento, estoque, tipo, quantidade) values(%d, %s, %s, %s, %s, %d)',
  [numero_nota_fim, QuotedStr(strngfld_itensproduto.AsString), QuotedStr(anos_passa), depois, QuotedStr('E'), colunMemoryQuantidade.AsInteger]);
  ponte.sqlqryparametros.Close;
  ponte.sqlqryparametros.sql.Clear;
  ponte.sqlqryparametros.sql.Add(query.ToString);
  ponte.sqlqryparametros.ExecSQL();
  FreeAndNil(query);

  cdsmemory_itens.Next;
  end;


  cdsmemory_itens.First;
  while (not cdsmemory_itens.Eof) do
  begin

  query := TStringBuilder.Create;
  query.AppendFormat
  ('insert into intens_nota (numero_da_nota_referencia, item, quantidade) values(%d, %s, %d)',
  [numero_nota_fim,
  QuotedStr(strngfld_itensproduto.AsString),
  colunMemoryQuantidade.AsInteger]);
  ponte.sqlqryparametros.Close;
  ponte.sqlqryparametros.sql.Clear;
  ponte.sqlqryparametros.sql.Add(query.ToString);
  ponte.sqlqryparametros.ExecSQL();
  FreeAndNil(query);

  cdsmemory_itens.Next;
  end;



  btn1.Enabled := True;
  btn2.Enabled := False;
  btnfinaliza.Enabled := False;
  btnaltera.Enabled := False;
  btn3.Enabled := False;


  plbldataentrada.Text := data_entrada;
  plbldataemissao.Text := data_emissao;
  plblmodelonfe.Text := modelo;
  plblchavenfe.Text := chave_nfe;
  plblfornecedor.Text := fornecedor;
  plblcnpj.Text := cnpj;
  plblnumerodanota.Text := numero_nota;
  plblsubtotal.Text := edttotal.Text;
  plbldesconto.Text := desconto;
  plbltotalbruto.Text := total;
  Relatoriorecibo.Print;

  cdsmemory_itens.Close;
  cdscompra_produto.Cancel;
  cdsitens_nota.Cancel;

  limpar();
end;



end;

procedure TTuFrmcompraproduto.btnalteraClick(Sender: TObject);
begin
  edtdata_entrada.Enabled := True;
  edtdata_emissao.Enabled := True;
  edtmodelo.Enabled := True;
  edtchave_nfe.Enabled := True;
  cbbfornecedor.Enabled := True;
  edtnumero_nota.Enabled:=True;

  btnfinaliza.Enabled := True;
  btnaltera.Enabled := False;
end;

procedure TTuFrmcompraproduto.edtchave_nfeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #8]) then
  begin
    Key := #0;
  end;
end;

procedure TTuFrmcompraproduto.edtdescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  valorfinal: Double;
begin
  if Key = VK_RETURN then
  begin
    sub_total();
    valorfinal := StrToFloat(edttotal.Text) -
      (StrToFloat(edttotal.Text) * StrToFloat(edtdesconto.Text) / 100);
    edtvalor_da_total_nota.Text := FloatToStr(valorfinal);
  end;

end;

procedure TTuFrmcompraproduto.edtdescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #8]) then
  begin
    Key := #0;
  end;
end;

procedure TTuFrmcompraproduto.edtmodeloExit(Sender: TObject);
begin
  if edtmodelo.Text = '55' then
  begin
    lbl4.Caption := 'Chave NF-e *';
  end
    else
      begin
          lbl4.Caption := 'Chave NF-e';
      end;
end;

procedure TTuFrmcompraproduto.edtmodeloKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', '.', #8]) then
  begin
    Key := #0;
  end;
end;


procedure TTuFrmcompraproduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cdsmemory_itens.Active then
  begin
  cdsmemory_itens.EmptyDataSet;
  end;
end;

procedure TTuFrmcompraproduto.FormShow(Sender: TObject);
begin
  limpar();

  edtnumero_nota.Enabled := False;
  edtdata_entrada.Enabled := False;
  edtdata_emissao.Enabled := False;
  edtmodelo.Enabled := False;
  edtchave_nfe.Enabled := False;
  cbbfornecedor.Enabled := False;
  edtcnpj_fornecedor.Enabled := False;

  dbgrd1.Enabled := False;

  edtdesconto.Enabled := False;

  btn1.Enabled := True;
  btn2.Enabled := False;
  btnfinaliza.Enabled := False;
  btnaltera.Enabled := False;

   cdscompra_produto.Close;
  cdscompra_produto.Open;

  cdsconsultanumeroestado.Close;
  cdsconsultanumeroestado.Open;
end;

procedure TTuFrmcompraproduto.sub_total();
begin
  valorTotal := 0;
  cdsmemory_itens.First;
  while (not cdsmemory_itens.Eof) do
  begin
    valorTotal := valorTotal + cdsmemory_itens.FieldByName
      ('valortotal').AsFloat;
    cdsmemory_itens.Next;
  end;
  edttotal.Text := FloatToStr(valorTotal);

end;

function TTuFrmcompraproduto.validarNFe(nfe, cnpj: string): Boolean;
var
  i, j, w: Integer;
  verificador: Boolean;
  data: TDateTime;
  ano, mess, dia: Word;
  numero_estado, mess_passa, anos_passa: string;
begin
  i := 0;

  data:=colun_produtodata_emissao.AsDateTime;

  cdsconsultanumeroestado.CommandText:='select fornecedores.uf, estados.id from fornecedores join estados on estados.sigla=fornecedores.uf where fornecedores.cnpj='+QuotedStr(edtcnpj_fornecedor.Text);

  cdsconsultanumeroestado.Close;
  cdsconsultanumeroestado.Open;
  cdsconsultanumeroestado.First;


  anos_passa:=DateToStr(data);
  numero_estado:= IntToStr(coluncdsconsultanumeroestadoid.AsInteger);


  //verifica��o do estado
  if numero_estado[1] = nfe[1] then
  begin
    i:=i+1;
  end;

  if numero_estado[2] = nfe[2] then
  begin
    i:=i+1;
  end;

  //verifica ano da nota
  if  anos_passa[9] = nfe[3] then
  begin
    i:=i+1;
  end;
  if  anos_passa[10] = nfe[4] then
  begin
    i:=i+1;
  end;

  if  anos_passa[4] = nfe[5] then
  begin
    i:=i+1;
  end;
  if  anos_passa[5] = nfe[6] then
  begin
    i:=i+1;
  end;







  //verifica cnpj da nota
  if AnsiCompareText(nfe[7], cnpj[1]) = 0 then
  begin
    i := i + 1;
  end;
  if nfe[8] = cnpj[2] then
  begin
    i := i + 1;
  end;
  if nfe[9] = cnpj[3] then
  begin
    i := i + 1;
  end;
  if nfe[10] = cnpj[4] then
  begin
    i := i + 1;
  end;
  if nfe[11] = cnpj[5] then
  begin
    i := i + 1;
  end;
  if nfe[12] = cnpj[6] then
  begin
    i := i + 1;
  end;
  if nfe[13] = cnpj[7] then
  begin
    i := i + 1;
  end;
  if nfe[14] = cnpj[8] then
  begin
    i := i + 1;
  end;
  if nfe[15] = cnpj[9] then
  begin
    i := i + 1;
  end;
  if nfe[16] = cnpj[10] then
  begin
    i := i + 1;
  end;
  if nfe[17] = cnpj[11] then
  begin
    i := i + 1;
  end;
  if nfe[18] = cnpj[12] then
  begin
    i := i + 1;
  end;
  if nfe[19] = cnpj[13] then
  begin
    i := i + 1;
  end;
  if nfe[20] = cnpj[14] then
  begin
    i := i + 1;
  end;

  //tipo de nota
  if nfe[21] = '5' then
  begin
    i := i + 1;
  end;
  if nfe[22] = '5' then
  begin
    i := i + 1;
  end;

  //conferencia num�rica
  j:=1;
  w:=23;
  while not (edtnumero_nota.Text[j]  = '') do
    begin
      if not (nfe[w]=edtnumero_nota.Text[j]) then
      begin
          i:=20;
          Break;
      end;
       w:=w+1;
       j:=j+1;
    end;

  //conferencia boleana
  if i = 22 then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;

end;

procedure TTuFrmcompraproduto.limpar();
begin
  edtnumero_nota.Clear;
  edtdata_entrada.Clear;
  edtdata_emissao.Clear;
  edtmodelo.Clear;
  edtchave_nfe.Clear;
  cbbfornecedor.Clear;
  edtcnpj_fornecedor.Clear;
  edttotal.Clear;
  edtdesconto.Clear;
  edtvalor_da_total_nota.Clear;
end;

end.
