.class public Lcom/android/camera/actionscreen/CommonActionScreen;
.super Lcom/android/camera/actionscreen/ActionScreen;
.source "CommonActionScreen.java"


# static fields
.field private static final MSG_CLOSE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Common Action Screen"


# instance fields
.field private m_BackButton:Landroid/view/View;

.field private m_CurrentAction:Ljava/lang/Runnable;

.field private m_CurrentPopupObject:Ljava/lang/Object;

.field private final m_DeleteAction:Ljava/lang/Runnable;

.field private m_DeleteButton:Landroid/view/View;

.field private final m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private m_FunctionBar:Landroid/view/View;

.field private m_IsTimeout:Z

.field private m_IsTouchDelegateSet:Z

.field private final m_PlayAction:Ljava/lang/Runnable;

.field private m_PlayButton:Landroid/view/View;

.field private final m_RecaptureAction:Ljava/lang/Runnable;

.field private m_ReviewContainer:Landroid/view/View;

.field private m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

.field private final m_SetAsAction:Ljava/lang/Runnable;

.field private m_SetAsButton:Landroid/view/View;

.field private final m_ShareAction:Ljava/lang/Runnable;

.field private m_ShareButton:Landroid/view/View;

.field private m_Timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 129
    const-string v0, "Common Action Screen"

    const v1, 0x7f030006

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/actionscreen/ActionScreen;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V

    .line 68
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$1;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$1;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$2;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$2;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$3;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$3;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$4;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$4;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$5;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$5;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$6;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$6;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 115
    new-instance v0, Lcom/android/camera/actionscreen/CommonActionScreen$7;

    invoke-direct {v0, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$7;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onDeleteClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onPlayClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onSetAsClicked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onShareClicked()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/actionscreen/CommonActionScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    return-object v0
.end method

.method private closePopupObjects()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 198
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 199
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method

.method private getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;>;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;>;"
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 207
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/util/List<Lcom/android/camera/MediaInfo;>;>;"
    invoke-virtual {p1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 208
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    .line 209
    .local v1, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .restart local v1       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    return-object v1

    .line 208
    .end local v1           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCaptureClicked()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Another action is performing, cannot re-capture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RecaptureAction:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 263
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureClicked() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDeleteClicked()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 288
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "onDeleteClicked() - start"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 293
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "Action screen is closed, cancel action"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 298
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "Another action is performing, cannot delete content"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 306
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteAction:Ljava/lang/Runnable;

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 307
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v7

    if-nez v7, :cond_3

    .line 309
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "Media is not saved yet, delete content later"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_3
    new-instance v6, Lcom/android/camera/actionscreen/CommonActionScreen$9;

    invoke-direct {v6, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$9;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    .line 325
    .local v6, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/android/camera/actionscreen/CommonActionScreen$10;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$10;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    .line 335
    .local v5, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v1}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 336
    .local v1, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v7, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 338
    invoke-virtual {v1}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 339
    invoke-virtual {v1}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 350
    .local v4, message:Ljava/lang/String;
    :goto_1
    new-instance v7, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v7

    const v8, 0x2040214

    invoke-virtual {v7, v8}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a005b

    invoke-virtual {v7, v8, v6}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v7

    const v8, 0x2040152

    invoke-virtual {v7, v8, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 357
    .local v0, dialog:Lcom/android/camera/rotate/RotateDialog;
    iget-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v7}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 360
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 361
    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v7, v0, v8, v10}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Z

    .line 364
    iget-object v7, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v8, "onDeleteClicked() - end"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v0           #dialog:Lcom/android/camera/rotate/RotateDialog;
    .end local v4           #message:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getLastMediaInfo()Lcom/android/camera/MediaInfo;

    move-result-object v3

    .line 343
    .local v3, mediaInfo:Lcom/android/camera/MediaInfo;
    if-eqz v3, :cond_5

    iget-object v7, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    iget-object v2, v7, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    .line 344
    .local v2, fileName:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0191

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #message:Ljava/lang/String;
    goto :goto_1

    .line 343
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #message:Ljava/lang/String;
    :cond_5
    const-string v2, ""

    goto :goto_2
.end method

.method private onPlayClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 423
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Action screen is closed, cancel action"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Another action is performing, cannot play video"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 441
    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayAction:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 442
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v3

    if-nez v3, :cond_3

    .line 444
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Media is not saved yet, play video later"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x1

    .line 453
    .local v0, canPlay:Z
    :try_start_0
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_1
    if-nez v0, :cond_4

    .line 468
    :try_start_1
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.ViewVideo"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v3, "landscape"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    const/4 v0, 0x1

    .line 480
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 481
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 483
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "onPlayClicked() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 459
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 460
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.video - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 473
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 475
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "com.htc.album - play video fail"

    invoke-static {v3, v4, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private onSetAsClicked()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 491
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onSetAsClicked() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_0

    .line 494
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 499
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Action screen is closed, cancel action"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void

    .line 502
    :cond_2
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    .line 504
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Another action is performing, cannot set media"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 512
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsAction:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 513
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v8

    if-nez v8, :cond_4

    .line 515
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Media is not saved yet, set later"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    .line 521
    .local v4, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v8, v4, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    invoke-direct {p0, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;

    move-result-object v7

    .line 524
    .local v7, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 526
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to set as"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 530
    :cond_5
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MediaInfo;

    .line 531
    .local v6, mediaInfo:Lcom/android/camera/MediaInfo;
    if-eqz v6, :cond_6

    iget-object v8, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v8, :cond_6

    iget-object v8, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 533
    :cond_6
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to set as"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iput-object v12, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 539
    :cond_7
    new-instance v0, Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-direct {v0, v4, v6}, Lcom/android/camera/share/MediaSetAsListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/MediaInfo;)V

    .line 540
    .local v0, adapter:Lcom/android/camera/share/MediaSetAsListAdapter;
    new-instance v5, Lcom/htc/widget/HtcListView;

    invoke-direct {v5, v4}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 541
    .local v5, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 542
    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 543
    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 544
    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 545
    invoke-virtual {v5, v11}, Lcom/htc/widget/HtcListView;->setDarkModeEnabled(Z)V

    .line 546
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    .line 547
    invoke-virtual {v5, v11, v10}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 548
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 551
    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 552
    .local v1, bubble:Lcom/android/camera/widget/PopupBubble;
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 553
    .local v3, bubbleWidth:I
    const/4 v2, -0x2

    .line 554
    .local v2, bubbleHeight:I
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$11;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$11;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 565
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v8}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 568
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 573
    :goto_1
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$12;

    invoke-direct {v8, p0, v1, v4, v0}, Lcom/android/camera/actionscreen/CommonActionScreen$12;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaSetAsListAdapter;)V

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 593
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 594
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    .line 595
    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 596
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_8

    .line 597
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 599
    :cond_8
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onSetAsClicked() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :cond_9
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onShareClicked()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 607
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onShareClicked() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_0

    .line 610
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 615
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Action screen is closed, cancel action"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-void

    .line 618
    :cond_2
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v8, :cond_3

    .line 620
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Another action is performing, cannot share content"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 628
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareAction:Ljava/lang/Runnable;

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 629
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v8

    if-nez v8, :cond_4

    .line 631
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "Media is not saved yet, share content later"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    .line 637
    .local v4, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v8, v4, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    invoke-direct {p0, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->getMediaToShare(Lcom/android/camera/event/Event;)Ljava/util/List;

    move-result-object v7

    .line 640
    .local v7, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/MediaInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 642
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "No media information to share"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 648
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v8

    const-string v9, "pref_capture_last_share"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, lastShareApp:Ljava/lang/String;
    new-instance v0, Lcom/android/camera/share/MediaShareListAdapter;

    invoke-direct {v0, v4, v7, v5}, Lcom/android/camera/share/MediaShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 650
    .local v0, adapter:Lcom/android/camera/share/MediaShareListAdapter;
    new-instance v6, Lcom/htc/widget/HtcListView;

    invoke-direct {v6, v4}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 651
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 652
    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setBackgroundColor(I)V

    .line 653
    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 654
    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 655
    invoke-virtual {v6, v12}, Lcom/htc/widget/HtcListView;->setDarkModeEnabled(Z)V

    .line 656
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setIntroAnimationType(I)V

    .line 657
    invoke-virtual {v6, v12, v11}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 658
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2080041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 661
    new-instance v1, Lcom/android/camera/widget/PopupBubble;

    invoke-direct {v1, v4}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    .line 662
    .local v1, bubble:Lcom/android/camera/widget/PopupBubble;
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 663
    .local v3, bubbleWidth:I
    const/4 v2, -0x2

    .line 664
    .local v2, bubbleHeight:I
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$13;

    invoke-direct {v8, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$13;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 675
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v8}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 678
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 683
    :goto_1
    new-instance v8, Lcom/android/camera/actionscreen/CommonActionScreen$14;

    invoke-direct {v8, p0, v1, v4, v0}, Lcom/android/camera/actionscreen/CommonActionScreen$14;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;Lcom/android/camera/widget/PopupBubble;Lcom/android/camera/HTCCamera;Lcom/android/camera/share/MediaShareListAdapter;)V

    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 706
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 707
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v1, v8}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    .line 708
    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    .line 709
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v8, v8, Lcom/htc/widget/HtcIconButton;

    if-eqz v8, :cond_6

    .line 710
    iget-object v8, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v8, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 712
    :cond_6
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onShareClicked() - end"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 680
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    goto :goto_1
.end method

