.class public Lcom/android/camera/menu/SelfTimerMenuItem;
.super Lcom/android/camera/menu/ListPreferenceMenuItem;
.source "SelfTimerMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 8
    .parameter "cameraActivity"
    .parameter "titleResId"

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_self_timer"

    const v5, 0x7f070010

    const v6, 0x7f07000f

    const-string v7, "none"

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 28
    return-void
.end method


# virtual methods
.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 1
    .parameter "item"
    .parameter "value"

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/camera/menu/ListPreferenceMenuItem;->onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/menu/SelfTimerMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval()V

    .line 38
    return-void
.end method
