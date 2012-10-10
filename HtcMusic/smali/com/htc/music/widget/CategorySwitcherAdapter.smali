.class public Lcom/htc/music/widget/CategorySwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategorySwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/CategorySwitcherAdapter$1;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$OnCategorySwitcherItemClickListener;,
        Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALBUM_BROWSE_TAG:Ljava/lang/String; = "AlbumBrowserTabPlugin"

.field public static final CATEGORY_ARTIST_BROWSE_TAG:Ljava/lang/String; = "ArtistBrowserTabPlugin"

.field public static final CATEGORY_DLNA_TAG:Ljava/lang/String; = "DlnaBrowserTabPlugin"

.field public static final CATEGORY_GENRES_BROWSE_TAG:Ljava/lang/String; = "genreBrowserTabPlugin"

.field public static final CATEGORY_PLAYLISTS_BROWSE_TAG:Ljava/lang/String; = "PlaylistBrowserTabPlugin"

.field public static final CATEGORY_SONGS_BROWSE_TAG:Ljava/lang/String; = "TrackBrowserTabPlugin"

.field private static final TAG:Ljava/lang/String; = "[CategorySwitcherAdapter]"


# instance fields
.field protected mEditModePlaylistUri:Ljava/lang/String;

.field protected mLayoutInflator:Landroid/view/LayoutInflater;

.field protected mSources:[Lcom/htc/music/util/SourceItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/CategorySwitcherAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "editModePlaylistUri"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 53
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 55
    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/music/widget/CategorySwitcherAdapter;->initialSourceItems(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private initialSourceItems(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 78
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v3, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v6

    if-ne v8, v6, :cond_2

    .line 81
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/artistalbumexpgrid"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :goto_0
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v6, "InnerActivityType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v6, "LaunchFromSwitcher"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string v6, "playlisturi"

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v6, "dbTable"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    new-instance v1, Lcom/htc/music/util/SourceItem;

    const-string v6, "ArtistBrowserTabPlugin"

    invoke-direct {v1, v6, v3}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 92
    .local v1, artistSource:Lcom/htc/music/util/SourceItem;
    const v6, 0x7f070021

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 93
    const v6, 0x7f020034

    iput v6, v1, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 95
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "com.htc.media/album"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-class v6, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const-string v6, "InnerActivityType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string v6, "LaunchFromSwitcher"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v6, "playlisturi"

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "dbTable"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    new-instance v0, Lcom/htc/music/util/SourceItem;

    const-string v6, "AlbumBrowserTabPlugin"

    invoke-direct {v0, v6, v3}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 105
    .local v0, albumSource:Lcom/htc/music/util/SourceItem;
    const v6, 0x7f070024

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 106
    const v6, 0x7f02001f

    iput v6, v0, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 108
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 109
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const-string v6, "InnerActivityType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    const-string v6, "LaunchFromSwitcher"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v6, "playlisturi"

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v6, "dbTable"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v6, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 116
    const-string v6, "pickermode"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v6, "IsFragment"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    :cond_0
    new-instance v5, Lcom/htc/music/util/SourceItem;

    const-string v6, "TrackBrowserTabPlugin"

    invoke-direct {v5, v6, v3}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 120
    .local v5, trackSource:Lcom/htc/music/util/SourceItem;
    const v6, 0x7f070027

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 121
    const v6, 0x7f020029

    iput v6, v5, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, playlistSource:Lcom/htc/music/util/SourceItem;
    iget-object v6, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 125
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 126
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const-string v6, "InnerActivityType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v6, "LaunchFromSwitcher"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    new-instance v4, Lcom/htc/music/util/SourceItem;

    .end local v4           #playlistSource:Lcom/htc/music/util/SourceItem;
    const-string v6, "PlaylistBrowserTabPlugin"

    invoke-direct {v4, v6, v3}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 131
    .restart local v4       #playlistSource:Lcom/htc/music/util/SourceItem;
    const v6, 0x7f07002b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 132
    const v6, 0x7f02002e

    iput v6, v4, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 135
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 136
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/genreexpgrid"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :goto_1
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v6, "InnerActivityType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v6, "ShowActivityTitle"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v6, "LaunchFromSwitcher"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v6, "playlisturi"

    iget-object v7, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v6, "dbTable"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    new-instance v2, Lcom/htc/music/util/SourceItem;

    const-string v6, "genreBrowserTabPlugin"

    invoke-direct {v2, v6, v3}, Lcom/htc/music/util/SourceItem;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 149
    .local v2, genreSource:Lcom/htc/music/util/SourceItem;
    const v6, 0x7f070030

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    .line 150
    const v6, 0x7f020024

    iput v6, v2, Lcom/htc/music/util/SourceItem;->mIconRes:I

    .line 153
    iget-object v6, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mEditModePlaylistUri:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 154
    const/4 v6, 0x5

    new-array v6, v6, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v6, v9

    aput-object v0, v6, v8

    aput-object v5, v6, v10

    aput-object v4, v6, v12

    const/4 v7, 0x4

    aput-object v2, v6, v7

    iput-object v6, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    .line 170
    :goto_2
    return-void

    .line 83
    .end local v0           #albumSource:Lcom/htc/music/util/SourceItem;
    .end local v1           #artistSource:Lcom/htc/music/util/SourceItem;
    .end local v2           #genreSource:Lcom/htc/music/util/SourceItem;
    .end local v4           #playlistSource:Lcom/htc/music/util/SourceItem;
    .end local v5           #trackSource:Lcom/htc/music/util/SourceItem;
    :cond_2
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/artistalbum"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 140
    .restart local v0       #albumSource:Lcom/htc/music/util/SourceItem;
    .restart local v1       #artistSource:Lcom/htc/music/util/SourceItem;
    .restart local v4       #playlistSource:Lcom/htc/music/util/SourceItem;
    .restart local v5       #trackSource:Lcom/htc/music/util/SourceItem;
    :cond_3
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/genre"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 163
    .restart local v2       #genreSource:Lcom/htc/music/util/SourceItem;
    :cond_4
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/htc/music/util/SourceItem;

    aput-object v1, v6, v9

    aput-object v0, v6, v8

    aput-object v5, v6, v10

    aput-object v2, v6, v12

    iput-object v6, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 192
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 193
    :cond_0
    const-wide/16 v0, -0x1

    .line 196
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
    .line 233
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v1, v0

    .line 254
    :goto_1
    return-object v1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 202
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 226
    :goto_0
    return-object v2

    .line 206
    :cond_1
    if-nez p2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f03005e

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 208
    new-instance v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;-><init>(Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter$1;)V

    .line 212
    .local v0, holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    const v2, 0x7f08004f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 213
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x2030016

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 214
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    .end local v0           #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;

    .line 220
    .restart local v0       #holder:Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v2, p0, Lcom/htc/music/widget/CategorySwitcherAdapter;->mSources:[Lcom/htc/music/util/SourceItem;

    aget-object v1, v2, p1

    .line 224
    .local v1, item:Lcom/htc/music/util/SourceItem;
    iget-object v2, v0, Lcom/htc/music/widget/CategorySwitcherAdapter$ViewHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, v1, Lcom/htc/music/util/SourceItem;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    move-object v2, p2

    .line 226
    goto :goto_0
.end method

.method public releaseAdapter()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
