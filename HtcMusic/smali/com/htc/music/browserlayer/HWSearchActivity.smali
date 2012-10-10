.class public Lcom/htc/music/browserlayer/HWSearchActivity;
.super Landroid/app/Activity;
.source "HWSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v12, 0x2

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 25
    .local v4, intent:Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 28
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 29
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 30
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, path:Ljava/lang/String;
    const-string v8, "content://media/external/audio/media/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, id:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v9

    .line 36
    .local v5, list:[I
    const/4 v8, 0x0

    invoke-static {p0, v5, v9, v8}, Lcom/htc/music/util/MusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 37
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto :goto_0

    .line 39
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #list:[I
    :cond_2
    const-string v8, "content://media/external/audio/albums/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 41
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, albumId:Ljava/lang/String;
    const-string v8, "[QueryBrowserActivity]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Going to launch album detail view. albumId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, i:Landroid/content/Intent;
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "com.htc.media/albumtrack"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v8, "albumid"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v8, "dbTable"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/HWSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto :goto_0

    .line 51
    .end local v1           #albumId:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    :cond_3
    const-string v8, "content://media/external/audio/artists/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.PICK"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v2       #i:Landroid/content/Intent;
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "vnd.android.cursor.dir/album"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v8, "artistid"

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v8, "dbTable"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/HWSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/HWSearchActivity;->finish()V

    goto/16 :goto_0
.end method
