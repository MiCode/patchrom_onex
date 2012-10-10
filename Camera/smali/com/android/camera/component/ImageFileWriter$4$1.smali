.class Lcom/android/camera/component/ImageFileWriter$4$1;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ImageFileWriter$4;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter$4;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$4$1;->this$1:Lcom/android/camera/component/ImageFileWriter$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/event/EventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter$4$1;->this$1:Lcom/android/camera/component/ImageFileWriter$4;

    iget-object v0, v0, Lcom/android/camera/component/ImageFileWriter$4;->this$0:Lcom/android/camera/component/ImageFileWriter;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/ImageFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageFileWriter;->access$100(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V

    .line 180
    return-void
.end method
