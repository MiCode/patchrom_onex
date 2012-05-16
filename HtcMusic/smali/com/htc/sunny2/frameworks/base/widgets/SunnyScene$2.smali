.class Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.2;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 661
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene.2;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;->this$0:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onActionBarBackPressed()V

    .line 662
    return-void
.end method
