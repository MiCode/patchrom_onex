.class public Lcom/android/camera/menu/SettingsMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/SettingsMenu$5;
    }
.end annotation


# static fields
.field public static final ITEM_ID_AUTO_FOCUS:I = 0x33

.field public static final ITEM_ID_AUTO_UPLOAD:I = 0x32

.field public static final ITEM_ID_CAMERA_EFFECTS:I = 0x1

.field public static final ITEM_ID_CAMERA_TYPE_FRONT:I = 0x15

.field public static final ITEM_ID_CAMERA_TYPE_MAIN:I = 0x14

.field public static final ITEM_ID_CAPTURE_MODE_GROUP:I = 0xd

.field public static final ITEM_ID_CAPTURE_MODE_HDR:I = 0xc

.field public static final ITEM_ID_CAPTURE_MODE_NORMAL:I = 0xa

.field public static final ITEM_ID_CAPTURE_MODE_PANORAMA:I = 0xb

.field public static final ITEM_ID_CONTINUOUS_AUTO_FOCUS:I = 0x21

.field public static final ITEM_ID_CONTINUOUS_CAPTURE:I = 0x2f

.field public static final ITEM_ID_FACE_DETECTION:I = 0x1f

.field public static final ITEM_ID_GEO_TAGGING:I = 0x24

.field public static final ITEM_ID_OBJECT_TRACKING:I = 0x1e

.field public static final ITEM_ID_RECORD_WITH_AUDIO:I = 0x2e

.field public static final ITEM_ID_RESET_TO_DEFAULT:I = 0x3c

.field public static final ITEM_ID_SHUTTER_SOUND:I = 0x28

.field public static final ITEM_ID_SLOW_MOTION:I = 0x2d

.field public static final ITEM_ID_SMILE_CAPTURE:I = 0x20

.field public static final ITEM_ID_WIDE_RATIO_PHOTO:I = 0x22

.field private static final TAG:Ljava/lang/String; = "SettingsMenu"


# instance fields
.field private m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

.field private m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

.field private m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

.field private m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

.field private m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

.field private m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

.field private m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

.field private m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

.field private m_IsItemInitialized:Z

.field private m_IsoItem:Lcom/android/camera/menu/MenuItem;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

.field private m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

.field private m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

.field private m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

.field private m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

.field private m_Settings:Lcom/android/camera/Settings;

.field private m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

.field private m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

.field private m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

.field private m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

.field private m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

.field private m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

.field private m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/menu/MenuItem;

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    .line 118
    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 121
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 125
    return-void

    .line 124
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method private checkLocationSettings()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 135
    .local v1, service:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 141
    .end local v1           #service:Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "SettingsMenu"

    const-string v4, "checkLocationSetting() has exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onPhotoRatioChanged()V
    .locals 15

    .prologue
    .line 632
    new-instance v9, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v12, v13, v11}, Lcom/android/camera/PhotoModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v9, resolutions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v7, normalResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v10, wideResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v11

    iget-object v11, v11, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 638
    .local v3, isWidePhoto:Z
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v11

    if-nez v11, :cond_0

    .line 639
    const/4 v3, 0x0

    .line 640
    :cond_0
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    .line 642
    .local v4, item:Lcom/android/camera/ResolutionMenuItem;
    iget-object v11, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 643
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    .end local v4           #item:Lcom/android/camera/ResolutionMenuItem;
    :cond_2
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v12, v13, v11}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 652
    .local v0, currentResolution:Lcom/android/camera/Resolution;
    const/4 v6, 0x0

    .line 654
    .local v6, newResolution:Lcom/android/camera/Resolution;
    if-eqz v3, :cond_6

    .line 656
    move-object v8, v7

    .line 657
    .local v8, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    move-object v5, v10

    .line 664
    .local v5, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 666
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    .line 667
    .restart local v4       #item:Lcom/android/camera/ResolutionMenuItem;
    iget-object v11, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v11}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 669
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 670
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ResolutionMenuItem;

    iget-object v6, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 674
    .end local v4           #item:Lcom/android/camera/ResolutionMenuItem;
    :cond_3
    if-nez v6, :cond_4

    .line 675
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ResolutionMenuItem;

    iget-object v6, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 676
    :cond_4
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v12

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v13

    iget-object v14, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v13, v14, v11}, Lcom/android/camera/PhotoModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 682
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v11, :cond_5

    .line 683
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v11}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 686
    :cond_5
    iget-object v11, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 687
    return-void

    .line 661
    .end local v1           #i:I
    .end local v5           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v8           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_6
    move-object v8, v10

    .line 662
    .restart local v8       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    move-object v5, v7

    .restart local v5       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    goto :goto_1

    .line 664
    .restart local v1       #i:I
    .restart local v4       #item:Lcom/android/camera/ResolutionMenuItem;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private resetToDefault()V
    .locals 5

    .prologue
    .line 695
    new-instance v2, Lcom/android/camera/menu/SettingsMenu$1;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$1;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 705
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/camera/menu/SettingsMenu$2;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/SettingsMenu$2;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 714
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00aa

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a011b

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x20401f2

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x20401f3

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 723
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    .line 724
    return-void
