.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;
.super Landroid/os/Handler;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f07004d

    const/4 v7, 0x3

    .line 145
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 156
    .local v3, queryType:I
    const/4 v5, 0x1

    if-ne v5, v3, :cond_a

    .line 158
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_7

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$308(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    .line 238
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 241
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 242
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->hideEmptyErrorView()V

    .line 252
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    :cond_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 258
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 263
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    :cond_6
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 268
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 269
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 270
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 271
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 272
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 273
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I
    invoke-static {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I

    .line 275
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->DumpQueryItemIndex()V

    .line 277
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 166
    :cond_7
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    :goto_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 171
    .local v0, addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 172
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, artist:Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 174
    :cond_8
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5, v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_9
    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 182
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x2

    if-ne v5, v3, :cond_f

    .line 184
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_c

    .line 189
    :cond_b
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$308(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 192
    :cond_c
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    :goto_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 196
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 197
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 198
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, album:Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 200
    :cond_d
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_e
    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 209
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v1           #album:Ljava/lang/String;
    :cond_f
    if-ne v7, v3, :cond_2

    .line 211
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_11

    .line 216
    :cond_10
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$308(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    goto/16 :goto_1

    .line 219
    :cond_11
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    :goto_4
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;-><init>()V

    .line 224
    .restart local v0       #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setId(J)V

    .line 225
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2       #artist:Ljava/lang/String;
    if-eqz v2, :cond_12

    const-string v5, "<unknown>"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 228
    :cond_12
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5, v8}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_13
    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 244
    .end local v0           #addItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .end local v2           #artist:Ljava/lang/String;
    :cond_14
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    if-lt v5, v7, :cond_3

    .line 245
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    const v6, 0x7f070037

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->showEmptyView(I)V

    goto/16 :goto_0

    .line 282
    .end local v3           #queryType:I
    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clear()V

    .line 284
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 285
    .local v4, searchStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initLocalSearch(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    .end local v4           #searchStr:Ljava/lang/String;
    :pswitch_3
    const-string v5, "[LocalMusicSearchActivity]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message MSG_HANDLE_PROGRESS, mIsSearchingCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v7}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    #getter for: Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->access$3300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I

    move-result v5

    if-lez v5, :cond_15

    .line 291
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 294
    :cond_15
    iget-object v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;->this$0:Lcom/htc/music/browserlayer/LocalMusicSearchActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarSearch;->setProgressVisibility(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
