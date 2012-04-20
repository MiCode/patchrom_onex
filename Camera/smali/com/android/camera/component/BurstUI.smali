.class public final Lcom/android/camera/component/BurstUI;
.super Lcom/android/camera/component/UIComponent;
.source "BurstUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/BurstUI$10;
    }
.end annotation


# static fields
.field public static final MSG_ADD_CONTENT_URI:I = 0x5

.field public static final MSG_BURST_COMPLETED:I = 0x3

.field public static final MSG_CAPTURE_START:I = 0x1

.field public static final MSG_PHOTO_SAVED:I = 0x4

.field public static final MSG_THUMB_CREATED:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst UI"


# instance fields
.field private linearLayoutThumbBar:Landroid/widget/LinearLayout;

.field m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

.field private m_BurstController:Lcom/android/camera/component/BurstController;

.field private m_CapturingInstanceID:J

.field private m_Inflater:Landroid/view/LayoutInflater;

.field private m_InstanceID:J

.field private m_IsModeEntered:Z

.field private m_IsResolutionSyncBackNeeded:Z

.field private m_IsRestartingPreviewNeeded:Z

.field private m_IsUIInitialized:Z

.field private m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

.field private m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

.field private m_ThumbnailHeight:I

.field private m_ThumbnailHeightWide:I

.field private m_ThumbnailWidth:I

.field private m_ThumbnailWidthWide:I

.field m_baseLayout:Landroid/view/View;

.field private m_burstReviewFrame:Landroid/widget/ImageView;

.field private m_burstReviewScreenHeightWide_l:I

.field private m_burstReviewScreenHeightWide_p:I

.field private m_burstReviewScreenHeight_l:I

.field private m_burstReviewScreenHeight_p:I

.field private m_burstReviewScreenWidthWide_p:I

.field private m_burstReviewScreenWidth_l:I

.field private m_burstReviewScreenWidth_p:I

.field private m_burstThumbBarHeight_l:I

.field private m_burstThumbBarHeight_p:I

.field private m_burstThumbBarPadding_l:I

.field private m_burstThumbBarPadding_p:I

.field private m_burstThumbBarWidth_l:I

.field private m_burstThumbBarWidth_p:I

.field private m_burstThumbItemMargin_l:I

.field private m_burstThumbItemMargin_p:I

.field private m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

.field private m_thumbnailItemHeightController_l:I

.field private m_thumbnailItemHeightController_p:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 127
    const-string v0, "Burst UI"

    const/4 v1, 0x1

    const v2, 0x7f08004e

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 128
    new-instance v0, Lcom/android/camera/component/BurstResolutionHandler;

    invoke-direct {v0}, Lcom/android/camera/component/BurstResolutionHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->autoInflateView(Z)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstUI;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/BurstUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/component/BurstResolutionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/BurstUI;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/BurstUI;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->hideThumbnailBar()V

    return-void
.end method

