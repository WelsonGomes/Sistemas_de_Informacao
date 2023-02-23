program hash_pascal;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  hashmax = 99;

type
  ptnodo = ^hash;
  hash = record
    sDado: String;
    pProx: ptnodo;
  end;

  Thash = array[0..hashmax] of ptnodo;

var
  listahash: Thash;
  op: Integer;

procedure mensagemtela;
begin
  writeln('+------------------------------------------+');
	writeln('| DIGITE O NUMERO DE TELEFONE PARA INCERRIR|');
	writeln('| formato [xxxxx-xxxx]                     |');
	writeln('+------------------------------------------+');
end;

//Inicializando a lista hash
procedure inicializarlista(var lHash: Thash);
var iPos: Integer;
begin
  for iPos:= 0 to hashmax do
    lHash[iPos]:= nil;
end;

//procedimento para adicionar valores ao hash
procedure adicionarvalorlistahash(var lHash: Thash);
var iPos: Integer;
    sNum, sSegue: String;
    lHashAux, lHashNova: ptnodo;
begin
  mensagemtela;                                    //Mostrando mensagem na tela
  sNum:= '';
  write('DIGITE O NUMERO: ');
  read(sNum);
  if sNum <> '' then begin                        //verifica se foi digitado um numero
    new(lHashNova);                               //Adicionando um novo espaço na memoria
    if lHashNova = nil then
      Writeln('ERRO! Memoria invalida!')          //Caso esse memoria não inicialize da erro de memoria
    else begin
      lHashNova^.sDado:= sNum;
      lHashNova^.pProx:= nil;                     //Senão adiciona o numero nessa memoria e aponta pra nil
    end;
    iPos:= StrToIntDef(Copy(sNum,9,2),-1);        //Pega os 2 ultimos numeros do telefone
    if lHash[iPos] = nil then
      lHash[iPos]:= lHashNova                     //Caso seja o primeiro da lista adiciona
    else begin
      lHashAux:= lHash[iPos];                     //Senão percore a lista para adicionar ao final
      while lHashAux^.pProx <> nil do
        lHashAux:= lHashAux^.pProx;
      lHashAux^.pProx:= lHashNova;
    end;
  end;
end;

//procedimento para escrever a lista na tela
procedure mostarlistahash(lHash: Thash);
var iLinha: Integer;
    subHash: ptnodo;
begin
  iLinha:= 0;
  while iLinha < 100 do begin
    if lHash[iLinha] <> nil then begin
      subHash:= lHash[iLinha];
      write('['+IntToStr(iLinha)+']');
      Writeln('+---> '+subHash^.sDado);
      subHash:= subHash^.pProx;
      while subHash <> nil do begin
        Writeln('    |');
        Writeln('    +---> '+subHash^.sDado);
        subHash:= subHash^.pProx;
      end;
    end else begin
      writeln('['+IntToStr(iLinha)+'] -> Sem dados');
    end;
    inc(iLinha);
  end;
end;

//Removendo um numero digitado
procedure removerndonumerodalistahash(var lHash: Thash);
var sNum: String;
    iPos: Integer;
    subHash, subHashAnt, subTroca: ptnodo;
begin
  writeln('QUAL NUMERO DESEJA REMOVER? ');
  Readln(sNum);
  iPos:= StrToIntDef(Copy(sNum,9,2),-1);
  if lHash[iPos] <> nil then begin
    subHash:= lHash[iPos];
    subHashAnt:= subHash;
    while (subHash^.sDado <> sNum) and (subHash^.pProx <> nil) do begin
      subHashAnt:= subHash;
      subHash:= subHash^.pProx;
    end;
    if (subHash^.sDado = sNum) and (subHash^.pProx = nil) and (lHash[iPos] = subHash) then begin
      lHash[iPos]:= nil;
      Dispose(subHash);
    end else if (subHash^.pProx <> nil) and (lHash[iPos] = subHash) then begin
      lHash[iPos]:= subHash^.pProx;
      Dispose(subHashAnt);
    end else if (subHash <> lHash[iPos]) and (subHash^.sDado = sNum) and (subHash^.pProx = nil) then begin
      subHashAnt^.pProx:= nil;
      Dispose(subHash);
    end else if (subHash^.sDado = sNum) and (subHash^.pProx <> nil) then begin
      subTroca:= subHash;
      subHashAnt^.pProx:= subHash^.pProx;
      Dispose(subTroca);
    end else
      writeln('NENHUM NUMERO LOCALIZADO PARA REMOVER');
  end else begin
    writeln('NENHUM NUMERO LOCALIZADO PARA REMOVER');
  end;
end;

//Programa principal
begin
  op:= -1;
  inicializarlista(listahash);
  while op <> 0 do begin
    Writeln('[1] - ADICIONAR NUMERO');
    Writeln('[2] - APRESENTAR LISTA HASH');
    Writeln('[3] - REMOVER NUMERO');
    Writeln('[0] - SAIR');
    Readln(op);
    case op of
      1: adicionarvalorlistahash(listahash);
      2: mostarlistahash(listahash);
      3: removerndonumerodalistahash(listahash);
    end;
  end;
end.
 