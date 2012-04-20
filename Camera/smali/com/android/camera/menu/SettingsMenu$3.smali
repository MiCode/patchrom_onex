.class Lcom/android/camera/menu/SettingsMenu$3;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/SettingsMenu;->showGpsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/SettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu$3;->this$0:Lcom/android/camera/menu/SettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/menu/SettingsMenu$3;->this$0:Lcom/android/camera/menu/SettingsMenu;

    #getter for: Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/menu/SettingsMenu;->access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    .line 758
    return-void
.end method
