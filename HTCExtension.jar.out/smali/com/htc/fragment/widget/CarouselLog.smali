.class public Lcom/htc/fragment/widget/CarouselLog;
.super Ljava/lang/Object;
.source "CarouselLog.java"


# static fields
.field private static final DEBUD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGI:Z = false

.field private static final LOGT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGW:Z = false

.field public static final TAG:Ljava/lang/String; = "CarouselFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "CarouselFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGV:Z

    .line 11
    const-string v0, "CarouselFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGD:Z

    .line 12
    const-string v0, "CarouselFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGI:Z

    .line 13
    const-string v0, "CarouselFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGW:Z

    .line 14
    const-string v0, "CarouselFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static final dd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 47
    return-void
.end method

.method public static final de(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 59
    return-void
.end method

.method public static final di(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 51
    return-void
.end method

.method public static final dv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 43
    return-void
.end method

.method public static final dw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 55
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGI:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static final stackTrace()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public static final v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGW:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method
