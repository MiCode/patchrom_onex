.class public final Lcom/android/camera/MovieModeHandler;
.super Lcom/android/camera/ModeHandler;
.source "MovieModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MovieModeHandler$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieModeHandler"

.field private static mResolutionSet_2nd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_3D:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mResolutionSet_Main:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleton:Lcom/android/camera/MovieModeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    .line 20
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 22
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_6

    .line 26
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_1

    .line 28
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQHD2ndCam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->apply720PPreview()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    :cond_2
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_3
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlineVedioRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_5
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-ne v0, v2, :cond_d

    .line 54
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support1080p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_9
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_a

    .line 59
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_a
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_b

    .line 61
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_b
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_c

    .line 65
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_c
    :goto_0
    return-void

    .line 68
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

    move-result v0

    if-ne v0, v2, :cond_12

    .line 69
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_e

    .line 70
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v0

    if-eq v0, v2, :cond_f

    .line 74
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_f
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_10

    .line 78
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_11
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_c

    .line 84
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 90
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_13
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWVGA()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 92
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_14
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v1, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v0, v1, :cond_15

    .line 95
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 96
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_15
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGA480Recording()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 100
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_HVGA480:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_16
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportMMSVedioRecording()Z

    move-result v0

    if-ne v0, v2, :cond_17

    .line 103
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_17
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlineVedioRecording()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 108
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_18
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    sget-object v1, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/camera/ModeHandler;-><init>()V

    .line 336
    return-void
.end method

.method private getMaxinumResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 8
    .parameter "cameraActivity"
    .parameter "cameraType"

    .prologue
    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v3

    .line 298
    .local v3, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    const/4 v4, 0x0

    .line 299
    .local v4, maxResolution:Lcom/android/camera/Resolution;
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ResolutionMenuItem;

    .line 301
    .local v2, item:Lcom/android/camera/ResolutionMenuItem;
    iget-object v0, v2, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 302
    .local v0, candResolution:Lcom/android/camera/Resolution;
    if-eqz v4, :cond_1

    iget v5, v0, Lcom/android/camera/Resolution;->width:I

    iget v6, v0, Lcom/android/camera/Resolution;->height:I

    mul-int/2addr v5, v6

    iget v6, v4, Lcom/android/camera/Resolution;->width:I

    iget v7, v4, Lcom/android/camera/Resolution;->height:I

    mul-int/2addr v6, v7

    if-le v5, v6, :cond_0

    .line 303
    :cond_1
    move-object v4, v0

    goto :goto_0

    .line 305
    .end local v0           #candResolution:Lcom/android/camera/Resolution;
    .end local v2           #item:Lcom/android/camera/ResolutionMenuItem;
    :cond_2
    return-object v4
.end method

.method public static getMovieModeHandler()Lcom/android/camera/MovieModeHandler;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/android/camera/MovieModeHandler;

    invoke-direct {v0}, Lcom/android/camera/MovieModeHandler;-><init>()V

    sput-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    .line 345
    :cond_0
    sget-object v0, Lcom/android/camera/MovieModeHandler;->mSingleton:Lcom/android/camera/MovieModeHandler;

    return-object v0
.end method

