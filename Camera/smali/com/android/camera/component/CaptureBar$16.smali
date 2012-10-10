.class Lcom/android/camera/component/CaptureBar$16;
.super Lcom/android/camera/trigger/Trigger;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$16;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$16;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3500(Lcom/android/camera/component/CaptureBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$16;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$16;->this$0:Lcom/android/camera/component/CaptureBar;

    const/16 v2, 0x2712

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/CaptureBar;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 1011
    :cond_0
    return-void
.end method
