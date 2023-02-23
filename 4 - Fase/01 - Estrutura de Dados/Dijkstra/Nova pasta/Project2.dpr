program Project2;

uses
  Forms,
  un_Dijkstra in 'unisDijkstra\un_Dijkstra.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
