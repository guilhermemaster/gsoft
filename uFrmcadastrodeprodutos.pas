unit uFrmcadastrodeprodutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmlayout, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ToolWin,
  Data.DB, Datasnap.DBClient, Vcl.DBCtrls, RzDBEdit, RzButton, RzRadChk, RzDBChk,
  RzCmboBx, RzDBCmbo, ppDesignLayer, ppParameter, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls, dxGDIPlusClasses, ppBands,
  ppPrnabl, ppCache, uXDbEdit, uFrmbuscarfornecedor, RzDBBnEd, uFrmbuscaNCM;

type
  TForm5 = class(TForm4)
    cdsprodutos: TClientDataSet;
    dsprodutos: TDataSource;
    pgc2: TPageControl;
    ts3: TTabSheet;
    ts4: TTabSheet;
    ts5: TTabSheet;
    lbl11: TLabel;
    lbl1: TLabel;
    cbbdescricao: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbfabricante: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    cbbcod_barra: TDBEdit;
    lbl12: TLabel;
    cbbsaldo_loja: TDBEdit;
    lbl13: TLabel;
    cbbsaldo_deposito: TDBEdit;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    edtultimo_reajuste: TRzDBDateTimeEdit;
    lbl17: TLabel;
    edtultima_venda: TRzDBDateTimeEdit;
    lbl18: TLabel;
    cbbdes_max: TDBEdit;
    lbl19: TLabel;
    edtvalidade_produto: TRzDBDateTimeEdit;
    edtdata_cadastro: TRzDBDateTimeEdit;
    cbbespecie: TDBEdit;
    cbbmarca: TDBEdit;
    marcacaostatus_produto: TRzDBCheckBox;
    dbgrd1: TDBGrid;
    pdbplnprodutos: TppDBPipeline;
    RelatorioProdutos: TppReport;
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
    pln1: TppLine;
    plbl7: TppLabel;
    plbl9: TppLabel;
    psystmvrbl2: TppSystemVariable;
    plbl8: TppLabel;
    psystmvrbl1: TppSystemVariable;
    plbl14: TppLabel;
    pdbtxtcodigo: TppDBText;
    pdbtxtdescricao: TppDBText;
    plbl1: TppLabel;
    plbl3: TppLabel;
    pdbtxtfornecedor: TppDBText;
    plbl4: TppLabel;
    pdbtxtvenda: TppDBText;
    plbl5: TppLabel;
    pdbtxtdata_cadastro: TppDBText;
    plbl6: TppLabel;
    pdbtxtstatus_produto: TppDBText;
    cbbvenda: TxDbEdit;
    cbbcompra: TxDbEdit;
    lbl9: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    psystmvrbl3: TppSystemVariable;
    cbbfornecedor: TxDbButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbcean: TDBEdit;
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
    dbncm: TxDbButtonEdit;
    mmocomplemento: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btndesistirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btneditarClick(Sender: TObject);
    procedure btninicioClick(Sender: TObject);
    procedure btnanterioClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure cbbicmsKeyPress(Sender: TObject; var Key: Char);
    procedure cbbcod_barraKeyPress(Sender: TObject; var Key: Char);
    procedure cbbsaldo_lojaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbsaldo_depositoKeyPress(Sender: TObject; var Key: Char);
    procedure cbbcompraKeyPress(Sender: TObject; var Key: Char);
    procedure cbbdes_maxKeyPress(Sender: TObject; var Key: Char);
    procedure cbbsit_tributariaKeyPress(Sender: TObject; var Key: Char);
    procedure btnexcluirClick(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure dbgrd1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbfornecedorButtonClick(Sender: TObject);
    procedure dbncmButtonClick(Sender: TObject);
  private
    procedure novo();
    procedure desisti();
    procedure edita();
    procedure deletar();
    procedure gravar();

    procedure busca_porcodigo();
    procedure busca_pornome();
    function  procura_por(valor : string) : string;

    procedure valores_compra_venda();
    { Private declarations }
  public
    procedure inicio();
    procedure campofalse();
    procedure campotrue();

    { Public declarations }
  end;

var
  Form5: TForm5;
  valor_compra, valor_venda: Double;


implementation

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
        desisti();
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  inherited;
        pgc1.ActivePage := ts1;
        pgc2.ActivePage := ts3;

        cdsprodutos.CommandText:='select * from produtos where status_produto='+QuotedStr('1') ;
        cdsprodutos.Close;
        cdsprodutos.Open;
        cdsprodutos.First;

        edt1.Visible:=False;

        campofalse();

        inicio();
end;

procedure TForm5.inicio();
begin
      btnnovo.Enabled:=True;
      btneditar.Enabled:=True;
      btngravar.Enabled:=False;
      btnexcluir.Enabled:=True;
      btndesistir.Enabled:=False;


      btninicio.Enabled:=True;
      btnanterio.Enabled:=True;
      btnproximo.Enabled:=True;
      btnultimo.Enabled:=True;
end;

procedure TForm5.btn10Click(Sender: TObject);
begin
  inherited;
       RelatorioProdutos.Print;
end;

procedure TForm5.btn12Click(Sender: TObject);
begin
  inherited;
     if (cbb1.Text='PROCURA POR') then
      begin
         messagebox (0,'Par�metro de busca errados','GSoft',mb_ok);
         Exit;
      end;

         if  (cbb2.Text='CRIT�RIO') then
      begin
         messagebox (0,'Par�metro de busca errados','GSoft',mb_ok);
         Exit;
      end;



           if (cbb1.Text='NOME') OR (cbb1.Text='FORNECEDOR') OR (cbb1.Text='STATUS') then
            begin
              if cbb2.Text='Cont�m' then
                 begin
                    cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+' like'+QuotedStr('%'+edt2.Text+'%');
                   end
                    else
                      if cbb2.Text='Inicia' then
                        begin
                          cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text+'%');
                        end
                          else
                            if cbb2.Text='Igual' then
                               begin
                                 cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text);
                               end
                                else
                                   begin
                                      cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+' not like'+QuotedStr('%'+edt2.Text+'%');
                                         end;
            end
              else if cbb1.Text='DATA DO CADASTRO' then
                begin
                    cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+cbb2.Text+QuotedStr(edt1.Text);


                end
                  else
                    begin
                       cdsprodutos.CommandText:='select * from produtos where '+procura_por(cbb1.Text)+cbb2.Text+ edt2.Text;

                    end;






            cdsprodutos.Close;
            cdsprodutos.Open;
            cdsprodutos.First;