.end method

.method private showGpsDialog()V
    .locals 5

    .prologue
    .line 751
    new-instance v2, Lcom/android/camera/menu/SettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/camera/menu/SettingsMenu$3;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 762
    .local v2, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/camera/menu/SettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/android/camera/menu/SettingsMenu$4;-><init>(Lcom/android/camera/menu/SettingsMenu;)V

    .line 772
    .local v1, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a019d

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a019e

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const v4, 0x2040218

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 781
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    .line 782
    return-void
.end method

.method private updateAutoFocusRelatedItem()V
    .locals 5

    .prologue
    .line 957
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v2

    .line 959
    .local v2, settings:Lcom/android/camera/CameraSettings;
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 962
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_0

    .line 963
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 966
    :cond_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_2

    .line 968
    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v4, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v3, v4, :cond_1

    .line 969
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, v2, Lcom/android/camera/CameraSettings;->canAutoFocus:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 971
    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 975
    :cond_2
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v3, :cond_3

    .line 976
    iget-object v3, v2, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3}, Lcom/android/camera/menu/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Lcom/android/camera/effect/PanoramaScene;

    if-nez v3, :cond_4

    instance-of v3, v1, Lcom/android/camera/effect/SmartShotScene;

    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 980
    .local v0, canSmileCapture:Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v3, v0}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 981
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 983
    .end local v0           #canSmileCapture:Z
    :cond_3
    return-void

    .line 976
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAutoUploadItem()V
    .locals 5

    .prologue
    .line 935
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_1

    .line 936
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, service:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v3, 0x7f0a00a9

    invoke-virtual {v2, v3}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 948
    .end local v0           #service:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 944
    .restart local v0       #service:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v3, "pref_auto_upload_label"

    invoke-virtual {v2, v3}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, servicelabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SceneMenuItem;->setVisibility(Z)V

    .line 826
    :cond_0
    return-void
.end method

