.class public Lcom/htc/music/widget/SourceSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;,
        Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_LISTEN_BROWSE_TAG:Ljava/lang/String; = "ListenBrowseTabPlugin"

.field public static final CATEGORY_VMM_TAG:Ljava/lang/String; = "VMMBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[SourceSwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "enableHtcListen"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 51
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 186
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/SourceSwitcherAdapter$1;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/SourceSwitcherAdapter;->initialSourceItems(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "enableListen"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 71
    .local v2, listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    if-eqz p2, :cond_0

    .line 72
    const-string v3, "com.htc.music.landingpage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v2           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v3, "ListenBrowseTabPlugin"

    invoke-direct {v2, v3, v1, v6}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 84
    .restart local v2       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    :goto_0
    const-string v3, "ShowActivityTitle"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v3, "InnerActivityType"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v3, "LaunchFromSwitcher"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const v3, 0x7f070104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 88
    const v3, 0x2080078

    iput v3, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 124
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    iput-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .line 125
    return-void

    .line 75
    .end local v0           #arrays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;>;"
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v3

    if-ne v5, v3, :cond_1

    .line 77
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbumexpgrid"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    :goto_1
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    new-instance v2, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    .end local v2           #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    const-string v3, "ArtistBrowserTabPlugin"

    invoke-direct {v2, v3, v1, v5}, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;Z)V

    .restart local v2       #listenSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    goto :goto_0

    .line 79
    :cond_1
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/artistalbum"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private loadVMMTab(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 204
    new-instance v1, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mUIhandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lcom/htc/music/widget/SourceSwitcherAdapter$LoadVMMRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 206
    .local v1, vmmRrunable:Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 148
    :cond_0
    const-wide/16 v0, -0x1

    .line 151
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 247
    const-string v0, "ListenBrowseTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    .line 252
    :goto_0
    return-object v0

    .line 249
    :cond_0
    const-string v0, "DlnaBrowserTabPlugin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 157
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 178
    :goto_0
    return-object v2

    .line 161
    :cond_1
    if-nez p2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f03005e

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 163
    new-instance v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/SourceSwitcherAdapter$1;)V

    .line 165
    .local v0, holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    const v2, 0x7f08004f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 166
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    .end local v0           #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;

    .line 172
    .restart local v0       #holder:Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v1, v2, p1

    .line 176
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/widget/SourceSwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 178
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
