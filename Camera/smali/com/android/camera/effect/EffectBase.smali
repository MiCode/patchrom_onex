.class public abstract Lcom/android/camera/effect/EffectBase;
.super Lcom/android/camera/ThreadDependencyObject;
.source "EffectBase.java"


# static fields
.field public static final CAPABILITY_SUPPORTS_ALL:I = 0x7fffffff

.field public static final CAPABILITY_SUPPORTS_CAMERA_MODE:I = 0x10

.field public static final CAPABILITY_SUPPORTS_FRONT_3D_CAMERA:I = 0x8

.field public static final CAPABILITY_SUPPORTS_FRONT_CAMERA:I = 0x4

.field public static final CAPABILITY_SUPPORTS_MAIN_3D_CAMERA:I = 0x2

.field public static final CAPABILITY_SUPPORTS_MAIN_CAMERA:I = 0x1

.field public static final CAPABILITY_SUPPORTS_SERVICE_MODE:I = 0x40

.field public static final CAPABILITY_SUPPORTS_VIDEO_MODE:I = 0x20

.field private static final FLAG_APPLIED:I = 0x2

.field private static final FLAG_PREPARED:I = 0x1

.field private static final FLAG_RELEASED:I = 0x4

.field public static final PA_FLAG_WILL_RESTART_PREVIEW:I = 0x1

.field public static final PC_FLAG_WILL_RESTART_PREVIEW:I = 0x1


# instance fields
.field private m_BackupImageSettings:Lcom/android/camera/ImageSettings;

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_Flags:I

.field private final m_Name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "name"
    .parameter "cameraActivity"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 53
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 60
    invoke-virtual {p2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "There is no camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method final apply(Lcom/android/camera/effect/EffectBase;)V
    .locals 9
    .parameter "prevEffect"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 79
    iget v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Effect is released"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    .line 86
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Effect \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' has already been applied"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 93
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 94
    iget v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 97
    :cond_2
    new-instance v1, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v1, p0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    .line 100
    .local v1, e:Lcom/android/camera/OneValueEventArgs;,"Lcom/android/camera/OneValueEventArgs<Lcom/android/camera/effect/EffectBase;>;"
    iget-object v6, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->effectApplyingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 104
    iget v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    .line 108
    .local v0, disabledImageSettings:I
    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    .line 110
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v3

    .line 111
    .local v3, prevDisabledImgSettings:I
    xor-int/lit8 v6, v0, -0x1

    and-int v5, v3, v6

    .line 112
    .local v5, restoredSettings:I
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getBackupImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v4

    .line 113
    .local v4, prevSettings:Lcom/android/camera/ImageSettings;
    if-eqz v4, :cond_4

    .line 115
    if-eqz v5, :cond_3

    .line 117
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Restore image settings"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v5}, Lcom/android/camera/ImageSettings;->apply(I)V

    .line 120
    :cond_3
    new-instance v6, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    const v8, 0x7fffffff

    invoke-direct {v6, v7, v4, v8}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/ImageSettings;I)V

    iput-object v6, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    .line 125
    .end local v3           #prevDisabledImgSettings:I
    .end local v4           #prevSettings:Lcom/android/camera/ImageSettings;
    .end local v5           #restoredSettings:I
    :cond_4
    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/android/camera/ImageSettings;

    move-result-object v2

    .line 128
    .local v2, newSettings:Lcom/android/camera/ImageSettings;
    if-eqz v2, :cond_5

    .line 130
    iget-object v6, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v7, "Apply special image settings"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Lcom/android/camera/ImageSettings;->apply()V

    .line 136
    .end local v2           #newSettings:Lcom/android/camera/ImageSettings;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0
.end method

.method protected abstract applyEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method final cancel(Lcom/android/camera/effect/EffectBase;)V
    .locals 6
    .parameter "nextEffect"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 149
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Effect is released"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 156
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 157
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 161
    :cond_1
    iget v3, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Effect \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has already been canceled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_2
    if-eqz p1, :cond_4

    if-eq p1, p0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 171
    .local v1, disabledImgSettings:I
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    .line 172
    .local v2, newDisabledImgSettings:I
    xor-int/lit8 v3, v1, -0x1

    and-int v0, v2, v3

    .line 173
    .local v0, backupSettings:I
    if-eqz v0, :cond_4

    .line 175
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Backup current image settings"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    if-nez v3, :cond_3

    .line 177
    new-instance v3, Lcom/android/camera/ImageSettings;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    invoke-virtual {v3, v0}, Lcom/android/camera/ImageSettings;->backup(I)V

    .line 183
    .end local v0           #backupSettings:I
    .end local v1           #disabledImgSettings:I
    .end local v2           #newDisabledImgSettings:I
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/EffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->cancelImplicitly()V

    .line 187
    iget-object v3, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->effectCanceledEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v4, p0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method protected abstract cancelEffect(Lcom/android/camera/effect/EffectBase;)V
.end method

.method protected cancelImplicitly()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 200
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    .line 201
    return-void
.end method

.method public getAppliedImageSettings()Lcom/android/camera/ImageSettings;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ImageSettings;->getDefaultSettings(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getBackupImageSettings()Lcom/android/camera/ImageSettings;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_BackupImageSettings:Lcom/android/camera/ImageSettings;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public abstract getCapabilities()I
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public final isApplied()Z
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method final prepareApply(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 289
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared or applied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 302
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareApplyEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0
    .parameter "prevEffect"
    .parameter "flags"

    .prologue
    .line 305
    return-void
.end method

.method final prepareCancel(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 316
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Effect is released"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 321
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/EffectBase;->m_Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has already been prepared for canceling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/effect/EffectBase;->prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V

    .line 329
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/android/camera/effect/EffectBase;I)V
    .locals 0
    .parameter "nextEffect"
    .parameter "flags"

    .prologue
    .line 332
    return-void
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 343
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 347
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    .line 353
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseOverride()V

    .line 354
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    goto :goto_0

    .line 349
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    goto :goto_1
.end method

.method public releaseCachedResources()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method protected releaseOverride()V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    .line 359
    return-void
.end method

.method public final resetParameters()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->threadAccessCheck()V

    .line 376
    iget v0, p0, Lcom/android/camera/effect/EffectBase;->m_Flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->resetParametersOverride()V

    goto :goto_0
.end method

.method protected resetParametersOverride()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
