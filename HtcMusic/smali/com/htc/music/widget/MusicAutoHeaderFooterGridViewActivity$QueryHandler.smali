.class public Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;
.super Lcom/htc/music/util/DlArtAsyncQueryHandler;
.source "MusicAutoHeaderFooterGridViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V
    .locals 2
    .parameter
    .parameter "res"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    .line 714
    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/music/util/DlArtAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;ZZ)V

    .line 715
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 719
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "@@@@ onQueryComplete()"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p3, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 730
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z
    invoke-static {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->access$102(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)Z

    .line 731
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;->this$0:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setCategoryProgressVisible(Z)V

    .line 735
    :cond_0
    return-void
.end method