end;

procedure TForm5.btn13Click(Sender: TObject);
begin
  inherited;

            cdsprodutos.CommandText:='select * from produtos where status_produto='+QuotedStr('1') ;
            cdsprodutos.Close;
            cdsprodutos.Open;
            cdsprodutos.First;

            edt1.Clear;
            edt2.Clear;
end;

procedure TForm5.btnanterioClick(Sender: TObject);
begin
  inherited;
    cdsprodutos.Edit;
    cdsprodutos.Prior;
    valores_compra_venda();
end;

procedure TForm5.btndesistirClick(Sender: TObject);
begin
  inherited;
    desisti();
end;

procedure TForm5.btneditarClick(Sender: TObject);
begin
  inherited;
      edita();
      valores_compra_venda();
end;

procedure TForm5.btnexcluirClick(Sender: TObject);
begin
  inherited;
      deletar();
end;

procedure TForm5.btngravarClick(Sender: TObject);
begin
  inherited;
        gravar();
end;

procedure TForm5.btninicioClick(Sender: TObject);
begin
  inherited;
    cdsprodutos.Edit;
    cdsprodutos.First;
    valores_compra_venda();
end;

procedure TForm5.btnnovoClick(Sender: TObject);
begin
  inherited;
      novo();
end;

procedure TForm5.btnproximoClick(Sender: TObject);
begin
  inherited;
      cdsprodutos.Edit;
      cdsprodutos.Next;
      valores_compra_venda();
end;

procedure TForm5.btnultimoClick(Sender: TObject);
begin
  inherited;
      cdsprodutos.Edit;
      cdsprodutos.Last;
      valores_compra_venda();
end;

