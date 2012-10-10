.class Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAlbumQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1038
    const/4 v0, 0x0

    #getter for: Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity;->access$3700(Lcom/htc/music/LandingPageActivity;)Z

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 1039
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 19
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1043
    const-string v16, "[LandingPage]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RecentAlbumQueryHandler, onQueryComplete(), token: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-gtz v16, :cond_4

    .line 1046
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1048
    new-instance v2, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v2}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1049
    .local v2, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .end local v2           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 1088
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static/range {v17 .. v17}, Lcom/htc/music/LandingPageActivity;->access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1092
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static/range {v16 .. v17}, Lcom/htc/music/LandingPageActivity;->access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1096
    :cond_2
    if-eqz p3, :cond_3

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1100
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    #setter for: Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity;->access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1101
    if-eqz p3, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_c

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v9, v0, [Z

    .line 1104
    .local v9, existArray:[Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 1105
    const/16 v16, 0x0

    aput-boolean v16, v9, v10

    .line 1104
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1051
    .end local v9           #existArray:[Z
    .end local v10           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v16

    if-eqz v16, :cond_5

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1053
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_1

    .line 1054
    new-instance v2, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v2}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1058
    .restart local v2       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v16

    aget v16, v16, v10

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1060
    :catch_0
    move-exception v8

    .line 1061
    .local v8, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v16, "[LandingPage]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onQueryComplete, ArrayIndexOutOfBoundsException, ex: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    .end local v2           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v8           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v10           #i:I
    :cond_5
    const-string v16, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1068
    .local v13, ididx:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1069
    .local v6, count:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1070
    const-string v16, "[LandingPage]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    new-array v0, v6, [I

    move-object/from16 v17, v0

    #setter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v17}, Lcom/htc/music/LandingPageActivity;->access$3802(Lcom/htc/music/LandingPageActivity;[I)[I

    .line 1074
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v6, :cond_1

    .line 1075
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1076
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v16

    aput v11, v16, v10

    .line 1078
    new-instance v2, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v2}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1079
    .restart local v2       #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$3800(Lcom/htc/music/LandingPageActivity;)[I

    move-result-object v16

    aget v16, v16, v10

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1074
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1089
    .end local v2           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    .end local v6           #count:I
    .end local v10           #i:I
    .end local v11           #id:I
    .end local v13           #ididx:I
    :catch_1
    move-exception v7

    .line 1090
    .local v7, e:Ljava/lang/Exception;
    const-string v16, "[LandingPage]"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mAlbumCursor error : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1108
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #existArray:[Z
    .restart local v10       #i:I
    :cond_6
    const-string v16, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1109
    .local v12, idIdx:I
    const-string v16, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1110
    .local v4, albumIdx:I
    const-string v16, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1111
    .local v5, artistIdx:I
    const-string v16, "album_art"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1112
    .local v3, albumArtIdx:I
    const/4 v10, 0x0

    :goto_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 1113
    const/4 v15, 0x0

    .local v15, j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v16

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1115
    const/16 v16, 0x1

    aput-boolean v16, v9, v15

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/LandingPageActivity$BaseItem;->setPrimaryText(Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/LandingPageActivity$BaseItem;->setSecondaryText(Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/music/LandingPageActivity$BaseItem;

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/htc/music/LandingPageActivity$BaseItem;->setArtPath(Ljava/lang/String;)V

    .line 1122
    :cond_7
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1112
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 1113
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1125
    .end local v15           #j:I
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v14, inValidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/LandingPageActivity$BaseItem;>;"
    const/4 v10, 0x0

    :goto_7
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 1127
    aget-boolean v16, v9, v10

    if-nez v16, :cond_a

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1131
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1138
    .end local v3           #albumArtIdx:I
    .end local v4           #albumIdx:I
    .end local v5           #artistIdx:I
    .end local v9           #existArray:[Z
    .end local v10           #i:I
    .end local v12           #idIdx:I
    .end local v14           #inValidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/LandingPageActivity$BaseItem;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;->this$0:Lcom/htc/music/LandingPageActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    .line 1141
    :cond_d
    return-void
.end method
