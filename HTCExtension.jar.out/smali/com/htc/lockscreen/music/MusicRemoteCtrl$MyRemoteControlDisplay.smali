.class Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "MusicRemoteCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/music/MusicRemoteCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRemoteControlDisplay"
.end annotation


# instance fields
.field private mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    .line 73
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "generationId"
    .parameter "metadata"
    .parameter "bitmap"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "generationId"
    .parameter "bitmap"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 1
    .parameter "clientGeneration"
    .parameter "mediaIntent"
    .parameter "clearing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V

    .line 121
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "generationId"
    .parameter "metadata"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V

    .line 88
    return-void
.end method

.method public setPlaybackState(IIJ)V
    .locals 1
    .parameter "generationId"
    .parameter "state"
    .parameter "stateChangeTimeMs"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setPlaybackState(IIJ)V

    .line 80
    return-void
.end method

.method public setTransportControlFlags(II)V
    .locals 1
    .parameter "generationId"
    .parameter "flags"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/music/MusicRemoteCtrl$MyRemoteControlDisplay;->mWrapper:Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/music/MusicRemoteCtrl$RemoteControlDisplay;->setTransportControlFlags(II)V

    .line 96
    return-void
.end method
