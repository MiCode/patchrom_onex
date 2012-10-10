.class Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;
.super Ljava/lang/Object;
.source "HtcVolumePreference.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;->this$1:Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 524
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3$1;-><init>(Lcom/htc/preference/HtcVolumePreference$SeekBarVolumizer$3;)V

    .line 531
    .local v0, getRingtoneRunnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 532
    const/4 v1, 0x0

    return v1
.end method
