.class Lcom/android/camera/menu/ScenesMenu$SubItem;
.super Lcom/android/camera/menu/RadioButtonMenuItem;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ScenesMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubItem"
.end annotation


# instance fields
.field private final scene:Lcom/android/camera/effect/EffectBase;

.field final synthetic this$0:Lcom/android/camera/menu/ScenesMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V
    .locals 4
    .parameter
    .parameter "scene"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu$SubItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    invoke-direct {p0}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;

    .line 64
    #calls: Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    invoke-static {p2}, Lcom/android/camera/menu/ScenesMenu;->access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .local v0, iconAndText:[Ljava/lang/Integer;
    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    .line 66
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setIcon(I)V

    .line 67
    :cond_0
    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    .line 68
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setTitle(I)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method


# virtual methods
.method protected onClicked()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu$SubItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    #getter for: Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;
    invoke-static {v0}, Lcom/android/camera/menu/ScenesMenu;->access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectList;->setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method
