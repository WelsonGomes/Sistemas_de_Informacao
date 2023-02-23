Program Pzim ;
const
	Tam = 8;

type
	Matriz = array[1..Tam,1..Tam] of integer;	
	Vertices = array[1..Tam] of char;
	Caminho = array[1..100] of string;
	Sequencia = array[1..20] of char;

var
	aMatriz: Matriz;
	aVertice: Vertices;
	aCaminho: Caminho;
	aSequencia: Sequencia;

procedure preencherMatriz;
begin
  aVertice[1]:= 'A';
  aVertice[2]:= 'B';
  aVertice[2]:= 'C';
  aVertice[4]:= 'D';
  aVertice[5]:= 'E';
  aVertice[6]:= 'F';
  aVertice[7]:= 'G';
  aVertice[8]:= 'H';
end;

Begin
  readln(Origem, Destino); { atribuição de valores iniciais necessários}
  for I:= 1 to Tam do begin
    ExpA[I]:= false;
    DA[I]:= 10000
  end;
  C:= origem;
  DA[C]:= 0;
  while (C <> Destino) and(C <> 0) do begin {Expanção de C}
    for I:= 1 to Tam do begin
      if (D[C, I] <> 0) and(not Expa[i]) then begin
        NovaDA:= DA[C] + D[C, I];
        if NovaDA < DA[I] then begin
          DA[I]:= NovaDA;
          Ant[I]:= C
        end
      end;
    end
    Expa[C]:= true; {Determinação do proximo C}
    Min:= 10000;
    C:= 0;
    for I:= 1 to Tam do begin
      if (not ExpA[I]) and (DA[I] < Min) then begin
        Min:= DA[I];
        C:= I;
      end;
    end
  end;

  if C = Destino then begin
    writeln('Caminho mais curto');
    writeln(C);
    while C <> Origem do begin
      C:= Ant[C];
      writeln(C)
    end
  end else
    writeln('Não existe caminho unindo as duas cidades');


uses Pzim;End.