.class Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler$1;
.super Ljava/lang/Object;
.source "SunnySceneSnapShotHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->getSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler$1;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x40

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler$1;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->mSnapShotInProgress:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->access$002(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;Z)Z

    .line 76
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
