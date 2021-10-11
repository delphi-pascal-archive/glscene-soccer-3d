object Form1: TForm1
  Left = 199
  Top = 106
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 519
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 813
    Height = 519
    Camera = GLCamera1
    Buffer.BackgroundColor = 3338
    Buffer.AmbientColor.Color = {A69B843E0000000060E5703F0000803F}
    Buffer.FaceCulling = False
    Buffer.AntiAliasing = aa4x
    FieldOfView = 130.365737915039100000
    Align = alClient
    OnDragDrop = GLSceneViewer1DragDrop
    OnDragOver = GLSceneViewer1DragOver
    OnMouseDown = GLSceneViewer1MouseDown
    OnMouseMove = GLSceneViewer1MouseMove
  end
  object Button1: TButton
    Left = 608
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 0
    Top = 0
    Width = 33
    Height = 33
    Caption = 'EDIT'
    TabOrder = 2
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 696
    Top = 16
    Width = 75
    Height = 25
    Caption = 'TERMINER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Button8: TButton
    Left = 112
    Top = 40
    Width = 225
    Height = 25
    Caption = 'Button3'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 112
    Top = 8
    Width = 449
    Height = 25
    Caption = 'Button3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 544
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
  end
  object ListBox1: TListBox
    Left = 688
    Top = 0
    Width = 121
    Height = 97
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 80
    Items.Strings = (
      '0')
    ParentFont = False
    TabOrder = 7
  end
  object Button6: TButton
    Left = 376
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 8
    OnClick = Button6Click
  end
  object GLScene1: TGLScene
    Left = 40
    Top = 48
    object DUMMYSHADER: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Playervs11: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs10: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs9: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs8: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs7: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs6: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs5: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs4: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs3: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs2: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {2EBDBB33000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Playervs1: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {C66BB4B3000080BF0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player9: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player11: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player10: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player8: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Ballon: TGLSphere
        Tag = 1
        Material.MaterialLibrary = GLMatlLib
        Position.Coordinates = {0000204100000000000000BF0000803F}
        Radius = 0.500000000000000000
        BehavioursData = {
          0201060D54474C42436F6C6C6973696F6E02010611436F6C6C6973696F6E4D61
          6E616765723102010200}
      end
      object Player7: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player6: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player5: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player4: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player3: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player2: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
      end
      object Player1: TGLActor
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F0000803F0000803F}
        Material.Texture.MinFilter = miLinear
        Material.Texture.TextureMode = tmModulate
        Material.Texture.Disabled = False
        Scale.Coordinates = {CDCCCC3DCDCCCC3DCDCCCC3D00000000}
        Up.Coordinates = {586874B60000803F0000000000000000}
        Interval = 100
        OnFrameChanged = Player1FrameChanged
        BehavioursData = {
          0201060D54474C42436F6C6C6973696F6E02010611436F6C6C6973696F6E4D61
          6E616765723102010200}
      end
    end
    object GLShadowVolume1: TGLShadowVolume
      Active = False
      Lights = <
        item
          LightSource = GLLightSource1
        end
        item
          LightSource = GLLightSource2
        end
        item
          LightSource = GLLightSource3
        end
        item
          LightSource = GLLightSource4
        end
        item
          LightSource = GLLightSource5
        end
        item
          LightSource = GLLightSource6
        end>
      Occluders = <
        item
          Caster = Ballon
        end>
      DarkeningColor.Color = {0000000000000000000000000000803F}
      object Stade: TGLPlane
        Material.MaterialLibrary = GLMatlLib
        Position.Coordinates = {00000000000010C0000080BF0000803F}
        RollAngle = 90.000000000000000000
        Scale.Coordinates = {00001643000096430000803F00000000}
        Up.Coordinates = {000080BFB38FF0B20000000000000000}
        Visible = False
        Height = 1.000000000000000000
        Width = 1.000000000000000000
        Style = []
        NoZWrite = False
        BehavioursData = {
          0201060C54474C4443455374617469630200060D474C4443454D616E61676572
          310201020009080F0000A0410F00000000020008}
      end
    end
    object TREBONE4: TGLActor
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {00000CC30000F041000080BF0000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00008040000000400000A04000000000}
      Up.Coordinates = {000080BF5D1CFC320000000000000000}
      Interval = 100
    end
    object TREBONE3: TGLActor
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {00000C430000F041000080BF0000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00008040000000400000A04000000000}
      Up.Coordinates = {000080BF000000000000000000000000}
      Interval = 100
    end
    object TREBONE2: TGLActor
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {0000F0C1000002C3000080BF0000803F}
      Scale.Coordinates = {000090400000803F0000A04000000000}
      Interval = 100
    end
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000C84200004842000048420000803F}
      SpotCutOff = 180.000000000000000000
      object GLLensFlare1: TGLLensFlare
        Seed = 1465
        FlareIsNotOccluded = False
      end
      object GLLightSource2: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        Position.Coordinates = {000048C200000000000048420000803F}
        SpotCutOff = 180.000000000000000000
        object GLLightSource3: TGLLightSource
          Ambient.Color = {E5D0A23EE5D0A23EE5D0A23E0000803F}
          ConstAttenuation = 1.000000000000000000
          Diffuse.Color = {E5D0A23EE5D0A23EE5D0A23E0000803F}
          Position.Coordinates = {00004842000048C2000048420000803F}
          SpotCutOff = 180.000000000000000000
          object GLLightSource4: TGLLightSource
            ConstAttenuation = 1.000000000000000000
            Position.Coordinates = {000048C2000048C2000048420000803F}
            SpotCutOff = 180.000000000000000000
            object GLLightSource5: TGLLightSource
              ConstAttenuation = 1.000000000000000000
              Position.Coordinates = {00000000000048C2000048420000803F}
              SpotCutOff = 180.000000000000000000
              object GLLightSource6: TGLLightSource
                ConstAttenuation = 1.000000000000000000
                Position.Coordinates = {0000000000004842000048420000803F}
                SpotCutOff = 180.000000000000000000
              end
            end
          end
        end
      end
    end
    object GLSphere6: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object GLSphere5: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object Terrain: TGLTerrainRenderer
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {0000000000000000000048420000803F}
      Visible = False
      HeightDataSource = GLBitmapHDS1
      TilesPerTexture = 1.000000000000000000
      BehavioursData = {
        0201060C54474C4443455374617469630200060D474C4443454D616E61676572
        310203020009080F0000A0410F00000000020008}
    end
    object GLSphere1: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object GLSphere2: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object GLSphere3: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object GLSphere4: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object Terrain2: TGLTerrainRenderer
      Material.MaterialLibrary = GLMatlLib
      Visible = False
      HeightDataSource = GLBitmapHDS1
      TilesPerTexture = 1.000000000000000000
    end
    object DISTEST: TGLSphere
      Position.Coordinates = {0000A04200000000000020410000803F}
      Radius = 0.500000000000000000
    end
    object Pub: TGLActor
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {0000000000008C42000080BF0000803F}
      Scale.Coordinates = {9A99993E9A99993E9A99993E00000000}
      Interval = 100
      object Pub2: TGLActor
        Position.Coordinates = {00007AC3000070420000A0400000803F}
        RollAngle = -50.000000000000000000
        Scale.Coordinates = {0AD7233C0AD7233C0AD7233C00000000}
        Up.Coordinates = {7D1B443FBB8D243F0000000000000000}
        Interval = 100
      end
    end
    object Gazzon2: TGLPlane
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {000000000000D642000080BF0000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00008C42000096430000803F00000000}
      Up.Coordinates = {000080BF2EBD3BB30000000000000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
      NoZWrite = False
    end
    object Ciel: TGLPlane
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {00000000000010C000008E420000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00007A430000C8430000803F00000000}
      Up.Coordinates = {000080BF2EBD3BB30000000000000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
      NoZWrite = False
    end
    object Ciel2: TGLPlane
      Material.MaterialLibrary = GLMatlLib
      Direction.Coordinates = {B18F70B31685D5A6000080BF00000000}
      PitchAngle = 180.000000000000000000
      Position.Coordinates = {00000000000010C000008C420000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00007A430000C8430000803F00000000}
      Up.Coordinates = {0000803FBA8D2433B18F70B300000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
      NoZWrite = False
    end
    object Mur: TGLCube
      Direction.Coordinates = {58FF7FBFCAE281BB14E3073B00000000}
      PitchAngle = -0.800000011920928900
      Position.Coordinates = {000000000000C842000000000000803F}
      RollAngle = 70.000000000000000000
      Scale.Coordinates = {0000803F0000A0400000964300000000}
      TurnAngle = -28.000000000000000000
      Up.Coordinates = {2CA90DBB520CB73C7CEF7FBF00000000}
    end
    object TREBONE: TGLActor
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {0000F0C100000243000080BF0000803F}
      Scale.Coordinates = {000090400000803F0000A04000000000}
      Interval = 100
    end
    object Gazzon3: TGLPlane
      Material.MaterialLibrary = GLMatlLib
      Position.Coordinates = {000000000000E0C2000080BF0000803F}
      RollAngle = 90.000000000000000000
      Scale.Coordinates = {00008C42000096430000803F00000000}
      Up.Coordinates = {000080BF2EBD3BB30000000000000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
      NoZWrite = False
    end
    object PROJECTEUR1: TGLCube
      Position.Coordinates = {0000F0C100000243000048420000803F}
      Scale.Coordinates = {000020410000A0410000204100000000}
    end
    object GLSphere7: TGLSphere
      Visible = False
      Radius = 0.500000000000000000
    end
    object SHADOW: TGLShadowPlane
      Material.MaterialLibrary = GLMatlLib
      Height = 1.000000000000000000
      Width = 1.000000000000000000
      Style = [psTileTexture]
      NoZWrite = False
      ShadowingObject = DUMMYSHADER
      ShadowedLight = GLLightSource4
      ShadowColor.Color = {1B2F5D3E1B2F5D3E1B2F5D3E0000803F}
    end
    object GLCamera1: TGLCamera
      DepthOfView = 5000.000000000000000000
      FocalLength = 120.000000000000000000
      TargetObject = Ballon
      Position.Coordinates = {0000904100008041000050410000803F}
      Direction.Coordinates = {000080BF000000000000000000000000}
      Up.Coordinates = {00000000000000000000803F00000000}
    end
  end
  object GLCadencer1: TGLCadencer
    Scene = GLScene1
    OnProgress = GLCadencer1Progress
    Left = 8
    Top = 48
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 80
  end
  object GLMatlLib: TGLMaterialLibrary
    Left = 40
    Top = 80
  end
  object GLBitmapHDS1: TGLBitmapHDS
    MaxPoolSize = 0
    Left = 8
    Top = 112
  end
  object EDITMODE: TTimer
    Enabled = False
    OnTimer = EDITMODETimer
    Left = 32
  end
  object GLDCEManager1: TGLDCEManager
    Gravity = -30.000000000000000000
    WorldScale = 1.000000000000000000
    MovimentScale = 1.000000000000000000
    StandardiseLayers = ccsDCEStandard
    ManualStep = False
    Left = 40
    Top = 112
  end
  object GLNavigator1: TGLNavigator
    MoveUpWhenMovingForward = False
    InvertHorizontalSteeringWhenUpsideDown = False
    VirtualUp.Coordinates = {000000000000803F000000000000803F}
    MovingObject = Player1
    UseVirtualUp = True
    AutoUpdateObject = False
    AngleLock = False
    Left = 8
    Top = 144
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 216
    Top = 72
  end
  object CollisionManager1: TCollisionManager
    OnCollision = CollisionManager1Collision
    Left = 40
    Top = 144
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer3Timer
    Left = 584
    Top = 8
  end
  object Timer4: TTimer
    OnTimer = Timer4Timer
    Left = 472
    Top = 64
  end
  object Timer5: TTimer
    Interval = 1
    Left = 576
    Top = 104
  end
end
