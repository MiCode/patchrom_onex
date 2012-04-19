.class public Lcom/htc/view/animation/HtcBaseGlTransAnim;
.super Landroid/view/animation/Animation;
.source "HtcBaseGlTransAnim.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/view/animation/HtcBaseGlTransAnim;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_FAMILY:Z = false

.field public static final TAG:Ljava/lang/String; = "HtcGlAnimation"

.field public static final TYPE_LAYER_ENTER:I = 0x3

.field public static final TYPE_LAYER_EXIT:I = 0x4

.field public static final TYPE_TRANSIT_CLOSE:I = 0x2

.field public static final TYPE_TRANSIT_DEFAULT:I = 0x0

.field public static final TYPE_TRANSIT_OPEN:I = 0x1


# instance fields
.field private final mDefaultDuration:J

.field private mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

.field private mIsHideStatusBarArea:Z

.field private mIsMainWindow:Z

.field private mLayerType:I

.field private mOrientation:Ljava/lang/String;

.field private mProgress:F

.field private mStatusBarH:I

.field private mTransitType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "debug_anim_family"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->DEBUG_ANIM_FAMILY:Z

    .line 356
    new-instance v0, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim$1;-><init>()V

    sput-object v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    new-instance v0, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 34
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 48
    iput-wide v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 80
    invoke-virtual {p0, v2, v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v2, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v2}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 34
    iput v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 48
    iput-wide v4, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 54
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 57
    iput-boolean v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 66
    sget-object v2, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    .local v1, a:Landroid/content/res/TypedArray;
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, OverrideIsOpen:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const-wide/16 v2, 0x12c

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    new-instance v0, Lcom/htc/view/animation/HtcGlAnimType;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlAnimType;-><init>()V

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    .line 34
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 48
    iput-wide v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mDefaultDuration:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 57
    iput-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 344
    invoke-virtual {p0, v2, v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setAnimDuration(J)V

    .line 345
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;
    .locals 1
    .parameter "in"

    .prologue
    .line 368
    invoke-static {p0}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Landroid/os/Parcel;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 235
    iput p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mProgress:F

    .line 236
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public encodeGlobalParamsToArray()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 283
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    .line 286
    .local v0, mGlAttributeSet:[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    sget-object v1, Lcom/htc/view/animation/HtcGlAnimType;->mAnimTypeMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v3, v3, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 289
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-ne v1, v4, :cond_0

    .line 290
    const-string/jumbo v1, "open"

    aput-object v1, v0, v4

    .line 300
    :goto_0
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v1, v6, :cond_2

    .line 301
    const-string v1, "enter"

    aput-object v1, v0, v5

    .line 311
    :goto_1
    iget-object v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    aput-object v1, v0, v6

    .line 314
    iget-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 318
    iget-boolean v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    if-eqz v1, :cond_4

    .line 319
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 324
    :goto_2
    return-object v0

    .line 291
    :cond_0
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-ne v1, v5, :cond_1

    .line 292
    const-string v1, "close"

    aput-object v1, v0, v4

    goto :goto_0

    .line 296
    :cond_1
    const-string v1, "N/A"

    aput-object v1, v0, v4

    goto :goto_0

    .line 302
    :cond_2
    iget v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v1, v7, :cond_3

    .line 303
    const-string v1, "exit"

    aput-object v1, v0, v5

    goto :goto_1

    .line 307
    :cond_3
    const-string v1, "N/A"

    aput-object v1, v0, v4

    goto :goto_1

    .line 321
    :cond_4
    const-string v1, "0"

    aput-object v1, v0, v8

    goto :goto_2
.end method

.method public encodeSpecificParamsToArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimationType()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v0, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    return v0
.end method

.method public getCurrentProgress()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mProgress:F

    return v0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    return v0
.end method

.method public getTransitType()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    return v0
.end method

.method public getZAdjustment()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 248
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 250
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v2, v5, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 254
    goto :goto_0

    :cond_2
    move v0, v1

    .line 256
    goto :goto_0

    .line 259
    :cond_3
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 261
    iget v2, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-eq v2, v4, :cond_0

    .line 264
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 265
    goto :goto_0

    :cond_4
    move v0, v1

    .line 267
    goto :goto_0

    :cond_5
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public monitorTransAnim(Z)V
    .locals 0
    .parameter "isStart"

    .prologue
    .line 337
    return-void
.end method

.method protected setAnimDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    return-void
.end method

.method protected setAnimationType(I)V
    .locals 1
    .parameter "_animType"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iput p1, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    .line 98
    return-void
.end method

.method public setEnterOrExit(Z)V
    .locals 1
    .parameter "isEnter"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mLayerType:I

    goto :goto_0
.end method

.method public setIsHideStatusBarArea(Z)V
    .locals 0
    .parameter "isHideStatusBarArea"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsHideStatusBarArea:Z

    .line 196
    return-void
.end method

.method public setIsMainWindow(Z)V
    .locals 0
    .parameter "isMainWindow"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mIsMainWindow:Z

    .line 191
    return-void
.end method

.method public setOpenOrClose(Ljava/lang/String;)V
    .locals 2
    .parameter "_openOrClose"

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string/jumbo v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 120
    :cond_4
    iput v1, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0
.end method

.method public setOpenOrClose(Z)V
    .locals 1
    .parameter "isOpen"

    .prologue
    .line 133
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 167
    :pswitch_0
    const-string v0, "PORTRAIT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 171
    :pswitch_1
    const-string v0, "LANDSCAPE_LEFT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 175
    :pswitch_2
    const-string v0, "PORTRAIT_REVERSE"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "LANDSCAPE_RIGHT"

    iput-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mOrientation:Ljava/lang/String;

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStatusBarRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "statusbar"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mStatusBarH:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mHtcGlAnimType:Lcom/htc/view/animation/HtcGlAnimType;

    iget v0, v0, Lcom/htc/view/animation/HtcGlAnimType;->mAnimType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Lcom/htc/view/animation/HtcBaseGlTransAnim;->mTransitType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    return-void
.end method
