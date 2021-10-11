unit Unit1;

interface

uses
  Windows, GLCadencer, GLVectorFileObjects, GLScene, GLObjects, GLMisc,
  StdCtrls, Buttons, Controls, ExtCtrls, ComCtrls, Classes, Forms,
  GLWin32Viewer, GLFileMD2,GLFile3ds,GLMovement, GLGeomObjects, GLTexture, GLTerrainRenderer,
  GLHeightData, GLShadowVolume, GLLensFlare, GLSkyBox, GLNavigator,
  GLCelShader, ActnList,GLBlur, GLWin32FullScreenViewer, GLOutlineShader,
  GLBitmapFont,Dialogs, GLDCE,GLImposter, GLFPSMovement, GLHiddenLineShader,
  GLPhongShader, GLShadowPlane, GLCollision,SysUtils,keyboard,Jpeg,math,VectorGeometry,GLCrossPlatform, Unit2,Unit3,OpenGL1x, GLEllipseCollision;
type
  TForm1 = class(TForm)
    GLScene1: TGLScene;
    GLCamera1: TGLCamera;
    GLLightSource1: TGLLightSource;
    GLSceneViewer1: TGLSceneViewer;
    Player1: TGLActor;
    GLCadencer1: TGLCadencer;
    Timer1: TTimer;
    Ballon: TGLSphere;
    GLLightSource2: TGLLightSource;
    GLLightSource3: TGLLightSource;
    GLLightSource4: TGLLightSource;
    Stade: TGLPlane;
    GLMatlLib: TGLMaterialLibrary;
    Terrain: TGLTerrainRenderer;
    GLBitmapHDS1: TGLBitmapHDS;
    GLShadowVolume1: TGLShadowVolume;
    GLSphere1: TGLSphere;
    GLSphere2: TGLSphere;
    GLSphere3: TGLSphere;
    GLSphere4: TGLSphere;
    GLLightSource5: TGLLightSource;
    GLLightSource6: TGLLightSource;
    GLSphere5: TGLSphere;
    GLSphere6: TGLSphere;
    Terrain2: TGLTerrainRenderer;
    Button1: TButton;
    DISTEST: TGLSphere;
    Pub: TGLActor;
    Gazzon2: TGLPlane;
    GLLensFlare1: TGLLensFlare;
    Ciel: TGLPlane;
    Ciel2: TGLPlane;
    Mur: TGLCube;
    Pub2: TGLActor;
    TREBONE: TGLActor;
    TREBONE2: TGLActor;
    TREBONE3: TGLActor;
    TREBONE4: TGLActor;
    Gazzon3: TGLPlane;
    PROJECTEUR1: TGLCube;
    Player2: TGLActor;
    Player3: TGLActor;
    Player4: TGLActor;
    Player5: TGLActor;
    Player6: TGLActor;
    Player7: TGLActor;
    Player8: TGLActor;
    Player10: TGLActor;
    Player11: TGLActor;
    Player9: TGLActor;
    Playervs1: TGLActor;
    Playervs2: TGLActor;
    Playervs3: TGLActor;
    Playervs4: TGLActor;
    Playervs5: TGLActor;
    Playervs6: TGLActor;
    Playervs7: TGLActor;
    Playervs8: TGLActor;
    Playervs9: TGLActor;
    Playervs10: TGLActor;
    Playervs11: TGLActor;
    EDITMODE: TTimer;
    Button4: TButton;
    GLDCEManager1: TGLDCEManager;
    GLSphere7: TGLSphere;
    GLNavigator1: TGLNavigator;
    Button5: TButton;
    SHADOW: TGLShadowPlane;
    DUMMYSHADER: TGLDummyCube;
    Timer2: TTimer;
    Button8: TButton;
    CollisionManager1: TCollisionManager;
    Button3: TButton;
    Button2: TButton;
    Timer3: TTimer;
    ListBox1: TListBox;
    Timer4: TTimer;
    Button6: TButton;
    Timer5: TTimer;
    procedure GLSceneViewer1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
	 procedure GLSceneViewer1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Player1FrameChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure GLCadencer1Progress(Sender: TObject; const deltaTime,
      newTime: Double);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure GLSceneViewer1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure GLSceneViewer1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure EDITMODETimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PlayerBehaviours0Collision(Sender: TObject;
      ObjectCollided: TGLBaseSceneObject; CollisionInfo: TDCECollision);
    procedure Timer2Timer(Sender: TObject);
    procedure CollisionManager1Collision(Sender: TObject; object1,
      object2: TGLBaseSceneObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Déclarations privées }
    mdx, mdy : Integer;
  public
	 { Déclarations publiques }
   function LoadTexture(Matname,Filename : string) : TGLLibMaterial;
   procedure HandleKeys(const deltaTime: Double);
procedure PathAllTravelledOver(Sender: TObject);
procedure PathAllTravelled2Over(Sender: TObject);
    procedure PathTravelStop(Sender: TObject; Path: TGLMovementPath; var Looped: Boolean);
