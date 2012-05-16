.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;
.super Landroid/os/Handler;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    .line 179
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 187
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 190
    .local v1, queryType:I
    const/4 v3, 0x1

    if-ne v3, v1, :cond_4

    .line 192
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_3

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    .line 257
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v3

    if-lt v3, v5, :cond_a

    .line 260
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->showEmptyView(I)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    :goto_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 204
    .local v0, addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 205
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 211
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v1, :cond_7

    .line 213
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_6

    .line 218
    :cond_5
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 220
    :cond_6
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 223
    :goto_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 225
    .restart local v0       #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 226
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 232
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_7
    if-ne v5, v1, :cond_2

    .line 234
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 236
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_9

    .line 239
    :cond_8
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 241
    :cond_9
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    :goto_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;-><init>()V

    .line 246
    .restart local v0       #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 247
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 264
    .end local v0           #addItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_a
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->hideEmptyErrorView()V

    .line 267
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 268
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    :cond_b
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 273
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_c
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 278
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_d
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 283
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 284
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 285
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 286
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 287
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v3, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    .line 289
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->DumpQueryItemIndex()V

    .line 291
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 296
    .end local v1           #queryType:I
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    invoke-virtual {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->clear()V

    .line 298
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, searchStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v2           #searchStr:Ljava/lang/String;
    :pswitch_3
    const-string v3, "[CarLocalMusicSearchActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message MSG_HANDLE_PROGRESS, mIsSearchingCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I

    move-result v3

    if-lez v3, :cond_e

    .line 305
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 307
    :cond_e
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;->this$0:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    iget-object v3, v3, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