.method private static isDefaultMaximumResolution()Z
    .locals 2

    .prologue
    .line 310
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Z
    .locals 2
    .parameter "camera"
    .parameter "cameraType"

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 326
    .local v0, r:Lcom/android/camera/Resolution;
    sget-object v1, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v1}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    const/4 v1, 0x1

    .line 330
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 5
    .parameter "camera"
    .parameter "cameraType"

    .prologue
    const/4 v4, 0x1

    .line 209
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 211
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_1

    .line 213
    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_isVideoQVGA()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 214
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QVGA"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v2, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 292
    :goto_0
    return-object v2

    .line 217
    :cond_0
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms custom request - QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 221
    :cond_1
    const-string v2, "MovieModeHandler"

    const-string v3, "Mms request - resolution setting is QCIF"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 225
    :cond_2
    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eq v2, v4, :cond_3

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_capture_resolution_video_2nd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 235
    :cond_4
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 237
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto :goto_0

    .line 240
    :cond_6
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 243
    .end local v0           #key:Ljava/lang/String;
    :cond_7
    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 249
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0       #key:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 253
    :cond_9
    const-string v2, "pref_capture_resolution_video_2nd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 255
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->isDefaultMaximumResolution()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getMaxinumResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    .line 288
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 292
    :cond_a
    invoke-static {p1, v1}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v2

    goto/16 :goto_0

    .line 257
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_c

    .line 258
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 260
    :cond_c
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 263
    :cond_d
    const-string v2, "pref_capture_resolution_video_3D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 265
    sget-object v2, Lcom/android/camera/Resolution;->Video_720P_3D:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 268
    :cond_e
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->isDefaultMaximumResolution()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getMaxinumResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 270
    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDefaultQuality720p()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 271
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 272
    :cond_10
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWVGA()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 273
    sget-object v2, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 274
    :cond_11
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_12

    .line 275
    sget-object v2, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 276
    :cond_12
    sget-object v2, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v3, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v2, v3, :cond_15

    .line 278
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGARecording()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 279
    sget-object v2, Lcom/android/camera/Resolution;->Video_HVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 280
    :cond_13
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHVGA480Recording()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 281
    sget-object v2, Lcom/android/camera/Resolution;->Video_HVGA480:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 283
    :cond_14
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 286
    :cond_15
    sget-object v2, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;
    .locals 6
    .parameter "camera"
    .parameter "cameraType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 131
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 134
    .local v1, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 135
    const-string v4, "MovieModeHandler"

    const-string v5, "Mms request - resolution menu has only QCIF"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 137
    .local v3, r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v4, v5, :cond_0

    .line 139
    sget-object v3, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    .line 140
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_0
    :goto_0
    return-object v1

    .line 145
    :cond_1
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v5, :cond_2

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v5, :cond_7

    invoke-static {}, Lcom/android/camera/IntentManager;->hasVideoQuality()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->RequestVideoQualityLevel()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/MovieModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, key:Ljava/lang/String;
    const-string v4, "pref_capture_resolution_video_2nd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p2ndCam()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    .line 155
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_3
    sget-object v3, Lcom/android/camera/Resolution;->Video_VGA:Lcom/android/camera/Resolution;

    .line 160
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    .line 167
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_5
    sget-object v3, Lcom/android/camera/Resolution;->VGA:Lcom/android/camera/Resolution;

    .line 172
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_6
    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    .line 177
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_7
    sget-object v4, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-ne p2, v4, :cond_8

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 184
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_2nd:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    .line 185
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    .end local v0           #i:I
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/camera/CameraType;->Main3D:Lcom/android/camera/CameraType;

    if-ne p2, v4, :cond_9

    .line 191
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 192
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_3D:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    .line 193
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    .end local v0           #i:I
    .end local v3           #r:Lcom/android/camera/Resolution;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 198
    sget-object v4, Lcom/android/camera/MovieModeHandler;->mResolutionSet_Main:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Resolution;

    .line 199
    .restart local v3       #r:Lcom/android/camera/Resolution;
    new-instance v4, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;
    .locals 2
    .parameter "camera"
    .parameter "cameraType"

    .prologue
    .line 117
    sget-object v0, Lcom/android/camera/MovieModeHandler$1;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual {p2}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    const-string v0, "pref_capture_resolution_video_main"

    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    const-string v0, "pref_capture_resolution_video_2nd"

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "pref_capture_resolution_video_3D"

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getSlowMotionResolution()Lcom/android/camera/imaging/Size;
    .locals 3

    .prologue
    .line 350
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    new-instance v0, Lcom/android/camera/imaging/Size;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    .line 355
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/camera/imaging/Size;

    const/16 v1, 0x300

    const/16 v2, 0x1b0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/imaging/Size;-><init>(II)V

    goto :goto_0
.end method
