.class Lcom/android/camera/component/ViewFinder$18$1;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder$18;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ViewFinder$18;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$18$1;->this$1:Lcom/android/camera/component/ViewFinder$18;

    iget-object v0, v0, Lcom/android/camera/component/ViewFinder$18;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->setupCameraThreadEventHandlers()V
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1900(Lcom/android/camera/component/ViewFinder;)V

    .line 1193
    return-void
.end method
