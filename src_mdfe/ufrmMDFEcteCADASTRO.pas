unit ufrmMDFEcteCADASTRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultCadastro, Data.DB, ACBrBase,
  ACBrEnterTab, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, JvComCtrls,
  JvExControls, JvSpeedButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvBaseEdits, JvDBControls,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvDBLookup, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvgGroupBox, Vcl.DBCtrls, JvDBCheckBox,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, ACBrDFe, ACBrCTe;

type
  TfrmMDFEcteCADASTRO = class(TfrmDefaultCadastro)
    JvgGroupBox15: TJvgGroupBox;
    Label16: TLabel;
    Município: TLabel;
    ID_CHAVE: TJvDBMaskEdit;
    ID_CIDADES_IBGE: TJvDBMaskEdit;
    ID_IND_REENTREGA: TJvDBCheckBox;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    JvgGroupBox2: TJvgGroupBox;
    Panel1: TPanel;
    btnUNIDTRANSexcluir: TJvSpeedButton;
    btnUNIDTRANSincluir: TJvSpeedButton;
    gridLocalCarregamento: TJvDBGrid;
    btnUNIDTRANSalterar: TJvSpeedButton;
    dtstabMDFE_CTE_UNIDTRANS: TDataSource;
    BitBtn1: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    FileOpenDialog1: TFileOpenDialog;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnUNIDTRANSincluirClick(Sender: TObject);
    procedure btnUNIDTRANSalterarClick(Sender: TObject);
    procedure btnUNIDTRANSexcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtstabMDFE_CTE_UNIDTRANSDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
  private
    FOperacao: TOperacao;
  public
    class procedure Novo;
    class procedure Alterar;
  end;

var
  frmMDFEcteCADASTRO: TfrmMDFEcteCADASTRO;

implementation

{$R *.dfm}

uses udtmMDFE, ufrmMDFEcteCADASTROunidTRANSPORTE, uclassEMPRESA, pcteConversaoCTe;

{ TfrmMDFEcteCADASTRO }

class procedure TfrmMDFEcteCADASTRO.Alterar;
begin
  frmMDFEcteCADASTRO := TfrmMDFEcteCADASTRO.Create(Nil);
  try
    frmMDFEcteCADASTRO.FOperacao := TEditar;
    frmMDFEcteCADASTRO.FOperacao := TEditar;
    frmMDFEcteCADASTRO.ID_CHAVE.Enabled := False;
    frmMDFEcteCADASTRO.btnConfirmar.Enabled := False;

    frmMDFEcteCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEcteCADASTRO);
  end;
end;

procedure TfrmMDFEcteCADASTRO.BitBtn1Click(Sender: TObject);
begin
  inherited;

  FileOpenDialog1.DefaultFolder := dtmMDFE.ACBrCTe.Configuracoes.Arquivos.PathSalvar;

  if FileOpenDialog1.Execute then
  begin
    dtmMDFE.ACBrCTe.Conhecimentos.Clear;
    dtmMDFE.ACBrCTe.Conhecimentos.LoadFromFile(FileOpenDialog1.FileName);

    if dtmMDFE.ACBrCTe.Conhecimentos.Count > 0 then
    begin
   {   if dtmMDFE.tabMDFE.State in [dsInsert, dsEdit] then
      begin
        dtmMDFE.tabMDFE.Post;
      end;}
      with dtmMDFE.ACBrCTe.Conhecimentos[0] do
      begin
        //dtmMDFE.tabMDFE_CTE.Append;
        if dtmMDFE.tabMDFE_CTE.State in [dsBrowse]  then
           dtmMDFE.tabMDFE_CTE.Edit;


        dtmMDFE.tabMDFE_CTEXML_CTE.LoadFromFile(FileOpenDialog1.FileName);
        dtmMDFE.tabMDFE_CTEID_CHAVE.AsString := NumID;
        dtmMDFE.tabMDFE_CTElookCIDADE.AsInteger := CTe.Ide.cMunFim;


      {  if CTe.Ide.retira = rtSim then
        begin
          dtmMDFE.tabMDFE_CTEID_IND_REENTREGA.AsString := 'S'
        end
        else if CTe.Ide.retira = rtNao then
          dtmMDFE.tabMDFE_CTEID_IND_REENTREGA.AsString := 'N'
        else
          raise Exception.Create('Não foi possível mapear o indicador de reentrega no cadastro/importação do CTe');}

        // Parâmetros do método Enviar:
        // 1o = Número do Lote
        // 2o = Se True imprime automaticamente o DACTE
        // 3o = True o envio é no modo Síncrono OBRIGATORIAMENTE
        // Obs: no modo Síncrono só podemos enviar UM CT-e por vez.
        // ACBrCTe1.Enviar(1, True, True);

        dtmMDFE.tabMDFE_CTE.Post;
      end;
    end
    else
      ShowMessage('Não foi possível carregar nenhum CT-e do arquivo selecionado.');
  end;
