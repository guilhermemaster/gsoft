unit uFrmcadastrofornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmlayout, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Datasnap.DBClient, RzButton, RzRadChk, RzDBChk, RzDBEdit, uFrmclientes,
  RzDBBnEd,uFrmbuscacidade, uXDbEdit, ppCtrls, dxGDIPlusClasses, ppVar, ppBands,
  ppPrnabl, ppClass, ppCache, ppDB, ppDesignLayer, ppParameter, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TTFurmcadastrofornecedor = class(TForm4)
    cdsfornecedor: TClientDataSet;
    coluncdsfornecedoridfornecedor: TIntegerField;
    coluncdsfornecedornome: TWideStringField;
    coluncdsfornecedorcep: TWideStringField;
    coluncdsfornecedorendereco: TWideStringField;
    coluncdsfornecedorcidade: TWideStringField;
    coluncdsfornecedoruf: TWideStringField;
    coluncdsfornecedorcomissao: TFloatField;
    coluncdsfornecedorcnpj: TWideStringField;
    colun_estadual: TWideStringField;
    coluncdsfornecedoremail: TWideStringField;
    colun_1: TWideStringField;
    colun_2: TWideStringField;
    colun_cadastro: TDateField;
    colun_fornecedor: TWideStringField;
    coluncdsfornecedorobser: TWideStringField;
    dsfornecedor: TDataSource;
    dbgrd1: TDBGrid;
    lbl11: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtendereco: TDBEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtcomissao: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edtemail: TDBEdit;
    lbl12: TLabel;
    edtstatus_fornecedor: TDBEdit;
    lbl13: TLabel;
    mmoobser: TRzDBMemo;
    lbl14: TLabel;
    edtnome: TDBEdit;
    edtcep: TDBEdit;
    edtcnpj: TDBEdit;
    edttelefone_2: TDBEdit;
    marcacaostatus_fornecedor: TRzDBCheckBox;
    edtinsc_estadual: TDBEdit;
    edtuf: TDBEdit;
    edtdata_cadastro: TRzDBDateTimeEdit;
    lbl15: TLabel;
    edtcidade: TxDbButtonEdit;
    pdbplnfornecedor: TppDBPipeline;
    Relatoriofornecedor: TppReport;
    prmtrlst1: TppParameterList;
    pdsgnlyrs1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
    phdrbnd1: TppHeaderBand;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    pshp1: TppShape;
    psmrybnd2: TppSummaryBand;
    pln1: TppLine;
    plbl12: TppLabel;
    plbl8: TppLabel;
    psystmvrbl1: TppSystemVariable;
    plbl9: TppLabel;
    psystmvrbl2: TppSystemVariable;
    psystmvrbl3: TppSystemVariable;
    pmg1: TppImage;
    plbl2: TppLabel;
    plbl14: TppLabel;
    pdbtxtidfornecedor: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    plbl7: TppLabel;
    pdbclc2: TppDBCalc;
    procedure btnnovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btndesistirClick(Sender: TObject);
    procedure btninicioClick(Sender: TObject);
    procedure btnanterioClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure edtcidadeButtonClick(Sender: TObject);
    procedure edtcnpjKeyPress(Sender: TObject; var Key: Char);
    procedure chk1Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure btn12Click(Sender: TObject);
  private
    procedure novo();
    procedure editar();
    procedure deletar();
    procedure desistir();
    procedure gravar();


    procedure campotrue();
    procedure campofalse();

    procedure busca_porcodigo();
    procedure busca_pornome();
    function  procura_por(valor : string) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TFurmcadastrofornecedor: TTFurmcadastrofornecedor;

implementation

{$R *.dfm}

procedure TTFurmcadastrofornecedor.btn10Click(Sender: TObject);
begin
  inherited;
       Relatoriofornecedor.Print;
end;

procedure TTFurmcadastrofornecedor.btn12Click(Sender: TObject);
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



           if (cbb1.Text='NOME') OR (cbb1.Text='CNPJ') OR (cbb1.Text='I.E.') then
            begin
              if cbb2.Text='Cont�m' then
                 begin

                    cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+' like'+QuotedStr('%'+edt2.Text+'%');
                   end
                    else
                      if cbb2.Text='Inicia' then
                        begin
                          cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text+'%');
                        end
                          else
                            if cbb2.Text='Igual' then
                               begin
                                 cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text);
                               end
                                else
                                   begin
                                      cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+' not like'+QuotedStr('%'+edt2.Text+'%');
                                         end;
            end
              else if cbb1.Text='DATA DO CADASTRO' then
                begin
                    cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+cbb2.Text+QuotedStr(edt1.Text);


                end
                  else
                    begin
                       cdsfornecedor.CommandText:='select * from fornecedores where '+procura_por(cbb1.Text)+cbb2.Text+ edt2.Text;

                    end;






            cdsfornecedor.Close;
            cdsfornecedor.Open;
            cdsfornecedor.First;