.method private final updateCameraTypeItem()V
    .locals 7

    .prologue
    .line 790
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    if-nez v5, :cond_0

    .line 817
    :goto_0
    return-void

    .line 795
    :cond_0
    sget-object v6, Lcom/android/camera/menu/SettingsMenu$5;->$SwitchMap$com$android$camera$CameraType:[I

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 798
    :pswitch_0
    const/16 v1, 0x14

    .line 799
    .local v1, itemId:I
    const v4, 0x7f0a00b8

    .line 810
    .local v4, summary:I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v3

    .line 811
    .local v3, subItems:[Lcom/android/camera/menu/MenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 813
    aget-object v2, v3, v0

    .line 814
    .local v2, subItem:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v2}, Lcom/android/camera/menu/MenuItem;->getId()I

    move-result v5

    if-ne v5, v1, :cond_1

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 802
    .end local v0           #i:I
    .end local v1           #itemId:I
    .end local v2           #subItem:Lcom/android/camera/menu/MenuItem;
    .end local v3           #subItems:[Lcom/android/camera/menu/MenuItem;
    .end local v4           #summary:I
    :pswitch_1
    const/16 v1, 0x15

    .line 803
    .restart local v1       #itemId:I
    const v4, 0x7f0a00b9

    .line 804
    .restart local v4       #summary:I
    goto :goto_1

    .line 814
    .restart local v0       #i:I
    .restart local v2       #subItem:Lcom/android/camera/menu/MenuItem;
    .restart local v3       #subItems:[Lcom/android/camera/menu/MenuItem;
    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    .line 816
    .end local v2           #subItem:Lcom/android/camera/menu/MenuItem;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    goto :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContinuousCaptureItem()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 833
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 834
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 835
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    instance-of v4, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v4, :cond_3

    move v2, v5

    .line 836
    .local v2, hasEffect:Z
    :goto_0
    if-eqz v1, :cond_4

    instance-of v4, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v4, :cond_4

    move v3, v5

    .line 839
    .local v3, hasScene:Z
    :goto_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_0

    .line 840
    iget-object v7, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v4}, Lcom/android/camera/SelfTimerValue;->isOff()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 841
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraType;

    invoke-virtual {v4}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 842
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0a005d

    :goto_3
    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 846
    :cond_0
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_1

    .line 847
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 850
    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v4, :cond_2

    .line 851
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    iget-object v4, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 852
    :cond_2
    return-void

    .end local v2           #hasEffect:Z
    .end local v3           #hasScene:Z
    :cond_3
    move v2, v6

    .line 835
    goto/16 :goto_0

    .restart local v2       #hasEffect:Z
    :cond_4
    move v3, v6

    .line 836
    goto/16 :goto_1

    .restart local v3       #hasScene:Z
    :cond_5
    move v5, v6

    .line 840
    goto :goto_2

    .line 842
    :cond_6
    const v4, 0x7f0a005e

    goto :goto_3
.end method

.method private updateDisabledItems()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 860
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    .line 862
    .local v4, settings:Lcom/android/camera/CameraSettings;
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 863
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 864
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    move-object v2, v1

    .line 865
    .local v2, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/android/camera/effect/AutoScene;

    if-eqz v5, :cond_1

    .line 866
    :cond_0
    move-object v2, v0

    .line 868
    :cond_1
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v3

    .line 871
    .local v3, disabledImageSettings:I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_2

    .line 872
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 873
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 877
    :cond_2
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_4

    .line 878
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_3
    move v5, v7

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 881
    :cond_4
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_5

    .line 882
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_11

    move v5, v7

    :goto_2
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 883
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 887
    :cond_5
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_6

    .line 888
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_12

    move v5, v7

    :goto_3
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 891
    :cond_6
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_7

    .line 892
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v4, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 895
    :cond_7
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_8

    .line 896
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_14

    move v5, v7

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 897
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 901
    :cond_8
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_9

    .line 902
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    sget-object v8, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v8}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 906
    :cond_9
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_a

    .line 907
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_15

    move v5, v7

    :goto_6
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 911
    :cond_a
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_b

    .line 912
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    sget v5, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v5, v3

    if-nez v5, :cond_16

    move v5, v7

    :goto_7
    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 916
    :cond_b
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_c

    .line 917
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_ObjectTrackingItem:Lcom/android/camera/menu/MenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/CameraType;

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 920
    :cond_c
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    if-eqz v5, :cond_d

    .line 921
    iget-object v8, p0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v5}, Lcom/android/camera/SelfTimerValue;->isDisabled()Z

    move-result v5

    if-nez v5, :cond_17

    :goto_8
    invoke-virtual {v8, v7}, Lcom/android/camera/menu/SelfTimerMenuItem;->setEnabled(Z)V

    .line 924
    :cond_d
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v5, :cond_e

    .line 925
    iget-object v5, p0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    iget-object v6, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 927
    :cond_e
    return-void

    .end local v3           #disabledImageSettings:I
    :cond_f
    move v3, v6

    .line 868
    goto/16 :goto_0

    .restart local v3       #disabledImageSettings:I
    :cond_10
    move v5, v6

    .line 878
    goto/16 :goto_1

    :cond_11
    move v5, v6

    .line 882
    goto/16 :goto_2

    :cond_12
    move v5, v6

    .line 888
    goto/16 :goto_3

    :cond_13
    move v5, v6

    .line 892
    goto/16 :goto_4

    :cond_14
    move v5, v6

    .line 896
    goto/16 :goto_5

    :cond_15
    move v5, v6

    .line 907
    goto :goto_6

    :cond_16
    move v5, v6

    .line 912
    goto :goto_7

    :cond_17
    move v7, v6

    .line 921
    goto :goto_8