function AnimatedBallonWhenInterspeted(player:string;deltatime:single;vitess,action:string):integer;
function AnimatedPlayerToBallon(player:string;deltatime,xx,yy:single;action:string):integer;
function tire(direction:String;chargement,deltatime:Single;action:String):integer;
  end;

var
  Form1: TForm1;
  i: integer;
  stopmovementxy:Boolean=true;
  B:TGLBlur;
cForce: Single = 250;
ballonintersepted:Boolean;
  MovementP1: TGLMovement;
  PathP1:     TGLMovementPath;
  NodeP1:     TGLPathNode;
  vitessejouer:single;
  playerwithballon:String;
  behav: TGLBFPSMovement;
  iss:single;
  impBuilder : TGLStaticImposterBuilder;
  renderPoint : TGLRenderPoint;
  temp,tempStop:string;
  ballonanimer:Boolean=false;
  Playeranimettoballon:Boolean=false;
  ballonattacheauplayer:Boolean=false;
  changekeyWhenplayerrun:Boolean=false;
  keypreced:integer;
       run:Boolean;
            boost : Single;
            white:Boolean;
            conteurAeffecer:integer=0;
implementation


{$R *.DFM}
procedure TForm1.PathTravelStop(Sender: TObject; Path: TGLMovementPath; var Looped: Boolean);
begin

Playeranimettoballon:=false;
//ballonattacheauplayer:=true;
end;

function TForm1.tire(direction:String;chargement,deltatime:Single;action:String):integer;
var
  Movement: TGLMovement;
  Path:     TGLMovementPath;
  Node:     TGLPathNode;
begin
if action='stop' then
begin
Movement.StopPathTravel;
Exit;
end;

  Movement   := GetOrCreateMovement(Ballon);
if Movement.PathCount>0 then
  movement.ClearPaths;
//  Movement.OnAllPathTravelledOver := PathAllTravelled2Over;
  Path       := Movement.AddPath;

  Path.ShowPath := false;

  //Path.Looped := True;
  Node       := Path.AddNodeFromObject(Ballon);
  Node.Speed := (chargement);
  Node       := Path.AddNode;
  Node.Speed := (chargement);
  Node.PositionAsVector :=VectorMake(Ballon.Position.X,Ballon.Position.y,Ballon.Position.z,1);
  Node.RotationAsVector := VectorMake(0,360,0);
  Node       := Path.AddNode;
  Node.Speed := (chargement-(chargement / 3));
  Node.PositionAsVector :=VectorMake(chargement,Ballon.Position.y,abs(chargement / 3),1);
  Node.RotationAsVector := VectorMake(0,360*4,0);
  Node       := Path.AddNode;
  Node.Speed := 1;
  Node.PositionAsVector :=VectorMake(chargement*2,Ballon.Position.y,-0.5,1);
  Node.RotationAsVector := VectorMake(0,360*8,0);  
  Movement.ActivePathIndex := 0;
  Movement.StartPathTravel;

end;

procedure TForm1.PathAllTravelledOver(Sender: TObject);
begin
ballonanimer:=false;
end;

procedure TForm1.PathAllTravelled2Over(Sender: TObject);
begin
//

end;

function TForm1.AnimatedPlayerToBallon(player:string;deltatime,xx,yy:single;action:string):integer;
var
  Movement: TGLMovement;
  Path:     TGLMovementPath;
  Node:     TGLPathNode;
  i,i2:integer;
  xadd,yadd:single;
  SavePx,SavePy:Single;
begin

  Movement   := GetOrCreateMovement(Player1);
if action='stop' then
begin

Movement.StopPathTravel;
Playeranimettoballon:=false;
Exit;
end;  
if Movement.PathCount>0 then
  movement.ClearPaths;
  Movement.OnPathTravelStop:= PathTravelStop;
  Path       := Movement.AddPath;

  Path.ShowPath := false;

  //Path.Looped := True;
  Node       := Path.AddNodeFromObject(Player1);
  Node.Speed := 22.0;
  Node       := Path.AddNode;
  Node.Speed := 22;
  Node.PositionAsVector :=VectorMake((xx),yy,+1.1,1);
  Movement.ActivePathIndex := 0;
  Movement.StartPathTravel;
end;


function TForm1.AnimatedBallonWhenInterspeted(player:string;deltatime:single;vitess,action:string):integer;
var
  Movement: TGLMovement;
  Path:     TGLMovementPath;
  Node:     TGLPathNode;
  i,i2:integer;
  xadd,yadd:single;
  SavePx,SavePy:Single;
begin
  Movement   := GetOrCreateMovement(Ballon);
if action='stop' then
begin
Movement.StopPathTravel;
ballonanimer:=false;
Exit;
end;  
if Movement.PathCount>0 then
  movement.ClearPaths;

  Movement.OnAllPathTravelledOver := PathAllTravelledOver;
  Path       := Movement.AddPath;

  Path.ShowPath := false;

  //Path.Looped := True;

  Node       := Path.AddNodeFromObject(Ballon);
  Node.Speed := 50.0;
  //Add a node
