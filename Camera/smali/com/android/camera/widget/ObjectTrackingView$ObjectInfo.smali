.class Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;
.super Ljava/lang/Object;
.source "ObjectTrackingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ObjectTrackingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectInfo"
.end annotation


# instance fields
.field public focused:Z

.field public final rect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/ObjectTrackingView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/widget/ObjectTrackingView$ObjectInfo;-><init>()V

    return-void
.end method
