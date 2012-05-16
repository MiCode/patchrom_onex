.class public interface abstract Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;
.super Ljava/lang/Object;
.source "MusicGridViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewItemImageGetter"
.end annotation


# virtual methods
.method public abstract getThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Lcom/htc/sunny2/Texture;
.end method

.method public abstract isGridViewInitFinish()Z
.end method

.method public abstract isUseExtraBackgroundImage(ILcom/htc/sunny2/IMediaData;I)Z
.end method

.method public abstract isUseExtraThumbnailImage(ILcom/htc/sunny2/IMediaData;I)Z
.end method