//  xadd
xadd:=0;
yadd:=0;
if ((player1.RollAngle>=0) and (player1.RollAngle<=90)) then
begin
yadd:=(Player1.RollAngle / 90)*5;
end;
{if ((player1.RollAngle<0) and (player1.RollAngle<=-90)) then
begin
yadd:=(Player1.RollAngle / 90)*5;
xadd:=yadd;
if xadd<5 then
xadd:=5-xadd;
if xadd>5 then
xadd:=5-xadd;
yadd:=yadd*(-1);
end;}

xadd:=yadd;
if xadd<5 then
xadd:=5-xadd;
if xadd>5 then
xadd:=5-xadd;

SavePx:=Player1.Position.X;
SavePy:=Player1.Position.y;
button3.Caption:=('x= '+FloatToStr(xadd)+' /// y= '+FloatToStr(yadd));
if vitess='run' then
begin
  for i2:=1 to 5 do
  begin
  Node       := Path.AddNode;
  Node.Speed := 40-(i2*8)+1;

  Node.PositionAsVector := VectorMake(SavePx+(i2*xadd),SavePy+(i2*Yadd),-0.5, 1);
  Node.RotationAsVector := VectorMake(0,360*i2,0);
  end;
end;
if vitess='slow' then
begin
  Node       := Path.AddNode;
  Node.Speed := 10;
  Node.PositionAsVector := VectorMake(SavePx+xadd,SavePy+yadd,-0.5, 1);
  Node.RotationAsVector := VectorMake(0,360*1,0);
  Node       := Path.AddNode;
  Node.Speed := 1;
  Node.PositionAsVector := VectorMake(SavePx+xadd,SavePy+Yadd,-0.5, 1);
  Node.RotationAsVector := VectorMake(0,360*2,0);
  end;

  Movement.ActivePathIndex := 0;
  Movement.StartPathTravel;
//  Node.Destroy;
//for i:=0 to Path.NodeCount-1 do
//Path.DeleteNode(0);

//showmessage(floattostr(Path.Nodes.Items[Path.NodeCount-1].X));
AnimatedPlayerToBallon('qsds',12,Path.Nodes.Items[Path.NodeCount-1].X,Path.Nodes.Items[Path.NodeCount-1].y,'play');
end;

function MoveModel(Model:TGLBaseSceneObject;move:TGLMovement;path:TGLMovementPath;node:TGLPathNode):integer;
begin
{      MovementP1.Free;
MovementP1   := GetOrCreateMovement(player1);
MovementP1.OnAllPathTravelledOver := PathAllTravelledOver;
  PathP1       := MovementP1.AddPath;
  PathP1.ShowPath := true;
  NodeP1       := PathP1.AddNodeFromObject(player1);
  NodeP1.Speed := 10.0;
  NodeP1       := PathP1.AddNode;
  NodeP1.Speed := 10.0;
  NodeP1.PositionAsVector := VectorMake(Player1.Position.X+2,Player1.Position.Y,Player1.Position.z, 1);
  MovementP1.ActivePathIndex := 0;
  MovementP1.StartPathTravel;
}
end;
procedure TForm1.Timer3Timer(Sender: TObject);
begin
timer3.Enabled:=false;
end;



function PlayerLoadModel(Player:TGLActor;Modelfilename,Materielfilename:string;px,py,pz:Single;animation,shader:Boolean):integer;
begin
Player.LoadFromFile(Modelfilename);
Player.Material.Texture.Image.LoadFromFile(Materielfilename);
if animation then
begin
Player.Animations.LoadFromFile('DATA\Quake2Animations.aaf');
Player.SwitchToAnimation('run', True);
Player.AnimationMode:=aamLoop;
end;
Player.Position.x:=px;
Player.Position.y:=py;
Player.Position.Z:=pz;
if shader then
begin
//form1.GLShadowVolume1.Occluders.AddCaster(Player)
end;
//

end;

