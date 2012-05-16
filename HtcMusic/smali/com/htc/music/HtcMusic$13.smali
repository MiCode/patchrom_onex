.class Lcom/htc/music/HtcMusic$13;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1308
    const-string v0, "MASD"

    const-string v1, "[ATS][com.htc.music][press_library][complete]"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, v0, Lcom/htc/music/HtcMusic;->mNowPLayingViewManager:Lcom/htc/music/NowPlayingViewHelper;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    .line 1312
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->updateTitle()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$2300(Lcom/htc/music/HtcMusic;)V

    .line 1333
    :goto_0
    return-void

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1700(Lcom/htc/music/HtcMusic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/HtcMusic;->isTooltipLaunched:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$1702(Lcom/htc/music/HtcMusic;Z)Z

    .line 1319
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->music_tooltip_preference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$1900(Lcom/htc/music/HtcMusic;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/HtcMusic;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/htc/music/HtcMusic;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1323
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$2000(Lcom/htc/music/HtcMusic;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->hint_layout_land:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$2000(Lcom/htc/music/HtcMusic;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$13;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startBrowserTabActivity()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$2400(Lcom/htc/music/HtcMusic;)V

    goto :goto_0
.end method
