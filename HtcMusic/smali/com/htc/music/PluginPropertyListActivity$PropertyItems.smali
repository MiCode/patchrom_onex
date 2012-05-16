.class public Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
.super Ljava/lang/Object;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PropertyItems"
.end annotation


# instance fields
.field public mAlbumName:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mComposer:Ljava/lang/String;

.field public mDuration:J

.field public mFileName:Ljava/lang/String;

.field public mGenre:Ljava/lang/String;

.field public mLocation:Ljava/lang/String;

.field public mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 413
    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->reset()V

    .line 414
    return-void
.end method


# virtual methods
.method public isFileNameValid()Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 448
    .local v0, retval:Z
    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mTrackName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mArtistName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 449
    const/4 v0, 0x1

    .line 451
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    .line 418
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    .line 419
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mTrackName:Ljava/lang/String;

    .line 420
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mArtistName:Ljava/lang/String;

    .line 421
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mAlbumName:Ljava/lang/String;

    .line 422
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mGenre:Ljava/lang/String;

    .line 423
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mComposer:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mLocation:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setItems(Landroid/content/Intent;)V
    .locals 4
    .parameter "i"

    .prologue
    const-wide/16 v2, 0x0

    .line 429
    const-string v0, "duration"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    .line 431
    iget-wide v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 432
    iput-wide v2, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mDuration:J

    .line 434
    :cond_0
    const-string v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mFileName:Ljava/lang/String;

    .line 435
    const-string v0, "trackname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mTrackName:Ljava/lang/String;

    .line 436
    const-string v0, "artistname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mArtistName:Ljava/lang/String;

    .line 437
    const-string v0, "albumname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mAlbumName:Ljava/lang/String;

    .line 438
    const-string v0, "genre"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mGenre:Ljava/lang/String;

    .line 439
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mComposer:Ljava/lang/String;

    .line 440
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->mLocation:Ljava/lang/String;

    .line 441
    return-void
.end method
