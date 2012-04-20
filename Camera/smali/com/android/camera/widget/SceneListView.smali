.class public Lcom/android/camera/widget/SceneListView;
.super Landroid/widget/FrameLayout;
.source "SceneListView.java"


# instance fields
.field private mMainList:Lcom/htc/widget/HtcListView;

.field private mMainMenu:Landroid/widget/LinearLayout;

.field private mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

.field private m_Context:Landroid/content/Context;

.field private m_EffectList:Lcom/android/camera/effect/EffectList;

.field private m_EffectManager:Lcom/android/camera/effect/EffectManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/effect/EffectList;)V
    .locals 1
    .parameter "context"
    .parameter "effectlist"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    .line 40
    iput-object p2, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/widget/SceneListView;->initialize()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/EffectManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_EffectManager:Lcom/android/camera/effect/EffectManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/SceneListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/SceneListView;)Lcom/android/camera/effect/SceneMenuAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030012

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v1, 0x7f08008a

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SceneListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainMenu:Landroid/widget/LinearLayout;

    .line 50
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/SceneListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Lcom/htc/widget/HtcListView;

    .line 52
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 56
    new-instance v2, Lcom/android/camera/effect/SceneMenuAdapter;

    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/widget/SceneListView;->m_EffectList:Lcom/android/camera/effect/EffectList;

    invoke-direct {v2, v1, v3}, Lcom/android/camera/effect/SceneMenuAdapter;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/effect/EffectList;)V

    iput-object v2, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    .line 57
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/android/camera/widget/SceneListView;->mSceneMenuAdapter:Lcom/android/camera/effect/SceneMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/camera/widget/SceneListView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SceneListView$1;-><init>(Lcom/android/camera/widget/SceneListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->mMainList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/camera/widget/SceneListView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SceneListView$2;-><init>(Lcom/android/camera/widget/SceneListView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/widget/SceneListView;->m_Context:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/widget/SceneListView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/SceneListView$3;-><init>(Lcom/android/camera/widget/SceneListView;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 94
    return-void
.end method
