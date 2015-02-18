unit uFrmcadastrodemunicipios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmlayout, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, RzDBEdit, RzDBBnEd, uXDbEdit, uFrmbuscarestado,
  RzBtnEdt, uXEdit, uFrmpnte, Vcl.DBCtrls, ppVar, ppCtrls, dxGDIPlusClasses,
  ppBands, ppPrnabl, ppClass, ppCache, ppDB, ppDesignLayer, ppParameter, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TFuFrmcadastrodemunicipios = class(TForm4)
    dsmunicipio: TDataSource;
    lbl11: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    btndbe1: TxDbButtonEdit;
    edtnomeestado: TDBEdit;
    edtcodigo: TDBEdit;
    edtnome: TDBEdit;
    cdsmunicipio: TClientDataSet;
    coluncdsmunicipioid: TIntegerField;
    coluncdsmunicipionome: TWideStringField;
    coluncdsmunicipiosigla: TWideStringField;
    colun_1: TWideStringField;
    dbgrd1: TDBGrid;
    colun_ibge: TIntegerField;
    pdbplnmunicipio: TppDBPipeline;
    Relatoriomunicipio: TppReport;
    prmtrlst1: TppParameterList;
    pdsgnlyrs1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
    phdrbnd1: TppHeaderBand;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    pshp1: TppShape;
    pln1: TppLine;
    plbl12: TppLabel;
    plbl2: TppLabel;
    pmg1: TppImage;
    psystmvrbl3: TppSystemVariable;
    plbl8: TppLabel;
    plbl9: TppLabel;
    psystmvrbl1: TppSystemVariable;
    psystmvrbl2: TppSystemVariable;
    plbl14: TppLabel;
    pdbtxtid: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    plbl7: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    pdbclc2: TppDBCalc;
    procedure btndbe1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btninicioClick(Sender: TObject);
    procedure btnanterioClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);
    procedure btnultimoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btndesistirClick(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure cbb1Exit(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
  private
    id_estado: string;
    procedure campofalse();
    procedure campotrue();

    procedure gravar();
    procedure novo();
    procedure editar();
    procedure deletar();
    procedure desistir();

    function procura_por(valor : string) : string;
    procedure busca_porcodigo();
    procedure busca_pornome();
     { Private declarations }
  public
    { Public declarations }
  end;

var
  FuFrmcadastrodemunicipios: TFuFrmcadastrodemunicipios;

implementation

{$R *.dfm}

procedure TFuFrmcadastrodemunicipios.btn10Click(Sender: TObject);
begin
  inherited;
        Relatoriomunicipio.Print;
end;

procedure TFuFrmcadastrodemunicipios.btn12Click(Sender: TObject);
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


                 if (cbb1.Text='NOME DA CIDADE') OR (cbb1.Text='UF') then
            begin
              if cbb2.Text='Cont�m' then
                 begin
                    cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id where '+procura_por(cbb1.Text)+' like'+QuotedStr('%'+edt2.Text+'%');
                   end
                    else
                      if cbb2.Text='Inicia' then
                        begin
                          cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text+'%');
                        end
                          else
                            if cbb2.Text='Igual' then
                               begin
                                 cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id where '+procura_por(cbb1.Text)+' like'+QuotedStr(edt2.Text);
                               end
                                else
                                   begin
                                      cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id where '+procura_por(cbb1.Text)+' not like'+QuotedStr('%'+edt2.Text+'%');
                                         end;
            end
                else
                    begin
                       cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id where '+procura_por(cbb1.Text)+cbb2.Text+ edt2.Text;

                    end;


            cdsmunicipio.Close;
            cdsmunicipio.Open;
            cdsmunicipio.First;

end;

procedure TFuFrmcadastrodemunicipios.btn13Click(Sender: TObject);
begin
  inherited;
            cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id' ;
            cdsmunicipio.Close;
            cdsmunicipio.Open;
            cdsmunicipio.First;

            edt1.Clear;
            edt2.Clear;
end;

procedure TFuFrmcadastrodemunicipios.btnanterioClick(Sender: TObject);
begin
  inherited;
      cdsmunicipio.Edit;
      cdsmunicipio.Prior;
end;

procedure TFuFrmcadastrodemunicipios.btndbe1ButtonClick(Sender: TObject);
begin
  inherited;
        Tufrmbuscarestado.ShowModal;
        btndbe1.Text:=Tufrmbuscarestado.sigla;
        edtnomeestado.Text:=Tufrmbuscarestado.nome;
        colun_ibge.Text:=Tufrmbuscarestado.numero;
        id_estado:=Tufrmbuscarestado.numero;
end;

procedure TFuFrmcadastrodemunicipios.btndesistirClick(Sender: TObject);
begin
  inherited;
    desistir();
end;

procedure TFuFrmcadastrodemunicipios.btneditarClick(Sender: TObject);
begin
  inherited;
         editar();

end;

procedure TFuFrmcadastrodemunicipios.btnexcluirClick(Sender: TObject);
begin
  inherited;
        deletar();
end;

procedure TFuFrmcadastrodemunicipios.FormShow(Sender: TObject);
begin
  inherited;
        pgc1.ActivePage := ts1;


       // cdsmunicipio.CommandText:='select cidades.id, cidades.nome, cidades.codigo_ibge, estados.sigla, estados.nome from cidades join estados on cidades.estado_id=estados.id' ;
        cdsmunicipio.Close;
        cdsmunicipio.Open;
        cdsmunicipio.First;

        edt1.Visible:=False;

        campofalse();

        inicio();
end;

procedure TFuFrmcadastrodemunicipios.btngravarClick(Sender: TObject);
begin
  inherited;
          gravar();
end;

procedure TFuFrmcadastrodemunicipios.btninicioClick(Sender: TObject);
begin
  inherited;
   cdsmunicipio.Edit;
   cdsmunicipio.First;
end;

procedure TFuFrmcadastrodemunicipios.btnnovoClick(Sender: TObject);
begin
  inherited;
           novo();
end;

procedure TFuFrmcadastrodemunicipios.btnproximoClick(Sender: TObject);
begin
  inherited;
       cdsmunicipio.Edit;
       cdsmunicipio.Next;
end;

procedure TFuFrmcadastrodemunicipios.btnultimoClick(Sender: TObject);
begin
  inherited;
     cdsmunicipio.Edit;
     cdsmunicipio.Last;
end;

procedure TFuFrmcadastrodemunicipios.campofalse();
begin
         btndbe1.Enabled:=False;
         edtcodigo.Enabled:=False;
         edtnome.Enabled:=False;

end;

procedure TFuFrmcadastrodemunicipios.campotrue();
begin
         btndbe1.Enabled:=True;
         edtcodigo.Enabled:=True;
         edtnome.Enabled:=True;
end;

procedure TFuFrmcadastrodemunicipios.cbb1Exit(Sender: TObject);
begin
  inherited;
       if cbb1.Text='NOME DA CIDADE' then
        begin
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;
        end;

       if cbb1.Text  = 'UF' then
        BEGIN
          busca_pornome;
          edt2.Visible:=True;
          edt1.Visible:=False;

        END;

          if cbb1.Text  = 'C�DIGO GERAL' then
        BEGIN
          busca_porcodigo;
          edt2.Visible:=True;
          edt1.Visible:=False;

        END;


end;

procedure TFuFrmcadastrodemunicipios.gravar();
var
  sql : TDataSet;
  query : TStringBuilder;
begin

if not (id_estado='') then
begin
query := TStringBuilder.Create;
query.AppendFormat('insert into cidades (nome, codigo_ibge, estado_id) values(%s, %d, %d)',[QuotedStr(edtnome.Text), colun_ibge.AsInteger, StrToInt(id_estado)]);
ponte.sqlqryparametros.Close;
ponte.sqlqryparametros.SQL.Clear;
ponte.sqlqryparametros.SQL.Add(query.ToString);
ponte.sqlqryparametros.ExecSQL();
FreeAndNil(query);
end
  else
    begin
       messagebox (0,'Munic�pio j� cadastrado.','GSoft',mb_ok);
    end;






end;

procedure TFuFrmcadastrodemunicipios.novo();
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

       cdsmunicipio.Append;
end;

procedure TFuFrmcadastrodemunicipios.editar();
begin
          cdsmunicipio.Edit;
          pgc1.ActivePage := ts2;

          btngravar.Enabled:=True;
          btndesistir.Enabled:=True;
          btneditar.Enabled:=False;


          campotrue();
end;

procedure TFuFrmcadastrodemunicipios.deletar();
begin
          try

          cdsmunicipio.Delete;
          cdsmunicipio.ApplyUpdates(0);
          cdsmunicipio.RefreshRecord;
      except


          // messagebox (0,'N�o pode ser deletado','GSoft',mb_ok);


      end;
end;

procedure TFuFrmcadastrodemunicipios.desistir();
begin
       cdsmunicipio.Cancel;

       pgc1.ActivePage := ts1;

       inicio();

end;

function TFuFrmcadastrodemunicipios.procura_por(valor : string) : string;
begin
     if valor='NOME DA CIDADE' then
        begin
          Result:='cidades.nome';
        end
        else
          if valor='UF' then
            begin
            Result:='estados.sigla';
            end
              else
               begin
                Result:='codigo_ibge';
                 end;

end;

procedure TFuFrmcadastrodemunicipios.busca_porcodigo();
begin
  cbb2.Clear;
  cbb2.Items.Add('=');
  cbb2.Items.Add('>=');
  cbb2.Items.Add('<=');
  cbb2.Items.Add('>');
  cbb2.Items.Add('<');
  cbb2.Items.Add('<>');

end;

procedure TFuFrmcadastrodemunicipios.busca_pornome();
begin
  cbb2.Clear;
  cbb2.Items.Add('Cont�m');
  cbb2.Items.Add('Inicia');
  cbb2.Items.Add('Igual');
  cbb2.Items.Add('N�o Cont�m');


end;

end.
