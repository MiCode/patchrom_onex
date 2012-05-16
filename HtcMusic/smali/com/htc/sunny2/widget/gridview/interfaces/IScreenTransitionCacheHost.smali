.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost;
.super Ljava/lang/Object;
.source "IScreenTransitionCacheHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;
    }
.end annotation


# static fields
.field public static final RENDER_FLAG:I = 0x1


# virtual methods
.method public abstract onLayoutChangedIRT(II)V
.end method

.method public abstract onUpdatePositionAnimation()Z
.end method

.method public abstract postConfigurationUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
.end method

.method public abstract postScreenTransitionUpdate(Landroid/graphics/Rect;ZLcom/htc/sunny2/widget/gridview/interfaces/IScreenTransitionCacheHost$OnTransitionCacheListener;)V
.end method
