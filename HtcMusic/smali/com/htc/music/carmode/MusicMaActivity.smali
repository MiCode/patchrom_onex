.class public Lcom/htc/music/carmode/MusicMaActivity;
.super Landroid/app/Activity;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/MusicMaActivity$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicMaActivity]"


# instance fields
.field private mActivityResumed:Z

.field protected mIsEnhancerExist:Z

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mIsEnhancerExist:Z

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    .line 41
    iput-object v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 50
    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    .line 324
    iput-object v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 337
    new-instance v0, Lcom/htc/music/carmode/MusicMaActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/MusicMaActivity$1;-><init>(Lcom/htc/music/carmode/MusicMaActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/MusicMaActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/MusicMaActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 327
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 328
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 330
    :cond_0
    const-string v1, ""

    const v2, 0x7f0700b2

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 331
    new-instance v0, Lcom/htc/music/carmode/MusicMaActivity$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/carmode/MusicMaActivity$DeleteCursorRunnable;-><init>(Lcom/htc/music/carmode/MusicMaActivity;Lcom/htc/music/carmode/MusicMaActivity$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/carmode/MusicMaActivity$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 332
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method

.method protected disableCategoryDropDown()V
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->disableCategoryDropDown()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 295
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 301
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 289
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onSearchRequested()Z

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public findRootParent()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, rootParent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 142
    .end local p0
    :goto_0
    return-object p0

    .line 136
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 137
    .local v1, temp:Landroid/app/Activity;
    :goto_1
    if-eqz v1, :cond_1

    .line 138
    move-object v0, v1

    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 142
    goto :goto_0
.end method

.method public hideEmptyErrorView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 494
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 507
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    invoke-static {v0, v2, v2}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 513
    :cond_2
    return-void
.end method

.method protected isActivityResumed()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 213
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, rootParent:Landroid/app/Activity;
    if-eq p0, v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 82
    const-string v0, "[MusicMaActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetBackground()V

    .line 91
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mIsEnhancerExist:Z

    .line 77
    iput-object v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    .line 78
    return-void
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 356
    const-string v0, "[MusicMaActivity]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->closeOptionsMenu()V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mActivityResumed:Z

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 102
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetBackground()V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 120
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method protected resetBackground()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    const-string v2, "common_app_bkg"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    .local v0, resId:I
    const-string v1, "common_app_bkg"

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 59
    if-lez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 64
    .end local v0           #resId:I
    :cond_0
    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 594
    iget-object v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    .line 608
    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 611
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 612
    iget v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    if-ne v4, v2, :cond_2

    .line 613
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 620
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 621
    if-eqz v1, :cond_1

    .line 622
    iget v2, p0, Lcom/htc/music/carmode/MusicMaActivity;->mOrientation:I

    if-ne v4, v2, :cond_3

    move-object v2, v1

    .line 623
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    :goto_1
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 632
    :cond_1
    return-void

    .line 615
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object v2, v1

    .line 625
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 262
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 263
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 233
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 250
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 251
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->isActivityResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    const-string v1, "[MusicMaActivity]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 411
    const v1, 0x7f080096

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 412
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 413
    const v1, 0x203007f

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 414
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTitle"

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 1
    .parameter "secondaryTitleRes"

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "secondaryTitle"

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 665
    return-void
.end method

.method public showDatabaseError()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 518
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 519
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    .line 525
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 548
    :cond_1
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 549
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 552
    :cond_2
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 553
    iget-object v4, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 554
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->resetSDErrorLayout()V

    .line 556
    const v4, 0x7f0800aa

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 557
    if-nez v3, :cond_3

    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 558
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 565
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 566
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 567
    const v0, 0x7f070049

    .line 586
    :cond_5
    :goto_0
    const v4, 0x7f080092

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 587
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 588
    const v4, 0x203007f

    invoke-virtual {v2, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 589
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 591
    :cond_6
    return-void

    .line 569
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_7
    const v0, 0x7f070048

    goto :goto_0

    .line 573
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 574
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 575
    const v0, 0x7f070049

    goto :goto_0

    .line 578
    :cond_9
    const v0, 0x20400a0

    goto :goto_0

    .line 579
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 580
    const v0, 0x20401fa

    goto :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 461
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 462
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 475
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 479
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 481
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 482
    const v3, 0x203007f

    invoke-virtual {v1, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 483
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    :cond_3
    const v3, 0x7f080097

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 487
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 488
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 1
    .parameter "textResId"

    .prologue
    .line 419
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/carmode/MusicMaActivity;->showEmptyView(II)V

    .line 420
    return-void
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 424
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 425
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 426
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 437
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 438
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 440
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/MusicMaActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 442
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 444
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 445
    const v3, 0x203007f

    invoke-virtual {v1, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 446
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 449
    :cond_3
    const v3, 0x7f080097

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 450
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 451
    if-lez p2, :cond_5

    .line 452
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    :cond_4
    :goto_0
    return-void

    .line 455
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 636
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 637
    check-cast v2, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 638
    .local v2, tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    invoke-interface {v2, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 645
    .end local v2           #tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/MusicMaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 641
    .local v0, headerLayout:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 642
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 175
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 184
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v3, :cond_5

    move-object v2, v1

    .line 186
    check-cast v2, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 188
    .local v2, tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 189
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 190
    :cond_1
    if-ne v5, p2, :cond_4

    .line 191
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v3, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    invoke-super {p0, p1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 196
    :cond_3
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 207
    .end local v2           #tabActivity:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.carmode.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/carmode/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 320
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 309
    const-string v0, "[MusicMaActivity]"

    const-string v1, "musicMaActivity startSearch...."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/htc/music/carmode/MusicMaActivity;->startLocalSearch()V

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 314
    return-void
.end method
