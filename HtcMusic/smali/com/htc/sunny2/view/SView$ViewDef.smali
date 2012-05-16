.class Lcom/htc/sunny2/view/SView$ViewDef;
.super Landroid/view/View;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewDef"
.end annotation


# static fields
.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final ENABLED_FOCUSED_STATE_SETa:[I

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final ENABLED_SELECTED_STATE_SETa:[I

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final ENABLED_STATE_SETa:[I

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final FOCUSED_SELECTED_STATE_SETa:[I

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final FOCUSED_STATE_SETa:[I

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_STATE_SETa:[I

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SETa:[I

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_SELECTED_STATE_SETa:[I

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final PRESSED_STATE_SETa:[I

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final SELECTED_STATE_SETa:[I

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

.field protected static final WINDOW_FOCUSED_STATE_SETa:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_STATE_SETa:[I

    .line 90
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_STATE_SETa:[I

    .line 91
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_STATE_SETa:[I

    .line 92
    sget-object v0, Lcom/htc/wrap/android/view/HtcWrapView;->PRESSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_STATE_SETa:[I

    .line 93
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->WINDOW_FOCUSED_STATE_SETa:[I

    .line 94
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_STATE_SETa:[I

    .line 95
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_STATE_SETa:[I

    .line 96
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 97
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_STATE_SETa:[I

    .line 98
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 99
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 100
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    .line 101
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 102
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 103
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 104
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 105
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 106
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_STATE_SETa:[I

    .line 107
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 108
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_STATE_SETa:[I

    .line 109
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 110
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_STATE_SETa:[I

    .line 111
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 112
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_STATE_SETa:[I

    .line 113
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 114
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_STATE_SETa:[I

    .line 115
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 116
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_STATE_SETa:[I

    .line 117
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 118
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SETa:[I

    .line 119
    sget-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    sput-object v0, Lcom/htc/sunny2/view/SView$ViewDef;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SETa:[I

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    return-void
.end method
