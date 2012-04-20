.class final Lcom/android/camera/event/EventUtility$1;
.super Ljava/lang/Object;
.source "EventUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/event/EventUtility;->addHandlerAsync(Lcom/android/camera/event/Event;Landroid/os/Handler;Lcom/android/camera/event/EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/android/camera/event/Event;

.field final synthetic val$handler:Lcom/android/camera/event/EventHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/event/Event;Lcom/android/camera/event/EventHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/event/EventUtility$1;->val$event:Lcom/android/camera/event/Event;

    iput-object p2, p0, Lcom/android/camera/event/EventUtility$1;->val$handler:Lcom/android/camera/event/EventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/event/EventUtility$1;->val$event:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/event/EventUtility$1;->val$handler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 34
    return-void
.end method
