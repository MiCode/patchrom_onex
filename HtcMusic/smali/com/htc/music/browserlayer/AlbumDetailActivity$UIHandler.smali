.class final Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
.super Landroid/os/Handler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIHandler"
.end annotation


# static fields
.field private static final BACK_PRESSED:I = 0x7

.field private static final DELETE_TRACK:I = 0x8

.field private static final HIDE_EMPTY_ERROR_VIEW:I = 0x5

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x1

.field private static final REQUERY_CURSOR:I = 0xc

.field private static final SET_MAIN_TITLE:I = 0xa

.field private static final SET_SECONDARY_TITLE:I = 0xb

.field private static final SET_TITLE:I = 0x0

.field private static final SHOW_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final SHOW_DATABASE_ERROR:I = 0x3

.field private static final SHOW_EMPTY_VIEW:I = 0x4

.field private static final SHOW_SPINNER:I = 0x6

.field private static final UPDATE_ALBUM_ART:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1168
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1170
    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Lcom/htc/music/browserlayer/AlbumDetailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    return-void
.end method


# virtual methods
.method public backPressed(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 1204
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1205
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1206
    return-void
.end method

.method public deleteTrack(II)V
    .locals 2
    .parameter "id"
    .parameter "position"

    .prologue
    .line 1211
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1212
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1213
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1214
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f070037

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1235
    const-string v3, "[AlbumDetailActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<<< UIHandler >>>>> + msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1239
    :pswitch_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :pswitch_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1243
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1245
    :cond_1
    const-string v3, "[AlbumDetailActivity]"

    const-string v4, "NOTIFY_DATA_SET_CHANGED, stopping or mAdapter=null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :pswitch_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1249
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/util/RingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    .line 1251
    :cond_2
    const-string v3, "[AlbumDetailActivity]"

    const-string v4, "SHOW_CONTACT_RINGTONE_TOAST, stopping or mRingToneHelper=null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :pswitch_3
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v3, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    .line 1255
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDatabaseError()V

    .line 1256
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    .line 1259
    :pswitch_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v3, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    .line 1260
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    .line 1261
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showEmptyView(I)V

    .line 1262
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    .line 1265
    :pswitch_5
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v3, v7}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    .line 1266
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v4, -0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    .line 1267
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideEmptyErrorView()V

    .line 1268
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto/16 :goto_0

    .line 1271
    :pswitch_6
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showSpinner(Z)V

    goto/16 :goto_0

    .line 1274
    :pswitch_7
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 1277
    :pswitch_8
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    new-array v4, v6, [I

    iget v5, p1, Landroid/os/Message;->arg1:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    .line 1281
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1283
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 1285
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1287
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1289
    .local v0, delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v3, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListView;->setDelPositionsList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    .end local v0           #delete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    .line 1295
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1296
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    goto/16 :goto_0

    .line 1303
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1304
    .local v1, obj:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1305
    .local v2, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 1306
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1307
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #obj:Ljava/lang/Object;
    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1702(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1311
    :goto_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1312
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    .line 1315
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1316
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1317
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1309
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1702(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1314
    .end local v1           #obj:Ljava/lang/Object;
    :cond_5
    const-string v3, "[AlbumDetailActivity]"

    const-string v4, "UPDATE_ALBUM_ART, stopping or mAdapter=null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1322
    .end local v2           #tempBitmap:Landroid/graphics/Bitmap;
    :pswitch_a
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setMainTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1326
    :pswitch_b
    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setSecondaryTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1330
    :pswitch_c
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1331
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 1332
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    .line 1333
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v3

    if-nez v3, :cond_6

    .line 1334
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    .line 1337
    :cond_6
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1291
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public hideEmptyErrorViewUI()V
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1197
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1179
    return-void
.end method

.method public requeryCursor()V
    .locals 1

    .prologue
    .line 1230
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1231
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1222
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1223
    return-void
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1226
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1227
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "albumTitle"

    .prologue
    .line 1174
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    return-void
.end method

.method public showContactRingtoneToast()V
    .locals 1

    .prologue
    .line 1182
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1183
    return-void
.end method

.method public showDatabaseErrorUI()V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 1187
    return-void
.end method

.method public showEmptyViewUI(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1190
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1192
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1193
    return-void
.end method

.method public showSpinnerUI(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1200
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    return-void
.end method

.method public updateAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "albumArt"

    .prologue
    .line 1218
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1219
    return-void
.end method
