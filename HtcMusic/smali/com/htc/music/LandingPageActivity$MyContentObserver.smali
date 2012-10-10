.class Lcom/htc/music/LandingPageActivity$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$MyContentObserver;->this$0:Lcom/htc/music/LandingPageActivity;

    .line 1890
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1891
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1895
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$MyContentObserver;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbumAsync()V
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$3600(Lcom/htc/music/LandingPageActivity;)V

    .line 1901
    return-void
.end method
