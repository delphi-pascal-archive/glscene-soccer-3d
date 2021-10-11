unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, GLMisc, GLScene;

type
  TForm3 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    GLScene1: TGLScene;
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;
  savePREMIER,saveDERNIER,p:integer;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TForm3.Panel1Click(Sender: TObject);
begin
form1.EDITMODETimer(Sender);
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
Form3.WindowState:=wsMaximized;
end;

procedure TForm3.ListBox1DblClick(Sender: TObject);
begin
if ListBox1.ItemIndex>-1 then
begin
if button1.caption='1' then// camera
begin
//TGLBaseSceneObject
try
Form1.GLCamera1.TargetObject:=TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex]));
Form2.Edit12.Text:=form1.GLCamera1.TargetObject.GetNamePath;
except
exit;
end;
end;


if button1.caption='0' then// composant
begin
p:=p+1;
case p of
1:savePREMIER:=ListBox1.ItemIndex;
2:saveDERNIER:=ListBox1.ItemIndex;
end;
if p>=2 then
p:=0;
Form2.Label33.Caption:=ListBox1.Items.Strings[ListBox1.itemindex];
Form2.Edit1.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Position.x);
Form2.Edit2.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Position.y);
Form2.Edit3.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Position.z);
Form2.Edit4.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Rotation.x);
Form2.Edit5.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Rotation.y);
Form2.Edit6.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Rotation.z);
Form2.Edit7.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Scale.x);
Form2.Edit8.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Scale.y);
Form2.Edit9.Text:=floattostr(TGLBaseSceneObject(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Scale.z);



Form2.Edit12.Text:=form1.GLCamera1.TargetObject.GetNamePath;
end;

//TComponent(form1.FindComponent(ListBox1.Items.Strings[ListBox1.itemindex])).Free;
close;

end;
form2.timer1.enabled:=true;
end;

procedure TForm3.FormCreate(Sender: TObject);
var i:integer;
begin
p:=0;
savePREMIER:=12;
saveDERNIER:=12;
for i:=0 to ListBox1.Items.Count-1 do
begin
if ListBox1.Items.Strings[i]='Player1' then
ListBox1.Selected[i]:=true;
ListBox1DblClick(sender);
end;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
ListBox1DblClick(Sender);
end;

end.
