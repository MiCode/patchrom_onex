.class Lcom/android/camera/CameraThread$14;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$e:Lcom/android/camera/AutoFocusEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5031
    iput-object p1, p0, Lcom/android/camera/CameraThread$14;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$14;->val$e:Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5035
    iget-object v0, p0, Lcom/android/camera/CameraThread$14;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$14;->val$e:Lcom/android/camera/AutoFocusEventArgs;

    #calls: Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$4400(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    .line 5036
    return-void
.end method