.method static synthetic access$804(Lcom/android/camera/component/BurstUI;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/BurstUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/camera/component/BurstUI;->showThunbmailBar(Z)V

    return-void
.end method

.method private getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method private hideThumbnailBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 358
    iget-boolean v5, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v5, :cond_0

    .line 378
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/camera/component/BurstUI;->showUI(Landroid/view/View;ZZ)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 370
    .local v2, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    invoke-virtual {v2}, Lcom/android/camera/widget/ImageCheckBox;->getCheckBox()Lcom/htc/widget/HtcCheckBox;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 374
    invoke-static {v1}, Lcom/android/camera/imaging/ImageUtility;->recycleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 377
    .end local v0           #arr$:[Lcom/android/camera/widget/ImageCheckBox;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #frame:Lcom/android/camera/widget/ImageCheckBox;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->prepareContentLayout()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    .line 448
    iget-boolean v4, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    if-eqz v4, :cond_1

    .line 498
    :cond_0
    return-void

    .line 452
    :cond_1
    iput-boolean v7, p0, Lcom/android/camera/component/BurstUI;->m_IsUIInitialized:Z

    .line 455
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 457
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    .line 459
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    .line 460
    const/4 v4, 0x5

    new-array v5, v4, [Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    .line 469
    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/camera/widget/ImageCheckBox;

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080017

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v9

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f080019

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v7

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v10

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v11

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const v6, 0x7f08001f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ImageCheckBox;

    aput-object v4, v5, v8

    iput-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .line 476
    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 480
    .local v1, frame:Lcom/android/camera/widget/ImageCheckBox;
    new-instance v4, Lcom/android/camera/component/BurstUI$1;

    invoke-direct {v4, p0, v1}, Lcom/android/camera/component/BurstUI$1;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/widget/ImageCheckBox;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/widget/ImageCheckBox;->setOnClickChangedListener(Lcom/android/camera/widget/ImageCheckBox$OnClickChangedListener;)V

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onBurstCompleted()V
    .locals 4

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyProcessingTakenPictures()V

    goto :goto_0
.end method

.method private onPhotoSaved()V
    .locals 4

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    iget-wide v2, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    goto :goto_0
.end method

.method private onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 19
    .parameter "index"
    .parameter "thumbnail"

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_1

    .line 550
    if-eqz p2, :cond_0

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    if-eqz p2, :cond_2

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    invoke-virtual {v15}, Lcom/android/camera/widget/ImageCheckBox;->getImageView()Landroid/widget/ImageView;

    move-result-object v7

    .line 560
    .local v7, imageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v15

    iget v15, v15, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 564
    .end local v7           #imageView:Landroid/widget/ImageView;
    :cond_2
    if-nez p1, :cond_0

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailWidth()I

    move-result v14

    .line 568
    .local v14, thumbWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailHeight()I

    move-result v12

    .line 569
    .local v12, thumbHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewHeight()I

    move-result v3

    .line 570
    .local v3, burstReviewHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getBurstReviewWidth()I

    move-result v4

    .line 573
    .local v4, burstReviewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v2, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_3

    aget-object v5, v2, v6

    .line 575
    .local v5, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 576
    .local v8, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 577
    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 579
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    .line 580
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 581
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    .line 582
    invoke-virtual {v5}, Lcom/android/camera/widget/ImageCheckBox;->requestLayout()V

    .line 573
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 586
    .end local v5           #frame:Lcom/android/camera/widget/ImageCheckBox;
    .end local v8           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarHeight()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbBarPadding()I

    move-result v10

    .line 589
    .local v10, linearLayoutPadding:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->linearLayoutThumbBar:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbItemMargin()I

    move-result v13

    .line 593
    .local v13, thumbItemMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/component/BurstUI;->m_thumbItemsContainer:[Landroid/widget/RelativeLayout;

    .local v2, arr$:[Landroid/widget/RelativeLayout;
    array-length v9, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    .line 595
    .local v11, thumbContaiter:Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 596
    .local v8, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v14, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getThumbnailItemControllerHeight()I

    move-result v15

    iput v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 598
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 599
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 600
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 601
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 602
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 593
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 604
    .end local v8           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #thumbContaiter:Landroid/widget/RelativeLayout;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setCheck(Z)V

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v15, v15, p1

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    .line 607
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    .line 608
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v3}, Lcom/android/camera/ViewUtil;->setHeight(Landroid/view/View;I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-static {v15, v4}, Lcom/android/camera/ViewUtil;->setWidth(Landroid/view/View;I)V

    .line 611
    if-eqz p2, :cond_6

    .line 612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_burstReviewFrame:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BurstUI;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 613
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private registerListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 666
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 667
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$2;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 681
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryConfirmDeletingMediaMessageEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$3;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 690
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryMediaToSetAsEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$4;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 707
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->queryMediaToShareEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$5;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 727
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->thumbnailButtonClickedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/BurstUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$6;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 742
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/BurstUI$7;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/BurstUI$7;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/BurstUI$8;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/BurstUI$8;-><init>(Lcom/android/camera/component/BurstUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 780
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/BurstUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstUI$9;-><init>(Lcom/android/camera/component/BurstUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 799
    return-void
.end method

.method private showThunbmailBar(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 811
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_RotateReviewScreenContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 829
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_baseLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private syncResolutionBack()V
    .locals 6

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 842
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 843
    .local v1, modeHandler:Lcom/android/camera/PhotoModeHandler;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    .line 846
    iget-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/PhotoModeHandler;->getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    sget-object v5, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/component/BurstResolutionHandler;->getResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 851
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    .line 853
    :cond_0
    return-void
.end method

.method private updateReviewScreenStatus(Lcom/android/camera/widget/ImageCheckBox;)V
    .locals 9
    .parameter "thumbItem"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    .local v0, arr$:[Lcom/android/camera/widget/ImageCheckBox;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 859
    .local v1, frame:Lcom/android/camera/widget/ImageCheckBox;
    invoke-virtual {v1, v7}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 858
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 861
    .end local v1           #frame:Lcom/android/camera/widget/ImageCheckBox;
    :cond_0
    invoke-virtual {p1, v8}, Lcom/android/camera/widget/ImageCheckBox;->setFocus(Z)V

    .line 862
    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 863
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v5, :cond_2

    .line 878
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-object v6, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/camera/component/BurstController;->updateThumbItemsStatus(Ljava/util/ArrayList;)V

    .line 880
    :cond_2
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 882
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    .line 883
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    .line 884
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    .line 894
    :goto_2
    return-void

    .line 866
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 869
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/camera/widget/ImageCheckBox;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 871
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 866
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 886
    .end local v2           #i:I
    :cond_5
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 888
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setDeleteButtonEnabled(Z)V

    .line 889
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    .line 890
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v8}, Lcom/android/camera/actionscreen/CommonActionScreen;->setShareButtonEnabled(Z)V

    goto :goto_2

    .line 893
    :cond_6
    iget-object v5, p0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-virtual {v5, v7}, Lcom/android/camera/actionscreen/CommonActionScreen;->setSetAsButtonEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public enterBurstMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter burst mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v1, "Burst Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/BurstController;

    iput-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    .line 148
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/BurstController;->link(Lcom/android/camera/component/BurstUI;)V

    .line 155
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    .line 156
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    iget-wide v4, p0, Lcom/android/camera/component/BurstUI;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 160
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 163
    iput-boolean v3, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    .line 164
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Waiting for re-starting preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_1
    return-void

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->initializeUI()V

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    goto :goto_1
.end method

.method public exitBurstMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit burst mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    .line 199
    iput-boolean v1, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    .line 200
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/camera/component/BurstUI;->m_BurstController:Lcom/android/camera/component/BurstController;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstUI;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->collapseContentLayout()V

    goto :goto_0
.end method

.method public getBurstReviewHeight()I
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 271
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    .line 274
    :goto_0
    return v1

    .line 272
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    goto :goto_0

    .line 274
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    goto :goto_0
.end method

.method public getBurstReviewWidth()I
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 262
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    .line 265
    :goto_0
    return v1

    .line 263
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    goto :goto_0

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    goto :goto_0
.end method

.method protected getContentLayoutID()I
    .locals 1

    .prologue
    .line 214
    const v0, 0x7f030001

    return v0
.end method

.method public getThumbBarHeight()I
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    .line 293
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    goto :goto_0
.end method

.method public getThumbBarPadding()I
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    .line 301
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    goto :goto_0
.end method

.method public getThumbBarWidth()I
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    .line 283
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    goto :goto_0
.end method

.method public getThumbItemMargin()I
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    .line 309
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    goto :goto_0
.end method

.method public getThumbnailHeight()I
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 238
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 241
    :goto_0
    return v1

    .line 239
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    .line 241
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0
.end method

.method public getThumbnailItemControllerHeight()I
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    .line 225
    :goto_0
    return v1

    .line 223
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    goto :goto_0

    .line 225
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    goto :goto_0
.end method

.method public getThumbnailWidth()I
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_image_ratio"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 252
    .local v0, isWidePhoto:Z
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->getBurstUIOrientation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    .line 255
    :goto_0
    return v1

    .line 253
    :cond_0
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    goto :goto_0

    .line 255
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 318
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 347
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 321
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onBurstCompleted()V

    goto :goto_0

    .line 325
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/component/BurstUI;->m_CapturingInstanceID:J

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->onPhotoSaved()V

    goto :goto_0

    .line 334
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v1}, Lcom/android/camera/component/BurstUI;->onThumbnailCreated(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 338
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 339
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbItems:[Lcom/android/camera/widget/ImageCheckBox;

    aget-object v2, v1, v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/ImageCheckBox;->addImageUri(Landroid/net/Uri;)V

    .line 340
    if-nez v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const v3, 0x7f0b0179

    const v2, 0x7f0b0177

    .line 387
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/component/BurstUI;->m_StoredPictureUris:Ljava/util/ArrayList;

    .line 393
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 394
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 398
    const v1, 0x7f0b0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    .line 400
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_l:I

    .line 401
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_thumbnailItemHeightController_p:I

    .line 402
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    .line 405
    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_p:I

    .line 406
    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_p:I

    .line 407
    const v1, 0x7f0b016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_p:I

    .line 408
    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidthWide_p:I

    .line 410
    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeight_l:I

    .line 411
    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenHeightWide_l:I

    .line 412
    const v1, 0x7f0b017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstReviewScreenWidth_l:I

    .line 413
    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_l:I

    .line 414
    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_l:I

    .line 415
    const v1, 0x7f0b0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarHeight_p:I

    .line 416
    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarWidth_p:I

    .line 419
    const v1, 0x7f0b0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_p:I

    .line 420
    const v1, 0x7f0b0176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_p:I

    .line 421
    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbBarPadding_l:I

    .line 422
    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_burstThumbItemMargin_l:I

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->registerListeners()V

    .line 436
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->setupPropertyChangedCallbacks()V

    .line 437
    return-void

    .line 427
    :cond_0
    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailHeight:I

    .line 428
    const v1, 0x7f0b00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidth:I

    .line 429
    const v1, 0x7f0b00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/BurstUI;->m_ThumbnailWidthWide:I

    goto :goto_0
.end method

.method public isBurstModeEntered()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    return v0
.end method

.method public prepareEnteringBurstMode(Z)V
    .locals 5
    .parameter "restartPreview"

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareEnteringBurstMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-eqz v2, :cond_0

    .line 640
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 630
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 631
    .local v1, modeHandler:Lcom/android/camera/PhotoModeHandler;
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v2, v3, :cond_1

    .line 632
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/PhotoModeHandler;->getResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/component/BurstResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    .line 633
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z

    .line 636
    iget-object v2, p0, Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoModeHandler;->setResolutionHandler(Lcom/android/camera/IResolutionHandler;)V

    .line 639
    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method

.method public final prepareExitingBurstMode(Z)V
    .locals 3
    .parameter "restartPreview"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareExitingBurstMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstUI;->syncResolutionBack()V

    .line 657
    iput-boolean p1, p0, Lcom/android/camera/component/BurstUI;->m_IsRestartingPreviewNeeded:Z

    goto :goto_0
.end method
