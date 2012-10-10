.class public Lcom/android/camera/MenuHandler;
.super Ljava/lang/Object;
.source "MenuHandler.java"


# static fields
.field public static final BRIGHTNESS_LEVEL_NUMBER:I = 0x5

.field public static final PROPERTY_LEVEL_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MenuHandler"


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mEffectManager:Lcom/android/camera/effect/EffectManager;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImageAdjustmentName:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field private mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mResView:Lcom/android/camera/widget/ResolutionView;

.field private mSettingsView:Lcom/android/camera/widget/SettingsView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 28
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 31
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 32
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 35
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    .line 39
    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_camera_contrast"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_saturation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_shaprness"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mImageAdjustmentName:[Ljava/lang/String;

    return-void
.end method

.method private createResolutionView()V
    .locals 5

    .prologue
    .line 128
    const-string v1, "MenuHandler"

    const-string v2, "Create Resolution View"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    if-nez v1, :cond_1

    .line 131
    new-instance v1, Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/camera/widget/ResolutionView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    .line 133
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ResolutionView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->getListViewWidth(Lcom/android/camera/rotate/UIRotation;)I

    move-result v0

    .line 135
    .local v0, width:I
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ResolutionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v0           #width:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ResolutionView;->setVisible(Z)V

    .line 145
    return-void

    .line 134
    :cond_0
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ResolutionView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_1
.end method

.method private createSettingsView()V
    .locals 5

    .prologue
    .line 103
    const-string v1, "MenuHandler"

    const-string v2, "Create Settings View"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/android/camera/widget/SettingsView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/camera/widget/SettingsView;-><init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 108
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SettingsView;->setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/MenuHandler;->getListViewWidth(Lcom/android/camera/rotate/UIRotation;)I

    move-result v0

    .line 111
    .local v0, width:I
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SettingsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .end local v0           #width:I
    :goto_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SettingsView;->setVisible(Z)V

    .line 124
    return-void

    .line 110
    :cond_0
    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/SettingsView;->updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_1
.end method

.method private getListViewWidth(Lcom/android/camera/rotate/UIRotation;)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 99
    const/4 v0, -0x1

    return v0
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 258
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 260
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 261
    check-cast v1, Landroid/view/ViewGroup;

    .line 262
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 263
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/MenuHandler;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private updateSettingsView()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public closeSubMenu(Z)Z
    .locals 1
    .parameter "anim"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SettingsView;->closeSubMenu(Z)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitMenuHandler()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->exitPreference()V

    .line 90
    :cond_0
    return-void
.end method

.method public getImageAdjustmentSummary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mImageAdjustmentName:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 182
    .local v3, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v5, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, str_level:Ljava/lang/String;
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v6, 0x7f0a0071

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 186
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #str_level:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 181
    .restart local v3       #str:Ljava/lang/String;
    .restart local v4       #str_level:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #str_level:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v6, 0x7f0a0072

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getMenuResolutionItem(I)Ljava/lang/String;
    .locals 2
    .parameter "nItem"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v1, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 288
    :goto_0
    return-object v1

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v1}, Lcom/android/camera/OnScreenPreference;->getCurrectMenuResolution()Ljava/util/LinkedList;

    move-result-object v0

    .line 288
    .local v0, items:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ResolutionMenuItem;

    iget-object v1, v1, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResView()Lcom/android/camera/widget/ResolutionView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mResView:Lcom/android/camera/widget/ResolutionView;

    return-object v0
.end method

.method public getSettingsView()Lcom/android/camera/widget/SettingsView;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    return-object v0
.end method

