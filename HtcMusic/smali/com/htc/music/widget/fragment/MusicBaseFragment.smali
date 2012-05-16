.class public Lcom/htc/music/widget/fragment/MusicBaseFragment;
.super Landroid/app/Fragment;
.source "MusicBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;
    }
.end annotation


# static fields
.field private static final DELETION_TRACK_COMPLETED:I = 0x0

.field public static final START_NEW_ACTIVITY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "[MusicBaseFragment]"

.field protected static mEnableLandscapeHorizontalSDError:I


# instance fields
.field protected mEnableSearch:Z

.field private mFragmentResumed:Z

.field protected mIntent:Landroid/content/Intent;

.field protected mIsEnhancerExist:Z

.field mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mOrientation:I

.field protected mRes:Landroid/content/res/Resources;

.field private mbufferdialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIsEnhancerExist:Z

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    .line 38
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    .line 45
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 47
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    .line 219
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 286
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 299
    new-instance v0, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment$1;-><init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;)V

    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;

    .line 372
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    .line 378
    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/fragment/MusicBaseFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "where"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 289
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v7

    .line 290
    .local v7, deleteContent:Landroid/app/Activity;
    if-nez v7, :cond_0

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    .line 292
    :cond_0
    const-string v1, ""

    const v2, 0x7f0700b1

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mbufferdialog:Landroid/app/ProgressDialog;

    .line 293
    new-instance v0, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;-><init>(Lcom/htc/music/widget/fragment/MusicBaseFragment;Lcom/htc/music/widget/fragment/MusicBaseFragment$1;)V

    .local v0, mDeleteAlbum:Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 294
    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/fragment/MusicBaseFragment$DeleteCursorRunnable;->Init(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    .local v8, deletethread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 297
    return-void
.end method

.method public disableSearch()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 223
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    move v0, v1

    .line 246
    :goto_0
    :pswitch_0
    return v0

    .line 234
    :pswitch_1
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public enableSearch()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    .line 227
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected isFragmentResumed()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 79
    const-string v0, "[MusicBaseFragment]"

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

    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setHasOptionsMenu(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mOrientation:I

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIsEnhancerExist:Z

    .line 69
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    .line 71
    const/4 v1, -0x1

    sget v2, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    if-ne v1, v2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070247

    invoke-static {v1, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    sput v1, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableLandscapeHorizontalSDError:I

    .line 75
    :cond_1
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 382
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    if-nez v2, :cond_0

    .line 383
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, lala:Landroid/widget/TextView;
    const-string v2, "lalala~~"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    .line 400
    .end local v0           #lala:Landroid/widget/TextView;
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    if-nez v2, :cond_2

    .line 389
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    .line 400
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 392
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 393
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDeletionCompleted()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "[MusicBaseFragment]"

    const-string v1, "call parent Empty onDeletionCompleted()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mFragmentResumed:Z

    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 97
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 99
    .local v0, newConfig:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 113
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 416
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setCategoryProgressVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 211
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCategorySecondaryTitleVisible(Z)V
    .locals 3
    .parameter "setVisible"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 199
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method protected setCatgoryMainTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->isFragmentResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const-string v1, "[MusicBaseFragment]"

    const-string v2, "activity is paused, do not set category status"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, root:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .end local v0           #root:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setMainTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 374
    iput p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mLayoutId:I

    .line 375
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mIntent:Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public setResult(I)V
    .locals 2
    .parameter "resultCode"

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 449
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 456
    .local v0, act:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->showDialog(ILandroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method protected showDialog(ILandroid/os/Bundle;)V
    .locals 0
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 438
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 126
    const-string v3, "StartNewActivity"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_0

    .line 128
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 135
    .local v1, rootParent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 137
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 139
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, -0x2

    if-ne v3, p2, :cond_1

    .line 140
    invoke-super {p0, p1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 141
    :cond_1
    if-ne v5, p2, :cond_3

    .line 142
    const-string v3, "com.htc.music.PLAYBACK_VIEWER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-super {p0, p1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 145
    :cond_2
    const-string v3, "ShowActivityTitle"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startLocalSearch()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.LOCALSEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 276
    return-void
.end method

.method public startOnlineSearchPage()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 282
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 5
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    const/4 v4, 0x6

    .line 253
    const-string v2, "[MusicBaseFragment]"

    const-string v3, "musicMaActivity startSearch...."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-boolean v2, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mEnableSearch:Z

    if-nez v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x0

    .line 257
    .local v1, type:I
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 258
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 259
    const-string v2, "InnerActivityType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 260
    and-int/lit16 v1, v1, 0xfe

    .line 263
    :cond_2
    if-eq v4, v1, :cond_3

    const/4 v2, 0x2

    if-ne v2, v1, :cond_4

    .line 265
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startLocalSearch()V

    goto :goto_0

    .line 266
    :cond_4
    const/16 v2, 0xa

    if-eq v2, v1, :cond_5

    const/16 v2, 0x8

    if-ne v2, v1, :cond_0

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startOnlineSearchPage()V

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 425
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    :cond_0
    return-void
.end method
