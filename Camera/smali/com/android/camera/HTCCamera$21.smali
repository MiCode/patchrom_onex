.class Lcom/android/camera/HTCCamera$21;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


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

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6000
    iput-object p1, p0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$21;->val$uiHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .parameter "property"
    .parameter "e"

    .prologue
    .line 6003
    iget-object v0, p0, Lcom/android/camera/HTCCamera$21;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$21$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/HTCCamera$21$1;-><init>(Lcom/android/camera/HTCCamera$21;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6010
    return-void
.end method
