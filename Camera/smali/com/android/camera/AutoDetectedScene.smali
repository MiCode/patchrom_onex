.class public final enum Lcom/android/camera/AutoDetectedScene;
.super Ljava/lang/Enum;
.source "AutoDetectedScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/AutoDetectedScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/AutoDetectedScene;

.field public static final enum ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

.field public static final enum FiveShots:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Group:Lcom/android/camera/AutoDetectedScene;

.field public static final enum Hdr:Lcom/android/camera/AutoDetectedScene;

.field public static final enum None:Lcom/android/camera/AutoDetectedScene;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    .line 6
    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "FiveShots"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    .line 7
    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Hdr"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    .line 8
    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "Group"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->Group:Lcom/android/camera/AutoDetectedScene;

    .line 9
    new-instance v0, Lcom/android/camera/AutoDetectedScene;

    const-string v1, "ContinuousBurst"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/AutoDetectedScene;

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->FiveShots:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Hdr:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->Group:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->ContinuousBurst:Lcom/android/camera/AutoDetectedScene;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/AutoDetectedScene;->$VALUES:[Lcom/android/camera/AutoDetectedScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/AutoDetectedScene;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/android/camera/AutoDetectedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoDetectedScene;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/AutoDetectedScene;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/camera/AutoDetectedScene;->$VALUES:[Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0}, [Lcom/android/camera/AutoDetectedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/AutoDetectedScene;

    return-object v0
.end method
