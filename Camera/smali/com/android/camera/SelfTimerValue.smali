.class public final enum Lcom/android/camera/SelfTimerValue;
.super Ljava/lang/Enum;
.source "SelfTimerValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SelfTimerValue$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SelfTimerValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SelfTimerValue;

.field public static final enum Countdown_0s:Lcom/android/camera/SelfTimerValue;

.field public static final enum Countdown_10s:Lcom/android/camera/SelfTimerValue;

.field public static final enum Countdown_2s:Lcom/android/camera/SelfTimerValue;

.field public static final enum Disabled:Lcom/android/camera/SelfTimerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/android/camera/SelfTimerValue;

    const-string v1, "Countdown_0s"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SelfTimerValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    .line 6
    new-instance v0, Lcom/android/camera/SelfTimerValue;

    const-string v1, "Countdown_2s"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/SelfTimerValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SelfTimerValue;->Countdown_2s:Lcom/android/camera/SelfTimerValue;

    .line 7
    new-instance v0, Lcom/android/camera/SelfTimerValue;

    const-string v1, "Countdown_10s"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/SelfTimerValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SelfTimerValue;->Countdown_10s:Lcom/android/camera/SelfTimerValue;

    .line 8
    new-instance v0, Lcom/android/camera/SelfTimerValue;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/SelfTimerValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/SelfTimerValue;

    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_2s:Lcom/android/camera/SelfTimerValue;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/SelfTimerValue;->Countdown_10s:Lcom/android/camera/SelfTimerValue;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/SelfTimerValue;->$VALUES:[Lcom/android/camera/SelfTimerValue;

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

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SelfTimerValue;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/android/camera/SelfTimerValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SelfTimerValue;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SelfTimerValue;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/camera/SelfTimerValue;->$VALUES:[Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v0}, [Lcom/android/camera/SelfTimerValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SelfTimerValue;

    return-object v0
.end method


# virtual methods
.method public getIntergerValue()I
    .locals 3

    .prologue
    .line 17
    sget-object v1, Lcom/android/camera/SelfTimerValue$1;->$SwitchMap$com$android$camera$SelfTimerValue:[I

    invoke-virtual {p0}, Lcom/android/camera/SelfTimerValue;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    .line 32
    .local v0, value:I
    :goto_0
    return v0

    .line 20
    .end local v0           #value:I
    :pswitch_0
    const/4 v0, 0x0

    .line 21
    .restart local v0       #value:I
    goto :goto_0

    .line 23
    .end local v0           #value:I
    :pswitch_1
    const/4 v0, 0x2

    .line 24
    .restart local v0       #value:I
    goto :goto_0

    .line 26
    .end local v0           #value:I
    :pswitch_2
    const/16 v0, 0xa

    .line 27
    .restart local v0       #value:I
    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOff()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/camera/SelfTimerValue;->Disabled:Lcom/android/camera/SelfTimerValue;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/camera/SelfTimerValue;->isOff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