.method public getSummary(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 3
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_camera_image_property"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/MenuHandler;->getImageAdjustmentSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "camera"
    .parameter "thread"

    .prologue
    .line 50
    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 52
    iput-object p2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 53
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 54
    new-instance v0, Lcom/android/camera/OnScreenPreference;

    invoke-direct {v0}, Lcom/android/camera/OnScreenPreference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 55
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/OnScreenPreference;->initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    const-string v0, "MenuHandler"

    const-string v1, "initMenuHandler() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public releaseMenuHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 65
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 66
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    .line 67
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 69
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    .line 73
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->releaseOnScreenPreference()V

    .line 75
    iput-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    .line 77
    :cond_0
    return-void
.end method

.method public resetMenuHandler()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/MenuHandler;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 82
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createSettingsView()V

    .line 83
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->createResolutionView()V

    .line 84
    return-void
.end method

.method public updateDisableItems()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v7, :cond_2

    .line 193
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v7, v7, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 194
    .local v0, currentEffect:Lcom/android/camera/effect/EffectBase;
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v7, v7, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    .line 195
    .local v1, currentScene:Lcom/android/camera/effect/EffectBase;
    instance-of v7, v0, Lcom/android/camera/effect/NoneEffect;

    if-nez v7, :cond_3

    move v4, v9

    .line 196
    .local v4, hasEffect:Z
    :goto_0
    if-eqz v1, :cond_4

    instance-of v7, v1, Lcom/android/camera/effect/AutoScene;

    if-nez v7, :cond_4

    move v5, v9

    .line 198
    .local v5, hasScene:Z
    :goto_1
    move-object v2, v1

    .line 199
    .local v2, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v2, :cond_0

    instance-of v7, v2, Lcom/android/camera/effect/AutoScene;

    if-eqz v7, :cond_1

    .line 200
    :cond_0
    move-object v2, v0

    .line 202
    :cond_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v3

    .line 203
    .local v3, disabledImageSettings:I
    :goto_2
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v7, v3}, Lcom/android/camera/OnScreenPreference;->checkImageSettings(I)Z

    move-result v6

    .line 206
    .local v6, updated:Z
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v11, "pref_camera_self_timer"

    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v7}, Lcom/android/camera/SelfTimerValue;->isDisabled()Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v9

    :goto_3
    invoke-virtual {v10, v11, v7}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v7

    or-int/2addr v6, v7

    .line 211
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v10, "pref_camera_review_duration"

    iget-object v11, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v11}, Lcom/android/camera/HTCCamera;->isActionScreenEnabled()Z

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v7

    or-int/2addr v6, v7

    .line 214
    iget-object v10, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v11, "pref_continuous_burst"

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v7}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v7}, Lcom/android/camera/SelfTimerValue;->isOff()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v9

    :goto_4
    invoke-virtual {v10, v11, v7}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v7

    or-int/2addr v6, v7

    .line 217
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v7, v8}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    move-result v7

    or-int/2addr v6, v7

    .line 220
    iget-object v7, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const-string v10, "pref_camera_tap_capture"

    instance-of v11, v1, Lcom/android/camera/effect/ContinuousBurstScene;

    if-nez v11, :cond_8

    :goto_5
    invoke-virtual {v7, v10, v9}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v7

    or-int/2addr v6, v7

    .line 223
    if-eqz v6, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/android/camera/MenuHandler;->updateSettingsView()V

    .line 226
    .end local v0           #currentEffect:Lcom/android/camera/effect/EffectBase;
    .end local v1           #currentScene:Lcom/android/camera/effect/EffectBase;
    .end local v2           #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    .end local v3           #disabledImageSettings:I
    .end local v4           #hasEffect:Z
    .end local v5           #hasScene:Z
    .end local v6           #updated:Z
    :cond_2
    return-void

    .restart local v0       #currentEffect:Lcom/android/camera/effect/EffectBase;
    .restart local v1       #currentScene:Lcom/android/camera/effect/EffectBase;
    :cond_3
    move v4, v8

    .line 195
    goto :goto_0

    .restart local v4       #hasEffect:Z
    :cond_4
    move v5, v8

    .line 196
    goto :goto_1

    .restart local v2       #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    .restart local v5       #hasScene:Z
    :cond_5
    move v3, v8

    .line 202
    goto :goto_2

    .restart local v3       #disabledImageSettings:I
    .restart local v6       #updated:Z
    :cond_6
    move v7, v8

    .line 206
    goto :goto_3

    :cond_7
    move v7, v8

    .line 214
    goto :goto_4

    :cond_8
    move v9, v8

    .line 220
    goto :goto_5
.end method

.method public updateOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/OnScreenPreference;->rotateDialog(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public final updateResolutionList()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList()V

    .line 249
    :cond_0
    return-void
.end method

.method public updateSmileCapture()V
    .locals 3

    .prologue
    .line 230
    const-string v1, "MenuHandler"

    const-string v2, "updateSmileCapture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mEffectManager:Lcom/android/camera/effect/EffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 234
    .local v0, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    instance-of v1, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/OnScreenPreference;->enableSmileCapture(Z)V

    .line 240
    .end local v0           #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v0       #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/OnScreenPreference;->enableSmileCapture(Z)V

    goto :goto_0
.end method

.method public final updateStorageLocationItem()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    if-nez v0, :cond_1

    .line 272
    const-string v0, "MenuHandler"

    const-string v1, "No OnScreenPreference instance"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mOnScreenPreference:Lcom/android/camera/OnScreenPreference;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation()V

    .line 276
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/MenuHandler;->mSettingsView:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView;->notifyMainLayoutChanged()V

    goto :goto_0
.end method
