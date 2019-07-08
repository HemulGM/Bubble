program BuBo;

uses
  Vcl.Forms,
  BuBo.Main in 'BuBo.Main.pas' {FormMain},
  BuBo.Player in 'BuBo.Player.pas',
  D2Engine.Sprite in '..\Direct2D_Engine\D2Engine.Sprite.pas',
  D2Engine.Core in '..\Direct2D_Engine\D2Engine.Core.pas',
  D2Engine.Layers in '..\Direct2D_Engine\D2Engine.Layers.pas',
  D2Engine.Moving in '..\Direct2D_Engine\D2Engine.Moving.pas',
  D2Engine.Simples in '..\Direct2D_Engine\D2Engine.Simples.pas',
  D2Engine.Classes in '..\Direct2D_Engine\D2Engine.Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
