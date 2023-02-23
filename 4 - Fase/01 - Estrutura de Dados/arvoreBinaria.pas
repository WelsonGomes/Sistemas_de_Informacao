Program arvoreBinaria;

uses crt, math;

type
	ptnodo = ^arvore;
	arvore = record
		rEsq: ptnodo;
		rDir: ptnodo;
		rValor: Integer;
	end;

var
	rArv: ptnodo;
	op: integer;
	add: integer;


//Inicializando a arvore	
procedure inicializararvore(var aArv: ptnodo);
begin
	aArv:= Nil;
end;

//apresentar arvore em posordem
Procedure posOrdem(aArv: ptnodo);
begin
  if aArv <> nil then 
	begin
    PosOrdem(aArv^.rEsq);
    PosOrdem(aArv^.rDir);
    write(aArv^.rValor,' | ');
  end;
end;

//apresentar arvore em emordem  
Procedure emOrdem(aArv: ptnodo);
begin
  if aArv <> nil then 
	begin
    EmOrdem(aArv^.rEsq);
    write(aArv^.rValor,' | ');
    EmOrdem(aArv^.rDir);
  end;
end;

//apresentar arvore em preordem
Procedure preOrdem(aArv: ptnodo);
begin
  if aArv <> nil then 
	begin
    write(aArv^.rValor,' | ');
    PreOrdem(aArv^.rEsq);
    PreOrdem(aArv^.rDir);
  end;
end;


// Inserir elementos na arvore
procedure addElemento(var aArv: ptnodo; var iSair: integer);
var rNovo, rAux: ptnodo;
    iElem: Integer;
begin
	new(rNovo);
	rAux:= aArv;
	write('Qual o elemento da arvore? ');
	readln(iElem);	
	if iElem > -1 then begin
		rNovo^.rValor:= iElem;
		rNovo^.rEsq:= Nil;
		rNovo^.rDir:= Nil;
		if aArv = nil then 
			aArv:= rNovo
		else begin
			while (rAux^.rValor < iElem) and (rAux^.rDir <> Nil) or (rAux^.rValor > iElem) and (rAux^.rEsq <> Nil) do begin
				while (rAux^.rValor < iElem) and (rAux^.rDir <> Nil) do
					rAux:= rAux^.rDir;
				while (rAux^.rValor > iElem) and (rAux^.rEsq <> Nil) do
					rAux:= rAux^.rEsq;
			end;
			if rAux^.rValor < iElem then
				rAux^.rDir:= rNovo;
			if rAux^.rValor > iElem then
				rAux^.rEsq:= rNovo;
		end;
	end else 
		iSair:= iElem;
end;

//procedimento para mostrar a arvore em pre/em/pos
procedure mostarPreEmPos(aArv: ptnodo);
begin
	Clrscr;
	writeln('Arvore em Pre-Ordem');
	writeln('----------------------------------------');
	preOrdem(aArv); 
	writeln;
	writeln;
	writeln('Arvore em Em-Ordem');
	writeln('----------------------------------------');
	emOrdem(aArv);
	writeln;
	writeln;
	writeln('Arvore em Pos-Ordem');
	writeln('----------------------------------------');
	posOrdem(aArv);
	readln;
end;

//Pegar o maior elemento na arvore
function maiorEmemento(aArv: ptnodo): integer;
begin
	if aArv^.rDir <> nil then 
	  maiorEmemento:= maiorEmemento(aArv^.rDir)
  else 
	  maiorEmemento:= aArv^.rValor;
end;

//Mostrar o maior elemento da arvore
procedure mostrarMaiorElemento(aArv: ptnodo);
begin
	Clrscr;
	writeln('O maior elemento é: ', MaiorEmemento(aArv));
	readln;
end;

//Pegar o menor elemento da arvore
function menorEmemento(aArv: ptnodo): integer;
begin
	if aArv^.rEsq <> nil then 
	  menorEmemento:= menorEmemento(aArv^.rEsq)
  else 
	  menorEmemento:= aArv^.rValor;