function TForm1.LoadTexture(Matname,Filename : string) : TGLLibMaterial;
begin
   Result := GLMatlLib.AddTextureMaterial(Matname,'Data\'+Filename);
   Result.Material.Texture.Disabled := false;
   Result.Material.Texture.TextureMode := tmDecal;
end;


procedure TForm1.FormCreate(Sender: TObject);
var j:integer;
begin
//for j:=2 to 11 do
//TGLBaseSceneObject(form1.FindComponent('Player'+IntToStr(j))).Visible:=false;
//for j:=2 to 11 do
//TGLBaseSceneObject(form1.FindComponent('Playervs'+IntToStr(j))).Visible:=false;
player1.Interval:=150;
vitessejouer:=0.1;
Ballon.Position.y:=Player1.Position.y-20;
Ballon.Position.X:=Player1.Position.X-4;

ballonintersepted:=false;
//Essai.LoadFromFile('data\73Stadium-model.3ds');
//Player.Animations.LoadFromFile('DATA\Quake2Animations.aaf');
//Player.SwitchToAnimation('run', True);
//Player.AnimationMode:=aamLoop;

     B := TGLBlur.Create(self);
     Ciel2.AddChild(B); // Adding GLBlur to an object will make it blur only that object
     B.RenderWidth := 128;
     B.RenderHeight := 128;
     with LoadTexture('Clouds','city_UP.jpg') do
     begin
          // Add transparency to clouds
//          Material.BlendingMode := bmTransparency;
          Material.FrontProperties.Diffuse.Alpha :=0.7;

          // scale the clouds texture
          TextureScale.X := 1;
          TextureScale.y := 1;
     end;
     with LoadTexture('Clouds2','clouds.jpg') do
     begin

          Material.BlendingMode := bmTransparency;
          Material.FrontProperties.Diffuse.Alpha :=0.09;

          // scale the clouds texture
          TextureScale.X := 5;
          TextureScale.y := 5;
     end;

     with LoadTexture('pub','val.JPG') do
     begin

//          Material.BlendingMode := bmTransparency;
//          Material.FrontProperties.Diffuse.Alpha :=0.5;

          // scale the clouds texture
//          TextureScale.X := 2;
          TextureScale.y := 0.5;
     end;




     
GLSphere1.Position:=GLLightSource1.Position;
GLSphere2.Position:=GLLightSource2.Position;
GLSphere3.Position:=GLLightSource3.Position;
GLSphere4.Position:=GLLightSource4.Position;
GLSphere5.Position:=GLLightSource5.Position;
GLSphere6.Position:=GLLightSource6.Position;
  
GLCamera1.Position.x:=Ballon.Position.X;
GLCamera1.Position.y:=-24.0309410095215;
GLCamera1.Position.z:=17.7085914611816;
pub2.LoadFromFile('DATA\VALLAP_L.3DS');
Pub.LoadFromFile('DATA\BAZBAZUSPUBLICITE.3DS');
TREBONE.LoadFromFile('DATA\BAZBAZUSPUBLICITE.3DS');
TREBONE2.LoadFromFile('DATA\BAZBAZUSPUBLICITE.3DS');
TREBONE3.LoadFromFile('DATA\BAZBAZUSPUBLICITE.3DS');
TREBONE4.LoadFromFile('DATA\BAZBAZUSPUBLICITE.3DS');
//PlayerLoadModel(Publicsport,'DATA\suporteur.3DS','DATA\SP02_10.jpg',-5,30,1.4,true,true);
PlayerLoadModel(Player1,'DATA\waste.md2','DATA\wastecell.jpg',-4,0,1.4,true,true);
PlayerLoadModel(Player2,'DATA\waste.md2','DATA\wastecell.jpg',-5,30,1.4,true,true);
PlayerLoadModel(Player2,'DATA\waste.md2','DATA\wastecell.jpg',-5,30,1.4,true,true);
PlayerLoadModel(Player3,'DATA\waste.md2','DATA\wastecell.jpg',-6,-30,1.4,true,true);
PlayerLoadModel(Player4,'DATA\waste.md2','DATA\wastecell.jpg',-40,0.1,1.4,true,true);
PlayerLoadModel(Player5,'DATA\waste.md2','DATA\wastecell.jpg',-20,30,1.4,true,true);
PlayerLoadModel(Player6,'DATA\waste.md2','DATA\wastecell.jpg',-20,-30,1.4,true,true);
PlayerLoadModel(Player7,'DATA\waste.md2','DATA\wastecell.jpg',-70,15,1.4,true,true);
PlayerLoadModel(Player8,'DATA\waste.md2','DATA\wastecell.jpg',-70,-15,1.4,true,true);
PlayerLoadModel(Player9,'DATA\waste.md2','DATA\wastecell.jpg',-80,-50,1.4,true,true);
PlayerLoadModel(Player10,'DATA\waste.md2','DATA\wastecell.jpg',-80,50,1.4,true,true);
//PlayerLoadModel(Player11,'DATA\Player.3ds','DATA\SP02_01.jpg',-100,0.1,1.4,true,true);
PlayerLoadModel(Playervs1,'DATA\waste.md2','DATA\wastecellVS.jpg',4,0.1,1.4,true,true);
PlayerLoadModel(Playervs2,'DATA\waste.md2','DATA\wastecellVS.jpg',5,30,1.4,true,true);
PlayerLoadModel(Playervs3,'DATA\waste.md2','DATA\wastecellVS.jpg',6,-30,1.4,true,true);
PlayerLoadModel(Playervs4,'DATA\waste.md2','DATA\wastecellVS.jpg',40,0.1,1.4,true,true);
PlayerLoadModel(Playervs5,'DATA\waste.md2','DATA\wastecellVS.jpg',20,30,1.4,true,true);
PlayerLoadModel(Playervs6,'DATA\waste.md2','DATA\wastecellVS.jpg',20,-30,1.4,true,true);
PlayerLoadModel(Playervs7,'DATA\waste.md2','DATA\wastecellVS.jpg',70,15,1.4,true,true);
PlayerLoadModel(Playervs8,'DATA\waste.md2','DATA\wastecellVS.jpg',70,-15,1.4,true,true);
PlayerLoadModel(Playervs9,'DATA\waste.md2','DATA\wastecellVS.jpg',80,-50,1.4,true,true);
PlayerLoadModel(Playervs10,'DATA\waste.md2','DATA\wastecellVS.jpg',80,50,1.4,true,true);
PlayerLoadModel(Playervs11,'DATA\waste.md2','DATA\wastecellVS.jpg',100,0.1,1.4,true,true);


  with GLMatlLib do
  begin
//    AddTextureMaterial('Terrain','data\gazon.jpg');
    AddTextureMaterial('fifa','data\ballon.jpg');
//    AddTextureMaterial('pub','data\val.JPG');
//    AddTextureMaterial('pub2','data\vlcsnap.JPG');
//    AddTextureMaterial('pub3','data\bazbaz.JPG');
//    AddTextureMaterial('pub4','data\bazbaz2.JPG');
//    AddTextureMaterial('gazzon2','data\gazzon2.bmp');
    AddTextureMaterial('trebune','data\trebune.jpg');
    AddTextureMaterial('trebunevs','data\trebunevs.jpg');
  end;

//     with LoadTexture('Terrain','gr16.jpg') do
     with LoadTexture('Terrain','gr16.jpg') do
     begin
          // Add transparency to stade
//          Material.BlendingMode := bmTransparency;
//          Material.FrontProperties.Diffuse.Alpha :=0.2;

          // scale the clouds texture
          TextureScale.X := 20;
          TextureScale.y := 20;
     end;

{          with LoadTexture('Terrain2','gazon3.JPG') do
     begin

//          Material.BlendingMode := bmTransparency;
           Material.FrontProperties.Diffuse.Alpha :=0.2;

          // scale the clouds texture
          TextureScale.X := 10;
          TextureScale.y := 10;
     end;  }




    GLBitmapHDS1.MaxPoolSize:=8*1024*1024;
//  GLBitmapHDS1.Picture.LoadFromFile('terrain.bmp');
  Terrain.Direction.SetVector(0,1,0);
  Terrain.Material.LibMaterialName := 'Terrain';
  Terrain.TilesPerTexture:=256/Terrain.TileSize;
  Terrain.Scale.SetVector(1,1,0.02);
  Stade.Material.LibMaterialName := 'Terrain';
  Terrain2.Direction.SetVector(0,1,0);
  Terrain2.Material.LibMaterialName := 'Terrain2';
  Terrain2.TilesPerTexture:=256/Terrain.TileSize;
  Terrain2.Scale.SetVector(1,1,0.02);
  Gazzon2.Material.LibMaterialName:='Terrain2';
  Gazzon3.Material.LibMaterialName:='Terrain2';
  Ballon.Material.LibMaterialName := 'fifa';

  Pub.Material.LibMaterialName:='pub';
  Pub2.Material.LibMaterialName:='pub2';
  Ciel.Material.LibMaterialName:='Clouds';
  Ciel2.Material.LibMaterialName:='Clouds2';
  TREBONE.Material.LibMaterialName:='trebune';
  TREBONE2.Material.LibMaterialName:='trebunevs';
  TREBONE3.Material.LibMaterialName:='trebunevs';
  TREBONE4.Material.LibMaterialName:='trebunevs';
  SHADOW.Material.LibMaterialName:='Terrain';
  SHADOW.Position:=Stade.Position;
  SHADOW.Scale:=Stade.Scale;
  SHADOW.RollAngle:=90;




EDITMODE.enabled:=true;
  behav:= GetFPSMovement(player1);
//GetOrCreateDCEDynamic(GLDummyCube1).OnCollision := PlayerBehaviours0Collision;
end;

procedure TForm1.PlayerBehaviours0Collision(Sender: TObject;
  ObjectCollided: TGLBaseSceneObject; CollisionInfo: TDCECollision);
var v: TAffineVector;
begin
  //Use some kind of identifier to know what object you are colliding
  //You can use the Tag, TagFloat, Name, Class
  if ObjectCollided.Name ='ballon' then
  begin
//    v := AffineVectorMake(VectorSubtract(ObjectCollided.AbsolutePosition,GLDummyCube1.AbsolutePosition));
    NormalizeVector(v);
    ScaleVector(v,400);
    GetOrCreateDCEDynamic(ObjectCollided).StopAbsAccel;
    GetOrCreateDCEDynamic(ObjectCollided).ApplyAbsAccel(v);
  end;
end;

procedure TForm1.Player1FrameChanged(Sender: TObject);
begin
end;

//
// events that follow handle camera movements and FPS rate
//

procedure TForm1.GLSceneViewer1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	// store mouse coordinates when a button went down
	mdx:=x; mdy:=y;
end;

procedure TForm1.GLSceneViewer1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
	// (we're moving around the parent and target dummycube)
   if Shift<>[] then
      GLCamera1.MoveAroundTarget(mdy-y, mdx-x);
	mdx:=x; mdy:=y;
end;

procedure TForm1.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
	// Note that 1 wheel-step induces a WheelDelta of 120,
	// this code adjusts the distance to target with a 10% per wheel-step ratio
	GLCamera1.AdjustDistanceToTarget(Power(1.1, WheelDelta/120));
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Caption:=Format('%.1f FPS', [GLSceneViewer1.FramesPerSecond]);
   GLSceneViewer1.ResetPerformanceMonitor;
end;

procedure TForm1.GLCadencer1Progress(Sender: TObject; const deltaTime,
  newTime: Double);
begin
if ballonattacheauplayer then
begin
Ballon.Position.X:=Player1.Position.X+2;
Ballon.Position.y:=Player1.Position.y;
end;

CollisionManager1.CheckCollisions;
//AnimatedBallonWhenInterspeted('player1',deltaTime);

iss:=deltaTime;
//if playerwithballon='player1' then
//b
//if Player1.Position.X
     with GLMatlLib.Materials.GetLibMaterialByName('pub') do
     begin
//          TextureOffset.X := TextureOffset.X + deltaTime * 0.1;
          TextureOffset.Y := TextureOffset.Y + deltaTime * 0.1;
     end;
     
     with GLMatlLib.Materials.GetLibMaterialByName('Clouds') do
     begin
//          TextureOffset.X := TextureOffset.X + deltaTime * 0.1;
          TextureOffset.Y := TextureOffset.Y + deltaTime * 0.02;
     end;

     with GLMatlLib.Materials.GetLibMaterialByName('Clouds2') do
     begin
//          TextureOffset.X := TextureOffset.X + deltaTime * 0.1;
          TextureOffset.Y := TextureOffset.Y + deltaTime * 0.02;
     end;

//   Player.Position.x:=Player.Position.x+0.01;
//   GLSceneViewer1.Invalidate;
  GLCamera1.Position.x:=Ballon.Position.x;
  GLCamera1.Position.y:=Ballon.Position.y-51;
//ListBox1.Items.Add('Camera y = '+FloatToStr(GLCamera1.Position.y)+' ¦ Ballon y = '+FloatToStr(Ballon.Position.y));
if not white then 
HandleKeys(deltaTime);


GLSceneViewer1.Invalidate;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Movement: TGLMovement;
  Path:     TGLMovementPath;
  Node:     TGLPathNode;

begin
//Create a movement, a path and the first node of the path
  Movement   := GetOrCreateMovement(Ballon);
//  Movement.OnPathTravelStop := PathTravelStop;
//  Movement.OnAllPathTravelledOver := PathAllTravelledOver;
  Path       := Movement.AddPath;
  Path.ShowPath := true;
  //Path.Looped := True;
  Node       := Path.AddNodeFromObject(Ballon);
  Node.Speed := 50.0;
  //Add a node
  Node       := Path.AddNode;
  Node.Speed := 50.0;
  Node.PositionAsVector := VectorMake(((DISTEST.Position.X+Ballon.Position.X) / 2),((DISTEST.Position.y+Ballon.Position.y) / 2), DISTEST.Position.z, 1);
  Node.RotationAsVector := VectorMake(5000, 0, 0);
    Node       := Path.AddNode;
  Node.Speed := 50.0;
    Node.PositionAsVector := VectorMake(DISTEST.Position.X, DISTEST.Position.y, DISTEST.Position.z, 1);
  Node.RotationAsVector := VectorMake(5000, 0, 0);
  //Activatived the current path
  Movement.ActivePathIndex := 0;
  Movement.StartPathTravel;
end;



procedure TForm1.HandleKeys(const deltaTime: Double);
var
     movementScale: single;


       s,s2:single;
        temp1,temp2,temp3:integer;
        Click:integer;
begin

keypreced:=KeyPressed;
click:=0;
//////////////////////////////////////////////////////////////
               if not Playeranimettoballon then
               begin
//////////////////////////////////////////////////////////////
run:=false;
 if IsKeyDown('S') then begin
 if player1.Interval>75 then
      player1.Interval:=player1.Interval-Round(250*Deltatime);
      boost:=deltaTime*15;
      run:=true;
   end
   else
   begin
 if player1.Interval<150 then
      player1.Interval:=player1.Interval+Round(250*Deltatime);
      boost:=deltaTime*10;
      run:=false;
   end;

//////////////////////// 2 click division ///////////
   if (IsKeyDown(VK_UP) and  IsKeyDown(VK_RIGHT)) then begin
      if run then
      begin
      if player1.RollAngle<=44 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if player1.RollAngle>=46 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
      end
      else
      Player1.RollAngle:=45;
      end;

   if (IsKeyDown(VK_RIGHT) and  IsKeyDown(VK_DOWN)) then begin
      if run then
      begin
      if player1.RollAngle<=-44 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if player1.RollAngle>=-46 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);      
      end
      else
      Player1.RollAngle:=-45;
      end;
      
   if (IsKeyDown(VK_DOWN) and  IsKeyDown(VK_LEFT)) then begin
      if run then
      begin
      if player1.RollAngle<=-134 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if player1.RollAngle>=-136 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
      end
      else
      Player1.RollAngle:=-135;      
      end;
   if (IsKeyDown(VK_LEFT) and  IsKeyDown(VK_UP)) then begin
      if run then
      begin
      if player1.RollAngle<=134 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if player1.RollAngle>=136 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
      end
      else
      Player1.RollAngle:=135;
      end;
