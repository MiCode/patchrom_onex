.class Lcom/android/internal/policy/impl/HtcPolicyUtils;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_PHONE:Z = false

.field static final TAG:Ljava/lang/String; = "HtcPolicyUtils"

.field static final TAG_PREFIX:Ljava/lang/String; = "HtcPolicyUtils-"


# instance fields
.field phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;-><init>(Lcom/android/internal/policy/impl/HtcPolicyUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    .line 24
    return-void
.end method
