.class final Lcom/android/camera/event/EventUtility$2;
.super Ljava/lang/Object;
.source "EventUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/event/EventUtility;->addHandlersAsync([Lcom/android/camera/event/Event;Landroid/os/Handler;[Lcom/android/camera/event/EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$events:[Lcom/android/camera/event/Event;

.field final synthetic val$handlers:[Lcom/android/camera/event/EventHandler;


# direct methods
.method constructor <init>([Lcom/android/camera/event/Event;[Lcom/android/camera/event/EventHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/camera/event/EventUtility$2;->val$events:[Lcom/android/camera/event/Event;

    iput-object p2, p0, Lcom/android/camera/event/EventUtility$2;->val$handlers:[Lcom/android/camera/event/EventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/camera/event/EventUtility$2;->val$events:[Lcom/android/camera/event/Event;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/camera/event/EventUtility$2;->val$events:[Lcom/android/camera/event/Event;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/event/EventUtility$2;->val$handlers:[Lcom/android/camera/event/EventHandler;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
