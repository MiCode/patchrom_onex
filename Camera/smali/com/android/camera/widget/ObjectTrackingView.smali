.class public final Lcom/android/camera/widget/ObjectTrackingView;
.super Landroid/view/View;
.source "ObjectTrackingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ObjectTrackingView$1;,
        Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;
    }
.end annotation


# static fields
.field private static final ARROR_SIZE:I = 0xc

.field private static final OT_FRAME_W:I = 0x26


# instance fields
.field private m_FocusCenter:I

.field private m_FocusSucess:I

.field private m_ObjectCount:I

.field private final m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

.field private m_bIsFace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v1, 0x7f02007b

    iput v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_FocusSucess:I

    .line 21
    const v1, 0x7f02007a

    iput v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_FocusCenter:I

    .line 23
    const/16 v1, 0x20

    new-array v1, v1, [Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    iput-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_bIsFace:Z

    .line 43
    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    new-instance v2, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;-><init>(Lcom/android/camera/widget/ObjectTrackingView$1;)V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public isInRegion(ILandroid/graphics/Point;)Z
    .locals 4
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 142
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    if-gt p1, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v10, 0x26

    const/high16 v6, 0x4040

    .line 53
    iget v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    if-nez v5, :cond_1

    .line 97
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-boolean v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_bIsFace:Z

    if-nez v5, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/widget/ObjectTrackingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_FocusSucess:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, drawFrame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/camera/widget/ObjectTrackingView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_FocusCenter:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, drawCenter:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 62
    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    add-int/lit8 v6, v6, -0xc

    iget-object v7, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    add-int/lit8 v7, v7, -0xc

    iget-object v8, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    iget-object v9, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 66
    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v10, v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v10, v5, :cond_4

    .line 67
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    add-int/lit8 v6, v6, -0x26

    iget-object v7, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    add-int/lit8 v7, v7, -0x26

    iget-object v8, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    add-int/lit8 v8, v8, 0x26

    iget-object v9, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int/lit8 v9, v9, 0x26

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    :goto_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 69
    :cond_4
    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 77
    .end local v0           #drawCenter:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawFrame:Landroid/graphics/drawable/Drawable;
    .end local v2           #i:I
    :cond_5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 78
    .local v4, paint:Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    add-int/lit8 v2, v5, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_0

    .line 83
    iget-object v5, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v3, v5, v2

    .line 86
    .local v3, objInfo:Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;
    iget-boolean v5, v3, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->focused:Z

    if-eqz v5, :cond_6

    .line 87
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    :goto_3
    iget-object v5, v3, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 91
    :cond_6
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    const v5, -0x33000001

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method

.method public setFaceOTMode(Z)V
    .locals 0
    .parameter "bIsface"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_bIsFace:Z

    .line 157
    return-void
.end method

.method public setObjectFocusState(IZ)V
    .locals 1
    .parameter "objectIndex"
    .parameter "isFocused"

    .prologue
    .line 104
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    if-ge p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->focused:Z

    if-eq v0, p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->focused:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/widget/ObjectTrackingView;->invalidate()V

    .line 112
    :cond_0
    return-void
.end method

.method public setObjectRegions([Landroid/graphics/Rect;)V
    .locals 4
    .parameter "regions"

    .prologue
    const/4 v3, 0x0

    .line 119
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_3

    .line 121
    :cond_0
    iget v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    if-nez v1, :cond_1

    .line 135
    :goto_0
    return-void

    .line 123
    :cond_1
    iput v3, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/widget/ObjectTrackingView;->invalidate()V

    goto :goto_0

    .line 127
    :cond_3
    array-length v1, p1

    iget-object v2, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    .line 128
    iget v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_ObjectCount:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    iget-object v1, p0, Lcom/android/camera/widget/ObjectTrackingView;->m_Objects:[Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->focused:Z

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
