.class public Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.super Lcom/htc/music/widget/MusicMaActivity;
.source "MusicAutoHeaderFooterActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;
    }
.end annotation


# static fields
.field protected static final CUSTOMIZED_MENU_ACTION:I = 0xea63

.field public static final DIALOG_CREATE_FIRST_PLAYLIST:I = 0x25a

.field public static final DIALOG_NETWORK_SETTING:I = 0x259

.field public static final HTC_CONTEXT_MENU:I = 0x3e8

.field private static final MENU_PLAYER:I = 0x2711

.field private static final MENU_SEARCH:I = 0x2710

.field private static final MESSAGE_DELAY_TIME:I = 0x64

.field private static final SHOW_DATABASE_ERROR:I = 0xea62

.field private static final SHOW_EMPTY_VIEW:I = 0xea61

.field private static final TAG:Ljava/lang/String; = "[MusicAutoHeaderFooterActivity]"


# instance fields
.field protected mActionBar:Lcom/htc/widget/ActionBarExt;

.field protected mBaseUIHandler:Landroid/os/Handler;

.field protected mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field protected mHeaderText:Lcom/htc/widget/ActionBarText;

.field private mHtcContextMenuIds:[I

.field private mHtcContextMenuItems:[Ljava/lang/CharSequence;

.field private mHtcContextMenuTitle:Ljava/lang/String;

.field protected mIsOnlineInnerType:Z

.field protected mMenu:Landroid/view/Menu;

.field private mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field private mNoMusicViewStub:Landroid/view/ViewStub;

.field private mNoSDCardErrorViewStub:Landroid/view/ViewStub;

.field protected mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field protected mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/music/widget/MusicMaActivity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 62
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    .line 64
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 67
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 72
    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 74
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 78
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    .line 539
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 995
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    .line 1011
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    .line 1017
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    .line 1119
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    .line 1488
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I

    return-object v0
.end method

.method private setTitleStyle(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryProgressVisible(Z)V

    .line 300
    packed-switch p1, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    .line 319
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startListenStore()V
    .locals 4

    .prologue
    .line 1095
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "InnerActivityType"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableCategoryDropDown()V
    .locals 0

    .prologue
    .line 897
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 974
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 976
    .local v0, result:Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 979
    .end local v0           #result:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1142
    return-void
.end method

.method public hideEmptyErrorView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1232
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_2

    .line 1246
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1250
    :cond_2
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1251
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    invoke-static {v0, v3, v3}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    .line 1257
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1258
    return-void
.end method

.method protected hideHtcContextMenu()V
    .locals 1

    .prologue
    .line 1531
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->removeDialog(I)V

    .line 1532
    return-void
.end method

.method protected initMiniPlayer()V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 482
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetMiniPlayer(Z)V

    .line 484
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initOnlineTitleLayout()V
    .locals 4

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 148
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 154
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 159
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 206
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x6

    .line 207
    .local v1, type:I
    if-eqz v0, :cond_2

    .line 208
    const-string v2, "InnerActivityType"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 210
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitleStyle(I)V

    goto :goto_0
.end method

.method protected launchGlancePage()V
    .locals 3

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "showEmptyQueue"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startActivity(Landroid/content/Intent;)V

    .line 1008
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1085
    const-string v0, "[MusicAutoHeaderFooterActivity]"

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

    .line 1086
    const v0, 0xc351

    if-ne p1, v0, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startListenStore()V

    .line 1092
    :goto_0
    return-void

    .line 1091
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicMaActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 546
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 548
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 549
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 551
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetMiniPlayer(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onContentChanged()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->initOnlineTitleLayout()V

    .line 135
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->initMiniPlayer()V

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 558
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 561
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    .line 564
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 1433
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1434
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1435
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1481
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1437
    :sswitch_0
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;

    invoke-direct {v8, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1451
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 1454
    :sswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1455
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030018

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1456
    .local v5, view:Landroid/view/View;
    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    .line 1457
    .local v4, textview:Landroid/widget/AutoCompleteTextView;
    const v6, 0x7f07005d

    invoke-virtual {p0, v6}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1458
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    invoke-virtual {v4, v10}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 1461
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f070098

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x2040152

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$7;

    invoke-direct {v8, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$7;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f070069

    new-instance v8, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;

    invoke-direct {v8, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$6;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 1475
    .local v1, createDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v6, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;

    invoke-direct {v6, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity$EditTextWatcher;-><init>(Lcom/htc/widget/HtcAlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 1435
    nop

    :sswitch_data_0
    .sparse-switch
        0x259 -> :sswitch_1
        0x25a -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1075
    packed-switch p1, :pswitch_data_0

    .line 1080
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1077
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 0
    .parameter "playlistName"

    .prologue
    .line 1486
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    .line 226
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    .line 227
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const v3, 0x204026d

    invoke-interface {v0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20800c2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 244
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onDestroy()V

    .line 593
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 597
    :cond_0
    return-void
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1535
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 292
    const-string v0, "[MusicAutoHeaderFooterActivity]"

    const-string v1, "can\'t match any menu item!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 284
    :pswitch_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->launchGlancePage()V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1515
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1516
    packed-switch p1, :pswitch_data_0

    .line 1521
    .end local p2
    :goto_0
    return-void

    .line 1518
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1516
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x2711

    .line 249
    const/16 v1, 0x2710

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 250
    .local v0, search:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 251
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableSearch:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_0
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 259
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v1, v2, :cond_3

    .line 260
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 262
    const v1, 0x7f07011b

    invoke-interface {p1, v4, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02002a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 570
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->removeDialog(I)V

    .line 571
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onResume()V

    .line 573
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    .line 576
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 580
    invoke-super {p0}, Lcom/htc/music/widget/MusicMaActivity;->onStop()V

    .line 584
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 587
    :cond_0
    return-void
.end method

.method protected resetMiniPlayer(Z)V
    .locals 4
    .parameter "isHorizontal"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f080048

    .line 487
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-nez v1, :cond_0

    .line 490
    if-eqz p1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 494
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 496
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 500
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0

    .line 503
    .end local v0           #container:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_0

    .line 505
    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    .line 507
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 509
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 510
    .restart local v0       #container:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_4

    .line 511
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    .line 517
    :cond_4
    const-string v1, "[MusicAutoHeaderFooterActivity]"

    const-string v2, "can\'t find R.id.listview_content_layout!! so we can\'t add mini player view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    .line 519
    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0
.end method

.method protected resetSDErrorLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1379
    sget v2, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mEnableLandscapeHorizontalSDError:I

    if-nez v2, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 1395
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1396
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1397
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1398
    .local v0, param:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 1399
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v4, v2, :cond_3

    .line 1400
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1407
    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const v2, 0x7f08004c

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1408
    if-eqz v1, :cond_0

    .line 1409
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mOrientation:I

    if-ne v4, v2, :cond_4

    move-object v2, v1

    .line 1410
    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1414
    :goto_2
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 1402
    .restart local v0       #param:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #view:Landroid/view/View;
    :cond_3
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_1

    .end local v0           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    move-object v2, v1

    .line 1412
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 840
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 868
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 879
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 888
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 857
    return-void
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 759
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategoryProgressVisible(Z)V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 763
    if-eqz p1, :cond_2

    .line 764
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 0
    .parameter "setEnable"

    .prologue
    .line 654
    return-void
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 912
    return-void
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 940
    return-void
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 954
    return-void
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 967
    return-void
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 0
    .parameter "setVisible"

    .prologue
    .line 929
    return-void
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 785
    return-void
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 0
    .parameter "imageResId"
    .parameter "labelResId"

    .prologue
    .line 804
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "drawable"
    .parameter "label"

    .prologue
    .line 818
    return-void
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 831
    return-void
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 0
    .parameter "setVisibile"

    .prologue
    .line 796
    return-void
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "[MusicAutoHeaderFooterActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0700ec

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setContentView(IZ)V

    .line 119
    return-void
.end method

.method public setContentView(IZ)V
    .locals 2
    .parameter "layoutResID"
    .parameter "requestWindowFeatureOverlay"

    .prologue
    const/4 v1, 0x1

    .line 81
    const v0, 0x7f030047

    if-eq v0, p1, :cond_0

    const v0, 0x7f03002a

    if-ne v0, p1, :cond_2

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 89
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->requestWindowFeature(I)Z

    .line 90
    if-eqz p2, :cond_1

    .line 91
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->requestWindowFeature(I)Z

    .line 97
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setContentView(I)V

    .line 98
    return-void

    .line 85
    :cond_2
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    goto :goto_0

    .line 94
    :cond_3
    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    goto :goto_1
.end method

.method public setEmptyViewText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 1146
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1147
    .local v0, text:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1149
    :cond_0
    return-void
.end method

.method public setMainTitle(I)V
    .locals 2
    .parameter "mainTitleRes"

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 694
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "mainTitle"

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 700
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(I)V
    .locals 2
    .parameter "secondaryTitleRes"

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 715
    if-lez p1, :cond_2

    .line 716
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 717
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "secondaryTitle"

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 726
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitle(Ljava/lang/String;)V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 730
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2
    .parameter "setVisible"

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    .line 741
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 745
    if-eqz p1, :cond_2

    .line 746
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method protected setStoreSwitchStyleTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 364
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mUseCustomLayout:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v2, :cond_3

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->isActivityResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "activity is paused, do not set category title status"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    .line 393
    .local v0, rootParent:Landroid/app/Activity;
    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 394
    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 395
    .local v1, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0           #rootParent:Landroid/app/Activity;
    .end local v1           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-eqz v2, :cond_1

    .line 401
    if-eqz p1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 402
    :cond_4
    const-string v2, "[MusicAutoHeaderFooterActivity]"

    const-string v3, "someone set main title to NULL || empty!! ignore..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_5
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0
.end method

.method public showDatabaseError()V
    .locals 4

    .prologue
    .line 1261
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1263
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1264
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1268
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1266
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showDatabaseError(I)V

    goto :goto_0
.end method

.method public showDatabaseError(I)V
    .locals 9
    .parameter "nothing"

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x0

    .line 1272
    const v5, 0x102000a

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1273
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1274
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_1

    .line 1279
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1302
    :cond_1
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-nez v5, :cond_2

    .line 1303
    const v5, 0x7f08004b

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    .line 1306
    :cond_2
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_4

    .line 1307
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1308
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->resetSDErrorLayout()V

    .line 1310
    const v5, 0x7f0800a9

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1311
    if-nez v4, :cond_3

    const v5, 0x7f08004c

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1312
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1315
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, status:Ljava/lang/String;
    const v1, 0x20400a0

    .line 1318
    .local v1, message:I
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v0

    .line 1319
    .local v0, isInternalStorage:Z
    if-eqz v0, :cond_5

    .line 1320
    const-string v5, "[MusicAutoHeaderFooterActivity]"

    const-string v6, "isInternalStorage"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const v1, 0x7f070037

    .line 1324
    :cond_5
    const-string v5, "shared"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1325
    if-eqz v0, :cond_8

    .line 1326
    const v1, 0x7f070049

    .line 1370
    :cond_6
    :goto_0
    const v5, 0x7f080091

    invoke-virtual {p0, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1371
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_7

    .line 1372
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1375
    :cond_7
    invoke-virtual {p0, v8}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1376
    return-void

    .line 1328
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_8
    const v1, 0x7f070048

    goto :goto_0

    .line 1332
    :cond_9
    const-string v5, "removed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1334
    if-eqz v0, :cond_a

    .line 1335
    const v1, 0x7f070049

    goto :goto_0

    .line 1338
    :cond_a
    const v1, 0x20400a0

    goto :goto_0

    .line 1340
    :cond_b
    const-string v5, "unmounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1341
    const v1, 0x20401fa

    .line 1343
    if-eqz v0, :cond_6

    .line 1344
    const v1, 0x7f070049

    goto :goto_0

    .line 1346
    :cond_c
    const-string v5, "checking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1347
    if-eqz v0, :cond_d

    .line 1348
    const v1, 0x7f070049

    goto :goto_0

    .line 1351
    :cond_d
    const v1, 0x20400a0

    goto :goto_0

    .line 1353
    :cond_e
    const-string v5, "nofs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1354
    const v1, 0x7f070037

    .line 1356
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsOnlyInternalStorage()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1357
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fd

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1358
    :cond_f
    if-eqz v0, :cond_10

    .line 1359
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fe

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1361
    :cond_10
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20401fb

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 1364
    :cond_11
    const-string v5, "[MusicAutoHeaderFooterActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showDatabaseError: unknown status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showEmptyView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1200
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1201
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1202
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 1210
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1213
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 1214
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 1216
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1218
    const v3, 0x7f080095

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1219
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 1220
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1224
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1225
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 1226
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    :cond_4
    return-void
.end method

.method public showEmptyView(I)V
    .locals 4
    .parameter "textResId"

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea62

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1154
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v2, 0xea61

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1155
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1156
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1160
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1158
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showEmptyView(II)V

    goto :goto_0
.end method

.method public showEmptyView(II)V
    .locals 6
    .parameter "textResId"
    .parameter "appendixIconResId"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1164
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1165
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1166
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_1

    .line 1174
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoSDCardErrorViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1177
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    if-nez v3, :cond_2

    .line 1178
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    .line 1180
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mNoMusicViewStub:Landroid/view/ViewStub;

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1182
    const v3, 0x7f080095

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1183
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 1184
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1186
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->setCategoryRightBtn(Z)V

    .line 1188
    const v3, 0x7f080096

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1189
    .local v0, appendixIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 1190
    if-lez p2, :cond_5

    .line 1191
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1197
    :cond_4
    :goto_0
    return-void

    .line 1194
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .parameter "title"
    .parameter "items"
    .parameter "ids"

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuTitle:Ljava/lang/String;

    .line 1525
    iput-object p2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuItems:[Ljava/lang/CharSequence;

    .line 1526
    iput-object p3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHtcContextMenuIds:[I

    .line 1527
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->showDialog(I)V

    .line 1528
    return-void
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 331
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 332
    check-cast v2, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 333
    .local v2, tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    invoke-interface {v2, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryProgressVisible(Z)V

    .line 340
    .end local v2           #tabActivity:Lcom/htc/music/widget/IMusicTabActivityInterface;
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 336
    .local v0, headerLayout:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 337
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicMaActivity;->startActivity(Landroid/content/Intent;)V

    .line 665
    :goto_0
    return-void

    .line 663
    :cond_0
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    if-ltz p2, :cond_1

    .line 671
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_1
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 678
    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 679
    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"
    .parameter "caller"

    .prologue
    .line 682
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicMaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 683
    return-void
.end method
