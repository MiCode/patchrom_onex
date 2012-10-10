.class public Lcom/htc/wrap/android/os/HtcWrapProcess;
.super Landroid/os/Process;
.source "HtcWrapProcess.java"


# static fields
.field public static final SMARTCARD_UID:I = 0x3fb

.field public static final SMARTCARD_UID2:I = 0x2703


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/os/Process;-><init>()V

    return-void
.end method

.method public static getGfxMem(I)J
    .locals 2
    .parameter "pid"

    .prologue
    .line 23
    invoke-static {p0}, Landroid/os/Process;->getGfxMem(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGfxVss(I)J
    .locals 2
    .parameter "pid"

    .prologue
    .line 19
    invoke-static {p0}, Landroid/os/Process;->getGfxMem(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final releaseFileMapMemoryW()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Process;->releaseFileMapMemory()V

    .line 31
    return-void
.end method
