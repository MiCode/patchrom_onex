.class public Lcom/htc/music/util/ScreenStatus;
.super Ljava/lang/Object;
.source "ScreenStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/ScreenStatus$1;,
        Lcom/htc/music/util/ScreenStatus$ScreenStatusReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[ScreenStatus]"

.field private static mRegisterActivity:Landroid/app/Activity;

.field private static mScreenStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    sput-object v0, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static registerReceiver(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 25
    sget-object v1, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    if-ne p0, v1, :cond_1

    .line 26
    const-string v1, "[ScreenStatus]"

    const-string v2, "No need to register the receiver !!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    sget-object v1, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 31
    sget-object v1, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/music/util/ScreenStatus;->unRegisterReceiver(Landroid/app/Activity;)V

    .line 34
    :cond_2
    sget-object v1, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/htc/music/util/ScreenStatus$ScreenStatusReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/music/util/ScreenStatus$ScreenStatusReceiver;-><init>(Lcom/htc/music/util/ScreenStatus$1;)V

    sput-object v1, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    sput-object p0, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    .line 39
    const-string v1, "[ScreenStatus]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver activity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenStatusReceiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unRegisterReceiver(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v0, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    if-eq p0, v0, :cond_1

    .line 45
    const-string v0, "[ScreenStatus]"

    const-string v1, "No need to unregister the receiver !!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v0, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "[ScreenStatus]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceiver activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenStatusReceiver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    sput-object v3, Lcom/htc/music/util/ScreenStatus;->mScreenStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    sput-object v3, Lcom/htc/music/util/ScreenStatus;->mRegisterActivity:Landroid/app/Activity;

    goto :goto_0
.end method