.end method


# virtual methods
.method public initializeMenuItems()V
    .locals 19

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    if-eqz v1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsItemInitialized:Z

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/menu/SettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    .line 157
    .local v2, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v18

    .line 158
    .local v18, startMode:Lcom/android/camera/CameraStartMode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/menu/SettingsMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 159
    .local v3, settings:Lcom/android/camera/Settings;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v14, itemsL1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v15, itemsL2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget-boolean v1, v1, Lcom/android/camera/CameraType;->isSupported:Z

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00b7

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 171
    new-instance v13, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00b8

    invoke-direct {v13, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 172
    .local v13, itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 173
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v13, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v13           #itemL2:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00b9

    invoke-direct {v13, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 177
    .restart local v13       #itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x15

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 178
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraTypeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 186
    .end local v13           #itemL2:Lcom/android/camera/menu/MenuItem;
    :cond_1
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_2

    .line 188
    new-instance v1, Lcom/android/camera/menu/SelfTimerMenuItem;

    const v4, 0x7f0a00b0

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SelfTimerMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SelfTimerItem:Lcom/android/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_3

    .line 197
    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00be

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraResolutionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_3
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_4

    .line 208
    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    const v5, 0x7f0a00bd

    invoke-direct {v1, v2, v4, v5}, Lcom/android/camera/menu/ResolutionMenuItem;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_4
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_5

    .line 218
    new-instance v1, Lcom/android/camera/menu/ListPreferenceMenuItem;

    const-string v4, "pref_camera_review_duration"

    const v5, 0x7f0a0081

    const v6, 0x7f070001

    const/high16 v7, 0x7f07

    const-string v8, "no_review"

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/menu/ListPreferenceMenuItem;-><init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ReviewDurationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_5
    new-instance v1, Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    const v4, 0x7f0a00ba

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ImageAdjustmentItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/android/camera/menu/CameraIsoMenuItem;

    const v4, 0x7f0a00bf

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraIsoMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_IsoItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    const v4, 0x7f0a00bb

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/WhiteBalanceMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_WhiteBalanceItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v1

    if-nez v1, :cond_6

    .line 250
    new-instance v1, Lcom/android/camera/menu/CameraStorageLocationMenuItem;

    const v4, 0x7f0a0094

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/CameraStorageLocationMenuItem;-><init>(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StorageLocationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    .line 260
    .local v11, hasContinuousBurst:Z
    if-eqz v11, :cond_7

    .line 262
    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00c5

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 267
    new-instance v13, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_continuous_burst"

    const v4, 0x7f0a00c5

    const/4 v5, 0x1

    invoke-direct {v13, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    .line 272
    .restart local v13       #itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 273
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_limit"

    const v5, 0x7f0a00c6

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstLimitedItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_continuous_burst_auto_review"

    const v5, 0x7f0a00c7

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstAutoReviewItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousBurstItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 298
    .end local v13           #itemL2:Lcom/android/camera/menu/MenuItem;
    :cond_7
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_b

    .line 300
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00c0

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 301
    .local v12, itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 328
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-nez v1, :cond_8

    .line 330
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_auto_focus"

    const v5, 0x7f0a009c

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x33

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFocusItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_8
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_face_detection"

    const v5, 0x7f0a00c3

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_FaceDetectionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_smile_capture"

    const v5, 0x7f0a00c4

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v1, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v4, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-eq v1, v4, :cond_9

    .line 361
    sget-object v1, Lcom/android/camera/menu/SettingsMenu$5;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v4, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v4}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 374
    const v8, 0x7f0a00cd

    .line 377
    .local v8, resId:I
    :goto_1
    new-instance v4, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v6, "pref_camera_image_ratio"

    const v7, 0x7f0a00c9

    const v9, 0x7f0a00cd

    const/4 v10, 0x1

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_PhotoRatioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v8           #resId:I
    :cond_9
    new-instance v13, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v1, "pref_camera_geo_tagging"

    const v4, 0x7f0a00ce

    const/4 v5, 0x0

    invoke-direct {v13, v3, v1, v4, v5}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    .line 394
    .restart local v13       #itemL2:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x24

    invoke-virtual {v13, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 395
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-nez v1, :cond_a

    .line 400
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_post_processing"

    const v5, 0x7f0a00cf

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_a
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 413
    .end local v12           #itemL1:Lcom/android/camera/menu/MenuItem;
    .end local v13           #itemL2:Lcom/android/camera/menu/MenuItem;
    :cond_b
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_e

    .line 415
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00d0

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 416
    .restart local v12       #itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 420
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_c

    .line 422
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_video_stabilization"

    const v5, 0x7f0a00d1

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_VideoStabilizationItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_c
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_camera_record_with_audio"

    const v5, 0x7f0a00d3

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_RecordWithAudioItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 442
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_stereo_recording"

    const v5, 0x7f0a00d4

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_StereoRecordingItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_d
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 456
    .end local v12           #itemL1:Lcom/android/camera/menu/MenuItem;
    :cond_e
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    const v1, 0x7f0a00d5

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 457
    .restart local v12       #itemL1:Lcom/android/camera/menu/MenuItem;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 460
    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    move-object/from16 v0, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v1, :cond_f

    .line 462
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_grid"

    const v5, 0x7f0a00d7

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-nez v1, :cond_10

    .line 472
    new-instance v1, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    const-string v4, "pref_play_shutter_sound"

    const v5, 0x7f0a00d6

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_10
    invoke-virtual {v12, v15}, Lcom/android/camera/menu/MenuItem;->setItems(Ljava/util/List;)V

    .line 484
    invoke-virtual {v12}, Lcom/android/camera/menu/MenuItem;->getItems()[Lcom/android/camera/menu/MenuItem;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_11

    .line 485
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 490
    new-instance v1, Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00d8

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const/16 v4, 0x32

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v1, "pref_auto_upload"

    const-string v4, "Off"

    invoke-virtual {v3, v1, v4}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 496
    .local v16, service:Ljava/lang/String;
    if-eqz v16, :cond_12

    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "Off"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 501
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    const v4, 0x7f0a00a9

    invoke-virtual {v1, v4}, Lcom/android/camera/menu/MenuItem;->setSummary(I)V

    .line 510
    .end local v16           #service:Ljava/lang/String;
    :cond_13
    :goto_2
    new-instance v12, Lcom/android/camera/menu/MenuItem;

    .end local v12           #itemL1:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00d9

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 511
    .restart local v12       #itemL1:Lcom/android/camera/menu/MenuItem;
    const/16 v1, 0x3c

    invoke-virtual {v12, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 512
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_Items:[Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setItems([Lcom/android/camera/menu/MenuItem;)V

    goto/16 :goto_0

    .line 365
    :pswitch_0
    const v8, 0x7f0a00ca

    .line 366
    .restart local v8       #resId:I
    goto/16 :goto_1

    .line 368
    .end local v8           #resId:I
    :pswitch_1
    const v8, 0x7f0a00cb

    .line 369
    .restart local v8       #resId:I
    goto/16 :goto_1

    .line 371
    .end local v8           #resId:I
    :pswitch_2
    const v8, 0x7f0a00cc

    .line 372
    .restart local v8       #resId:I
    goto/16 :goto_1

    .line 503
    .end local v8           #resId:I
    .restart local v16       #service:Ljava/lang/String;
    :cond_14
    const-string v1, "pref_auto_upload_label"

    invoke-virtual {v3, v1}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 504
    .local v17, servicelabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/menu/SettingsMenu;->m_AutoUploadItem:Lcom/android/camera/menu/MenuItem;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/MenuItem;->setSummary(Ljava/lang/String;)V

    goto :goto_2

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 4
    .parameter "item"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 528
    .local v0, settings:Lcom/android/camera/CameraSettings;
    sparse-switch p3, :sswitch_data_0

    .line 623
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    .line 624
    return-void

    .line 532
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    goto :goto_0

    .line 538
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0

    .line 544
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ContinuousAutoFocusItems:[Lcom/android/camera/menu/MenuItem;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto :goto_0

    .line 553
    :sswitch_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 554
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_SmileCaptureItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isFaceDetectionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 561
    :sswitch_4
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isGeoTaggingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->checkLocationSettings()Z

    move-result v1

    if-nez v1, :cond_2

    .line 564
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->showGpsDialog()V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v3}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const v2, 0x7f0a011a

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->showToast(I)V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    goto :goto_0

    .line 578
    :sswitch_5
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 579
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/camera/menu/SettingsMenu;->m_AutoFiveShotsItem:Lcom/android/camera/menu/MenuItem;

    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isObjectTrackingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    goto/16 :goto_0

    .line 586
    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    .line 592
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->resetToDefault()V

    goto/16 :goto_0

    .line 598
    :sswitch_8
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu;->m_ShutterSoundItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    goto/16 :goto_0

    .line 605
    :sswitch_9
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    goto/16 :goto_0

    .line 611
    :sswitch_a
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->onPhotoRatioChanged()V

    goto/16 :goto_0

    .line 617
    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    goto/16 :goto_0

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_5
        0x1f -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_a
        0x24 -> :sswitch_4
        0x28 -> :sswitch_8
        0x2d -> :sswitch_9
        0x2e -> :sswitch_6
        0x2f -> :sswitch_b
        0x32 -> :sswitch_1
        0x33 -> :sswitch_0
        0x3c -> :sswitch_7
    .end sparse-switch
.end method

.method public final setCaptureModeItemVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CaptureModeItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 733
    :cond_0
    return-void
.end method

.method public final setGroupShotItemVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_CameraScenesItem:Lcom/android/camera/menu/SceneMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/SceneMenuItem;->setGroupShotItemVisibility(Z)V

    .line 738
    :cond_0
    return-void
.end method

.method public final setSlowMotionItemVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu;->m_SlowMotionItem:Lcom/android/camera/menu/MenuItem;

    invoke-virtual {v0, p1}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    .line 743
    :cond_0
    return-void
.end method

.method public updateItemContents()V
    .locals 0

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->beginUpdate()V

    .line 995
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoFocusRelatedItem()V

    .line 996
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraSceneItem()V

    .line 997
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateCameraTypeItem()V

    .line 998
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateContinuousCaptureItem()V

    .line 999
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateDisabledItems()V

    .line 1000
    invoke-direct {p0}, Lcom/android/camera/menu/SettingsMenu;->updateAutoUploadItem()V

    .line 1001
    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    .line 1004
    invoke-virtual {p0}, Lcom/android/camera/menu/SettingsMenu;->endUpdate()V

    .line 1005
    return-void
.end method
