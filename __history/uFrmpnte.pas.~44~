unit uFrmpnte;

interface

uses
  System.SysUtils, System.Classes, DBXDevartPostgreSQL, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Data.FMTBcd, Datasnap.DBClient, Datasnap.Win.TConnect;

type
  Tponte = class(TDataModule)
    dspcliente: TDataSetProvider;
    qry_cliente: TSQLDataSet;
    conponte: TLocalConnection;
    sqlqryparametros: TSQLQuery;
    qry_cidade_estados: TSQLDataSet;
    dsp_cidades_estados: TDataSetProvider;
    colun_cidade_estadosid: TIntegerField;
    colun_cidade_estadosnome: TWideStringField;
    colun_cidade_estadoscodigo_ibge: TIntegerField;
    colun_cidade_estadosnome_1: TWideStringField;
    colun_cidade_estadossigla: TWideStringField;
    qry_produtos: TSQLDataSet;
    dspprosutos: TDataSetProvider;
    qry_estados: TSQLDataSet;
    dspestados: TDataSetProvider;
    colun_estadosid: TIntegerField;
    colun_estadosnome: TWideStringField;
    colun_estadossigla: TWideStringField;
    qry_cidades: TSQLDataSet;
    dspcidades: TDataSetProvider;
    colun_cidadesid: TIntegerField;
    colun_cidadesnome: TWideStringField;
    colun_cidadessigla: TWideStringField;
    colun_cidadesnome_1: TWideStringField;
    colun_cidadescodigo_ibge: TIntegerField;
    con1: TSQLConnection;
    qry_fornecedor: TSQLDataSet;
    dsp_fornecedor: TDataSetProvider;
    colun_fornecedoridfornecedor: TIntegerField;
    colun_fornecedornome: TWideStringField;
    colun_fornecedorcep: TWideStringField;
    colun_fornecedorendereco: TWideStringField;
    colun_fornecedorcidade: TWideStringField;
    colun_fornecedoruf: TWideStringField;
    colun_fornecedorcomissao: TFloatField;
    colun_fornecedorcnpj: TWideStringField;
    colun_fornecedorinsc_estadual: TWideStringField;
    colun_fornecedoremail: TWideStringField;
    colun_fornecedortelefone_1: TWideStringField;
    colun_fornecedortelefone_2: TWideStringField;
    colun_fornecedordata_cadastro: TDateField;
    colun_fornecedorstatus_fornecedor: TWideStringField;
    colun_fornecedorobser: TWideStringField;
    qrycompra_produto: TSQLDataSet;
    dspcompra_produto: TDataSetProvider;
    qry_intens_tabela: TSQLDataSet;
    dsp_intens_tabela: TDataSetProvider;
    colun_produtonumero_nota: TIntegerField;
    colun_produtodata_entrada: TDateField;
    colun_produtodata_emissao: TDateField;
    colun_produtomodelo: TWideStringField;
    colun_produtochave_nfe: TWideStringField;
    colun_produtofornecedor: TWideStringField;
    colun_produtocnpj_fornecedor: TWideStringField;
    colun_produtovalor_da_total_nota: TFloatField;
    colun_produtodesconto: TFloatField;
    qryconsultaestadofornecedor: TSQLDataSet;
    dspconsultaestadofornecedor: TDataSetProvider;
    colunqryconsultaestadofornecedoruf: TWideStringField;
    colunqryconsultaestadofornecedorid: TIntegerField;
    qry_kardex: TSQLDataSet;
    dspkardex: TDataSetProvider;
    colun_kardexidlancamneto: TIntegerField;
    colun_kardexnota_referente: TIntegerField;
    colun_kardexproduto: TWideStringField;
    colun_kardexdata_lancamento: TDateField;
    colun_kardexestoque: TFloatField;
    colun_kardextipo: TWideStringField;
    colun_kardexquantidade: TIntegerField;
    qry_ncm: TSQLDataSet;
    dsncm: TDataSetProvider;
    qry_ncmc_codigo: TWideStringField;
    qry_ncmc_descr: TWideStringField;
    qry_ncmc_ex: TFMTBCDField;
    qry_ncmc_tabela: TWideStringField;
    qry_ncmc_aliqnac: TFMTBCDField;
    qry_ncmc_aliqimp: TFMTBCDField;
    qry_ncmsr_recno: TFMTBCDField;
    qry_intens_tabelanumero_da_nota_referencia: TIntegerField;
    qry_intens_tabelaucom: TWideStringField;
    qry_intens_tabelaqcom: TWideStringField;
    qry_intens_tabelavuncom: TWideStringField;
    qry_intens_tabelavprod: TWideStringField;
    qry_intens_tabelaceantrib: TWideStringField;
    qry_intens_tabelautrib: TWideStringField;
    qry_intens_tabelaqtrib: TWideStringField;
    qry_intens_tabelavdntrib: TWideStringField;
    qry_intens_tabelaicms_orig: TWideStringField;
    qry_intens_tabelaicms_cst: TWideStringField;
    qry_intens_tabelaicms_modbc: TWideStringField;
    qry_intens_tabelaicms_picms: TWideStringField;
    qry_intens_tabelaicms_vicms: TWideStringField;
    qry_intens_tabelapis_cst: TWideStringField;
    qry_intens_tabelapis_vbc: TWideStringField;
    qry_intens_tabelapis_ppis: TWideStringField;
    qry_intens_tabelapis_vpis: TWideStringField;
    qry_intens_tabelaconfins_cst: TWideStringField;
    qry_intens_tabelaconfins_vbc: TWideStringField;
    qry_intens_tabelaconfins_pcofins: TWideStringField;
    qry_intens_tabelaconfins_vconfins: TWideStringField;
    qry_intens_tabelaitem: TWideStringField;
    qry_intens_tabelaquantidade: TFMTBCDField;
    qry_produtoscodigo: TIntegerField;
    qry_produtosdescricao: TWideStringField;
    qry_produtoscfop: TWideStringField;
    qry_produtosespecie: TWideStringField;
    qry_produtosdata_cadastro: TDateField;
    qry_produtosstatus_produto: TWideStringField;
    qry_produtoscomplemento: TWideStringField;
    qry_produtosmarca: TWideStringField;
    qry_produtosfabricante: TWideStringField;
    qry_produtosfornecedor: TWideStringField;
    qry_produtoscod_barra: TWideStringField;
    qry_produtossit_tributaria: TWideStringField;
    qry_produtosncm: TWideStringField;
    qry_produtoscean: TWideStringField;
    qry_produtossaldo_loja: TFloatField;
    qry_produtossaldo_deposito: TFloatField;
    qry_produtoscompra: TFloatField;
    qry_produtosvenda: TFloatField;
    qry_produtospromocao: TFloatField;
    qry_produtosultimo_reajuste: TDateField;
    qry_produtosultima_venda: TDateField;
    qry_produtosdes_max: TFloatField;
    qry_produtosvalidade_produto: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ponte: Tponte;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
