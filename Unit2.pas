unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan, jpeg, GLScene, GLObjects,
  GLShadowVolume,GLBlur, GLTerrainRenderer, GLLensFlare, GLMisc,
  GLVectorFileObjects;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    XPManifest1: TXPManifest;
    Label2: TLabel;
    Bevel1: TBevel;
    Image2: TImage;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label28: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    Label33: TLabel;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Edit12: TEdit;
    Label44: TLabel;
    Image4: TImage;
    Timer1: TTimer;
    procedure ComboBox1Click(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label43Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label36Click(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure Label40Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  anciencomposant:string;
implementation

uses Math, Unit1, Unit3;

{$R *.dfm}

procedure TForm2.ComboBox1Click(Sender: TObject);
var i:integer;
begin

end;

procedure TForm2.Label33Click(Sender: TObject);
begin
form3.Button1.Caption:='0';
form3.show;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TForm2.Label43Click(Sender: TObject);
begin
form3.Button1.Caption:='1';
form3.show;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
form3.Button1.Caption:='0';
if p=0 then
begin
form3.ListBox1.Selected[saveDERNIER]:=true;
p:=1;
end;
if p=1 then
begin
form3.ListBox1.Selected[savePREMIER]:=true;
p:=0;
end;

form3.ListBox1DblClick(sender);


end;

procedure TForm2.Image1Click(Sender: TObject);
begin
showmessage(inttostr(savePREMIER)+IntToStr(saveDERNIER));
end;

procedure TForm2.Label28Click(Sender: TObject);
begin
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Visible:=true;
end;

procedure TForm2.Label36Click(Sender: TObject);
begin
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Visible:=false;
end;

procedure TForm2.Label37Click(Sender: TObject);
begin

form1.GLShadowVolume1.Occluders.AddCaster(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])))
end;

procedure TForm2.Label38Click(Sender: TObject);
begin
form1.GLShadowVolume1.Occluders.RemoveCaster(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])))
end;

procedure TForm2.Label39Click(Sender: TObject);
begin
     TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).AddChild(B); // Adding GLBlur to an object will make it blur only that object
     B.RenderWidth := 512;
     B.RenderHeight := 512;
end;

procedure TForm2.Label40Click(Sender: TObject);
begin
     TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Remove(b,true); // Adding GLBlur to an object will make it blur only that object
     B.RenderWidth := 512;
     B.RenderHeight := 512;
end;
procedure TForm2.FormCreate(Sender: TObject);
var B:TGLBlur;
begin
     B := TGLBlur.Create(self);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
edit1.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.X);
edit2.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.y);
edit3.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.z);


edit4.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.X);
edit5.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.y);
edit6.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.z);

edit7.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Scale.X);
edit8.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Scale.y);
edit9.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Scale.z);

edit10.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).PitchAngle);
edit11.text:=FloatToStr(TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).RollAngle);
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if Edit1.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.X:=StrToFloat(edit1.Text);
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
if Edit2.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.y:=StrToFloat(edit2.Text);
end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
if Edit3.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Position.z:=StrToFloat(edit3.Text);
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin
if Edit4.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.x:=StrToFloat(edit4.Text);
end;

procedure TForm2.Edit5Change(Sender: TObject);
begin
if Edit5.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.y:=StrToFloat(edit5.Text);
end;

procedure TForm2.Edit6Change(Sender: TObject);
begin
if Edit6.Text<>'' then
TGLBaseSceneObject(form1.FindComponent(form3.ListBox1.Items.Strings[form3.ListBox1.itemindex])).Rotation.z:=StrToFloat(edit6.Text);
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['.','8','-','0'..'9']) then 
key:=#0;

end;

procedure TForm2.Edit1Click(Sender: TObject);
begin
//TEdit(Form1.FindComponent(TComponent(Sender).Name)).SelectAll;
end;

end.
