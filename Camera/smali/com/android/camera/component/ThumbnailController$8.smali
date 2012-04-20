.class Lcom/android/camera/component/ThumbnailController$8;
.super Lcom/android/camera/trigger/Trigger;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$8;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$8;->this$0:Lcom/android/camera/component/ThumbnailController;

    #calls: Lcom/android/camera/component/ThumbnailController;->onMediaCaptureStarted()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$1300(Lcom/android/camera/component/ThumbnailController;)V

    .line 634
    return-void
.end method
