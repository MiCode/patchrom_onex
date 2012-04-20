.class public Lcom/android/camera/widget/SettingsView;
.super Landroid/widget/FrameLayout;
.source "SettingsView.java"

# interfaces
.implements Lcom/android/camera/widget/IPopupMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;,
        Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;,
        Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsVisible:Z

.field private mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

.field private mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

.field private m_Context:Landroid/content/Context;

.field private m_ImageAdjustmentPreference:Landroid/preference/Preference;

.field private m_ImageAdjustmentView:Landroid/view/View;

.field private m_ImagePropertyItemHeight:I

.field private m_MenuChildHeight:I

.field private m_MenuItemHeight:I

.field private m_MenuParentHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/MenuHandler;Landroid/preference/PreferenceScreen;Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "screen"
    .parameter "cameraThread"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    .line 78
    iput-object v1, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    iput-object v1, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 88
    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    .line 89
    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    .line 90
    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    .line 91
    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    .line 97
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    .line 99
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    iput-object p2, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 103
    iput-object p4, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 105
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcExpandableListView;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/widget/ImagePropertyItem;

    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

    .line 112
    invoke-direct {p0}, Lcom/android/camera/widget/SettingsView;->registerEventHandler()V

    .line 114
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    .line 115
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    .line 118
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 119
    invoke-direct {p0, p3}, Lcom/android/camera/widget/SettingsView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/widget/SettingsView;->updatePreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/SettingsView;->updateListPreference(Landroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/widget/SettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/widget/SettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/SettingsView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/widget/SettingsView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/widget/SettingsView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->m_ImageAdjustmentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->m_ImageAdjustmentPreference:Landroid/preference/Preference;

    return-object p1
.end method

.method private addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "preference"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    instance-of v5, p1, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 231
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 232
    .local v1, group:Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 233
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 234
    .local v0, child:Landroid/preference/Preference;
    invoke-direct {p0, v0, p2}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v0           #child:Landroid/preference/Preference;
    .end local v1           #group:Landroid/preference/PreferenceGroup;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, strKey:Ljava/lang/String;
    const-string v5, "pref_camera_scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pref_video_scene"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "pref_fast_fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 250
    .end local v4           #strKey:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 244
    .restart local v4       #strKey:Ljava/lang/String;
    :cond_2
    const-string v5, "pref_set_resolution"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;

    check-cast v5, Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isFrontCameraOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private inflateIfNeed(Landroid/view/View;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method private registerEventHandler()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 311
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 314
    check-cast v1, Landroid/view/ViewGroup;

    .line 315
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 316
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "screen"

    .prologue
    const/4 v5, 0x0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 258
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    new-instance v3, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;-><init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    .line 263
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 264
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V

    .line 265
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V

    .line 266
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3, v5, v5}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    .line 267
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcExpandableListView;->setBouncingEnabled(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcExpandableListView;->setHandleChildBackground(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2080041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    new-instance v4, Lcom/android/camera/widget/SettingsView$1;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/SettingsView$1;-><init>(Lcom/android/camera/widget/SettingsView;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    return-void
.end method

.method private updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "prefence"
    .parameter "checked"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateListPreference(Landroid/preference/Preference;I)V
    .locals 2
    .parameter "prefence"
    .parameter "index"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onListPreferenceUpdated(Landroid/preference/Preference;I)V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateListPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "prefence"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;->onPreferenceUpdated(Landroid/preference/Preference;)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v0, "SettingsView"

    const-string v1, "updateCheckBoxPreference - mPreferenceListener = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSubMenu(Z)Z
    .locals 1
    .parameter "anim"

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Lcom/htc/widget/HtcExpandableListView;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I

    iget v1, p0, Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    return v0
.end method

.method public notifyMainLayoutChanged()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method

.method public releaseOnScreenSettings()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 146
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    .line 147
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 148
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    .line 149
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    .line 150
    iput-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    .line 151
    return-void
.end method

.method public setOnPreferenceUpdatedListener(Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView;->mPreferenceListener:Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;

    .line 160
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    if-ne v0, p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/widget/SettingsView;->mIsVisible:Z

    .line 190
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->setSelectionAfterHeaderView()V

    goto :goto_0
.end method

.method public updatePreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 285
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    if-nez v3, :cond_0

    .line 286
    const-string v3, "SettingsView"

    const-string v4, "updatePreferenceScreen failed, mMainAdapter = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainMenu:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 291
    const-string v3, "SettingsView"

    const-string v4, "updatePreferenceScreen failed, mMainMenu = null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 297
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/camera/widget/SettingsView;->addPreference(Landroid/preference/Preference;Ljava/util/ArrayList;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    invoke-virtual {v3, v1}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->updateAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
