Program Pzim ;

uses crt, math;

type 
  TNodo = ^Registro;
  Registro = record
    Dir, Esq : TNodo;
    valor : Integer;
  end;
  
var
  Arvore : TNodo;
	op, add : Integer;  
{----------------------------------------------------------------------------------------------------------------------------------------}
function Opcoes : Integer;   
var
  i : Integer;
begin
  i := 0;
	Writeln('[01] Adicionar novo valor');
	Writeln('[02] Remover elemento da árvore');
	Writeln('[03] Exibir elementos da árvore'); // exibe as três formas
	Writeln('[04] Exibir altura da árvore');
	writeln('[05] Exibir quantidade de folhas');
	writeln('[06] Exibir maior valor da árvore');
	Writeln('[07] Exibir menor elemento da árvore');
	Writeln('[08] Exibir se árvore é completa');
	Writeln('[09] Limpar tela');
	Writeln('[10] Sair');
	Readln(i);
	Opcoes := i;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}  
procedure InicializaArvore (var Arv : TNodo);
begin
  Arv := Nil;
end;  
{----------------------------------------------------------------------------------------------------------------------------------------}  
procedure PreencheArvore (var Arv : TNodo; var Sair : Integer);
var
  NewPonto, ArvAux : TNodo;
  iValor : Integer;
begin
	new(NewPonto);
	ArvAux := Arv;  
	Write('Digite um numero Inteiro: ');
  ReadLn(iValor);
  Sair := iValor;
  if Sair <> 999 then
  begin
		NewPonto^.valor := iValor;
		NewPonto^.Dir := Nil;
		NewPonto^.Esq := Nil;
		if Arv = Nil then // Add Raiz da arvore
		  Arv := NewPonto
		else
		begin  // Acaso não seja o primeiro add valores 
		   
		  
		  while (ArvAux^.valor < iValor) and (ArvAux^.Dir <> Nil) or
	          (ArvAux^.valor > iValor) and (ArvAux^.Esq <> Nil) do
			begin
			  
				while (ArvAux^.valor < iValor) and (ArvAux^.Dir <> Nil) do
				  ArvAux := ArvAux^.Dir;
				  
				while (ArvAux^.valor > iValor) and (ArvAux^.Esq <> Nil) do
				  ArvAux := ArvAux^.Esq;  
		
			end;				      
			
			if ArvAux^.valor < iValor then
			  ArvAux^.Dir := NewPonto;
			
			if ArvAux^.valor > iValor then
			  ArvAux^.Esq := NewPonto;
		end;
  end;			
end;  
{----------------------------------------------------------------------------------------------------------------------------------------}  
Procedure PreOrdem (Arv: TNodo);
begin
  if Arv <> nil then 
	begin
    write(Arv^.valor,' | ');
    PreOrdem(Arv^.Esq);
    PreOrdem(Arv^.Dir);
  end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------} 
Procedure EmOrdem (Arv: TNodo);
begin
  if Arv <> nil then 
	begin
    EmOrdem(Arv^.Esq);
    write(Arv^.valor,' | ');
    EmOrdem(Arv^.Dir);
  end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------} 
Procedure PosOrdem (Arv: TNodo);
begin
  if Arv <> nil then 
	begin
    PosOrdem(Arv^.Esq);
    PosOrdem(Arv^.Dir);
    write(Arv^.valor,' | ');
  end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------} 
procedure ExibeElementos(Arv : TNodo);
begin

  WriteLn('ARVORE - PreOrdem');
  PreOrdem(Arv);
	Writeln;
  Writeln('----------------------------------');
  WriteLn('ARVORE - EmOrdem');
  EmOrdem(Arv);
  Writeln;
	Writeln('----------------------------------');
  WriteLn('ARVORE - PosOrdem');
  PosOrdem(Arv);
  Writeln;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
