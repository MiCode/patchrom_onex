.class Lcom/android/camera/component/RecordingTimerUI$1;
.super Ljava/lang/Object;
.source "RecordingTimerUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingTimerUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingTimerUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingTimerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Ljava/lang/Long;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Ljava/lang/Long;>;"
    const-wide/16 v6, 0x0

    const/4 v9, -0x1

    .line 72
    iget-object v5, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 73
    .local v3, totalSeconds:J
    cmp-long v5, v3, v6

    if-gez v5, :cond_0

    .line 99
    :goto_0
    return-void

    .line 75
    :cond_0
    cmp-long v5, v3, v6

    if-nez v5, :cond_1

    .line 77
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #calls: Lcom/android/camera/component/RecordingTimerUI;->initializeUI()V
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$000(Lcom/android/camera/component/RecordingTimerUI;)V

    .line 78
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$100(Lcom/android/camera/component/RecordingTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v6}, Lcom/android/camera/component/RecordingTimerUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 79
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$200(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    iget-object v6, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;
    invoke-static {v6}, Lcom/android/camera/component/RecordingTimerUI;->access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/camera/component/RecordingTimerUI;->showUI(Landroid/view/View;ZZ)V

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v5}, Lcom/android/camera/component/RecordingTimerUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 86
    .local v0, limitCheck:Lcom/android/camera/RecordLimitCheck;
    if-eqz v0, :cond_4

    .line 87
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v5}, Lcom/android/camera/component/RecordingTimerUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v1

    .line 90
    .local v1, remainingTime:J
    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    invoke-virtual {v5}, Lcom/android/camera/component/RecordingTimerUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    long-to-float v5, v1

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    float-to-long v1, v5

    .line 94
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v5

    if-eq v5, v9, :cond_3

    const-wide/16 v5, 0xa

    cmp-long v5, v1, v5

    if-gtz v5, :cond_3

    .line 95
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$200(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_3
    iget-object v5, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #getter for: Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/camera/component/RecordingTimerUI;->access$200(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/component/RecordingTimerUI$1;->this$0:Lcom/android/camera/component/RecordingTimerUI;

    #calls: Lcom/android/camera/component/RecordingTimerUI;->getTimeString(J)Ljava/lang/String;
    invoke-static {v6, v1, v2}, Lcom/android/camera/component/RecordingTimerUI;->access$400(Lcom/android/camera/component/RecordingTimerUI;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 89
    .end local v1           #remainingTime:J
    :cond_4
    move-wide v1, v3

    .restart local v1       #remainingTime:J
    goto :goto_1
.end method
