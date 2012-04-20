.class public Lcom/android/camera/rotate/RotateToast;
.super Ljava/lang/Object;
.source "RotateToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/rotate/RotateToast$TN;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "RotateToast"

.field static final localLOGV:Z

.field static mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

.field private static sService:Landroid/app/NotificationManager;


# instance fields
.field private bShowing:Z

.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field final mTN:Lcom/android/camera/rotate/RotateToast$TN;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mX:I

.field mY:I

.field private toast_orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mHandler:Landroid/os/Handler;

    .line 43
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 44
    const/16 v1, 0x51

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    .line 60
    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/android/camera/rotate/RotateToast$TN;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateToast$TN;-><init>(Lcom/android/camera/rotate/RotateToast;)V

    iput-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "toast_y_offset"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/rotate/RotateToast;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/rotate/RotateToast;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    return p1
.end method

.method private static getService(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 316
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/NotificationManager;

    .line 321
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/NotificationManager;

    .line 321
    sget-object v0, Lcom/android/camera/rotate/RotateToast;->sService:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/android/camera/rotate/RotateToast;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;
    .locals 9
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 215
    new-instance v2, Lcom/android/camera/rotate/RotateToast;

    invoke-direct {v2, p0}, Lcom/android/camera/rotate/RotateToast;-><init>(Landroid/content/Context;)V

    .line 217
    .local v2, result:Lcom/android/camera/rotate/RotateToast;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 219
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v5, 0x7f030048

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 220
    .local v4, v:Landroid/view/View;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "message"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, id:I
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 222
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v5, Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-direct {v5, p0}, Lcom/android/camera/rotate/RotateLinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    .line 225
    sget-object v5, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v5, v4}, Lcom/android/camera/rotate/RotateLinearLayout;->addView(Landroid/view/View;)V

    .line 227
    sget-object v5, Lcom/android/camera/rotate/RotateToast;->mRotateLayout:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v5, v2, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    .line 228
    iput p2, v2, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 230
    return-object v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast$TN;->hide()V

    .line 106
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mX:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    .line 131
    return-void
.end method

.method public setGravity(III)V
    .locals 0
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 176
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    .line 177
    iput p2, p0, Lcom/android/camera/rotate/RotateToast;->mX:I

    .line 178
    iput p3, p0, Lcom/android/camera/rotate/RotateToast;->mY:I

    .line 179
    return-void
.end method

.method public setMargin(FF)V
    .locals 0
    .parameter "horizontalMargin"
    .parameter "verticalMargin"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->mHorizontalMargin:F

    .line 153
    iput p2, p0, Lcom/android/camera/rotate/RotateToast;->mVerticalMargin:F

    .line 154
    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 305
    iget v0, p1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    invoke-virtual {p0, v0}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 306
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This Toast was not created with Toast.makeText()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "message"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, id:I
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 267
    .local v1, tv:Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 268
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This Toast was not created with Toast.makeText()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setcurrentOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 325
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 326
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 72
    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/rotate/RotateToast;->bShowing:Z

    .line 79
    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/rotate/RotateToast;->getService(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    check-cast v1, Landroid/app/HtcIfNotificationManager;

    .line 81
    .local v1, service:Landroid/app/HtcIfNotificationManager;
    iget-object v3, p0, Lcom/android/camera/rotate/RotateToast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/rotate/RotateToast;->mTN:Lcom/android/camera/rotate/RotateToast$TN;

    .line 87
    .local v2, tn:Lcom/android/camera/rotate/RotateToast$TN;
    :try_start_0
    iget v3, p0, Lcom/android/camera/rotate/RotateToast;->mDuration:I

    invoke-interface {v1, v0, v2, v3}, Landroid/app/HtcIfNotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public updateOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 277
    iput p1, p0, Lcom/android/camera/rotate/RotateToast;->toast_orientation:I

    .line 279
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/camera/rotate/RotateToast;->mNextView:Landroid/view/View;

    check-cast v1, Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    .line 284
    .local v0, diff:I
    packed-switch v0, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 286
    :pswitch_0
    const/16 v1, 0x51

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 289
    :pswitch_1
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 292
    :pswitch_2
    const/16 v1, 0x31

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 295
    :pswitch_3
    const/16 v1, 0x15

    iput v1, p0, Lcom/android/camera/rotate/RotateToast;->mGravity:I

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