Procedure ContaFolha (Arv: TNodo; var qtd : integer);
begin
	if Arv <> nil then 
	begin
	  if (Arv^.Esq = nil) and (Arv^.Dir = nil) then 
	  begin
		  Qtd := Qtd + 1;
		end;  
	    ContaFolha(Arv^.Esq,Qtd);
	    ContaFolha(Arv^.Dir,Qtd);
  end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------} 
procedure ExibeQtdFolhas(Arv : TNodo);
var
  QtdFolhas : Integer;
begin
	ContaFolha(Arv,QtdFolhas);
	Writeln('+---------------------------------+');
	Writeln('|                                 |');
	Writeln('    Quantidade de folhas = ', QtdFolhas);
	Writeln('|                                 |');
	Writeln('+---------------------------------+');
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
function MaiorValor (Arv: TNodo):Integer;
begin
  if Arv^.Dir <> nil then 
	  MaiorValor := MaiorValor(Arv^.Dir)
  else 
	  MaiorValor := Arv^.valor;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
function MenorValor (Arv: TNodo):Integer;
begin
  if Arv^.Esq <> nil then 
	  MenorValor := MenorValor(Arv^.Esq)
  else 
	  MenorValor := Arv^.valor;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure ExibeMaiorValor(Arv : TNodo);
begin	
	Writeln('+---------------------------------+');
	Writeln('|                                 |');
	Writeln('   Maior valor encontrado = ', MaiorValor(Arv));
	Writeln('|                                 |');
	Writeln('+---------------------------------+');
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure ExibeMenorValor(Arv : TNodo);
begin	
	Writeln('+---------------------------------+');
	Writeln('|                                 |');
	Writeln('   Menor valor encontrado = ', MenorValor(Arv));
	Writeln('|                                 |');
	Writeln('+---------------------------------+');
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure AlturaArvore (Arv : TNodo; var Cont:Integer);
begin
	if Arv <> nil then begin
	  cont:= Cont+1;
	  AlturaArvore(Arv^.Dir,Cont);
	end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure TotalNosArvore (Arv : TNodo; var Cont:Integer);
begin
	if Arv <> nil then begin
	  cont:= Cont+1;
	  TotalNosArvore(Arv^.Dir,Cont);
	  TotalNosArvore(Arv^.Esq,Cont);
	end;
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure ExibeAltura(Arv : TNodo);
var 
  Altura : Integer;
begin
  AlturaArvore(Arv,Altura);
  Writeln('+---------------------------------+');
	Writeln('|                                 |');
	Writeln('   Atura encontrado = ', Altura);
	Writeln('|                                 |');
	Writeln('+---------------------------------+');
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
procedure ExibeArvoreCompleta(Arv : TNodo);
var 
  Altura, TotalNos : Integer;
  Resultado : real;
  Resposta : String;
begin
  Resposta := 'Incompleta';
  AlturaArvore(Arv,Altura);
  Resultado := (exp2(Altura)) - 1;
  TotalNosArvore(Arv,TotalNos);
  
  if Resultado = TotalNos then
    Resposta := 'Completa';
    
  Writeln('+---------------------------------+');
	Writeln('|                                 |');
	Writeln('      ARVORE = ', Resposta          );
	Writeln('|                                 |');
	Writeln('+---------------------------------+');
end;
{----------------------------------------------------------------------------------------------------------------------------------------}
Begin 
  InicializaArvore(Arvore);
  op := 99;
  while op <> 10 do
	begin
	  add := 99;
	  op := Opcoes;
	  case op of
	  1 : begin
	        Writeln('Para parar de adicionar digite [999]');
	        while add <> 999 do
					begin  
		        PreencheArvore(Arvore,add);
		      end;  
		    end;
//	  2 : RemoveElemento(Arvore);
	  3 : ExibeElementos(Arvore);
	  4 : ExibeAltura(Arvore);
	  5 : ExibeQtdFolhas(Arvore);
	  6 : ExibeMaiorValor(Arvore);
	  7 : ExibeMenorValor(Arvore);
	  8 : ExibeArvoreCompleta(Arvore);
	  9 : clrscr;
	  end;
	end; 
End.