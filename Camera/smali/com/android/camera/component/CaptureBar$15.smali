.class Lcom/android/camera/component/CaptureBar$15;
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
    .line 990
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$15;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$15;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->unlockAfAecAwb()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1200(Lcom/android/camera/component/CaptureBar;)V

    .line 998
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$15;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isFocusKeyPressed:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1300(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$15;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->reset()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1400(Lcom/android/camera/component/CaptureBar;)V

    .line 1000
    return-void
.end method
