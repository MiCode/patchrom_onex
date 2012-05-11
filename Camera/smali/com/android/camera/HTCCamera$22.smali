.class Lcom/android/camera/HTCCamera$22;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$previewSize:Lcom/android/camera/imaging/Size;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6024
    iput-object p1, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$22;->val$previewSize:Lcom/android/camera/imaging/Size;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6028
    iget-object v0, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$22;->val$previewSize:Lcom/android/camera/imaging/Size;

    #calls: Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$4300(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V

    .line 6029
    return-void
.end method