/////////////////////////////////////////////////////

   if IsKeyDown(VK_UP) then begin
      temp:='u';
      tempStop:='u';
        if not ballonintersepted=true then ///if ballonintersepted:=false
        begin
        if ABS(player1.RollAngle)<=89 then
        Player1.RollAngle:=Player1.RollAngle+(boost*20);
        if ABS(player1.RollAngle)>=91 then
        Player1.RollAngle:=Player1.RollAngle-(boost*20);
        end
        else
        begin  //if ballonintersepted:=true;
         if ABS(player1.RollAngle)<=89 then
         begin
         if ABS(Player1.RollAngle+(boost*300))>89 then
         Player1.RollAngle:=89
         else
         Player1.RollAngle:=Player1.RollAngle+(boost*300);
         end;
         if ABS(player1.RollAngle)>=91 then
         begin
         if ABS(Player1.RollAngle-(boost*300))<91 then
         Player1.RollAngle:=89
         else
         Player1.RollAngle:=Player1.RollAngle-(boost*300);
         end;

        end;
//      end;

      GLNavigator1.StrafeVertical(boost);
//      moving:='run';
      end
      else
      Click:=Click+1;
   if IsKeyDown(VK_DOWN) then begin
//      if run then
//      begin
         if temp='l' then
         if not ((IsKeyDown(VK_DOWN)) and  (IsKeyDown(VK_LEFT)) and (Player1.RollAngle<0)) then
         Player1.RollAngle:=-159;
      temp:='d';
      tempStop:='d';
      if player1.RollAngle>0 then begin
      s:=1;
      s2:=1;
      end
      else begin
      s:=-1;
      s:=-178;
      end;

      if (player1.RollAngle)<=-89 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if (player1.RollAngle)>=-91 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
