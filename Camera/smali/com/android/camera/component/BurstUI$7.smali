.class Lcom/android/camera/component/BurstUI$7;
.super Lcom/android/camera/trigger/Trigger;
.source "BurstUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$200(Lcom/android/camera/component/BurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    #calls: Lcom/android/camera/component/BurstUI;->hideThumbnailBar()V
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$700(Lcom/android/camera/component/BurstUI;)V

    .line 753
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->collapseContentLayout()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$7;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$804(Lcom/android/camera/component/BurstUI;)J

    .line 759
    return-void
.end method