end;
//mostrar o menor elemento da arvore
procedure mostrarMenorElemento(aArv: ptnodo);
begin
	Clrscr;
	writeln('O menor elemento é: ', menorEmemento(aArv));
	readln;
end;

//Pegar a altura da arvore
procedure alturaArvore(aArv: ptnodo; var iAlt: Integer);
begin
	if aArv <> nil then begin
	  iAlt:= iAlt + 1;
	  alturaArvore(aArv^.rDir,iAlt);
	end;
end;

//Mostrar altura da arvore
procedure mostrarAlturaArvore(aArv: ptnodo);
var iAlt : Integer;
begin
	Clrscr;
  alturaArvore(aArv, iAlt);
	Writeln('Esta arvore tem altura de: ', iAlt);
	Readln;
end;

//Contar a quantidade de folhas da arvore
Procedure qtdFolhas(aArv: ptnodo; var iQtdade: integer);
begin
	if aArv <> nil then begin
	  if (aArv^.rEsq = nil) and (aArv^.rDir = nil) then
		  iQtdade:= iQtdade + 1;

    qtdFolhas(aArv^.rEsq,iQtdade);
    qtdFolhas(aArv^.rDir,iQtdade);
  end;
end;

//Mostar a quantidade de folhas
procedure mostrarFolhas(aArv: ptnodo);
var iFolhas : Integer;
begin
	Clrscr;
	qtdFolhas(aArv, iFolhas);
	Writeln('Esta arvore tem ', iFolhas,' folhas');
	Readln;
end;

procedure quantidadeNosArvore(aArv: ptnodo; var iNos:Integer);
begin
	if aArv <> nil then begin
	  iNos:= iNos + 1;
	  quantidadeNosArvore(aArv^.rDir,iNos);
	  quantidadeNosArvore(aArv^.rEsq,iNos);
	end;
end;

procedure mostrarArvoreComplera(aArv: ptnodo);
var iAlt, iNos : Integer;
    iCompleta : real;
begin
  Clrscr;
  alturaArvore(aArv, iAlt);
  iCompleta:= ((exp2(iAlt)) - 1);
  quantidadeNosArvore(aArv, iNos);
  
  if iCompleta = iNos then
    Writeln('Esta arvore é completa')
  else
  	Writeln('Esta arvore é incompleta');
  Readln;
end;


//Remover ELemento da arvore
procedure removerelemento(var aArv: ptnodo);
var iElem, iMaior: Integer;
	  
begin
	write('Qual elemento quer remover?');
	read(iElem);    
	iMaior:= maiorEmemento(aArv^.rDir);
	iMaior:= iMaior div 2;
	if iMaior < iElem then
				
end;

//Escolha do que fazer
procedure escolha(var iEsc: integer);
begin
	Clrscr;
	writeln('[1] - INSERIR ELEMENTO NA ARVORE');
	writeln('[2] - REMOVER ELEMENTO NA ARVORE');
	writeln('[3] - PERCORRER A ARVORE EM PRE/IN/POS');
	writeln('[4] - ALTURA DA ARVORE');
	writeln('[5] - CONTAR E ESCREVER OS NOS FOLHAS');
	writeln('[6] - ESCREVER O MAIOR ELEMENTO DA ARVORE');
	writeln('[7] - ESCREVER O MENOR ELEMENTO DA ARVORE');
	writeln('[8] - INFORMAR SE A ARVORE É OU NÃO COMPLETA');
	writeln('[0] - SAIR');
	readln(iEsc);
end;

//Programa principal
Begin
	op:= 9999;
	add:= 9999;
	inicializararvore(rArv);	
	while op <> 0 do begin
		escolha(op);
		case op of
			1: begin 
				while add > -1 do begin
					Clrscr;
					writeln('Se quiser sair digite [-1]');
					writeln;
					addElemento(rArv, add);
				end;
			end;
			//2: escolherElementoRemover(rArv);
			3: mostarPreEmPos(rArv);
			4: mostrarAlturaArvore(rArv);
			5: mostrarFolhas(rArv); 
			6: mostrarMaiorElemento(rArv);
			7: mostrarMenorElemento(rArv);
			8: mostrarArvoreComplera(rArv);
		end;	
	end;  
End.