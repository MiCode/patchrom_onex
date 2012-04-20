.class public Lcom/android/camera/rotate/RotateDialog;
.super Landroid/app/Dialog;
.source "RotateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateDialog$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RotateDialog"

.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field private mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private mShowing:Z

.field private mWidth:I

.field mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWidth:I

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mCreated:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mShowing:Z

    .line 43
    new-instance v1, Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    .line 44
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 45
    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/policy/HtcWrapPolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    .line 46
    .local v0, w:Landroid/view/Window;
    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mWindow:Landroid/view/Window;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWidth:I

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mCreated:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mShowing:Z

    .line 65
    new-instance v1, Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    .line 66
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 67
    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/policy/HtcWrapPolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    .line 68
    .local v0, w:Landroid/view/Window;
    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mWindow:Landroid/view/Window;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    iput v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWidth:I

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mCreated:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateDialog;->mShowing:Z

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/camera/rotate/RotateDialog;->setCancelable(Z)V

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/camera/rotate/RotateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    new-instance v1, Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/camera/rotate/RotateHtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    .line 57
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/camera/rotate/RotateDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 58
    invoke-static {p1}, Lcom/htc/wrap/com/android/internal/policy/HtcWrapPolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    .line 59
    .local v0, w:Landroid/view/Window;
    iput-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mWindow:Landroid/view/Window;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/rotate/RotateDialog;)Lcom/android/camera/rotate/RotateHtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x400

    .line 272
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 274
    iget-object v3, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateHtcAlertController;->installContent()V

    .line 276
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 278
    .local v2, theWindow:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/camera/rotate/RotateDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 279
    .local v0, Orientation:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 281
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 282
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 283
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 284
    const-string v3, "AlertDialog"

    const-string v4, "[onCreate] auto launch SIP."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 290
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/rotate/RotateHtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/rotate/RotateHtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 184
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/camera/rotate/RotateHtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 170
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 225
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 193
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 238
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 202
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 251
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/rotate/RotateDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 211
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setIcon(I)V

    .line 260
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setInverseBackgroundForced(Z)V

    .line 268
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setOrientation(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 81
    iget v0, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;)V

    .line 141
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/rotate/RotateHtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 156
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "Width"

    .prologue
    .line 93
    iput p1, p0, Lcom/android/camera/rotate/RotateDialog;->mWidth:I

    .line 94
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/rotate/RotateDialog;->mAlert:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateHtcAlertController;->updateOrientation()V

    .line 89
    return-void
.end method
