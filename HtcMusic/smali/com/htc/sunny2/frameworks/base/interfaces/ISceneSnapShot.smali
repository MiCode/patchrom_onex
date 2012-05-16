.class public interface abstract Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot;
.super Ljava/lang/Object;
.source "ISceneSnapShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;
    }
.end annotation


# virtual methods
.method public abstract getSceneSnapShot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end method

.method public abstract postSceneSnapShot(Landroid/graphics/Rect;)V
.end method

.method public abstract setSceneSnapShotListener(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneSnapShot$ISnapShotListener;)V
.end method
