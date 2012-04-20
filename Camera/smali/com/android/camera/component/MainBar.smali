.class Lcom/android/camera/component/MainBar;
.super Lcom/android/camera/component/UIComponent;
.source "MainBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/MainBar$23;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_POPUP:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Main-bar"

.field private static final POPUP_TIMEOUT:I = 0x1f40


# instance fields
.field private m_CurrentAnchor:Landroid/view/View;

.field private m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

.field private m_FlashButton:Lcom/htc/widget/HtcIconButton;

.field private m_FunctionBar:Landroid/view/View;

.field private final m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

.field private final m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

.field private m_ScenesButton:Lcom/htc/widget/HtcIconButton;

.field private m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

.field private m_SettingsButton:Lcom/htc/widget/HtcIconButton;

.field private m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

.field private final settingsMenuState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 128
    const-string v0, "Main-bar"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 90
    new-instance v0, Lcom/android/camera/component/MainBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$1;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    .line 109
    new-instance v0, Lcom/android/camera/component/MainBar$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$2;-><init>(Lcom/android/camera/component/MainBar;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    .line 129
    const-string v0, "MainBar.SettingsMenuState"

    const/4 v1, 0x2

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, v1, p0, v2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/MainBar;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateButtonStates()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/MainBar;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/MainBar;Lcom/android/camera/UIState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->resetCloseMenuTimer()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/MainBar;)Lcom/android/camera/widget/PopupBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/MainBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/MainBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showScenePanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->switchFlashMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/MainBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/MainBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->toggleSettingsPanel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/MainBar;Lcom/android/camera/effect/EffectBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/camera/component/MainBar;->setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V

    return-void
.end method

.method private closePopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->close()V

    .line 141
    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    .line 142
    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    .line 144
    :cond_0
    return-void
.end method

.method private initializeSettingsPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 376
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-eqz v1, :cond_0

    .line 448
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v1, Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/SettingsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    .line 383
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v1, Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/android/camera/menu/ScenesMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    .line 385
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v0, Lcom/android/camera/component/MainBar$17;

    invoke-direct {v0, p0}, Lcom/android/camera/component/MainBar$17;-><init>(Lcom/android/camera/component/MainBar;)V

    .line 408
    .local v0, menuTouchListener:Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/ScenesMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$18;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$18;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    .line 417
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$19;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$19;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/ScenesMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/menu/SettingsMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$20;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$20;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemContentClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemContentClickedListener;)V

    .line 434
    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    new-instance v2, Lcom/android/camera/component/MainBar$21;

    invoke-direct {v2, p0}, Lcom/android/camera/component/MainBar$21;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/SettingsMenu;->setOnMenuItemClickedListener(Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;)V

    goto :goto_0
.end method

.method private isCurrentAnchor(Landroid/view/View;)Z
    .locals 1
    .parameter "anchor"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3
    .parameter "item"
    .parameter "id"

    .prologue
    .line 456
    packed-switch p2, :pswitch_data_0

    .line 471
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureModeItemClicked() - Unknown item ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 477
    return-void

    .line 459
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    .line 462
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/HdrScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    .line 465
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/PanoramaScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    .line 468
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    const-class v1, Lcom/android/camera/effect/SmartShotScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Ljava/lang/Class;)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 12
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    const/16 v8, 0x2711

    const/high16 v7, 0x43b4

    const/16 v4, 0x190

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 515
    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v2, v0

    .line 516
    .local v2, to_degree:F
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    .line 517
    .local v1, from_degree:F
    sub-float v0, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x4334

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 519
    cmpl-float v0, v2, v1

    if-lez v0, :cond_5

    .line 520
    sub-float/2addr v2, v7

    .line 526
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 562
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 563
    invoke-direct {p0, p2}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 566
    invoke-virtual {p0, v8}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    const-wide/16 v9, 0x1f40

    move-object v6, p0

    move-object v7, p0

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    .line 568
    :cond_4
    return-void

    .line 522
    :cond_5
    sub-float/2addr v1, v7

    goto :goto_0
.end method

.method private onSceneMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 0
    .parameter "item"
    .parameter "id"

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 507
    return-void
.end method

