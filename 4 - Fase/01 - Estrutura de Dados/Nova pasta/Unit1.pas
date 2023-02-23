unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, XPMan, ExtCtrls, jpeg;

const
  Tam = 28;
type
  	Matriz    = array[1..Tam,1..Tam] of Double;
	  Vertices  = array[1..200] of Integer;
	  Caminho   = array[1..200] of Double;
	  SeqTrueFalse = array[1..200] of Boolean;
    Municipios = array[1..tam] of string;

type
  TForm1 = class(TForm)
    conn: TADOConnection;
    QueryOrigem: TADOQuery;
    xpmnfst1: TXPManifest;
    pnlLateral: TPanel;
    cbbOrigem: TComboBox;
    cbbDestino: TComboBox;
    btnCalcular: TButton;
    lblOrigem: TLabel;
    lblDestino: TLabel;
    pnlImagem: TPanel;
    pnlResultado: TPanel;
    img: TImage;
    lblResultadoApresentado: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure cbbDestinoClick(Sender: TObject);
    procedure cbbOrigemClick(Sender: TObject);
  private
    function getgerarmatriz(var aM: Matriz; iQtdVertice: Integer): Boolean;
    function getgeracaminho(aM: Matriz; var aVF: SeqTrueFalse; var aCami: Caminho; var aAnt: Vertices; iOrigem, iDestino, iQtdVertice: Integer; var iFim: Integer): Boolean;
    function getmostrarresultado(aVert: Municipios; aM: Matriz; var aVF: SeqTrueFalse; var aCami: Caminho; var aAnt: Vertices; iOrigem, iDestino, iQtdVertice: Integer): Boolean;
    procedure carregarvalores;
    procedure limparvalores;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iQtdVert: Integer;
  aMatriz: Matriz;
	aVertice: Vertices;
	aCaminho: Caminho;
  aAnterior: Vertices;
	aSeqtruefalse: SeqTrueFalse;
  aMunicipios: Municipios;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  carregarvalores;
end;

procedure TForm1.carregarvalores;
var iX: Integer;
begin
  iX:= 1;
  QueryOrigem.SQL.Clear;
  QueryOrigem.SQL.Add('SELECT cidnome FROM tbmunicipios');
  QueryOrigem.Open;
  while not QueryOrigem.Eof do begin
    cbbOrigem.Items.Add(QueryOrigem.FieldByName('CIDNOME').AsString);
    cbbDestino.Items.Add(QueryOrigem.FieldByName('CIDNOME').AsString);
    aMunicipios[iX]:= QueryOrigem.FieldByName('CIDNOME').AsString;
    aVertice[iX]:= iX;
    Inc(iX);
    QueryOrigem.Next;
  end;

  for iX:= 1 to 200 do begin
    aSeqtruefalse[iX]:= False;
    aCaminho[iX]:= 10000;
  end;

  QueryOrigem.SQL.Clear;
  QueryOrigem.SQL.Add('select count(*) as qtd from tbmunicipios ');
  QueryOrigem.Open;
  iQtdVert:= StrToIntDef(QueryOrigem.FieldByName('QTD').AsString,-1);
  getgerarmatriz(aMatriz, iQtdVert);
end;

function TForm1.getgerarmatriz(var aM: Matriz; iQtdVertice: Integer): Boolean;
var iX, iY: Integer;
    sAnt: string;
