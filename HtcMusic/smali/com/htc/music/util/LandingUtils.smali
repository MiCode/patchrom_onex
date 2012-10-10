.class public Lcom/htc/music/util/LandingUtils;
.super Ljava/lang/Object;
.source "LandingUtils.java"


# static fields
.field public static final PACKAGE_NAME_AMAZON:Ljava/lang/String; = "com.amazon.mp3"

.field public static final PACKAGE_NAME_BPM:Ljava/lang/String; = "com.htc.bpmrss"

.field public static final PACKAGE_NAME_DEEZER:Ljava/lang/String; = "deezer.android.app"

.field public static final PACKAGE_NAME_DOUBAN_FM:Ljava/lang/String; = "com.douban.radio"

.field public static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field public static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field public static final PACKAGE_NAME_KKBOX:Ljava/lang/String; = "com.skysoft.kkbox.android"

.field public static final PACKAGE_NAME_KUWO:Ljava/lang/String; = "cn.kuwo.player"

.field public static final PACKAGE_NAME_LASTFM:Ljava/lang/String; = "fm.last.android"

.field public static final PACKAGE_NAME_MOG:Ljava/lang/String; = "com.mog.android"

.field public static final PACKAGE_NAME_PANDORA:Ljava/lang/String; = "com.pandora.android"

.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.qqmusic"

.field public static final PACKAGE_NAME_RDIO:Ljava/lang/String; = "com.rdio.android.ui"

.field public static final PACKAGE_NAME_SEVENDIGITAL:Ljava/lang/String; = "uk.co.sevendigital.android"

.field public static final PACKAGE_NAME_SIMFY:Ljava/lang/String; = "de.simfy.androidapp"

.field public static final PACKAGE_NAME_SINA:Ljava/lang/String; = "cn.sina.music"

.field public static final PACKAGE_NAME_SLACKER:Ljava/lang/String; = "com.slacker.radio"

.field public static final PACKAGE_NAME_SOUNDHOUND:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier"

.field public static final PACKAGE_NAME_SOUNDHOUND_FREEMIUM:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier.freemium"

.field public static final PACKAGE_NAME_SPOTIFY:Ljava/lang/String; = "com.spotify.mobile.android.ui"

.field public static final PACKAGE_NAME_SPRINT:Ljava/lang/String; = "com.sprint.android.musicplus2033"

.field public static final PACKAGE_NAME_TUNEIN:Ljava/lang/String; = "tunein.player"

.field public static final PACKAGE_NAME_TUNEIN_PRO:Ljava/lang/String; = "radiotime.player"

.field public static final PACKAGE_NAME_VERIZON:Ljava/lang/String; = "com.htc.vmm"

.field public static final PACKAGE_NAME_VODAFONE:Ljava/lang/String; = "com.vodafone.android.app.music"

.field public static final PACKAGE_NAME_ZDIGITAL:Ljava/lang/String; = "au.com.zdigital.android"

.field private static final TAG:Ljava/lang/String; = "[LandingUtils]"

.field public static final TYPE_AUTO_DETECT:I = 0x2

.field public static final TYPE_LIBRARY:I = 0x0

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_PRELOAD:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, autoAddList:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 242
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const/16 v1, 0x13

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.douban.radio"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cn.kuwo.player"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.qqmusic"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cn.sina.music"

    aput-object v2, v0, v1

    .line 304
    .restart local v0       #autoAddList:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 305
    const-string v1, "[LandingUtils]"

    const-string v2, "getAutoAddList, autoAddList = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    return-object v0

    .line 55
    :sswitch_0
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.vmm"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 73
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 76
    :sswitch_1
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.vodafone.android.app.music"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 94
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 97
    :sswitch_2
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.bpmrss"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 115
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 118
    :sswitch_3
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.sprint.android.musicplus2033"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 136
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 139
    :sswitch_4
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 156
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    :sswitch_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 160
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 181
    :sswitch_6
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 199
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 202
    :sswitch_7
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 219
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 222
    :sswitch_8
    const/16 v1, 0xb

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v3

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v4

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v5

    const-string v1, "com.rdio.android.ui"

    aput-object v1, v0, v6

    const-string v1, "com.spotify.mobile.android.ui"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 239
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 264
    :cond_2
    const-string v1, "ro.cid"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/LandingUtils;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 283
    :cond_3
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_5
        0x66 -> :sswitch_7
        0x73 -> :sswitch_4
        0x94 -> :sswitch_3
        0x9b -> :sswitch_6
        0x9f -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
        0x10e -> :sswitch_8
    .end sparse-switch
.end method