.method private onTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 720
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is closed, cancel action"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 731
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, close later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 736
    :cond_2
    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 738
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onTimeout() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareHtcActionScreen()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x8

    const/4 v11, 0x1

    const v10, 0x7f08005e

    const/4 v9, 0x0

    .line 820
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    if-nez v6, :cond_3

    .line 823
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getLayout()Landroid/view/View;

    move-result-object v1

    .line 824
    .local v1, baseLayout:Landroid/view/View;
    const v6, 0x7f080012

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    .line 825
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v7, 0x7f08005a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    .line 826
    new-array v7, v13, [Lcom/android/camera/rotate/RotateRelativeLayout;

    const v6, 0x7f080060

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v6, v7, v9

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v6, v7, v11

    const/4 v8, 0x2

    const v6, 0x7f08005c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v6, v7, v8

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    aput-object v6, v7, v8

    iput-object v7, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 832
    const v6, 0x7f080058

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    .line 833
    const v6, 0x7f08005b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    .line 836
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$15;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$15;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    const v6, 0x7f08005f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    .line 846
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_0

    .line 847
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 848
    :cond_0
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$16;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$16;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$17;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$17;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 889
    const v6, 0x7f08005d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    .line 890
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_1

    .line 893
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020035

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 895
    :cond_1
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$18;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$18;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    const v6, 0x7f080061

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    .line 905
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    instance-of v6, v6, Lcom/htc/widget/HtcIconButton;

    if-eqz v6, :cond_2

    .line 908
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    const v7, 0x7f020041

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 909
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    check-cast v6, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 911
    :cond_2
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    new-instance v7, Lcom/android/camera/actionscreen/CommonActionScreen$19;

    invoke-direct {v7, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$19;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    .end local v1           #baseLayout:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V

    .line 922
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v6

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v6, v7, :cond_6

    .line 925
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 928
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 932
    sget-object v6, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 937
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v5

    .line 1004
    .local v5, rotation:Lcom/android/camera/rotate/UIRotation;
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_RotateContainer:[Lcom/android/camera/rotate/RotateRelativeLayout;

    .local v0, arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 1005
    .local v2, container:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-virtual {v2, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1004
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 945
    .end local v0           #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v2           #container:Lcom/android/camera/rotate/RotateRelativeLayout;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_5
    sget-object v6, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 951
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 962
    :cond_6
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 967
    sget-object v6, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 972
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 979
    :cond_7
    sget-object v6, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v6}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 991
    iget-object v6, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1006
    .restart local v0       #arr$:[Lcom/android/camera/rotate/RotateRelativeLayout;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #rotation:Lcom/android/camera/rotate/UIRotation;
    :cond_8
    return-void
.end method

.method private resetBackButtonBackground()V
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1015
    :cond_0
    return-void
.end method

.method private setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter "button"
    .parameter "content"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1037
    if-eqz p3, :cond_3

    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1041
    :cond_0
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_2

    .line 1042
    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    .end local p2
    invoke-virtual {p2, v2}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    .line 1058
    :cond_1
    :goto_0
    return-void

    .line 1043
    .restart local p2
    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1044
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1048
    .restart local p2
    :cond_3
    if-eqz p1, :cond_4

    .line 1050
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1051
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1053
    :cond_4
    instance-of v0, p2, Lcom/android/camera/widget/ImageTextView;

    if-eqz v0, :cond_5

    .line 1054
    check-cast p2, Lcom/android/camera/widget/ImageTextView;

    .end local p2
    invoke-virtual {p2, v1}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    goto :goto_0

    .line 1055
    .restart local p2
    :cond_5
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1056
    check-cast p2, Landroid/widget/ImageView;

    .end local p2
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method public final clearAction()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 139
    :cond_0
    return-void
.end method

.method protected closeActionScreen(Z)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0, v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 151
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->closePopupObjects()V

    .line 154
    if-eqz p1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/actionscreen/CommonActionScreen$8;

    invoke-direct {v1, p0}, Lcom/android/camera/actionscreen/CommonActionScreen$8;-><init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "ActionScreen=>close=>triggerAutoUpload"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->triggerAutoUpload()V

    .line 187
    :cond_2
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->handleMessage(Landroid/os/Message;)V

    .line 232
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onTimeout()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasAction()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureFailed()V
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->clearAction()V

    .line 280
    invoke-super {p0}, Lcom/android/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    .line 281
    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 373
    iget v0, p2, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    .line 375
    sparse-switch p1, :sswitch_data_0

    .line 383
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/actionscreen/ActionScreen;->onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/MediaEventArgs;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Media save failed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    goto :goto_0

    .line 408
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 409
    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 413
    .local v0, prevAction:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected openActionScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 751
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_FunctionBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->showUI(Landroid/view/View;ZZ)V

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    .line 769
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    if-nez v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ReviewContainer:Landroid/view/View;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_PlayButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    .line 772
    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTouchDelegateSet:Z

    .line 774
    :cond_2
    return-void
.end method

.method public final performAction(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 786
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Another action is performing, cannot perform action"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_2
    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentAction:Ljava/lang/Runnable;

    .line 792
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isMediaSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 796
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Media is not saved yet, perform action later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareActionScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 806
    invoke-direct {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V

    .line 809
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 810
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 811
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    .line 812
    return-void
.end method

.method public final setAutoCloseTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    .line 1028
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_CurrentPopupObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->startAutoCloseTimer()V

    goto :goto_0
.end method

.method public final setDeleteButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_DeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setSetAsButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_SetAsButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final setShareButtonEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_ShareButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setButtonEnabled(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public final startAutoCloseTimer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1105
    invoke-virtual {p0, v4}, Lcom/android/camera/actionscreen/CommonActionScreen;->removeMessages(I)V

    .line 1106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_IsTimeout:Z

    .line 1109
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->isOpening()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/actionscreen/CommonActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "pref_camera_review_duration"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, review:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 1117
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen;->m_Timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1118
    .local v1, timeout:I
    if-ltz v1, :cond_0

    .line 1133
    :goto_1
    int-to-long v2, v1

    invoke-virtual {p0, p0, v4, v2, v3}, Lcom/android/camera/actionscreen/CommonActionScreen;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    goto :goto_0

    .line 1121
    .end local v1           #timeout:I
    :cond_2
    const-string v2, "2s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1122
    const/16 v1, 0x7d0

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1123
    .end local v1           #timeout:I
    :cond_3
    const-string v2, "3s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1124
    const/16 v1, 0xbb8

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1125
    .end local v1           #timeout:I
    :cond_4
    const-string v2, "5s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    const/16 v1, 0x1388

    .restart local v1       #timeout:I
    goto :goto_1

    .line 1127
    .end local v1           #timeout:I
    :cond_5
    const-string v2, "10s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    const/16 v1, 0x2710

    .restart local v1       #timeout:I
    goto :goto_1
.end method