end;

procedure TTFurmcadastrofornecedor.btnanterioClick(Sender: TObject);
begin
  inherited;
    cdsfornecedor.Edit;
    cdsfornecedor.Prior;
end;

procedure TTFurmcadastrofornecedor.btndesistirClick(Sender: TObject);
begin
  inherited;
      desistir();
end;

procedure TTFurmcadastrofornecedor.btneditarClick(Sender: TObject);
begin
  inherited;
       editar();
end;

procedure TTFurmcadastrofornecedor.btnexcluirClick(Sender: TObject);
begin
  inherited;
       deletar();
end;

procedure TTFurmcadastrofornecedor.btngravarClick(Sender: TObject);
begin
  inherited;
        gravar();
end;

procedure TTFurmcadastrofornecedor.btninicioClick(Sender: TObject);
begin
  inherited;

     cdsfornecedor.Edit;
     cdsfornecedor.First;
end;

procedure TTFurmcadastrofornecedor.btnnovoClick(Sender: TObject);
begin
  inherited;
         novo();
end;

procedure TTFurmcadastrofornecedor.btnproximoClick(Sender: TObject);
begin
  inherited;
      cdsfornecedor.Edit;
      cdsfornecedor.Next;
end;

procedure TTFurmcadastrofornecedor.btnultimoClick(Sender: TObject);
begin
  inherited;
     cdsfornecedor.Edit;
     cdsfornecedor.Last;
end;

procedure TTFurmcadastrofornecedor.deletar();
begin
     try
         cdsfornecedor.Delete;
           cdsfornecedor.ApplyUpdates(0);
             cdsfornecedor.RefreshRecord;
      except


           messagebox (0,'N�o pode ser deletado','GSoft',mb_ok);


      end;
end;

procedure TTFurmcadastrofornecedor.desistir();
begin

             cdsfornecedor.Cancel;

             inicio();

             pgc1.ActivePage := ts1;
end;

procedure TTFurmcadastrofornecedor.editar();
begin
      cdsfornecedor.Edit;
      pgc1.ActivePage := ts2;

        btngravar.Enabled:=True;
        btndesistir.Enabled:=True;
        btneditar.Enabled:=False;

                      campotrue();
end;

procedure TTFurmcadastrofornecedor.edtcidadeButtonClick(Sender: TObject);
begin
  inherited;
        //aqui
        Form3.ShowModal;
        edtcidade.Text:=Form3.cidadenome;
        edtuf.Text:=Form3.estadonome;
end;