procedure  TForm5.campofalse();
begin
  cbbdescricao.Enabled:=False;
  cbbespecie.Enabled:=False;
  marcacaostatus_produto.Enabled:=False;
  mmocomplemento.Enabled:=False;
  cbbmarca.Enabled:=False;
  cbbfabricante.Enabled:=False;
  cbbfornecedor.Enabled:=False;
  cbbcod_barra.Enabled:=False;
  dbncm.Enabled:=False;
  dbcean.Enabled:=False;

  cbbsaldo_loja.Enabled:=False;
  cbbsaldo_deposito.Enabled:=False;

  cbbcompra.Enabled:=False;
  cbbvenda.Enabled:=False;



  cbbdes_max.Enabled:=False;
  edtvalidade_produto.Enabled:=False;

end;

procedure  TForm5.campotrue();
begin
  cbbdescricao.Enabled:=True;
  cbbespecie.Enabled:=True;
  marcacaostatus_produto.Enabled:=True;
  mmocomplemento.Enabled:=True;
  cbbmarca.Enabled:=True;
  cbbfabricante.Enabled:=True;
  cbbfornecedor.Enabled:=True;
  cbbcod_barra.Enabled:=True;
  dbncm.Enabled:=True;
  dbcean.Enabled:=True;

  cbbsaldo_loja.Enabled:=True;
  cbbsaldo_deposito.Enabled:=True;

  cbbcompra.Enabled:=True;
  cbbvenda.Enabled:=True;



  cbbdes_max.Enabled:=True;
  edtvalidade_produto.Enabled:=True;

end;

procedure TForm5.cbb1Exit(Sender: TObject);
begin
  inherited;
       if cbb1.Text='C�DIGO' then
        begin
          busca_porcodigo;
          edt2.Visible:=True;
          edt1.Visible:=False;
        end;

       if cbb1.Text  = 'NOME' then
        BEGIN
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;

        END;

          if cbb1.Text  = 'FORNECEDOR' then
        BEGIN
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;

        END;

        if cbb1.Text  = 'STATUS' then
        BEGIN
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;
        END;


         if cbb1.Text  = 'DATA DO CADASTRO' then
        BEGIN
            busca_porcodigo;
            edt2.Visible:=False;
            edt1.Visible:=True;
        END;

         if cbb1.Text  = 'PRE�O DE VENDA' then
        BEGIN
            busca_porcodigo;
            edt2.Visible:=True;
            edt1.Visible:=False;
        END


end;