begin
  QueryOrigem.SQL.Clear;
  QueryOrigem.SQL.Add('  SELECT cidcodigoorg, '  +#13#10+
                      '         cidcodigodest, ' +#13#10+
                      '         custo '          +#13#10+
                      '    FROM tbcusto '        +#13#10+
                      'ORDER BY 1,2 '            +#13#10);
  QueryOrigem.Open;
  while not QueryOrigem.Eof do begin
    aM[StrToInt(QueryOrigem.FieldByName('CIDCODIGOORG').AsString), StrToInt(QueryOrigem.FieldByName('CIDCODIGODEST').AsString)]:= StrToFloat(QueryOrigem.FieldByName('CUSTO').AsString);
    QueryOrigem.Next;
  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  pnlResultado.Width:= Form1.Width - 161;
  pnlResultado.Top:= Form1.Height - 155;
  pnlImagem.Height:= Form1.Height - 155;
  pnlImagem.Width:= Form1.Width - 161;
  img.Left:= (pnlImagem.Width - 761) div 2;
  img.Top:= (pnlImagem.Height - 593) div 2;
  lblResultadoApresentado.Left:= (pnlResultado.Width - 245) div 2;
end;

function TForm1.getgeracaminho(aM: Matriz; var aVF: SeqTrueFalse; var aCami: Caminho; var aAnt: Vertices; iOrigem, iDestino, iQtdVertice: Integer; var iFim: Integer): Boolean;
var iCam, iX: Integer;
    iNova, iMin: Double;
begin                                              
  iCam:= iOrigem;
  aCami[iCam]:= 0;
  while (iCam <> iDestino) and(iCam <> 0) do begin
    for iX:= 1 to iQtdVertice do begin
      if (aM[iCam, iX] <> 0) and(not aVF[iX]) then begin
        iNova:= aCami[iCam] + aM[iCam, iX];
        if iNova < aCami[iX] then begin
          aCami[iX]:= iNova;
          aAnt[iX]:= iCam;
        end
      end;
    end;
    aVF[iCam]:= true;
    iMin:= 10000;
    iCam:= 0;
    for iX:= 1 to iQtdVertice do begin
      if (not aVF[iX]) and (aCami[iX] < iMin) then begin
        iMin:= aCami[iX];
        iCam:= iX;
      end;
    end
  end;
  iFim:= iCam;
  if iCam = iDestino then
    Result := True
  else
    Result := False;
end;

function TForm1.getmostrarresultado(aVert: Municipios; aM: Matriz; var aVF: SeqTrueFalse; var aCami: Caminho; var aAnt: Vertices; iOrigem, iDestino, iQtdVertice: Integer): Boolean;
var iFinal, iX, iSeq: Integer;
    aListaMuni: Municipios;
begin
  iX:= 1;
  if getgeracaminho(aM, aVF, aCami, aAnt, iOrigem, iDestino, iQtdVertice, iFinal) then begin
    iSeq:= iFinal;
    while iSeq <> iOrigem do begin
      aListaMuni[iX]:= aVert[iSeq];
      Inc(iX);
      iSeq:= aAnt[iSeq];
    end;
    aListaMuni[iX]:= aVert[iOrigem];
    lblResultadoApresentado.Visible:= True;
    while iX > 0 do begin
      if iX > 1 then
        pnlResultado.Caption:= pnlResultado.Caption + aListaMuni[iX] + ' -> '
      else
        pnlResultado.Caption:= pnlResultado.Caption + aListaMuni[iX];
      iX:= iX - 1;
    end;
  end else
    pnlResultado.Caption:= 'Nenhum caminho localizado entre os municipios de '+cbbOrigem.Text+' e '+cbbDestino.Text+'.';

  Result:= True;
end;

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  if (cbbOrigem.Text <> '') and (cbbDestino.Text <> '') and (cbbOrigem.Text <> cbbDestino.Text) then begin
    getmostrarresultado(aMunicipios, aMatriz, aSeqtruefalse, aCaminho, aAnterior, cbbOrigem.ItemIndex+1, cbbDestino.ItemIndex+1,iQtdVert);
    limparvalores;
  end else
    ShowMessage('Parametros invalidos, Tente selecionar uma cidade de origem e outra de Destino.');
end;

procedure TForm1.limparvalores;
var iX, iY: Integer;
begin
  iX:= 1;
  iY:= 1;
  cbbOrigem.Clear;
  cbbDestino.Clear;
  for iX:= 1 to Tam do
    aMunicipios[iX]:= '';

  iX:= 1;
  while iX <= 200 do begin
    aVertice[iX]:= 0;
    aCaminho[iX]:= 0;
    aAnterior[iX]:= 0;
    Inc(iX);
  end;
  iX:= 1;
  for iX:= 1 to 28 do
    for iY:= 1 to 28 do
      aMatriz[iX,iY]:= 0;

  cbbDestino.Enabled:= False;
  btnCalcular.Enabled:= False;
  carregarvalores;
end;

procedure TForm1.cbbDestinoClick(Sender: TObject);
begin
  btnCalcular.Enabled:= True;
end;

procedure TForm1.cbbOrigemClick(Sender: TObject);
begin
  cbbDestino.Enabled:= True;
  pnlResultado.Caption:= '';
  lblResultadoApresentado.Visible:= False;
end;


end.
