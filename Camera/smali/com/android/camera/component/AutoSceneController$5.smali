.class Lcom/android/camera/component/AutoSceneController$5;
.super Lcom/android/camera/trigger/Trigger;
.source "AutoSceneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController$5;->this$0:Lcom/android/camera/component/AutoSceneController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController$5;->this$0:Lcom/android/camera/component/AutoSceneController;

    #calls: Lcom/android/camera/component/AutoSceneController;->checkScene()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneController;->access$000(Lcom/android/camera/component/AutoSceneController;)V

    .line 218
    return-void
.end method