//      end;
      GLNavigator1.StrafeVertical(-boost);
//      moving:='run';

      end
      else
            Click:=Click+1;
   if IsKeyDown(VK_RIGHT) then begin

//      if run then
//      begin
       temp:='r';
       tempStop:='r';
      if not ballonintersepted=true then ///if ballonintersepted:=false
      begin
      if player1.RollAngle<=-1 then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if player1.RollAngle>=1 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
      end
        else
        begin  //if ballonintersepted:=true;
         if player1.RollAngle<=1 then
         begin
         if Player1.RollAngle+(boost*300)>=1 then
         Player1.RollAngle:=1
         else
         Player1.RollAngle:=Player1.RollAngle+(boost*300);
         end;
         if player1.RollAngle>=-1 then
         begin
         if Player1.RollAngle-(boost*300)<=-1 then
         Player1.RollAngle:=1
         else
         Player1.RollAngle:=Player1.RollAngle-(boost*300);
         end;

        end;

      GLNavigator1.StrafeHorizontal(-boost);
//      moving:='run';




      end
            else
            Click:=Click+1;
      if IsKeyDown(VK_LEFT) then begin

//      if run then
//      begin
      temp:='l';
      tempStop:='l';
      if player1.RollAngle>0 then begin
      s:=176;
      s2:=178;
      end
      else begin
      s:=-176;
      s:=-178;
      end;

      if abs(player1.RollAngle)<=s then
      Player1.RollAngle:=Player1.RollAngle+(boost*20);
      if abs(player1.RollAngle)>=s2 then
      Player1.RollAngle:=Player1.RollAngle-(boost*20);
