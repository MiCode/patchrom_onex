.class Lcom/android/camera/CameraThread$13;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->changeMode(Lcom/android/camera/CameraMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$mode:Lcom/android/camera/CameraMode;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4968
    iput-object p1, p0, Lcom/android/camera/CameraThread$13;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$13;->val$mode:Lcom/android/camera/CameraMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/android/camera/CameraThread$13;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$13;->val$mode:Lcom/android/camera/CameraMode;

    #calls: Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$4300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V

    .line 4972
    return-void
.end method
