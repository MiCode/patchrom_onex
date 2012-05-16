.class public Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final DIALOG_LOADING:I = 0x0

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_UP:I = 0xc

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x3

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DLNA"

.field private static final TIME_SHOWSPINNER:I = 0x7530

.field private static final WIFI_ERROR:I = 0x2


# instance fields
.field public BROWSE_TYPE:I

.field private mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitial:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWifiListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 58
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 60
    iput v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->BROWSE_TYPE:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    .line 294
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 491
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    .line 786
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_name"

    aput-object v2, v0, v1

    const-string v1, "thumbnail_uri"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 423
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    .line 424
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    :cond_1
    return-void
.end method

.method public isByPass()Z
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 448
    if-nez p1, :cond_0

    .line 449
    if-nez p2, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->finish()V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setVolumeControlStream(I)V

    .line 109
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setContentView(I)V

    .line 111
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 113
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    .line 116
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showLoading()V

    .line 129
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    .line 130
    iput-object p0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mContext:Landroid/content/Context;

    .line 132
    const-string v0, "DLNA"

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    .line 136
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    .line 138
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 139
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 142
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 166
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 218
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 188
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x204009d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040178

    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040152

    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 225
    const/16 v0, 0xd

    const v1, 0x7f07001f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 226
    const/16 v0, 0xa

    const v1, 0x204021a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 332
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 430
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, ServerID:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, ServerName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ServerName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v3, "ServerID"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v3, "ContainerID"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v4, "IconPath"

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v3, "InnerActivityType"

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    const-class v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 232
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 265
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 236
    :pswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 238
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showLoading()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    const-string v4, "DLNA"

    const-string v5, "Play all, check DLNA mode first"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v2

    .line 252
    .local v2, mode:I
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNA mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 285
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setTitle(Ljava/lang/String;)V

    .line 286
    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showDialog(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 272
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 274
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showDialog(I)V

    .line 277
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 307
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 309
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 322
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :goto_1
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5
    .parameter "setEnable"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 366
    :cond_0
    iput v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mEnableRightBtn:I

    .line 368
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->isActivityResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 369
    const-string v3, "DLNA"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 374
    .local v1, parent:Landroid/app/Activity;
    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 375
    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 376
    .local v0, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showSpinner(Z)V

    .line 340
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    .line 342
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    .line 345
    :cond_1
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;JJ)V

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->start()Landroid/os/CountDownTimer;

    .line 360
    return-void
.end method
