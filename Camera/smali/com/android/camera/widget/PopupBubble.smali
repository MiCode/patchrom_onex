.class public final Lcom/android/camera/widget/PopupBubble;
.super Ljava/lang/Object;
.source "PopupBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/PopupBubble$ExpandDirection;,
        Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;,
        Lcom/android/camera/widget/PopupBubble$OnOpenListener;,
        Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    }
.end annotation


# instance fields
.field private m_Anchor:Landroid/view/View;

.field private final m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

.field private final m_Context:Landroid/content/Context;

.field private m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field private m_Height:I

.field private m_IsReopeningWindow:Z

.field private m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

.field private m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

.field private m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

.field private m_Tag:Ljava/lang/Object;

.field private m_Width:I

.field private m_Window:Lcom/htc/widget/PopupBubbleWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    .line 64
    sget-object v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Default:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    .line 65
    iput v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    .line 71
    iput v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    .line 80
    new-instance v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 83
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/PopupBubble;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PopupBubble;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PopupBubble;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/PopupBubble;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    return-object v0
.end method

.method private convertToWindowLayoutSize(I)I
    .locals 0
    .parameter "size"

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 p1, 0x0

    .end local p1
    :pswitch_0
    return p1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reopenWindow()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    .line 234
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    .line 235
    return-void
.end method

.method private updateWindowSize()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    invoke-direct {p0, v2}, Lcom/android/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 373
    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    if-lez v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    .line 375
    :cond_3
    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Tag:Ljava/lang/Object;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    .line 157
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setTouchable(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iget v1, v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->value:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupBubble$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupBubble$1;-><init>(Lcom/android/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupBubble$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupBubble$2;-><init>(Lcom/android/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 216
    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->updateWindowSize()V

    .line 219
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iget v1, v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->xOffset:I

    iget-object v2, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iget v2, v2, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->yOffset:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 223
    iget-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/PopupBubble$OnOpenListener;->onOpen(Lcom/android/camera/widget/PopupBubble;)V

    .line 225
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    goto :goto_0
.end method

.method public setContentRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    .line 243
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    .line 245
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "view"
    .parameter "layoutParams"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 257
    iget-object v2, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->removeAllViews()V

    .line 260
    if-eqz p1, :cond_2

    .line 263
    instance-of v2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_1

    .line 265
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .local v1, newLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p2, :cond_3

    .line 268
    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 269
    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    instance-of v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 272
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 273
    .local v0, marginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 286
    .end local v0           #marginLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    move-object p2, v1

    .line 290
    .end local v1           #newLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :cond_2
    return-void

    .line 283
    .restart local v1       #newLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public final setExpandDirection(Lcom/android/camera/widget/PopupBubble$ExpandDirection;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    .line 303
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    .line 305
    :cond_0
    return-void
.end method

.method public setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    .line 313
    return-void
.end method

.method public setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    .line 317
    return-void
.end method

.method public setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    .line 321
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 329
    iput p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    .line 330
    iput p2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    .line 333
    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 334
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 335
    if-ne p2, v2, :cond_2

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 341
    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->updateWindowSize()V

    .line 343
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 334
    goto :goto_0

    :cond_2
    move v2, v3

    .line 335
    goto :goto_1
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Tag:Ljava/lang/Object;

    .line 351
    return-void
.end method
