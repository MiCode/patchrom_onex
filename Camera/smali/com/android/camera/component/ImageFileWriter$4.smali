.class Lcom/android/camera/component/ImageFileWriter$4;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageFileWriter;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$4;->this$0:Lcom/android/camera/component/ImageFileWriter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter$4;->this$0:Lcom/android/camera/component/ImageFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/component/ImageFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->resumingEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ImageFileWriter$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ImageFileWriter$4$1;-><init>(Lcom/android/camera/component/ImageFileWriter$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter$4;->this$0:Lcom/android/camera/component/ImageFileWriter;

    invoke-virtual {v0}, Lcom/android/camera/component/ImageFileWriter;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/component/ImageFileWriter$4$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ImageFileWriter$4$2;-><init>(Lcom/android/camera/component/ImageFileWriter$4;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 190
    return-void
.end method
