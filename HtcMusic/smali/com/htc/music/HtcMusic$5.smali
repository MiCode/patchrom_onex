.class Lcom/htc/music/HtcMusic$5;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createVolumeDialog()V
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
    .line 663
    iput-object p1, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "brightness"
    .parameter "nProgress"
    .parameter "arg2"

    .prologue
    const/4 v5, 0x0

    .line 668
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2, p2}, Lcom/htc/music/IMediaPlaybackService;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    if-nez p2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.drawable.zzzz_icon_launcher_profile_silent"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 675
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 676
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v2, v5, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 689
    :goto_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetTimeout()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$600(Lcom/htc/music/HtcMusic;)V

    .line 690
    return-void

    .line 669
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 670
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 678
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode"

    invoke-static {v4}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 681
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.drawable.zzzz_icon_launcher_sound_display"

    invoke-static {v3}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 683
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 684
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    invoke-virtual {v2, v5, v0}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 686
    :cond_2
    iget-object v2, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v2, v2, Lcom/htc/music/HtcMusic;->mVolumeDialog:Lcom/htc/widget/HtcMultiSeekBarDialog;

    iget-object v3, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v3}, Lcom/htc/music/HtcMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "com.android.internal.R.drawable.zzzz_ic_lock_silent_mode_off"

    invoke-static {v4}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/htc/widget/HtcMultiSeekBarDialog;->setImageViewDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 694
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/music/HtcMusic$5;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$600(Lcom/htc/music/HtcMusic;)V

    .line 699
    return-void
.end method
