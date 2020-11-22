program GedToGraph;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, printer4lazarus, Manin, UGedText, upersonliste, UGlobal, UAbout,
  UMailOgWeb;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFText, FText);
  Application.CreateForm(TFPersonliste, FPersonliste);
  Application.CreateForm(TFAbout, FAbout);
  Application.CreateForm(TFMailOgWeb, FMailOgWeb);
  Application.Run;
end.

