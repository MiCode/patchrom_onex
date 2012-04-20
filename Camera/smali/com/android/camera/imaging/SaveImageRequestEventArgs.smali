.class public Lcom/android/camera/imaging/SaveImageRequestEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "SaveImageRequestEventArgs.java"


# instance fields
.field public final saveImageTask:Lcom/android/camera/imaging/SaveImageTask;


# direct methods
.method public constructor <init>(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->saveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    .line 18
    return-void
.end method
