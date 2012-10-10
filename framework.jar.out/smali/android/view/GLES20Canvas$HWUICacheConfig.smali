.class Landroid/view/GLES20Canvas$HWUICacheConfig;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HWUICacheConfig"
.end annotation


# static fields
.field private static mConfigStr:Ljava/lang/String;

.field private static mIsNeedDeferredHWUICach:Z

.field private static mIsNeedDeferredHWUICacheStr:Z

.field private static mMaxCacheLayerSize:I

.field private static mMaxTextureCacheSize:I

.field private static mTextureSizeFlushRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1233
    const/high16 v0, 0x180

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 1234
    const/high16 v0, 0x100

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 1235
    const v0, 0x3f19999a

    sput v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 1236
    sput-boolean v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    .line 1238
    const-string v0, ""

    sput-object v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mConfigStr:Ljava/lang/String;

    .line 1239
    sput-boolean v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICacheStr:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWUICache()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1213
    sget-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    if-ne v0, v1, :cond_1

    .line 1214
    sget v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    sget v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    sget v2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    #calls: Landroid/view/GLES20Canvas;->nSetCacheConfig(IIF)V
    invoke-static {v0, v1, v2}, Landroid/view/GLES20Canvas;->access$100(IIF)V

    .line 1215
    sput-boolean v3, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    sget-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICacheStr:Z

    if-ne v0, v1, :cond_0

    .line 1217
    sget-object v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mConfigStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mConfigStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #calls: Landroid/view/GLES20Canvas;->nSetCacheConfig(Ljava/lang/String;II)V
    invoke-static {v0, v3, v1}, Landroid/view/GLES20Canvas;->access$200(Ljava/lang/String;II)V

    .line 1218
    sput-boolean v3, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICacheStr:Z

    goto :goto_0
.end method

.method public static setHWUICacheConfig(IIF)V
    .locals 1
    .parameter "maxTextureCache"
    .parameter "maxLayerCache"
    .parameter "textureFlushRatio"

    .prologue
    .line 1222
    sput p0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 1223
    sput p1, Landroid/view/GLES20Canvas$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 1224
    sput p2, Landroid/view/GLES20Canvas$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 1225
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICach:Z

    .line 1226
    return-void
.end method

.method public static setHWUICacheConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "configStr"

    .prologue
    .line 1229
    sput-object p0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mConfigStr:Ljava/lang/String;

    .line 1230
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/GLES20Canvas$HWUICacheConfig;->mIsNeedDeferredHWUICacheStr:Z

    .line 1231
    return-void
.end method
