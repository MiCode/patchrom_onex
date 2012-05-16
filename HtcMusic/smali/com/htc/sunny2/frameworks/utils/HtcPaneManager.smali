.class public Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;
.super Ljava/lang/Object;
.source "HtcPaneManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcPaneManager"

.field public static PANE_LEFT:I

.field public static PANE_RIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_LEFT:I

    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->PANE_RIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandscapePane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 8
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 47
    const/4 v4, 0x0

    .line 49
    .local v4, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneLeftWidth(Landroid/content/Context;)I

    move-result v1

    .line 52
    .local v1, nPaneLeft:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 53
    .local v2, nPaneRight:I
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    .line 56
    .local v0, nPaneHeight:I
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v1, v6, v2, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v7

    .line 77
    .end local v1           #nPaneLeft:I
    .end local v2           #nPaneRight:I
    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v4

    .line 65
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 66
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 67
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 71
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneWidthLand(Landroid/content/Context;)I

    move-result v3

    .line 72
    .local v3, nPaneWidth:I
    new-array v4, v7, [Lcom/htc/app/mf/PaneRect;

    .end local v4           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v5, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v5, v6, v6, v3, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v5, v4, v6

    .restart local v4       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 69
    .end local v3           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsableLandscapeHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static getPortraitPane(Landroid/content/Context;Z)[Lcom/htc/app/mf/PaneRect;
    .locals 6
    .parameter "context"
    .parameter "bIsFullscreen"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, paneRect:[Lcom/htc/app/mf/PaneRect;
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    .line 86
    .local v0, nPaneHeight:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v5, v4, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .line 104
    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    return-object v2

    .line 93
    .end local v0           #nPaneHeight:I
    :cond_0
    const/4 v0, 0x0

    .line 94
    .restart local v0       #nPaneHeight:I
    if-eqz p1, :cond_1

    .line 95
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I

    move-result v0

    .line 98
    :goto_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneWidthPort(Landroid/content/Context;)I

    move-result v1

    .line 99
    .local v1, nPaneWidth:I
    new-array v2, v4, [Lcom/htc/app/mf/PaneRect;

    .end local v2           #paneRect:[Lcom/htc/app/mf/PaneRect;
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v3, v5, v5, v1, v0}, Lcom/htc/app/mf/PaneRect;-><init>(IIII)V

    aput-object v3, v2, v5

    .restart local v2       #paneRect:[Lcom/htc/app/mf/PaneRect;
    goto :goto_0

    .line 97
    .end local v1           #nPaneWidth:I
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneUsablePortraitHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, bResult:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 40
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, bResult:Z
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 33
    :cond_0
    return v0
.end method

.method public static onMeasuredWidthAndHeight(Landroid/content/Context;ZZ)[I
    .locals 5
    .parameter "context"
    .parameter "bIs2Pane"
    .parameter "bIsPaneRight"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 244
    .local v0, met:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 245
    .local v2, nWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 247
    .local v1, nHeight:I
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 250
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->paneRightWidth(Landroid/content/Context;)I

    move-result v2

    .line 252
    :cond_0
    add-int/lit8 v2, v2, -0xa

    .line 253
    add-int/lit8 v1, v1, -0xc

    .line 268
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    sget v2, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 260
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_LAND:I

    goto :goto_0

    .line 264
    :cond_2
    sget v2, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 265
    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/View$OnClickListener;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "actionBar"
    .parameter "clickListener"
    .parameter "bEnableActionBarUpdate"
    .parameter "bEnableBackButton"
    .parameter "bEnableAppButton"
    .parameter "bEnableFullscreen"
    .parameter "szMainTitle"
    .parameter "szSecondaryTitle"

    .prologue
    const/4 v0, 0x0

    .line 117
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 163
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local p0
    :cond_1
    invoke-interface {p1, p4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 124
    if-eqz p4, :cond_3

    .line 125
    invoke-interface {p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :goto_1
    invoke-interface {p1, p5, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V

    .line 133
    if-eqz p5, :cond_2

    .line 135
    instance-of v0, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v0, :cond_2

    .line 136
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enableDropList()V

    .line 141
    :cond_2
    if-eqz p6, :cond_4

    .line 142
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    .line 151
    :goto_2
    if-nez p5, :cond_0

    .line 153
    if-eqz p7, :cond_5

    .line 154
    invoke-interface {p1, p7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    .line 158
    :goto_3
    if-eqz p8, :cond_6

    .line 159
    invoke-interface {p1, p8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .restart local p0
    :cond_3
    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 144
    .end local p0
    :cond_4
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V

    goto :goto_2

    .line 156
    :cond_5
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_3

    .line 161
    :cond_6
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static paneHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, nHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 234
    .local v1, nOrientation:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 235
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_LAND:I

    .line 238
    :goto_0
    return v0

    .line 237
    :cond_0
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_HEIGHT_PORT:I

    goto :goto_0
.end method

.method public static paneLeftWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LEFT:I

    .line 186
    return v0
.end method

.method public static paneRightWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_RIGHT:I

    .line 192
    return v0
.end method

.method public static paneUsableLandscapeHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_LAND:I

    .line 207
    return v0
.end method

.method public static paneUsableLandscapeHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_LAND_PHONE:I

    .line 219
    return v0
.end method

.method public static paneUsablePortraitHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_PORT:I

    .line 201
    return v0
.end method

.method public static paneUsablePortraitHeight4PhoneFullscreenMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, nHeight:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_USABLE_HEIGHT_PORT_PHONE:I

    .line 213
    return v0
.end method

.method public static paneWidthLand(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 177
    return v0
.end method

.method public static paneWidthPort(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, nWidth:I
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 171
    return v0
.end method
