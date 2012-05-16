.class Lcom/htc/music/DMCServiceManager$DMCItemInfo;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCItemInfo"
.end annotation


# instance fields
.field public lCount:J

.field public lCurrentIndex:J

.field public szAlbum:Ljava/lang/String;

.field public szArtist:Ljava/lang/String;

.field public szDate:Ljava/lang/String;

.field public szThumbPath:Ljava/lang/String;

.field public szTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DMCServiceManager;Lcom/htc/music/DMCServiceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;-><init>(Lcom/htc/music/DMCServiceManager;)V

    return-void
.end method


# virtual methods
.method public computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 219
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 220
    .local v4, w:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 222
    .local v3, h:I
    div-int v2, v4, p2

    .line 223
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 224
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return v5

    .line 229
    :cond_0
    if-le v0, v5, :cond_1

    .line 230
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 231
    add-int/lit8 v0, v0, -0x1

    .line 234
    :cond_1
    if-le v0, v5, :cond_2

    .line 235
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 236
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 239
    goto :goto_0
.end method

.method protected getDLNAThumbBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "filepath"
    .parameter "nSize"

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 245
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v9, 0x0

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$202(Lcom/htc/music/DMCServiceManager;Z)Z

    .line 247
    const/4 v2, 0x0

    .line 250
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "content://dlna/images"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 254
    const-string v8, "[DMCServiceManager]"

    const-string v9, "[GetThumb]: No provider..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v8, 0x0

    .line 328
    .end local v2           #cpClient:Landroid/content/ContentProviderClient;
    :goto_0
    return-object v8

    .line 258
    .restart local v2       #cpClient:Landroid/content/ContentProviderClient;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 260
    .local v7, uri:Landroid/net/Uri;
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb] Uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v8, "r"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v6, 0x0

    .line 267
    .local v6, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 269
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 275
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image dimension: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, nDecodeSize:I
    const/16 v8, 0x12c

    if-ge p2, v8, :cond_4

    .line 282
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v9, 0x0

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$202(Lcom/htc/music/DMCServiceManager;Z)Z

    .line 283
    move v4, p2

    .line 297
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 299
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 301
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 308
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: image decoded: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .end local v0           #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .end local v2           #cpClient:Landroid/content/ContentProviderClient;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_3
    move-object v8, v1

    .line 328
    goto/16 :goto_0

    .line 285
    .restart local v0       #afDescriptor:Landroid/content/res/AssetFileDescriptor;
    .restart local v2       #cpClient:Landroid/content/ContentProviderClient;
    .restart local v4       #nDecodeSize:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_4
    :try_start_1
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_5

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_5

    .line 287
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v9, 0x0

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$202(Lcom/htc/music/DMCServiceManager;Z)Z

    .line 288
    const/16 v4, 0x12c

    goto :goto_1

    .line 290
    :cond_5
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v9, 0x1

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurThumbHQ:Z
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$202(Lcom/htc/music/DMCServiceManager;Z)Z

    .line 291
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 292
    const/16 v4, 0x258

    goto :goto_1

    .line 294
    :cond_6
    const/16 v4, 0x400

    goto :goto_1

    .line 318
    .end local v4           #nDecodeSize:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 319
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GetThumb]: thumb failed (using default):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected loadInfo()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "DMCItemInfo"

    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, infPref:Landroid/content/SharedPreferences;
    const-string v1, "szTitle"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 175
    const-string v1, "szArtist"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 176
    const-string v1, "szAlbum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 177
    const-string v1, "szDate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 178
    const-string v1, "szThumbPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 179
    const-string v1, "lCount"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    .line 180
    const-string v1, "lCurrentIndex"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    .line 181
    return-void
.end method

.method protected refreshInfo()V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v1}, Lcom/htc/music/DMCServiceManager;->getCurDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 189
    .local v0, dts:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 194
    .end local v0           #dts:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szAlbum:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 205
    :cond_2
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szDate:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected refreshListIndex()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 333
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshListIndex cur mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v10}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 335
    :cond_0
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v9, ""

    #setter for: Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$302(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v8

    if-nez v8, :cond_6

    .line 349
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 351
    .local v3, nCurIndexID:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 396
    .end local v3           #nCurIndexID:I
    :cond_1
    :goto_1
    return-void

    .line 337
    :cond_2
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/htc/music/DMCServiceManager;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/music/DMCServiceManager;->access$302(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 353
    .restart local v3       #nCurIndexID:I
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, szCurIndexID:Ljava/lang/String;
    const-string v8, "[DMCServiceManager]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ML curContent(indexid):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$800(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v6, :cond_5

    move v1, v0

    .line 358
    .local v1, bCteChanged:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 359
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/htc/music/DMCServiceManager;->access$802(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurIndex:I
    invoke-static {v7, v8}, Lcom/htc/music/DMCServiceManager;->access$902(Lcom/htc/music/DMCServiceManager;I)I

    .line 362
    :cond_4
    if-eqz v1, :cond_1

    .line 363
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->SavePref()Z
    invoke-static {v7}, Lcom/htc/music/DMCServiceManager;->access$1000(Lcom/htc/music/DMCServiceManager;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 388
    .end local v1           #bCteChanged:Z
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 389
    .local v2, e:Ljava/lang/NullPointerException;
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->isServiceHealthy()Z
    invoke-static {v7}, Lcom/htc/music/DMCServiceManager;->access$1200(Lcom/htc/music/DMCServiceManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 390
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v3       #nCurIndexID:I
    .restart local v6       #szCurIndexID:Ljava/lang/String;
    :cond_5
    move v1, v7

    .line 357
    goto :goto_2

    .line 364
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 365
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, szCurContentID:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$700(Lcom/htc/music/DMCServiceManager;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v9}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, szCurContainerID:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 375
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$800(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v5, :cond_a

    move v1, v0

    .line 376
    .restart local v1       #bCteChanged:Z
    :goto_3
    iget-object v8, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/DMCServiceManager;->access$1100(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v8

    if-eq v8, v4, :cond_b

    .line 378
    .local v0, bCtaChanged:Z
    :goto_4
    const-string v7, "[DMCServiceManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v7, "[DMCServiceManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    if-eqz v1, :cond_7

    .line 382
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurContentID:Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/htc/music/DMCServiceManager;->access$802(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    :cond_7
    if-eqz v0, :cond_8

    .line 384
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurContainerID:Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/htc/music/DMCServiceManager;->access$1102(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_1

    .line 386
    :cond_9
    iget-object v7, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->SavePref()Z
    invoke-static {v7}, Lcom/htc/music/DMCServiceManager;->access$1000(Lcom/htc/music/DMCServiceManager;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 391
    .end local v0           #bCtaChanged:Z
    .end local v1           #bCteChanged:Z
    .end local v4           #szCurContainerID:Ljava/lang/String;
    .end local v5           #szCurContentID:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 393
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v4       #szCurContainerID:Ljava/lang/String;
    .restart local v5       #szCurContentID:Ljava/lang/String;
    :cond_a
    move v1, v7

    .line 375
    goto :goto_3

    .restart local v1       #bCteChanged:Z
    :cond_b
    move v0, v7

    .line 376
    goto :goto_4
.end method

.method protected saveInfo()V
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "DMCItemInfo"

    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, infPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szTitle"

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szArtist"

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szAlbum"

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szAlbum:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szDate"

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szDate:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "szThumbPath"

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lCount"

    iget-wide v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lCurrentIndex"

    iget-wide v3, p0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method
