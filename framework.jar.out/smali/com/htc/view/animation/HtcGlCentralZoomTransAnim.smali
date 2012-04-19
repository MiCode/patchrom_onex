.class public Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
.super Lcom/htc/view/animation/HtcBaseGlTransAnim;
.source "HtcGlCentralZoomTransAnim.java"


# instance fields
.field private final mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private final mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field protected mContentBottom:I

.field protected mContentLeft:I

.field protected mContentRight:I

.field protected mContentTop:I

.field protected mFooterBottom:I

.field protected mFooterLeft:I

.field protected mFooterRight:I

.field protected mFooterTop:I

.field protected mHeaderBottom:I

.field protected mHeaderLeft:I

.field protected mHeaderRight:I

.field protected mHeaderTop:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    .line 23
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    .line 25
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    .line 28
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    .line 30
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    .line 33
    const-string v0, "TRANSIT_CENTRAL_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 37
    const-string v0, "TRANSIT_CENTRAL_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 52
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setAnimationType(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    .line 23
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    .line 25
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    .line 28
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    .line 30
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    .line 33
    const-string v0, "TRANSIT_CENTRAL_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 37
    const-string v0, "TRANSIT_CENTRAL_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 47
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setAnimationType(I)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x5dd

    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;-><init>(Landroid/os/Parcel;)V

    .line 17
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    .line 18
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    .line 19
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    .line 20
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    .line 22
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    .line 23
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    .line 24
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    .line 25
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    .line 27
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    .line 28
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    .line 29
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    .line 30
    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    .line 33
    const-string v0, "TRANSIT_CENTRAL_ZOOM_ENTER"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 37
    const-string v0, "TRANSIT_CENTRAL_ZOOM_EXIT"

    invoke-static {v1, v3, v2, v0}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    .line 229
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setAnimationType(I)V

    .line 230
    return-void
.end method


# virtual methods
.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const/16 v4, 0xc

    new-array v3, v4, [Ljava/lang/String;

    .line 146
    .local v3, mGlAttributeSet:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 147
    .local v2, Header:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 148
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 149
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 150
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 161
    .local v0, Content:Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 162
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 163
    const/4 v4, 0x5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 164
    const/4 v4, 0x6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 165
    const/4 v4, 0x7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 174
    :goto_1
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v1

    .line 175
    .local v1, Footer:Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 176
    const/16 v4, 0x8

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 177
    const/16 v4, 0x9

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 178
    const/16 v4, 0xa

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 179
    const/16 v4, 0xb

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 187
    :goto_2
    return-object v3

    .line 153
    .end local v0           #Content:Landroid/graphics/Rect;
    .end local v1           #Footer:Landroid/graphics/Rect;
    :cond_0
    const-string v4, "0"

    aput-object v4, v3, v5

    .line 154
    const-string v4, "0"

    aput-object v4, v3, v6

    .line 155
    const-string v4, "0"

    aput-object v4, v3, v7

    .line 156
    const-string v4, "0"

    aput-object v4, v3, v8

    goto :goto_0

    .line 167
    .restart local v0       #Content:Landroid/graphics/Rect;
    :cond_1
    const-string v4, "0"

    aput-object v4, v3, v9

    .line 168
    const/4 v4, 0x5

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 169
    const/4 v4, 0x6

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 170
    const/4 v4, 0x7

    const-string v5, "0"

    aput-object v5, v3, v4

    goto :goto_1

    .line 181
    .restart local v1       #Footer:Landroid/graphics/Rect;
    :cond_2
    const/16 v4, 0x8

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 182
    const/16 v4, 0x9

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 183
    const/16 v4, 0xa

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 184
    const/16 v4, 0xb

    const-string v5, "0"

    aput-object v5, v3, v4

    goto :goto_2
.end method

.method public getContentArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 133
    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    if-ltz v1, :cond_1

    .line 134
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 121
    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    if-ltz v1, :cond_1

    .line 122
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderArea()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 109
    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    if-ltz v1, :cond_1

    .line 110
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    iget v2, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    iget v3, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    iget v4, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    const/4 v1, 0x3

    .line 192
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 203
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomEnterMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mCentralZoomExitMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    goto :goto_0
.end method

.method public setContentArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    .line 93
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    .line 94
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    .line 95
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    .line 103
    :cond_0
    return-void
.end method

.method public setFooterArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "_footer"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    .line 75
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    .line 76
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    .line 77
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    .line 85
    :cond_0
    return-void
.end method

.method public setHeaderArea(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "_header"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    .line 59
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    .line 61
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    .line 69
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mHeaderBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mContentBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->mFooterBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return-void
.end method
