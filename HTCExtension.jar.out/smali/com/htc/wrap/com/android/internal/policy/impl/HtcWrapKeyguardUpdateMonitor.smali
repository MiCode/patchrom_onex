.class public Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "HtcWrapKeyguardUpdateMonitor.java"


# static fields
.field public static final DEVICE_LOCK_TYPE_CS:I = 0x1

.field public static final DEVICE_LOCK_TYPE_DM:I = 0x2

.field public static final DEVICE_LOCK_TYPE_NONE:I


# instance fields
.field private mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 306
    return-void
.end method


# virtual methods
.method public getAvailableTimeStamp()J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getAvailableTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceLock()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLock()Z

    move-result v0

    return v0
.end method

.method public getDeviceLockType()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getDeviceLockType()I

    move-result v0

    return v0
.end method

.method public getIccDetailStatus()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public getIccDetailStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getIccDetailStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardFly()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFly()Z

    move-result v0

    return v0
.end method

.method public getKeyboardFlyHeight()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getKeyboardFlyHeight()I

    move-result v0

    return v0
.end method

.method public getNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetowrkServiceStatus()I

    move-result v0

    return v0
.end method

.method public getNetworkLockType()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getNetworkLockType()I

    move-result v0

    return v0
.end method

.method public getPasswordTimeout()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPasswordTimeout()Z

    move-result v0

    return v0
.end method

.method public getPinEnable()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPinEnable()Z

    move-result v0

    return v0
.end method

.method public getShowing()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getShowing()Z

    move-result v0

    return v0
.end method

.method public getSubNetowrkServiceStatus()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubServiceStatus:I

    return v0
.end method

.method public getSubTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mSubTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockType()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnlockType()I

    move-result v0

    return v0
.end method

.method public isShowCallDeclinedAnimation()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isShowCallDeclinedAnimation()Z

    move-result v0

    return v0
.end method

.method public isWaitFirstFrame()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isWaitFirstFrame()Z

    move-result v0

    return v0
.end method

.method public registerIccStateCallback(Lcom/android/internal/policy/impl/HtcIfIccStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerIccStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$IccStateCallback;)V

    .line 283
    return-void
.end method

.method public registerInfoPlusCallback(Lcom/android/internal/policy/impl/HtcIfInfoPlusCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoPlusCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoPlusCallback;)V

    .line 287
    return-void
.end method

.method public registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    check-cast p1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimExtraStateCallback;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimExtraStateCallback(Lcom/android/internal/policy/impl/HtcIfSimExtraStateCallback;)V

    .line 55
    return-void
.end method

.method public reportAvailableTimeStamp(J)V
    .locals 1
    .parameter "timeStamp"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportAvailableTimeStamp(J)V

    .line 85
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 267
    return-void
.end method

.method public reportUimPinUnlocked()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportUimPinUnlocked()V

    .line 299
    return-void
.end method

.method public setKeyboardFly(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(I)V

    .line 208
    return-void
.end method

.method public setKeyboardFly(Z)V
    .locals 1
    .parameter "bFly"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setKeyboardFly(Z)V

    .line 190
    return-void
.end method

.method public setPasswordTimeout(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPasswordTimeout(Z)V

    .line 151
    return-void
.end method

.method public setShowCallDeclinedAnimation(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowCallDeclinedAnimation(Z)V

    .line 181
    return-void
.end method

.method public setShowing(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setShowing(Z)V

    .line 101
    return-void
.end method

.method public setUnlockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setUnlockType(I)V

    .line 227
    return-void
.end method

.method public setWaitFirstFrame(Z)V
    .locals 1
    .parameter "wait"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setWaitFirstFrame(Z)V

    .line 244
    return-void
.end method

.method public updateIccDetailStatus(III)V
    .locals 1
    .parameter "phoneType"
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateIccDetailStatus(III)V

    .line 291
    return-void
.end method

.method public updateNetworkLockType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateNetworkLockType(I)V

    .line 72
    return-void
.end method

.method public updateSimDetailStatus(II)V
    .locals 1
    .parameter "pin1RetryCount"
    .parameter "puk1RetryCount"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/policy/impl/HtcWrapKeyguardUpdateMonitor;->mKeyguardUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->updateSimDetailStatus(II)V

    .line 64
    return-void
.end method