//      end;

      GLNavigator1.StrafeHorizontal(boost);
//      moving:='run';
  end
        else
            Click:=Click+1;
if Click=4 then
tempStop:='nothink';

{      if (IsKeyDown('z') and IsKeyDown('d')) then
      begin
      Player1.RollAngle:=20;
      Player1.Position.y:=Player1.Position.y+vitessejouer;
      Player1.Position.x:=Player1.Position.x+vitessejouer;
      exit;
      end;

      if IsKeyDown('W') or IsKeyDown('Z') then
      begin
      Player1.Position.y:=Player1.Position.y+vitessejouer;
      end;

      if IsKeyDown('S') then
      begin
     Player1.Position.y:=Player1.Position.y-vitessejouer;
      end;

      if IsKeyDown('Q') or IsKeyDown('A') then
      begin
     Player1.Position.X:=Player1.Position.x-vitessejouer;
      end;

      if IsKeyDown('D') then
      begin
     Player1.Position.X:=Player1.Position.x+vitessejouer;
      end;

 }
if ((Player1.Position.x>=Ballon.Position.X-2) and (Player1.Position.x<=Round(Ballon.Position.X+2))) then
begin
if ((Player1.Position.y>=Ballon.Position.y) and (Player1.Position.y<=Round(Ballon.Position.y+1))) then
begin
//Ballon.Position.X:=Player1.Position.X+2;
//Ballon.Position.y:=Player1.Position.y;
//ballonintersepted:=true;
//AnimatedBallonWhenInterspeted('qsd',12);
end;
end;