.method private onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    .locals 3
    .parameter "item"
    .parameter "id"

    .prologue
    .line 576
    sparse-switch p2, :sswitch_data_0

    .line 593
    :goto_0
    instance-of v0, p1, Lcom/android/camera/menu/CheckBoxMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/WhiteBalanceMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->getParent()Lcom/android/camera/menu/MenuItem;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/menu/CameraIsoMenuItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/menu/MenuItem;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 598
    :cond_0
    :goto_1
    return-void

    .line 579
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    .line 582
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    goto :goto_0

    .line 588
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/MainBar;->onCaptureModeItemClicked(Lcom/android/camera/menu/MenuItem;I)V

    goto :goto_1

    .line 576
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method private onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 609
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    sget-object v0, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    sget-object v3, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v3}, Lcom/android/camera/component/MainBar;->isCurrentAnchor(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/MainBar;->setButtonVisibility(Landroid/view/View;Z)V

    .line 614
    return-void

    :cond_3
    move v0, v2

    .line 606
    goto :goto_0

    :cond_4
    move v0, v2

    .line 609
    goto :goto_1
.end method

.method private resetCloseMenuTimer()V
    .locals 6

    .prologue
    const/16 v2, 0x2711

    .line 629
    invoke-virtual {p0, v2}, Lcom/android/camera/component/MainBar;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const-wide/16 v3, 0x1f40

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 632
    return-void
.end method

.method private setButtonVisibility(Landroid/view/View;Z)V
    .locals 6
    .parameter "view"
    .parameter "isVisible"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 639
    if-eqz p1, :cond_0

    .line 641
    if-eqz p2, :cond_1

    .line 643
    invoke-virtual {p0, p1, v5, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    .line 644
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v0

    int-to-float v1, v0

    .local v1, degrees:F
    move-object v0, p1

    move v2, v1

    move v4, v3

    .line 645
    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    .line 656
    .end local v1           #degrees:F
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/camera/component/MainBar;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private setSceneButtonIcon(Lcom/android/camera/effect/EffectBase;)V
    .locals 3
    .parameter "scene"

    .prologue
    .line 663
    const v0, 0x7f020034

    .line 664
    .local v0, icon:I
    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, name:Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    const v0, 0x7f020034

    .line 667
    :cond_0
    const-string v2, "portrait"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    const v0, 0x7f02003e

    .line 669
    :cond_1
    const-string v2, "landscape"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    const v0, 0x7f02003a

    .line 671
    :cond_2
    const-string v2, "smartshot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 672
    const v0, 0x7f020042

    .line 673
    :cond_3
    const-string v2, "sports"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 674
    const v0, 0x7f020042

    .line 675
    :cond_4
    const-string v2, "panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    const v0, 0x7f02003d

    .line 677
    :cond_5
    const-string v2, "hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 678
    const v0, 0x7f020039

    .line 679
    :cond_6
    const-string v2, "B_whiteboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 680
    const v0, 0x7f020043

    .line 681
    :cond_7
    const-string v2, "flowers"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 682
    const v0, 0x7f02003c

    .line 683
    :cond_8
    const-string v2, "backlight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 684
    const v0, 0x7f02003b

    .line 685
    :cond_9
    const-string v2, "night"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 686
    const v0, 0x7f02003b

    .line 689
    :cond_a
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_b

    .line 690
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 691
    :cond_b
    return-void
.end method

.method private setupModesMenu()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 699
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/menu/MenuItem;>;"
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_fast_fps"

    const v3, 0x7f0a00ac

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    .line 712
    .local v0, item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 713
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 714
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    :cond_0
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    const v1, 0x7f0a00ad

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 719
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const-string v1, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 720
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 721
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v7

    .line 725
    .local v7, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v7}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00b4

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 728
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 729
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 730
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_1
    invoke-static {v7}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00b3

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 737
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 738
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 739
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_2
    invoke-static {v7}, Lcom/android/camera/component/SmartShotController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    new-instance v0, Lcom/android/camera/menu/RadioButtonMenuItem;

    .end local v0           #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00ae

    invoke-direct {v0, v1}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    .line 746
    .restart local v0       #item:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 747
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 748
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_3
    return-void
.end method

.method private showPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "content"
    .parameter "anchor"

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 764
    new-instance v0, Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/PopupBubble;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    .line 765
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;)V

    .line 766
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V

    .line 767
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_PopupOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V

    .line 768
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 769
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    new-instance v1, Lcom/android/camera/component/MainBar$22;

    invoke-direct {v1, p0}, Lcom/android/camera/component/MainBar$22;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/PopupBubble;->setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V

    .line 780
    iput-object p2, p0, Lcom/android/camera/component/MainBar;->m_CurrentAnchor:Landroid/view/View;

    .line 783
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;)V

    .line 784
    const/16 v0, 0x2711

    const-wide/16 v1, 0x1f40

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/camera/component/MainBar;->sendMessage(Lcom/android/camera/component/Component;IJ)Z

    .line 785
    return-void
.end method

.method private showScenePanel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 833
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 862
    :goto_0
    return v0

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 838
    goto :goto_0

    .line 841
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 844
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/ScenesMenu;->updateItemContents()V

    .line 847
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 850
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 853
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 857
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    .line 860
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    .line 862
    goto :goto_0