end;

procedure TfrmMDFEcteCADASTRO.btnCancelarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  if dtsDefault.DataSet.State in [dsInsert] then
    dtsDefault.DataSet.Cancel;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmMDFEcteCADASTRO.btnConfirmarClick(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL, 0, 0);

  try
    if dtsDefault.DataSet.State in [dsInsert] then
      dtsDefault.DataSet.Post;

    FFecharOK := True;

    Self.Close;
    Self.ModalResult := mrOk;
  except
    on E: Exception do
    begin
      raise Exception.Create('Ocorreu o erro abaixo no processo, favor contactar suporte!' + sLineBreak + sLineBreak + E.Message);
    end;
  end;
end;

procedure TfrmMDFEcteCADASTRO.btnUNIDTRANSalterarClick(Sender: TObject);
begin
  TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Alterar;
end;

procedure TfrmMDFEcteCADASTRO.btnUNIDTRANSexcluirClick(Sender: TObject);
begin
  TFDQuery(dtstabMDFE_CTE_UNIDTRANS.DataSet).Delete;
end;

procedure TfrmMDFEcteCADASTRO.btnUNIDTRANSincluirClick(Sender: TObject);
begin
  if TFDQuery(dtsDefault.DataSet).State in [dsInsert] then
    TFDQuery(dtsDefault.DataSet).Post;

  TfrmMDFEcteCADASTROunidTRANSPORTEcadastro.Novo;
end;

procedure TfrmMDFEcteCADASTRO.dtstabMDFE_CTE_UNIDTRANSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabMDFE_CTE_UNIDTRANS.DataSet) then
  begin
    btnUNIDTRANSalterar.Enabled := TFDQuery(dtstabMDFE_CTE_UNIDTRANS.DataSet).RecordCount > 0;
    btnUNIDTRANSexcluir.Enabled := TFDQuery(dtstabMDFE_CTE_UNIDTRANS.DataSet).RecordCount > 0;

    btnConfirmar.Enabled := (FOperacao = TIncluir) and (dtstabMDFE_CTE_UNIDTRANS.DataSet.IsEmpty);
    ID_CHAVE.Enabled := (FOperacao = TIncluir) and (dtstabMDFE_CTE_UNIDTRANS.DataSet.IsEmpty);
  end;
end;

procedure TfrmMDFEcteCADASTRO.FormCreate(Sender: TObject);
begin
  dtsDefault.DataSet := dtmMDFE.tabMDFE_CTE;
  dtstabMDFE_CTE_UNIDTRANS.DataSet := dtmMDFE.tabMDFE_CTE_UNIDTRANS;

  inherited;
end;

class procedure TfrmMDFEcteCADASTRO.Novo;
begin
  frmMDFEcteCADASTRO := TfrmMDFEcteCADASTRO.Create(Nil);
  try
    frmMDFEcteCADASTRO.FOperacao := TIncluir;
    TFDQuery(frmMDFEcteCADASTRO.dtsDefault.DataSet).Append;

    frmMDFEcteCADASTRO.ShowModal;
  finally
    FreeAndNil(frmMDFEcteCADASTRO);
  end;
end;

end.
