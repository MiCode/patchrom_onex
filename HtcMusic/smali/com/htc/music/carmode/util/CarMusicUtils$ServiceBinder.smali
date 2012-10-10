.class Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "CarMusicUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/util/CarMusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 403
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 405
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 408
    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 409
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->initAlbumArtCache()V

    .line 410
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 413
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 419
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 420
    return-void
.end method
