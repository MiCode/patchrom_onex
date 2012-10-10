.class public Lcom/htc/music/ShortcutPageInfo;
.super Ljava/lang/Object;
.source "ShortcutPageInfo.java"


# instance fields
.field private mPreloadAutoDetectTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    .line 19
    invoke-direct {p0, p1}, Lcom/htc/music/ShortcutPageInfo;->initPreloadMap(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/htc/music/ShortcutPageInfo;->initPreloadAutoDetectTypeMap()V

    .line 21
    return-void
.end method

.method private initPreloadAutoDetectTypeMap()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.vmm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.vodafone.android.app.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.bpmrss"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.sprint.android.musicplus2033"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "radiotime.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "tunein.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.amazon.mp3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isZdigital()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "au.com.zdigital.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.skysoft.kkbox.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.google.android.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.rdio.android.ui"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.spotify.mobile.android.ui"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "deezer.android.app"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "de.simfy.androidapp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.mog.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.pandora.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "fm.last.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.slacker.radio"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.douban.radio"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "uk.co.sevendigital.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private initPreloadMap(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const v6, 0x7f020043

    const/high16 v5, 0x400

    .line 24
    const/4 v0, 0x0

    .line 27
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.htc.vmm"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.htc.vmm"

    const v3, 0x7f020050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vfmusic://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.vodafone.android.app.music"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.vodafone.android.app.music"

    const v3, 0x7f02004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.htc.bpmrss"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.bpmrss.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.htc.bpmrss"

    const v3, 0x7f020045

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sprint.android.musicplus2033"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.sprint.android.musicplus2033"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.sprint.android.musicplus2033"

    const v3, 0x7f02004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v3, "htc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier"

    const v3, 0x7f02004b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v3, "htc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.melodis.midomiMusicIdentifier.freemium"

    const v3, 0x7f02004a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "radiotime.player"

    const v3, 0x7f02004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "tunein.player"

    const v3, 0x7f02004d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.amazon.mp3"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.amazon.mp3"

    const v3, 0x7f020044

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isZdigital()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "au.com.zdigital.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    const-string v1, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "au.com.zdigital.android"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "au.com.zdigital.android"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.skysoft.kkbox.android"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.skysoft.kkbox.android.HOME_VIEWER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.skysoft.kkbox.android"

    const v3, 0x7f020048

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "com.google.android.music"

    const v3, 0x7f020047

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void

    .line 91
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "uk.co.sevendigital.android"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    const-string v1, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v2, "uk.co.sevendigital.android"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v2, "uk.co.sevendigital.android"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 160
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    return-void
.end method

.method public getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/music/ShortcutPageInfo;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method
