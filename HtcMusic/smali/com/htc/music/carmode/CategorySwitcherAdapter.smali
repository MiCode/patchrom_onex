.class public Lcom/htc/music/carmode/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CategorySwitcherAdapter$1;,
        Lcom/htc/music/carmode/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 43
    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f07002b

    const v8, 0x7f070027

    const v7, 0x7f070024

    const v6, 0x7f070021

    .line 57
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v5, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v5, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 61
    .local v1, artistSource:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 62
    const v5, 0x7f020034

    iput v5, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 63
    iput v6, v1, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 65
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.PICK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v5, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v5, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 71
    .local v0, albumSource:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 72
    const v5, 0x7f02001f

    iput v5, v0, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 73
    iput v7, v0, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 75
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 76
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    new-instance v4, Lcom/htc/music/util/SourceItem;

    const-string v5, "TrackBrowserTabPlugin"

    invoke-direct {v4, v5, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 79
    .local v4, trackSource:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 80
    const v5, 0x7f020029

    iput v5, v4, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 81
    iput v8, v4, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 83
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 84
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    new-instance v3, Lcom/htc/music/util/SourceItem;

    const-string v5, "PlaylistBrowserTabPlugin"

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 87
    .local v3, playlistSource:Lcom/htc/music/util/SourceItem;
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 89
    const v5, 0x7f02002e

    iput v5, v3, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 90
    iput v9, v3, Lcom/htc/music/util/SourceItem;->mTitleRes:I

    .line 92
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/htc/music/util/SourceItem;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    iput-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 115
    :cond_0
    const-wide/16 v0, -0x1

    .line 118
    :goto_0
    return-wide v0

    :cond_1
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getSource(Ljava/lang/String;)Lcom/htc/music/util/SourceItem;
    .locals 3
    .parameter "tag"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    .line 171
    :goto_1
    return-object v1

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 123
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v5, v5

    if-gt v5, p1, :cond_1

    :cond_0
    move-object v5, v6

    .line 159
    :goto_0
    return-object v5

    .line 127
    :cond_1
    if-nez p2, :cond_5

    .line 128
    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v7, 0x7f030015

    invoke-virtual {v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    .line 130
    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 132
    new-instance v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/carmode/CategorySwitcherAdapter;Lcom/htc/music/carmode/CategorySwitcherAdapter$1;)V

    .line 137
    .local v2, holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    const v5, 0x7f08004f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 139
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 140
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    instance-of v5, v5, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v5, :cond_2

    .line 141
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-interface {v5, v8}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 142
    :cond_2
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5}, Lcom/htc/widget/HtcListItem2LineText;->getChildCount()I

    move-result v1

    .line 143
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 144
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v5, :cond_3

    .line 146
    check-cast v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0, v8}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 143
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    .end local v1           #count:I
    .end local v2           #holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    .end local v3           #i:I
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;

    .line 153
    .restart local v2       #holder:Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v5, p0, Lcom/htc/music/carmode/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v4, v5, p1

    .line 157
    .local v4, item:Lcom/htc/music/util/SourceItem;
    iget-object v5, v2, Lcom/htc/music/carmode/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v6, v4, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v5, p2

    .line 159
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
