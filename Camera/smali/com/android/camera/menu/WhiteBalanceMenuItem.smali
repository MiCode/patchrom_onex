.class public Lcom/android/camera/menu/WhiteBalanceMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "WhiteBalanceMenuItem.java"


# instance fields
.field private final m_CameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8
    .parameter "cameraActivity"
    .parameter "titleResId"

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_white_balance"

    const v5, 0x7f07001e

    const v6, 0x7f07001d

    const-string v7, "auto"

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 32
    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1
    .parameter "item"
    .parameter "value"

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 3
    .parameter "item"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/menu/WhiteBalanceMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, p2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 52
    :cond_0
    return-void
.end method