.method public static getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .parameter "context"
    .parameter "autoAddList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    const-string v18, "LandingPage"

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 359
    .local v13, preferences:Landroid/content/SharedPreferences;
    const-string v18, "launchitemlist"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, launchItemListStr:Ljava/lang/String;
    const-string v18, "launchtypelist"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, launchTypeListStr:Ljava/lang/String;
    const-string v18, "launchclassnamelist"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 363
    .local v9, launchClassNameListStr:Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v15, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-static {v10}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, pkgNameArray:[Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, clsNameArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 368
    .local v17, typeArray:[Ljava/lang/String;
    new-instance v16, Lcom/htc/music/ShortcutPageInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/ShortcutPageInfo;-><init>(Landroid/content/Context;)V

    .line 370
    .local v16, shortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;
    if-eqz v12, :cond_1

    .line 371
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 372
    new-instance v14, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v14}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 373
    .local v14, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v18, v12, v6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 374
    aget-object v18, v4, v6

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 375
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    .line 379
    :goto_1
    aget-object v18, v17, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 380
    aget-object v18, v12, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 381
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 377
    :cond_0
    aget-object v18, v4, v6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v6           #i:I
    .end local v14           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/htc/music/util/LandingUtils;->getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, addList:[Ljava/lang/String;
    array-length v5, v3

    .line 389
    .local v5, count:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    if-ge v6, v5, :cond_5

    .line 390
    const/4 v7, 0x0

    .line 391
    .local v7, isExist:Z
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 392
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/music/ShortcutInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    aget-object v19, v3, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 393
    const/4 v7, 0x1

    .line 397
    :cond_2
    if-nez v7, :cond_3

    .line 398
    new-instance v14, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v14}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 399
    .restart local v14       #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    aget-object v18, v3, v6

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 400
    aget-object v18, v3, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 401
    aget-object v18, v3, v6

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/htc/music/ShortcutInfo;->setIntent(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v14           #shortcutInfo:Lcom/htc/music/ShortcutInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 391
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 406
    .end local v7           #isExist:Z
    .end local v8           #j:I
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 408
    return-object v15
.end method

.method public static getShortcutInfoListByContentValues(Landroid/content/Context;)[Landroid/content/ContentValues;
    .locals 7
    .parameter "context"

    .prologue
    .line 412
    const-string v3, "[LandingUtils]"

    const-string v4, "getShortcutInfoListByContentValues start"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 414
    .local v2, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/content/ContentValues;

    .line 416
    .local v0, contentValuesList:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 417
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    aput-object v3, v0, v1

    .line 418
    aget-object v4, v0, v1

    const-string v5, "pkgName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    aget-object v4, v0, v1

    const-string v5, "clsName"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    aget-object v4, v0, v1

    const-string v5, "type"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 423
    aget-object v4, v0, v1

    const-string v5, "customizedIntentUri"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    const-string v4, "com.htc.vmm"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v3}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    aget-object v3, v0, v1

    const-string v4, "customizedAppName"

    const v5, 0x7f070003

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 431
    :cond_2
    const-string v3, "[LandingUtils]"

    const-string v4, "getShortcutInfoListByContentValues end"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v0
.end method

.method private static getUpdatedAddList(Landroid/content/SharedPreferences;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "preferences"
    .parameter "autoAddList"

    .prologue
    .line 460
    const-string v5, "removelist"

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, removeListStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, removeList:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/LandingUtils;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 466
    array-length v1, v3

    .line 467
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 468
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-static {v0}, Lcom/htc/music/util/LandingUtils;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isChinaSku()Z
    .locals 2

    .prologue
    .line 328
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMetroPCSSku()Z
    .locals 2

    .prologue
    .line 353
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOrangeFRSku(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneCID"

    .prologue
    .line 343
    if-eqz p0, :cond_0

    .line 344
    const-string v0, "ORANG202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintSku()Z
    .locals 2

    .prologue
    .line 324
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOUSSku()Z
    .locals 2

    .prologue
    .line 339
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTelstraSku()Z
    .locals 2

    .prologue
    .line 320
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    .prologue
    .line 312
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVodaFoneSku()Z
    .locals 2

    .prologue
    .line 316
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZdigital()Z
    .locals 2

    .prologue
    .line 332
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strArray"

    .prologue
    .line 437
    if-nez p0, :cond_0

    .line 438
    const-string v3, "[LandingUtils]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v3, 0x0

    .line 447
    :goto_0
    return-object v3

    .line 441
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 442
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 443
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 444
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 451
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    const-string v1, "[LandingUtils]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    .line 455
    :cond_1
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method
