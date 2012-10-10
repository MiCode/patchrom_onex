.class Lcom/android/camera/component/AutoFocusController$1;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoFocusController;->autoFocus(Lcom/android/camera/component/AutoFocusController$FocusInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoFocusController;

.field final synthetic val$focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoFocusController;Lcom/android/camera/component/AutoFocusController$FocusInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$1;->this$0:Lcom/android/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$1;->val$focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$1;->this$0:Lcom/android/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/android/camera/component/AutoFocusController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, p0, Lcom/android/camera/component/AutoFocusController$1;->val$focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

    iget-object v1, v1, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/component/AutoFocusController$1;->val$focusInfo:Lcom/android/camera/component/AutoFocusController$FocusInfo;

    iget-object v2, v2, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    iget-object v3, p0, Lcom/android/camera/component/AutoFocusController$1;->this$0:Lcom/android/camera/component/AutoFocusController;

    #getter for: Lcom/android/camera/component/AutoFocusController;->focusID:J
    invoke-static {v3}, Lcom/android/camera/component/AutoFocusController;->access$000(Lcom/android/camera/component/AutoFocusController;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;JZ)V

    invoke-virtual {v6, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 212
    return-void
.end method
