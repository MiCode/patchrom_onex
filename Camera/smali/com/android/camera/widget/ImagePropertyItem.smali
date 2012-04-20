.class public Lcom/android/camera/widget/ImagePropertyItem;
.super Landroid/widget/LinearLayout;
.source "ImagePropertyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;,
        Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;
    }
.end annotation


# static fields
.field public static final PROPERTY_LEVEL_NUMBER_MAX:I = 0x4

.field public static final PROPERTY_LEVEL_NUMBER_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImagePropertyItem"

.field public static final VALUE_BRIGHTNESS:I = 0x0

.field public static final VALUE_CONTRAST:I = 0x1

.field public static final VALUE_SATURATION:I = 0x2

.field public static final VALUE_SHARPNESS:I = 0x3


# instance fields
.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

.field private mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

.field private m_Context:Landroid/content/Context;

.field private m_Degree:Landroid/widget/ImageView;

.field private m_Icon:Landroid/widget/ImageView;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_PlusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_PrefName:Ljava/lang/String;

.field private m_Title:Landroid/widget/TextView;

.field private m_TypeValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 74
    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ImagePropertyItem;)Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->increaseLevel()V

    return-void
.end method

.method private decreaseLevel()V
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 347
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-gez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 335
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 336
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-le v0, v1, :cond_0

    .line 337
    iput v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private setBrightnessValue()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 252
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_brightness"

    iget v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 256
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 258
    return-void
.end method

.method private setContrastValue()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 264
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_contrast"

    iget v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 268
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v2, 0x0

    const-string v3, "contrast"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 275
    return-void
.end method

.method private setSaturationValue()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 281
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_saturation"

    iget v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v2, 0x0

    const-string v3, "saturation"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method private setSharpnessValue()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 298
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_shaprness"

    iget v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v2, 0x0

    const-string v3, "sharpness"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 309
    return-void
.end method


# virtual methods
.method public getDegreeImage(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 405
    :goto_0
    return v0

    .line 389
    :pswitch_0
    const v0, 0x7f020074

    .line 390
    goto :goto_0

    .line 392
    :pswitch_1
    const v0, 0x7f020073

    .line 393
    goto :goto_0

    .line 395
    :pswitch_2
    const v0, 0x7f020072

    .line 396
    goto :goto_0

    .line 398
    :pswitch_3
    const v0, 0x7f020075

    .line 399
    goto :goto_0

    .line 401
    :pswitch_4
    const v0, 0x7f020076

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initialize(ILcom/android/camera/CameraThread;)V
    .locals 9
    .parameter "value"
    .parameter "thread"

    .prologue
    const v3, 0x2080009

    const v2, 0x2080008

    const v1, 0x2080007

    const/4 v8, 0x0

    .line 94
    iput p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    .line 96
    iput-object p2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 97
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mCameraHandler:Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 100
    .local v7, li:Landroid/view/LayoutInflater;
    const v0, 0x7f03000f

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 103
    .local v6, base:Landroid/widget/LinearLayout;
    const v0, 0x7f08006a

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f08007c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 128
    const-string v0, "ImagePropertyItem"

    const-string v1, "initialize - Unknown value!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const-string v0, "pref_camera_brightness"

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PrefName:Ljava/lang/String;

    .line 132
    :goto_1
    const v0, 0x7f08007d

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    .line 133
    const v0, 0x7f080080

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    .line 135
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080010

    const v5, 0x208000f

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080003

    const v5, 0x2080002

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->updateLevel()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    .line 155
    const v0, 0x7f08007e

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$1;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$2;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const-string v0, "pref_camera_contrast"

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PrefName:Ljava/lang/String;

    goto/16 :goto_1

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const-string v0, "pref_camera_saturation"

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PrefName:Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const-string v0, "pref_camera_shaprness"

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PrefName:Ljava/lang/String;

    goto/16 :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final isDefaultLevel()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    packed-switch v0, :pswitch_data_0

    .line 232
    const-string v0, "ImagePropertyItem"

    const-string v1, "onLevelChanged - Unknown TypeValue!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;->onLevelChanged(Lcom/android/camera/widget/ImagePropertyItem;I)V

    .line 245
    :cond_0
    return-void

    .line 220
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setBrightnessValue()V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setContrastValue()V

    goto :goto_0

    .line 226
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSaturationValue()V

    goto :goto_0

    .line 229
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSharpnessValue()V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setOnButtonClickedListener(Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    .line 317
    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    .line 321
    return-void
.end method

.method public updateLevel()I
    .locals 8

    .prologue
    .line 358
    const/4 v4, 0x0

    .line 359
    .local v4, level_min:I
    const/4 v3, 0x4

    .line 360
    .local v3, level_max:I
    const/4 v6, 0x4

    div-int/lit8 v2, v6, 0x2

    .line 361
    .local v2, level_def:I
    move v1, v2

    .line 363
    .local v1, level:I
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v6, Lcom/android/camera/HTCCamera;

    iget-object v7, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PrefName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, str_level:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 370
    .end local v5           #str_level:Ljava/lang/String;
    :goto_0
    if-ge v1, v4, :cond_1

    .line 371
    move v1, v4

    .line 377
    :cond_0
    :goto_1
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "ImagePropertyItem"

    const-string v7, "updateLevel - get level failed!!"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    move v1, v2

    goto :goto_0

    .line 372
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    if-le v1, v3, :cond_0

    .line 373
    move v1, v3

    goto :goto_1
.end method
