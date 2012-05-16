.class public Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
.super Ljava/lang/Object;
.source "MusicGridViewItemParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    }
.end annotation


# static fields
.field public static final BACKGROUND:I = 0x1

.field public static final ITEM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewItemParams]"

.field public static final TEXTLAYOUT:I = 0x4

.field public static final THUMBNAIL:I = 0x3


# instance fields
.field private itemH:I

.field private itemW:I

.field private mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mContext:Landroid/content/Context;

.field private mSelector:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

.field private numFolderImage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 29
    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    .line 40
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v3, -0x1

    .line 224
    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    if-gtz v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 228
    const-string v2, "[MusicGridViewItemParams]"

    const-string v3, "mContext is null while trying to getBitmapBoundary"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    if-ne v2, v3, :cond_0

    .line 232
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 234
    .local v1, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 235
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 236
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 237
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[MusicGridViewItemParams]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable get bitmap boundary from file, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iput v2, p1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, itemParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 185
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 186
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 188
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 189
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 190
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    iput v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    .line 191
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->clone()Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    move-result-object v0

    return-object v0
.end method

.method public cloneViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .locals 3
    .parameter "type"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 74
    :pswitch_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 76
    .local v1, oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :goto_1
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 77
    .local v0, newParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 78
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 79
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 80
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 81
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 82
    iget v2, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    iput v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    goto :goto_0

    .line 68
    .end local v0           #newParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .end local v1           #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 69
    .restart local v1       #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    goto :goto_1

    .line 71
    .end local v1           #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .line 72
    .restart local v1       #oldParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHeight(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    :goto_0
    return v0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMarginTop(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 172
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNumFolderImage()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->numFolderImage:I

    return v0
.end method

.method public getResId(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 157
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewItemParams(I)Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    .locals 1
    .parameter "type"

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 54
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 127
    :pswitch_0
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    :goto_0
    return v0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    iget v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setItemHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 195
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemH:I

    .line 196
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 199
    iput p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->itemW:I

    .line 200
    return-void
.end method

.method public setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V
    .locals 0
    .parameter "params"
    .parameter "type"

    .prologue
    .line 203
    packed-switch p2, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    .line 206
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mBackground:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemBoundary(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;)V

    .line 214
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mThumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 218
    :pswitch_3
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->mTextLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
