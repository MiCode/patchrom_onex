.class public Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventDispatcher"
.end annotation


# static fields
.field static final EVENT_ADD_VIEW:I = 0x2

.field public static final EVENT_GET_SNAPSHOT:I = 0x6

.field static final EVENT_KEY_EVENT:I = 0x8

.field static final EVENT_REFRESH_RENDER_ORDER:I = 0x4

.field static final EVENT_REMOVE_VIEW:I = 0x3

.field static final EVENT_SET_GLOBAL_BKG:I = 0x5

.field public static final EVENT_TIMEOUT_SNAPSHOT:I = 0x7

.field static final EVENT_TOUCH_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunny2/RenderThread;)V
    .locals 1
    .parameter
    .parameter "host"
    .parameter "thread"

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    .line 1150
    const-string v0, "EventDispatcher"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    .line 1151
    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1154
    iget v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1157
    :pswitch_1
    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 1158
    .local v0, event:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1159
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1165
    .end local v0           #event:Landroid/view/MotionEvent;
    :pswitch_2
    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 1166
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1172
    .end local v0           #event:Landroid/view/KeyEvent;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    .line 1178
    :pswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    .line 1184
    :pswitch_5
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v2, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->refreshRenderOrder(Ljava/lang/Object;)V

    goto :goto_0

    .line 1189
    :pswitch_6
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundResource(I)V

    goto :goto_0

    .line 1194
    :pswitch_7
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSnapShotHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;

    iget-object v2, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneSnapShotHandler;->onSnapShotIRT(Ljava/lang/Object;)V

    goto :goto_0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
