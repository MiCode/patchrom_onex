.class Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "AlbumTrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;,
        Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private final mBuilder:Ljava/lang/StringBuilder;

.field public mChildLayoutResId:I

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field public mGroupLayoutResId:I

.field mNotNotify:Z

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private final mResources:Landroid/content/res/Resources;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 13
    .parameter
    .parameter "context"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 841
    invoke-direct/range {v1 .. v9}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 807
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 814
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    .line 816
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    .line 818
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 819
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 1109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNotNotify:Z

    .line 843
    move/from16 v0, p4

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    .line 844
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    .line 846
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 847
    .local v12, res:Landroid/content/res/Resources;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 848
    .local v10, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 849
    iget v1, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    .line 850
    iget v1, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    .line 852
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 853
    .local v11, r:Landroid/content/res/Resources;
    const v1, 0x2080089

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 854
    const v1, 0x7f020052

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 857
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 858
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    move-object v1, p2

    .line 874
    check-cast v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    .line 875
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 876
    const v1, 0x7f0701dc

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 877
    const v1, 0x7f07004e

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 878
    const v1, 0x7f07004d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 885
    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1288
    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1292
    .local v6, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const-string v7, "title"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, TrackName:Ljava/lang/String;
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1295
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1297
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1298
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentAudioId()I

    move-result v5

    .line 1299
    .local v5, playingId:I
    const-string v7, "_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1300
    .local v2, currentId:I
    if-ne v5, v2, :cond_2

    .line 1301
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1306
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1307
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1309
    const-string v7, "artist"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1310
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "<unknown>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1311
    :cond_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1317
    .local v3, data:Landroid/os/Bundle;
    const-string v7, "AudioId"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1318
    const-string v7, "ArtistName"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v7, "TrackName"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v7, "AlbumName"

    const-string v8, "album"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-string v7, "filePath"

    const-string v8, "_data"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v7, v8, v3}, Lcom/htc/widget/HtcRimImageButton;->setTag(ILjava/lang/Object;)V

    .line 1326
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #currentId:I
    .end local v3           #data:Landroid/os/Bundle;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #playingId:I
    :cond_1
    return-void

    .line 1303
    .restart local v2       #currentId:I
    .restart local v5       #playingId:I
    :cond_2
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1313
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isexpanded"

    .prologue
    .line 1165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1166
    .local v19, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 1168
    :cond_0
    const-string v20, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1170
    .local v17, name:Ljava/lang/String;
    move-object/from16 v12, v17

    .line 1171
    .local v12, displayname:Ljava/lang/String;
    const-string v20, "<unknown>"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1174
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1177
    .local v8, builder:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1180
    const-string v20, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1181
    if-eqz v17, :cond_2

    const-string v20, "<unknown>"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1182
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :goto_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v20, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1189
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenre:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtist:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 1190
    :cond_4
    const-string v20, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1191
    .local v3, AlbumId:I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1192
    .local v10, data:Landroid/os/Bundle;
    const-string v20, "AlbumId"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1193
    const-string v20, "AlbumName"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v20, "ArtistName"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/htc/widget/HtcRimImageButton;->setTag(ILjava/lang/Object;)V

    .line 1198
    .end local v3           #AlbumId:I
    .end local v10           #data:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1202
    .local v14, iv:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v17, :cond_6

    const-string v20, "<unknown>"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    :cond_6
    const/16 v18, 0x1

    .line 1203
    .local v18, unknown:Z
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1204
    .local v5, artIndex:I
    const-string v20, "album_art"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, art:Ljava/lang/String;
    if-nez v18, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_a

    .line 1208
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    .end local v4           #art:Ljava/lang/String;
    .end local v12           #displayname:Ljava/lang/String;
    .end local v18           #unknown:Z
    :goto_2
    return-void

    .line 1184
    .end local v5           #artIndex:I
    .end local v14           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v12       #displayname:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1202
    .restart local v14       #iv:Lcom/htc/widget/HtcListItemTileImage;
    :cond_9
    const/16 v18, 0x0

    goto :goto_1

    .line 1210
    .restart local v4       #art:Ljava/lang/String;
    .restart local v5       #artIndex:I
    .restart local v18       #unknown:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v13

    .line 1211
    .local v13, item:Lcom/htc/music/util/MBitmap;
    if-nez v13, :cond_d

    const/4 v7, 0x0

    .line 1212
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-nez v13, :cond_e

    const/4 v11, 0x0

    .line 1213
    .local v11, decodePath:Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    if-nez v20, :cond_b

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 1215
    :cond_b
    const/4 v6, 0x0

    .line 1216
    .local v6, b:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_c

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/htc/music/util/MusicUtils;->getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1218
    if-nez v6, :cond_c

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v5, v1, v2}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1222
    :cond_c
    if-eqz v6, :cond_f

    .line 1223
    new-instance v16, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v4}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1224
    .local v16, mb:Lcom/htc/music/util/MBitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;)Z

    .line 1226
    invoke-virtual {v14, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 1211
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #decodePath:Ljava/lang/String;
    .end local v16           #mb:Lcom/htc/music/util/MBitmap;
    :cond_d
    invoke-virtual {v13}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 1212
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_e
    invoke-virtual {v13}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 1229
    .restart local v6       #b:Landroid/graphics/Bitmap;
    .restart local v11       #decodePath:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1233
    .end local v6           #b:Landroid/graphics/Bitmap;
    :cond_10
    invoke-virtual {v14, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 1238
    .end local v4           #art:Ljava/lang/String;
    .end local v5           #artIndex:I
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #builder:Ljava/lang/StringBuilder;
    .end local v11           #decodePath:Ljava/lang/String;
    .end local v12           #displayname:Ljava/lang/String;
    .end local v13           #item:Lcom/htc/music/util/MBitmap;
    .end local v14           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #unknown:Z
    :cond_11
    const-string v20, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1240
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v23, v0

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1243
    .restart local v8       #builder:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1253
    const-string v20, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1255
    .restart local v17       #name:Ljava/lang/String;
    if-eqz v17, :cond_12

    const-string v20, "<unknown>"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1256
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 1261
    .local v15, len:I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v15, :cond_13

    .line 1262
    new-array v0, v15, [C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1264
    :cond_13
    const/16 v20, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v8, v0, v15, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1265
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v15}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1267
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1276
    .restart local v14       #iv:Lcom/htc/widget/HtcListItemTileImage;
    const-string v20, "album_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1278
    .restart local v5       #artIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Lcom/htc/music/util/MusicUtils;->getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1280
    .local v9, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1258
    .end local v5           #artIndex:I
    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    .end local v14           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v15           #len:I
    :cond_14
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1393
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1394
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2002(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1395
    return-void
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1023
    const/4 v5, 0x0

    .line 1025
    .local v5, v:Landroid/view/View;
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleCursorTreeAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1029
    :goto_0
    if-nez v5, :cond_0

    move-object/from16 v5, p4

    .line 1030
    :cond_0
    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1032
    .local v6, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v7, :cond_1

    .line 1033
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1034
    if-eqz p3, :cond_4

    new-instance v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {v7, p0, v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1037
    :goto_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v4

    .line 1038
    .local v4, state:I
    packed-switch v4, :pswitch_data_0

    .line 1047
    .end local v4           #state:I
    :cond_1
    :goto_2
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v7, :cond_3

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1049
    .local v0, data:Landroid/os/Bundle;
    const-string v7, "groupPos"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    const-string v7, "childPos"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1051
    const-string v7, "name"

    iget-object v8, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1055
    .local v2, group:Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1056
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1057
    .local v3, index:I
    const-string v7, "index"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1060
    .end local v3           #index:I
    :cond_2
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1062
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    new-instance v8, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    new-instance v7, Landroid/view/TouchDelegate;

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const v11, 0x7f0b009c

    invoke-static {v10, v11}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget v12, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v7, v8, v9}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1106
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #group:Landroid/view/ViewGroup;
    :cond_3
    return-object v5

    .line 1026
    .end local v6           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :catch_0
    move-exception v1

    .line 1027
    .local v1, ex:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1035
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v6       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_4
    new-instance v7, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, v9}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1040
    .restart local v4       #state:I
    :pswitch_0
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1043
    :pswitch_1
    iget-object v7, v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "groupCursor"

    .prologue
    .line 1330
    const/4 v10, 0x0

    .line 1331
    .local v10, ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mNoChildMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1800(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v10

    .line 1388
    .end local v10           #ret:Landroid/database/Cursor;
    .local v11, ret:Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 1333
    .end local v11           #ret:Landroid/database/Cursor;
    .restart local v10       #ret:Landroid/database/Cursor;
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1336
    .local v9, id:I
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title_key"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 1343
    .local v2, cols:[Ljava/lang/String;
    const-string v5, "title COLLATE NOCASE ASC"

    .line 1344
    .local v5, mSortOrder:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1345
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1346
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    const-string v0, " AND is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 1352
    .local v7, genreId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    .line 1353
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .end local v7           #genreId:J
    :goto_1
    move-object v11, v10

    .line 1388
    .end local v10           #ret:Landroid/database/Cursor;
    .restart local v11       #ret:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1359
    .end local v11           #ret:Landroid/database/Cursor;
    .restart local v7       #genreId:J
    .restart local v10       #ret:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const-string v1, "external"

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mGenreId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    .line 1364
    .end local v7           #genreId:J
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND artist_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1368
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mComposer:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Ljava/lang/String;

    move-result-object v6

    .line 1369
    .local v6, composer:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    .line 1370
    .local v12, unknown:Z
    if-eqz v12, :cond_5

    .line 1371
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1377
    .end local v6           #composer:Ljava/lang/String;
    .end local v12           #unknown:Z
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->mDbTable:I
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1378
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1

    .line 1374
    .restart local v6       #composer:Ljava/lang/String;
    .restart local v12       #unknown:Z
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1382
    .end local v6           #composer:Ljava/lang/String;
    .end local v12           #unknown:Z
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_1
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 915
    const/4 v3, 0x0

    .line 917
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 921
    :goto_0
    if-nez v3, :cond_0

    move-object v3, p3

    .line 922
    :cond_0
    iget v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 924
    .local v4, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    new-instance v5, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;

    invoke-direct {v5, p0, v10, v6}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$HtcListItemRoundSeparable;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;ZZ)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 926
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 927
    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getGroupListView()Lcom/htc/music/widget/GroupListView;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v2

    .line 928
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    .line 975
    .end local v2           #state:I
    :goto_1
    return-object v3

    .line 918
    .end local v4           #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :catch_0
    move-exception v1

    .line 919
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 930
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #state:I
    .restart local v4       #vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :pswitch_0
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 931
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 934
    :pswitch_1
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 935
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v10}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 939
    :pswitch_2
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 940
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 944
    .end local v2           #state:I
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 945
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "groupPos"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    const-string v5, "childPos"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    const-string v5, "name"

    iget-object v6, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 950
    iget-object v5, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    new-instance v6, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    new-instance v5, Landroid/view/TouchDelegate;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    const v9, 0x7f0b009c

    invoke-static {v8, v9}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenWidth:I

    iget v9, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mScreenHeight:I

    invoke-direct {v6, v7, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, v4, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v5, v6, v7}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_1

    .line 928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 1121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1122
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    .line 1123
    .local v1, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1124
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1125
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1126
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1128
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1129
    const v2, 0x7f080027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1130
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 1131
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 1132
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 1133
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 1134
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 1135
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 1156
    :cond_0
    :goto_0
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1157
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1159
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mChildLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1160
    return-object v0

    .line 1138
    :cond_1
    const v2, 0x7f080026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    .line 1139
    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 1140
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_2

    .line 1141
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_circle_outer"

    const v4, 0x208001f

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "common_circle_pressed"

    const v5, 0x2080020

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_rest"

    const v6, 0x2080021

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1145
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1146
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setClickable(Z)V

    .line 1147
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1148
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1151
    :cond_2
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v2, :cond_0

    .line 1152
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemIndicator:Lcom/htc/widget/HtcListItemImageButton;

    const v3, 0x2080089

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 980
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 981
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;)V

    .line 983
    .local v1, vh:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 984
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 988
    const v2, 0x7f080026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    .line 989
    const v2, 0x7f080027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 990
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->IsPickerMode()Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$300(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v2, :cond_0

    .line 992
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 993
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 994
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setPartialSelection(Z)V

    .line 995
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 996
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 1011
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1014
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1015
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->buffer2:[C

    .line 1016
    iget v2, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mGroupLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1017
    return-object v0

    .line 999
    :cond_1
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_circle_outer"

    const v4, 0x208001f

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "common_circle_pressed"

    const v5, 0x2080020

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_rest"

    const v6, 0x2080021

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1004
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1005
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setClickable(Z)V

    .line 1006
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1007
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->listItemOptions:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->mNotNotify:Z

    if-eqz v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorTreeAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumTrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