procedure TForm5.cbbcod_barraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
           if not (key in ['0'..'9','.',#8]) then

                 Key:=#0;
end;

procedure TForm5.cbbcompraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
              if not (key in ['0'..'9','.',#8]) then

                  Key:=#0;
end;

procedure TForm5.cbbdes_maxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
             if not (key in ['0'..'9','.',#8]) then

                  Key:=#0;
end;

procedure TForm5.cbbfornecedorButtonClick(Sender: TObject);
begin
  inherited;
      TuFrmbuscarfornecedor.ShowModal;
      cbbfornecedor.Text:=TuFrmbuscarfornecedor.nome_fornecedor;
end;

procedure TForm5.cbbicmsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
        if not (key in ['0'..'9','.',#8]) then

              Key:=#0;
end;

procedure TForm5.cbbsaldo_depositoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
             if not (key in ['0'..'9','.',#8]) then

                  Key:=#0;
end;

procedure TForm5.cbbsaldo_lojaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
             if not (key in ['0'..'9','.',#8]) then

                  Key:=#0;
end;

procedure TForm5.cbbsit_tributariaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
            if not (key in ['0'..'9','.',#8]) then

                 Key:=#0;
end;

procedure TForm5.chk1Click(Sender: TObject);
begin
  inherited;
         //AQUI
  if (chk1.Checked) then
        begin
               cdsprodutos.CommandText:='select * from produtos ';
               cdsprodutos.Close;
               cdsprodutos.Open;
        end
          else
          begin
               cdsprodutos.CommandText:='select * from produtos where status_produto='+QuotedStr('1') ;
               cdsprodutos.Close;
               cdsprodutos.Open;
          end;
end;

procedure TForm5.novo();
begin
       campotrue();

       pgc1.ActivePage := ts2;


       btnnovo.Enabled:=False;
       btngravar.Enabled:=True;
       btndesistir.Enabled:=True;

       btninicio.Enabled:=False;
       btnproximo.Enabled:=False;
       btnanterio.Enabled:=False;
       btnultimo.Enabled:=False;
       btneditar.Enabled:=False;
       btnexcluir.Enabled:=False;

       cdsprodutos.Append;
       cdsprodutos.FieldByName('status_produto').Text := '1';

       edtdata_cadastro.Date:=Date;
       edtultimo_reajuste.Date:=Date;
end;

procedure TForm5.desisti();
begin
     cdsprodutos.Cancel;

     pgc1.ActivePage := ts1;

     inicio();

end;

procedure TForm5.edita();
begin
      cdsprodutos.Edit;
      pgc1.ActivePage := ts2;

      btngravar.Enabled:=True;
      btndesistir.Enabled:=True;
      btneditar.Enabled:=False;


      campotrue();






end;

procedure TForm5.dbgrd1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
               if Key= VK_RETURN then
                begin
                   edita();
                end;
end;

procedure TForm5.dbncmButtonClick(Sender: TObject);
begin
  inherited;
  buscaNCM.ShowModal;
  dbncm.text:=buscaNCM.numero;
end;

procedure TForm5.deletar();
begin
     try

          cdsprodutos.Delete;
          cdsprodutos.ApplyUpdates(0);
          cdsprodutos.RefreshRecord;
      except


          // messagebox (0,'N�o pode ser deletado','GSoft',mb_ok);


      end;
end;

procedure TForm5.gravar();
begin
             if (cbbdescricao.Text = '')  then
               begin

                messagebox (0,'Campo Descri��o � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

             if (cbbespecie.Text = '')  then
               begin

                messagebox (0,'Campo Esp�cie � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;


                   if ( cbbfornecedor.Text = '')  then
               begin

                messagebox (0,'Campo Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;
                    

                if ( cbbcompra.Text = '')  then
               begin

                messagebox (0,'Campo Valor de compra � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if ( cbbvenda.Text = '')  then
               begin

                messagebox (0,'Campo Valor de venda � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                     if ( dbncm.Text = '')  then
               begin

                messagebox (0,'Campo Valor de compra � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if ( dbcean.Text = '')  then
               begin

                messagebox (0,'Campo Valor de venda � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;


                   if not (FloatToStr(valor_compra)=cbbcompra.Text) or not(FloatToStr(valor_venda)=cbbvenda.Text) then
                     begin
                          edtultimo_reajuste.Date:=Date;
                     end;




                    cdsprodutos.Post;
                    cdsprodutos.ApplyUpdates(0);

                    cdsprodutos.Insert;
                    cdsprodutos.Close;
                    cdsprodutos.Open;
                    cdsprodutos.Insert;


                    pgc1.ActivePage := ts1;


                    cdsprodutos.First;

                    btneditar.Enabled:=True;
                    btnnovo.Enabled:=True;
                    btninicio.Enabled:=True;
                    btnproximo.Enabled:=True;
                    btnanterio.Enabled:=True;
                    btnultimo.Enabled:=True;
                    btnexcluir.Enabled:=True;

                    btngravar.Enabled:=False;
                    btndesistir.Enabled:=False;



                    campofalse();
end;


procedure TForm5.busca_porcodigo();
begin
  cbb2.Clear;
  cbb2.Items.Add('=');
  cbb2.Items.Add('>=');
  cbb2.Items.Add('<=');
  cbb2.Items.Add('>');
  cbb2.Items.Add('<');
  cbb2.Items.Add('<>');

end;

procedure TForm5.busca_pornome();
begin
  cbb2.Clear;
  cbb2.Items.Add('Cont�m');
  cbb2.Items.Add('Inicia');
  cbb2.Items.Add('Igual');
  cbb2.Items.Add('N�o Cont�m');


end;


function TForm5.procura_por(valor : string) : string;
begin
     if valor='C�DIGO' then
        begin
          Result:='codigo';
        end
        else
          if valor='NOME' then
            begin
                    Result:='descricao';
            end
              else
                if valor='FORNECEDOR' then
                  begin
                    Result:='fornecedor';
                  end
                    else
                      if valor='STATUS' then
                        begin
                             Result:='status_produto';
                        end
                          else
                            if valor='DATA DO CADASTRO' then
                              begin
                               Result:='data_cadastro';
                                   end
                                    else
                                      begin
                                          Result:='venda';
                                         end;

end;

procedure TForm5.valores_compra_venda();
begin
      valor_compra:=StrToFloat(cbbcompra.Text);
      valor_venda:=StrToFloat(cbbvenda.Text);
end;

end.
