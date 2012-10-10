.class Lcom/android/camera/component/AutoFocusController$FocusInfo;
.super Ljava/lang/Object;
.source "AutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/AutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FocusInfo"
.end annotation


# instance fields
.field public focusAreas:[Landroid/graphics/RectF;

.field public focusID:J

.field public focusMode:Lcom/android/camera/AutoFocusMode;

.field public meteringAreas:[Landroid/graphics/RectF;


# direct methods
.method public constructor <init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 0
    .parameter "focusAreas"
    .parameter "mode"

    .prologue
    .line 48
    invoke-direct {p0, p1, p1, p2}, Lcom/android/camera/component/AutoFocusController$FocusInfo;-><init>([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 49
    return-void
.end method

.method public constructor <init>([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 0
    .parameter "focusAreas"
    .parameter "meteringAreas"
    .parameter "mode"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    .line 53
    iput-object p2, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->meteringAreas:[Landroid/graphics/RectF;

    .line 54
    iput-object p3, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    .line 55
    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoFocusController$FocusInfo;->focusMode:Lcom/android/camera/AutoFocusMode;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