.end method

.method private showSettingsPanel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 793
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 824
    :goto_0
    return v0

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->isCaptureUIBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 798
    goto :goto_0

    .line 801
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 804
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->initializeMenuItems()V

    .line 805
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->updateItemContents()V

    .line 806
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0}, Lcom/android/camera/menu/SettingsMenu;->collapseAllItems()V

    .line 807
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/SettingsMenu;->setSelectedGroup(I)V

    .line 811
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getRotation()Lcom/android/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/MainBar;->updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 814
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcIconButton;->setColorOn(Z)V

    .line 817
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 820
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/MainBar;->showPopup(Landroid/view/View;Landroid/view/View;)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move v0, v2

    .line 824
    goto :goto_0
.end method

.method private switchFlashMode()V
    .locals 4

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 872
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    sget-object v2, Lcom/android/camera/component/MainBar$23;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 881
    :pswitch_0
    sget-object v3, Lcom/android/camera/component/MainBar$23;->$SwitchMap$com$android$camera$FlashMode:[I

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/FlashMode;

    invoke-virtual {v2}, Lcom/android/camera/FlashMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 890
    sget-object v1, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    .line 908
    .local v1, nextMode:Lcom/android/camera/FlashMode;
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setFlashMode(Lcom/android/camera/FlashMode;)V

    goto :goto_0

    .line 884
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_1
    sget-object v1, Lcom/android/camera/FlashMode;->On:Lcom/android/camera/FlashMode;

    .line 885
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 887
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_2
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 888
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 898
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :pswitch_3
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 899
    sget-object v1, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 901
    .end local v1           #nextMode:Lcom/android/camera/FlashMode;
    :cond_2
    sget-object v1, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    .line 902
    .restart local v1       #nextMode:Lcom/android/camera/FlashMode;
    goto :goto_1

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 881
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toggleSettingsPanel()V
    .locals 2

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V

    .line 920
    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-ne v0, v1, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    .line 924
    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->showSettingsPanel()Z

    goto :goto_0
.end method

.method private updateButtonStates()V
    .locals 4

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 933
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 936
    .local v1, isSettingsEnable:Z
    if-eqz v1, :cond_0

    .line 937
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 940
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 943
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateSceneButtonStates()V

    .line 945
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    .line 946
    return-void
.end method

.method private updateFlashIcon()V
    .locals 13

    .prologue
    .line 968
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    if-nez v11, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 974
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v12, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v11, v12}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v9

    .line 976
    .local v9, isSettingsEnable:Z
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_2

    .line 978
    :cond_1
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const v12, 0x7f020037

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 980
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/FlashMode;

    .line 988
    .local v4, flashMode:Lcom/android/camera/FlashMode;
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_6

    .line 991
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 992
    .local v10, res:Landroid/content/res/Resources;
    const v11, 0x7f070009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, flashModes:[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    .line 996
    .local v3, flashIcons:[I
    const v11, 0x7f07000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 999
    .local v7, flashTexts:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    .line 1000
    .local v2, flashIconIndex:I
    array-length v11, v5

    add-int/lit8 v8, v11, -0x1

    .local v8, i:I
    :goto_1
    if-ltz v8, :cond_3

    .line 1002
    iget-object v11, v4, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    aget-object v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1004
    move v2, v8

    .line 1008
    :cond_3
    if-gez v2, :cond_4

    .line 1010
    const/4 v2, 0x0

    .line 1011
    sget-object v4, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    .line 1015
    :cond_4
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    aget v12, v3, v2

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    .line 1039
    .end local v2           #flashIconIndex:I
    .end local v3           #flashIcons:[I
    .end local v5           #flashModes:[Ljava/lang/String;
    .end local v7           #flashTexts:Landroid/content/res/TypedArray;
    .end local v8           #i:I
    .end local v10           #res:Landroid/content/res/Resources;
    :goto_2
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1000
    .restart local v2       #flashIconIndex:I
    .restart local v3       #flashIcons:[I
    .restart local v5       #flashModes:[Ljava/lang/String;
    .restart local v7       #flashTexts:Landroid/content/res/TypedArray;
    .restart local v8       #i:I
    .restart local v10       #res:Landroid/content/res/Resources;
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1023
    .end local v2           #flashIconIndex:I
    .end local v3           #flashIcons:[I
    .end local v5           #flashModes:[Ljava/lang/String;
    .end local v7           #flashTexts:Landroid/content/res/TypedArray;
    .end local v8           #i:I
    .end local v10           #res:Landroid/content/res/Resources;
    :cond_6
    iget-object v11, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    sget-object v12, Lcom/android/camera/FlashMode;->Torch:Lcom/android/camera/FlashMode;

    invoke-virtual {v11, v12}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1025
    const v1, 0x7f020037

    .line 1026
    .local v1, flashIconID:I
    const v6, 0x7f0a0213

    .line 1036
    .local v6, flashTextID:I
    :goto_3
    iget-object v11, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcIconButton;->setIconResource(I)V

    goto :goto_2

    .line 1031
    .end local v1           #flashIconID:I
    .end local v6           #flashTextID:I
    :cond_7
    const v1, 0x7f020038

    .line 1032
    .restart local v1       #flashIconID:I
    const v6, 0x7f0a0212

    .restart local v6       #flashTextID:I
    goto :goto_3

    .line 995
    nop

    :array_0
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private updateModesMenu()V
    .locals 0

    .prologue
    .line 1070
    return-void
.end method

.method private updateSceneButtonStates()V
    .locals 4

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 952
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 955
    .local v1, isSettingsEnable:Z
    if-eqz v1, :cond_0

    .line 956
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    .line 958
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    .line 959
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcIconButton;->setEnabled(Z)V

    .line 960
    :cond_1
    return-void

    .line 959
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateScenesPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const v6, 0x7f0b0055

    const v5, 0x7f0b0054

    const/4 v4, -0x2

    .line 1117
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    if-nez v3, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1124
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1129
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1130
    .local v2, width:I
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1140
    .local v0, height:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_ScenesMenu:Lcom/android/camera/menu/ScenesMenu;

    invoke-static {v3, v2, v0}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 1144
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v3, :cond_0

    .line 1146
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, v4, v4}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 1147
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1137
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1138
    .restart local v2       #width:I
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_1
.end method

.method private updateSettingsPanelRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 7
    .parameter "rotation"

    .prologue
    const v6, 0x7f0b0053

    const v5, 0x7f0b0052

    const/4 v4, -0x2

    .line 1078
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    if-nez v3, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1085
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1090
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1091
    .local v2, width:I
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1101
    .local v0, height:I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_SettingsMenu:Lcom/android/camera/menu/SettingsMenu;

    invoke-static {v3, v2, v0}, Lcom/android/camera/ViewUtil;->setSize(Landroid/view/View;II)V

    .line 1104
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    if-eqz v3, :cond_0

    .line 1106
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, v4, v4}, Lcom/android/camera/widget/PopupBubble;->setSize(II)V

    .line 1107
    iget-object v3, p0, Lcom/android/camera/component/MainBar;->m_CurrentPopup:Lcom/android/camera/widget/PopupBubble;

    invoke-virtual {v3, p1}, Lcom/android/camera/widget/PopupBubble;->setContentRotation(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 1098
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1099
    .restart local v2       #width:I
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0       #height:I
    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 153
    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 156
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    .line 157
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 175
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->closePopup()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 185
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 189
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->settingsMenuState:Lcom/android/camera/property/Property;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    .line 192
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    .line 193
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    .line 194
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    .line 196
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcIconButton;->stayInPress(Z)V

    .line 197
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_FunctionBar:Landroid/view/View;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    iput-object v2, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    .line 200
    invoke-direct {p0}, Lcom/android/camera/component/MainBar;->updateFlashIcon()V

    .line 203
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;

    new-instance v3, Lcom/android/camera/component/MainBar$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$3;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;

    new-instance v3, Lcom/android/camera/component/MainBar$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$4;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;

    new-instance v3, Lcom/android/camera/component/MainBar$5;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$5;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/MainBar$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$6;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 250
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/component/MainBar$7;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$7;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 261
    new-instance v1, Lcom/android/camera/component/MainBar$8;

    invoke-direct {v1, p0}, Lcom/android/camera/component/MainBar$8;-><init>(Lcom/android/camera/component/MainBar;)V

    .line 269
    .local v1, flashStateChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 270
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/MainBar$9;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/MainBar$9;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->hasFlash:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 279
    iget-object v2, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/component/MainBar$10;

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/camera/component/MainBar$10;-><init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isCaptureUIOpen:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$11;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$11;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 303
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isFlashDisabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 304
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$12;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$12;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 327
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$13;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$13;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 335
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->settingsMenuState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$14;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$14;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 343
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$15;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$15;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 352
    iget-object v2, v0, Lcom/android/camera/HTCCamera;->effectPanelState:Lcom/android/camera/property/Property;

    new-instance v3, Lcom/android/camera/component/MainBar$16;

    invoke-direct {v3, p0}, Lcom/android/camera/component/MainBar$16;-><init>(Lcom/android/camera/component/MainBar;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 368
    return-void
.end method
