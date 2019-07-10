unit BuBo.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  D2Engine.Core, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    TimerRepaint: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TimerRepaintTimer(Sender: TObject);
  private
    Engine: TD2EngineCore;
  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

{ TForm10 }

procedure TFormMain.FormCreate(Sender: TObject);
begin
  Engine := TD2EngineCore.Create(800, 600);
  Engine.LoopedWorld := True;
  Engine.CreateTest;
  Engine.Run;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  Engine.Free;
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
  Canvas.StretchDraw(ClientRect, Engine.Buffer);
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  Canvas.StretchDraw(ClientRect, Engine.Buffer);
end;

procedure TFormMain.TimerRepaintTimer(Sender: TObject);
begin
  Invalidate;
end;

end.

