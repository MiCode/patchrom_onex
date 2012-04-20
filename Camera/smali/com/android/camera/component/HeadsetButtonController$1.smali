.class Lcom/android/camera/component/HeadsetButtonController$1;
.super Lcom/android/camera/trigger/Trigger;
.source "HeadsetButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HeadsetButtonController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HeadsetButtonController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HeadsetButtonController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/HeadsetButtonController$1;->this$0:Lcom/android/camera/component/HeadsetButtonController;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/HeadsetButtonController;->m_ActionScreenDisableCounter:I
    invoke-static {v0, v1}, Lcom/android/camera/component/HeadsetButtonController;->access$002(Lcom/android/camera/component/HeadsetButtonController;I)I

    .line 53
    return-void
.end method
