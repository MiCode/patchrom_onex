.class public final Lcom/android/camera/component/UIComponentFactory;
.super Lcom/android/camera/component/ComponentFactory;
.source "UIComponentFactory.java"


# static fields
.field private static final m_Builders:[Lcom/android/camera/component/IComponentBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/android/camera/component/IComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/component/ViewFinderBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ViewFinderBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/component/CaptureUIBlockManagerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/CaptureUIBlockManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/component/AudioManagerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AudioManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/component/UIRotationManagerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/UIRotationManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/component/CameraModeScreenBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/CameraModeScreenBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/component/MainBarBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/MainBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/component/CaptureBarBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/CaptureBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/component/AutoSceneControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AutoSceneControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/component/FaceDetectionUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/FaceDetectionUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/component/SensorFocusControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SensorFocusControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/camera/component/FlashRestrictionControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/FlashRestrictionControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/camera/component/ThumbnailUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ThumbnailUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButtonBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/HwCameraSwitchButtonBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/camera/component/PanoramaUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/PanoramaUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/camera/component/SmartShotUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SmartShotUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/camera/component/HdrUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/HdrUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/camera/component/BurstUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/BurstUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/camera/component/ContinuousBurstUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ContinuousBurstUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/camera/component/ScreenSaveUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ScreenSaveUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/camera/component/ZoomBarBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ZoomBarBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/camera/component/StorageWatcherBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/StorageWatcherBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/camera/component/MediaScannerWatcherBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/MediaScannerWatcherBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/camera/component/BatteryWatcherBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/BatteryWatcherBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/camera/component/PowerWarningUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/PowerWarningUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/android/camera/effect/EffectPanelUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/effect/EffectPanelUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/android/camera/effect/EffectControlUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/effect/EffectControlUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/android/camera/component/IndicatorsUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/IndicatorsUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/android/camera/component/GridViewUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/GridViewUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/android/camera/component/FocusUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/FocusUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/android/camera/component/BIControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/BIControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/android/camera/component/ObjectTrackingUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ObjectTrackingUIBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/android/camera/component/HeadsetButtonControllerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/HeadsetButtonControllerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/android/camera/component/AutoBacklightIntentSenderBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/AutoBacklightIntentSenderBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/android/camera/component/ExternalCommandServerBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/ExternalCommandServerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/android/camera/component/SmileCaptureUIBuilder;

    invoke-direct {v2}, Lcom/android/camera/component/SmileCaptureUIBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/component/UIComponentFactory;->m_Builders:[Lcom/android/camera/component/IComponentBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentFactory;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final createComponents(Lcom/android/camera/component/ComponentCategory;)I
    .locals 3
    .parameter "category"

    .prologue
    .line 68
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/component/ComponentFactory;->componentOwner:Lcom/android/camera/component/IComponentOwner;

    aput-object v2, v0, v1

    .line 69
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/component/UIComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected getComponentBuilders()[Lcom/android/camera/component/IComponentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/android/camera/component/IComponentBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/android/camera/component/UIComponentFactory;->m_Builders:[Lcom/android/camera/component/IComponentBuilder;

    return-object v0
.end method
