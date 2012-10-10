.class Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

.field final synthetic val$e:Lcom/android/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/ContinuousBurstStatisticController$1;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iput-object p2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-wide v0, v0, Lcom/android/camera/MediaEventArgs;->captureID:J

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    invoke-virtual {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$008(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    .line 66
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->val$e:Lcom/android/camera/MediaEventArgs;

    iget-boolean v0, v0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 70
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_4

    .line 75
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v1, v1, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_bi_continuousburst_history"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_continuousburst_history"

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v1, v1, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v1, v1, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$100(Lcom/android/camera/bi/ContinuousBurstStatisticController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count complete =>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #setter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v0, v4}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$002(Lcom/android/camera/bi/ContinuousBurstStatisticController;I)I

    goto/16 :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    iget-object v0, v0, Lcom/android/camera/bi/ContinuousBurstStatisticController;->mContinuousHistory:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/camera/bi/ContinuousBurstStatisticController$1$1;->this$1:Lcom/android/camera/bi/ContinuousBurstStatisticController$1;

    iget-object v2, v2, Lcom/android/camera/bi/ContinuousBurstStatisticController$1;->this$0:Lcom/android/camera/bi/ContinuousBurstStatisticController;

    #getter for: Lcom/android/camera/bi/ContinuousBurstStatisticController;->mPhoto_taken:I
    invoke-static {v2}, Lcom/android/camera/bi/ContinuousBurstStatisticController;->access$000(Lcom/android/camera/bi/ContinuousBurstStatisticController;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