procedure TTFurmcadastrofornecedor.edtcnpjKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
             if not (key in ['0'..'9','.',#8]) then

                         Key:=#0;
end;

procedure TTFurmcadastrofornecedor.gravar();
begin
             if (edtnome.Text = '')  then
               begin

                messagebox (0,'Campo Nome do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                if (edtcep.Text = '     -    ')  then
               begin

                messagebox (0,'Campo CEP � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                 if (edtendereco.Text = '')  then
               begin

                messagebox (0,'Campo Endere�o do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if (edtcidade.Text = '')  then
               begin

                messagebox (0,'Campo Munic�pio do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;



                   if (edtcnpj.Text = '')  then
               begin

                messagebox (0,'Campo CNPJ do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if (edtinsc_estadual.Text = '')  then
               begin

                messagebox (0,'Campo Inscri��o Estadual do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if (edtemail.Text = '')  then
               begin

                messagebox (0,'Campo Email do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

                   if (edtstatus_fornecedor.Text = '(   )   -    ')  then
               begin

                messagebox (0,'Campo Telefone do Fornecedor � obrigat�rio.','GSoft',mb_ok);
               Exit;
                   end;

               if not (Form2.cnpj(edtcnpj.Text)) then
               begin
                messagebox (0,'O CNPJ n�o � v�lido.','GSoft',mb_ok);
                Exit;
               end;

               if not (Form2.ValidarEMail(edtemail.Text)) then
                begin
                   messagebox (0,'Email Errado.','GSoft',mb_ok);
                   Exit;
                end;


               if  ( StrToIntDef(edtinsc_estadual.Text, 0) = 0 ) and (not (edtinsc_estadual.Text = 'ISENTO')) then
                   begin
                       messagebox (0,'Inscri��es Estaduais nos Par�mentros Invalidos!!!','GSoft',mb_ok);
                       Exit;
                   end;



                    cdsfornecedor.Post;
                    cdsfornecedor.ApplyUpdates(0);

                    cdsfornecedor.Insert;
                    cdsfornecedor.Close;
                    cdsfornecedor.Open;
                    cdsfornecedor.Insert;


                    pgc1.ActivePage := ts1;


                    cdsfornecedor.First;

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




procedure TTFurmcadastrofornecedor.novo();
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

       cdsfornecedor.Append;
       cdsfornecedor.FieldByName('status_fornecedor').Text := '1';

       edtdata_cadastro.Date:=Date;

end;

procedure TTFurmcadastrofornecedor.FormShow(Sender: TObject);
begin
  inherited;
        pgc1.ActivePage := ts1;


        cdsfornecedor.CommandText:='select * from fornecedores where status_fornecedor ='+QuotedStr('1') ;
        cdsfornecedor.Close;
        cdsfornecedor.Open;
        cdsfornecedor.First;

        edt1.Visible:=False;

        campofalse();

        inicio();
end;

procedure TTFurmcadastrofornecedor.campotrue();
 begin
   edtnome.Enabled:=True;
   marcacaostatus_fornecedor.Enabled:=True;
   edtcep.Enabled:=True;
   edtendereco.Enabled:=True;
   edtcidade.Enabled:=True;
   edtcomissao.Enabled:=True;
   edtcnpj.Enabled:=True;
   edtinsc_estadual.Enabled:=True;
   edtemail.Enabled:=True;
   edtstatus_fornecedor.Enabled:=True;
   edttelefone_2.Enabled:=True;
   mmoobser.Enabled:=True;
 end;

 procedure TTFurmcadastrofornecedor.cbb1Exit(Sender: TObject);
begin
  inherited;
      if cbb1.Text='C�DIGO DO FORNECEDOR' then
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

          if cbb1.Text  = 'CNPJ' then
        BEGIN
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;

        END;

        if cbb1.Text  = 'I.E.' then
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

procedure TTFurmcadastrofornecedor.chk1Click(Sender: TObject);
begin
  inherited;
        //aqui

  if (chk1.Checked) then
        begin

               cdsfornecedor.CommandText:='select * from fornecedores ';
               cdsfornecedor.Close;
               cdsfornecedor.Open;
        end
          else
          begin
               cdsfornecedor.CommandText:='select * from fornecedores where status_fornecedor='+QuotedStr('1') ;
               cdsfornecedor.Close;
               cdsfornecedor.Open;
          end;
end;

procedure TTFurmcadastrofornecedor.campofalse();
 begin
   edtnome.Enabled:=True;
   marcacaostatus_fornecedor.Enabled:=True;
   edtcep.Enabled:=True;
   edtendereco.Enabled:=True;
   edtcidade.Enabled:=True;
   edtcomissao.Enabled:=True;
   edtcnpj.Enabled:=True;
   edtinsc_estadual.Enabled:=True;
   edtemail.Enabled:=True;
   edtstatus_fornecedor.Enabled:=True;
   edttelefone_2.Enabled:=True;
   mmoobser.Enabled:=True;
 end;

 procedure TTFurmcadastrofornecedor.busca_porcodigo();
begin
  cbb2.Clear;
  cbb2.Items.Add('=');
  cbb2.Items.Add('>=');
  cbb2.Items.Add('<=');
  cbb2.Items.Add('>');
  cbb2.Items.Add('<');
  cbb2.Items.Add('<>');

end;

procedure TTFurmcadastrofornecedor.busca_pornome();
begin
  cbb2.Clear;
  cbb2.Items.Add('Cont�m');
  cbb2.Items.Add('Inicia');
  cbb2.Items.Add('Igual');
  cbb2.Items.Add('N�o Cont�m');


end;

function TTFurmcadastrofornecedor.procura_por(valor : string) : string;
begin
     if valor='C�DIGO DO FORNECEDOR' then
        begin
          Result:='idfornecedor';
        end
        else
          if valor='NOME' then
            begin
                    Result:='nome';
            end
              else
                if valor='CNPJ' then
                  begin
                    Result:='cnpj';
                  end
                    else
                      if valor='I.E.' then
                        begin
                             Result:='insc_estadual';
                        end
                          else
                             begin
                                Result:='data_cadastro';
                                         end;

end;


end.


