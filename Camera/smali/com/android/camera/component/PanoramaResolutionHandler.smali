.class public Lcom/android/camera/component/PanoramaResolutionHandler;
.super Lcom/android/camera/SubsetResolutionHandler;
.source "PanoramaResolutionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "pref_panorama_resolution"

    invoke-direct {p0, v0}, Lcom/android/camera/SubsetResolutionHandler;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getMaximumResolutions()[Lcom/android/camera/Resolution;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 24
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 27
    :cond_0
    new-array v0, v2, [Lcom/android/camera/Resolution;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/Resolution;->THREE_MEGA:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/Resolution;->THREE_MEGA_5_3:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    .line 32
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [Lcom/android/camera/Resolution;

    goto :goto_0
.end method

.method protected getMinimumResolutions()[Lcom/android/camera/Resolution;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 41
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_1

    .line 45
    :cond_0
    new-array v0, v2, [Lcom/android/camera/Resolution;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/camera/Resolution;->SXGA:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/Resolution;->SXGA_5_3:Lcom/android/camera/Resolution;

    aput-object v2, v0, v1

    .line 50
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [Lcom/android/camera/Resolution;

    goto :goto_0
.end method
