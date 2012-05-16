.class public Lcom/htc/music/widget/fragment/MusicCommonFragment;
.super Lcom/htc/music/widget/fragment/MusicBaseFragment;
.source "MusicCommonFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicCommonFragment]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mHeaderText:Lcom/htc/widget/ActionBarText;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field private mOrientation:I

.field protected mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 38
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 41
    iput-object v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 45
    iput-boolean v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    .line 115
    iput v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    return-void
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicCommonFragment]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public hideEmptyErrorView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 312
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 321
    :cond_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    invoke-static {v0, v2, v2}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 327
    :cond_2
    return-void
.end method

.method protected launchGlancePage()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 218
    const-string v0, "[MusicCommonFragment]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->startListenStore()V

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/music/widget/fragment/MusicBaseFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    .line 135
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onResume()V

    .line 143
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->onStop()V

    .line 148
    return-void
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 387
    sget v2, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 390
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 394
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    if-ne v4, v2, :cond_3

    .line 395
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 402
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_0

    .line 404
    iget v2, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mOrientation:I

    if-ne v4, v2, :cond_4

    move-object v2, v1

    .line 405
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 409
    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 397
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object v2, v1

    .line 407
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategoryProgressVisible(Z)V

    .line 194
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 49
    const v0, 0x7f030047

    if-eq v0, p1, :cond_0

    const v0, 0x7f03002a

    if-ne v0, p1, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    .line 56
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setContentView(I)V

    .line 57
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mUseCustomLayout:Z

    goto :goto_0
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 243
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 1
    .parameter "mainTitleRes"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTitle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 1
    .parameter "secondaryTitleRes"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "secondaryTitle"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->setCategorySecondaryTitleVisible(Z)V

    .line 187
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->isFragmentResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const-string v2, "[MusicCommonFragment]"

    const-string v3, "activity is paused, do not set category title status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 101
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 102
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 332
    const v4, 0x102000a

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 333
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 334
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 343
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v4, :cond_2

    .line 344
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 347
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    .line 348
    iget-object v4, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 349
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->resetSDErrorLayout()V

    .line 351
    const v4, 0x7f0800a9

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 352
    if-nez v3, :cond_3

    const v4, 0x7f08004c

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 353
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 356
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, status:Ljava/lang/String;
    const v0, 0x20400a0

    .line 360
    .local v0, message:I
    const-string v4, "shared"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 361
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 362
    const v0, 0x7f070049

    .line 381
    :cond_5
    :goto_0
    const v4, 0x7f080091

    invoke-virtual {p0, v4}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 382
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 383
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 384
    :cond_6
    return-void

    .line 364
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_7
    const v0, 0x7f070048

    goto :goto_0

    .line 368
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 369
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 370
    const v0, 0x7f070049

    goto :goto_0

    .line 373
    :cond_9
    const v0, 0x20400a0

    goto :goto_0

    .line 374
    :cond_a
    const-string v4, "unmounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    const v0, 0x20401fa

    goto :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 285
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 295
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 297
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 299
    const v3, 0x7f080095

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 300
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 301
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_3
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 1
    .parameter "textResId"

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->showEmptyView(II)V

    .line 251
    return-void
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 254
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 264
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 266
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/fragment/MusicCommonFragment;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 268
    const v3, 0x7f080095

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 270
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :cond_3
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 275
    if-lez p2, :cond_5

    .line 276
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :cond_4
    :goto_0
    return-void

    .line 279
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 71
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 72
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 73
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v2, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 80
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/fragment/MusicCommonFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 76
    .local v0, headerLayout:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 77
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 160
    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/fragment/MusicBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method