// if Player1.Position.X:=
// Ballon.Position.X:=Player1.Position.X+2;
//Ballon.Position.y:=Player1.Position.y;
//AnimatedBallonWhenInterspeted('qsd',1.2);




//////////////////////////////////
      end // end playeranimated
//////////////////////////////////
else
begin
changekeyWhenplayerrun:=true;
//////////////////////////////////
          // else playeranimated
//////////////////////////////////

 if IsKeyDown('D') then begin
// keypressed:='d';
 end;
 
 if IsKeyDown('D') then begin
// Playeranimettoballon:=false;
 ballonanimer:=false;
 tire('12',50,deltaTime,'no'); 
 end;


//////////////////////////////////
end; // end else playeranimated
//////////////////////////////////



      if IsKeyDown(VK_ESCAPE) then Close;
white:=false;      
end;


procedure TForm1.ComboBox1Select(Sender: TObject);
begin
//GLCamera1.TargetObject:=;
if Button1.CanFocus then
Button1.SetFocus;
end;

procedure TForm1.GLSceneViewer1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
accept := true;
end;

procedure TForm1.GLSceneViewer1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
form2.Parent :=form1; // pour accepter que le label puisse aller sur le panel
form2.Align:=alLeft;
GLSceneViewer1.Align:=alRight;

end;

procedure TForm1.EDITMODETimer(Sender: TObject);
var i:integer;
begin
form1.Left:=200;
form1.Top:=0;
form1.Height:=703;
form1.Width:=821;
form2.top:=0;
form2.Left:=0;
form2.Height:=703;
form2.Width:=200;
form2.show;
form3.ListBox1.Clear;
for i:=Form1.ComponentCount-1 downto 0  do
//If ((Form1.Components[i] Is TGLActor) or
//(Form1.Components[i] Is TGLSphere) or
//(Form1.Components[i] Is TGLPlane) or
//(Form1.Components[i] Is TGLCube)) Then
form3.ListBox1.Items.Add(Form1.Components[i].Name);


EDITMODE.Enabled:=false;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
EDITMODETimer(SENDER);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
button8.Caption:=FloatToStr(Player1.RollAngle);
end;

procedure TForm1.CollisionManager1Collision(Sender: TObject; object1,
  object2: TGLBaseSceneObject);
begin
//ListBox1.Items.Clear;
if not Playeranimettoballon then
begin
//AnimatedBallonWhenInterspeted('qsd',12,'run','stop');
//AnimatedPlayerToBallon('qsd',12,2,1,'stop');
end;

//if (((object1.Name='player1') and (object2.Name='ballon')) or ((object2.Name='player1') and (object1.Name='ballon'))) then
//begin
if Timer3.Enabled=false then
begin
if tempStop<>'nothink' then
begin
{if run then
begin
if IsKeyDown(VK_UP) then
begin
      temp:='u';
      tempStop:='u';
      if ABS(player1.RollAngle)<=89 then
      Player1.RollAngle:=Player1.RollAngle+22.5;
      if ABS(player1.RollAngle)>=91 then
      Player1.RollAngle:=Player1.RollAngle-22.5;

      GLNavigator1.StrafeVertical(boost);

end;
end;}
white:=true;
HandleKeys(iss);
if not white then begin
ballonattacheauplayer:=false;
Timer3.Enabled:=True;
ballonintersepted:=true;
ballonanimer:=true;
Playeranimettoballon:=true;
AnimatedBallonWhenInterspeted('qsd',12,'run','play');
end;

end
else
begin
if Timer3.Enabled=false then
begin
if ballonanimer then
AnimatedBallonWhenInterspeted('qsd',12,'run','stop');
ballonattacheauplayer:=true;
conteurAeffecer:=conteurAeffecer+1;
ListBox1.Items.Text:=(inttostr(conteurAeffecer));
Playeranimettoballon:=false;

end;
end;
end;





end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
//if Playeranimettoballon then
//Button5.Caption:='true'
//else
Button5.Caption:='pas bouge';
end;

procedure TForm1.Button6Click(Sender: TObject);
var i,x,y:single;
begin
if Player1.RollAngle<=45 then
begin
x:=5;
y:=Tan(Player1.RollAngle) * 5;
end;
button3.Caption:=('x= '+FloatToStr(x)+' /// y= '+FloatToStr(y));
end;

end.
