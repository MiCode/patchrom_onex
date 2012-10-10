.class public Landroid/webkit/EditableWebView;
.super Landroid/webkit/WebView;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$SingleTapQuickActions;,
        Landroid/webkit/EditableWebView$OnScrollChangedListener;,
        Landroid/webkit/EditableWebView$OnOverScrollListener;,
        Landroid/webkit/EditableWebView$OnContentChangedListener;,
        Landroid/webkit/EditableWebView$OnImageSelectedListener;,
        Landroid/webkit/EditableWebView$EditableQuickActions;,
        Landroid/webkit/EditableWebView$ImageInfo;,
        Landroid/webkit/EditableWebView$AnchorTouchListener;,
        Landroid/webkit/EditableWebView$QuickSelectionED;,
        Landroid/webkit/EditableWebView$ShowSipResultReceiver;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

.field private static final DEBUG:Z = false

.field public static DELAY_CURSOR_ANCHOR_DISAPPEAR:I = 0x0

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static final SELECTION_CONTAIN_MORETHAN_ONEIMAGE:I = 0x0

.field private static final SELECTION_CONTAIN_NO_IMAGE:I = 0x2

.field private static final SELECTION_CONTAIN_ONLY_ONE_IMAGE:I = 0x1


# instance fields
.field private final HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field private final SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field final TOLERANT_DISTANCE:I

.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

.field private isConfigurationChanged:Z

.field isNoteAP:Z

.field isPauseSelectUI:Z

.field longPressOnWebView:Z

.field mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

.field mClipboard:Landroid/content/ClipboardManager;

.field mDpadKeyPressed:Z

.field private mEditingNode:I

.field private mEditingText:Ljava/lang/String;

.field private mEndIndex:I

.field private mInBatchEditControllers:Z

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mLandscapeDensity:I

.field private mOldScreenOffset:[I

.field private mOldScrollX:I

.field private mOldScrollY:I

.field private mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field private mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

.field private mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

.field private mOverScrollThreshold:I

.field private mPenDownRect:Landroid/graphics/Rect;

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPortraitDensity:I

.field private mPreDrawState:I

.field mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mPrivateImeOptions:Ljava/lang/String;

.field private mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

.field private mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

.field private mScreenOffset:[I

.field private mScrollviewParent:Landroid/widget/ScrollView;

.field private mSelectCallback:Landroid/webkit/WebView$WrapActions;

.field private mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

.field private mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field private mStartIndex:I

.field private mTappedURL:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mUpdateTimestamp:J

.field private mVSbound:Landroid/graphics/Rect;

.field private mVStype:I

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z

.field private predrawForSIPShown:Z

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0xbb8

    sput v0, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 85
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    .line 86
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    .line 87
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    .line 90
    iput v2, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    .line 93
    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    .line 94
    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    .line 96
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    .line 97
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    .line 98
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    .line 103
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    .line 107
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    .line 108
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    .line 112
    iput v2, p0, Landroid/webkit/EditableWebView;->mVStype:I

    .line 117
    iput v2, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 125
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 126
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    .line 128
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 130
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    .line 132
    new-instance v0, Landroid/webkit/EditableWebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$1;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 145
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/webkit/EditableWebView;->HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    .line 146
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/webkit/EditableWebView;->SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    .line 257
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    .line 534
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 740
    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    .line 812
    new-instance v0, Landroid/webkit/EditableWebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$2;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    .line 1059
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    .line 1060
    new-instance v0, Landroid/webkit/EditableWebView$AnchorTouchListener;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$AnchorTouchListener;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

    .line 1284
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView;->TOLERANT_DISTANCE:I

    .line 1285
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    .line 2994
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 3016
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 3017
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3018
    iput v2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    .line 3301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    .line 3341
    new-instance v0, Landroid/webkit/EditableWebView$3;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$3;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    .line 3411
    new-instance v0, Landroid/webkit/EditableWebView$4;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$4;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    .line 3482
    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    .line 159
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 161
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    .line 165
    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    .line 172
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->myInitQuickAction()V

    .line 174
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    .line 175
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 176
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getKeyListener()Landroid/text/method/KeyListener;

    .line 177
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->initSingleTapQuickAction()V

    .line 178
    return-void

    .line 97
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 98
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Landroid/webkit/EditableWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/EditableWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/EditableWebView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/EditableWebView;ILandroid/graphics/PointF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    return v0
.end method

.method static synthetic access$2800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/EditableWebView;[Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/EditableWebView;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/webkit/EditableWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/webkit/EditableWebView;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/webkit/EditableWebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$5900(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/EditableWebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    return-object v0
.end method

.method private checkCursorVisible()Z
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 489
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    if-eqz v7, :cond_6

    .line 490
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 494
    .local v4, scrollableView:Landroid/view/View;
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 495
    .local v5, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 496
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v7}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, changed:Z
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v7, v7, v6

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v8, v8, v0

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 499
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 501
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 502
    const/4 v2, 0x0

    .local v2, dx:I
    const/4 v3, 0x0

    .line 503
    .local v3, dy:I
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    .line 504
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    add-int v2, v7, v8

    .line 507
    :cond_0
    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_1

    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_8

    .line 508
    :cond_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 511
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_5

    .line 512
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v9, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v9, :cond_9

    .line 513
    .local v0, animation:Z
    :cond_4
    :goto_3
    if-ne v4, p0, :cond_a

    .line 514
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v7, v2

    iget v8, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v7, v8, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    .line 528
    :goto_4
    const/4 v1, 0x1

    .line 531
    .end local v0           #animation:Z
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_5
    return v1

    .line 492
    .end local v1           #changed:Z
    .end local v4           #scrollableView:Landroid/view/View;
    .end local v5           #visibleRect:Landroid/graphics/Rect;
    :cond_6
    move-object v4, p0

    .restart local v4       #scrollableView:Landroid/view/View;
    goto/16 :goto_0

    .line 505
    .restart local v1       #changed:Z
    .restart local v2       #dx:I
    .restart local v3       #dy:I
    .restart local v5       #visibleRect:Landroid/graphics/Rect;
    :cond_7
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_0

    .line 506
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_1

    .line 509
    :cond_8
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_2

    .line 510
    iget-object v7, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    sub-int v3, v7, v8

    goto :goto_2

    :cond_9
    move v0, v6

    .line 512
    goto :goto_3

    .line 524
    .restart local v0       #animation:Z
    :cond_a
    if-eqz v3, :cond_b

    .line 525
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    invoke-virtual {v7, v6, v3}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 526
    :cond_b
    iget v7, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v7, v2

    invoke-virtual {p0, v7, v6, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    goto :goto_4
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3060
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I
    .locals 12
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1633
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCore;->nativeGetImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 1635
    .local v3, stringarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 1664
    :goto_0
    return v5

    .line 1638
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, p1, v7

    .line 1639
    aget-object v5, p1, v7

    const-string v9, "SELECTION_CONTAIN_MORETHAN_ONEIMAGE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 1640
    goto :goto_0

    .line 1642
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v7

    .line 1644
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1645
    .local v1, left:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1646
    .local v4, top:I
    const/4 v2, 0x0

    .line 1648
    .local v2, right:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    if-nez v5, :cond_2

    .line 1649
    add-int/lit8 v2, v1, 0x0

    .line 1653
    :goto_1
    const/4 v0, 0x0

    .line 1654
    .local v0, bottom:I
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    if-nez v5, :cond_3

    .line 1655
    add-int/lit8 v0, v4, 0x0

    .line 1660
    :goto_2
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v6

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v7

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v9

    invoke-virtual {p3, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move v5, v8

    .line 1664
    goto :goto_0

    .line 1651
    .end local v0           #bottom:I
    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 1657
    .restart local v0       #bottom:I
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method private horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V
    .locals 7
    .parameter "rawX"
    .parameter "offset"

    .prologue
    const/high16 v6, 0x3f00

    .line 1323
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1324
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1325
    .local v3, screenWidth:I
    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    shr-int/lit8 v2, v4, 0x1

    .line 1326
    .local v2, maxOffset:I
    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    int-to-float v4, v4

    const v5, 0x3fa66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 1327
    .local v0, adjustRange:I
    if-ge p1, v0, :cond_1

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int v5, v2, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1328
    sub-int v4, p1, v0

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v2

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    sub-int v4, v3, p1

    if-ge v4, v0, :cond_0

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1330
    sub-int v4, v0, v3

    add-int/2addr v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 3738
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3761
    :cond_0
    :goto_0
    return-void

    .line 3739
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3740
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3741
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3742
    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3743
    const-string v4, "geo:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "mailto:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "rtsp://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 3749
    .local v1, isDispatcherWanted:Z
    :goto_1
    const-string/jumbo v4, "ro.da1.enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3750
    .local v2, isNoContextMenu:Z
    if-eqz v2, :cond_3

    .line 3752
    if-eqz v1, :cond_3

    .line 3753
    const-string v3, "com.htc.HtcLinkifyDispatcher"

    const-string v4, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3759
    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3760
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1           #isDispatcherWanted:Z
    .end local v2           #isNoContextMenu:Z
    :cond_4
    move v1, v3

    .line 3743
    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 473
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-nez v1, :cond_2

    .line 478
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 479
    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0

    .line 480
    :cond_2
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 481
    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0
.end method

.method private spacialDeNoise(FF)Landroid/graphics/PointF;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4120

    .line 1287
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1288
    .local v4, p:Landroid/graphics/PointF;
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1289
    .local v2, oldCenterX:F
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 1290
    .local v3, oldCenterY:F
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1291
    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 1292
    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 1318
    :goto_0
    return-object v4

    .line 1295
    :cond_0
    const/4 v0, 0x0

    .line 1296
    .local v0, offsetX:F
    const/4 v1, 0x0

    .line 1297
    .local v1, offsetY:F
    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1298
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    .line 1299
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    .line 1305
    :cond_1
    :goto_1
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 1306
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    .line 1307
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    .line 1314
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1315
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 1316
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 1300
    :cond_3
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 1301
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_1

    .line 1304
    :cond_4
    sub-float v0, p1, v2

    goto :goto_1

    .line 1308
    :cond_5
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    .line 1309
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_2

    .line 1312
    :cond_6
    sub-float v1, p2, v3

    goto :goto_2
.end method


# virtual methods
.method public GetImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)Z
    .locals 11
    .parameter "strImagePath"
    .parameter "nImageNode"
    .parameter "rectImage"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1589
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5}, Landroid/webkit/HTCWebCore;->nativeGetImageAttr()Ljava/util/ArrayList;

    move-result-object v3

    .line 1591
    .local v3, stringarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    if-nez v3, :cond_0

    move v5, v6

    .line 1618
    :goto_0
    return v5

    .line 1594
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, p1, v6

    .line 1596
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v6

    .line 1598
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1599
    .local v1, left:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1600
    .local v4, top:I
    const/4 v2, 0x0

    .line 1602
    .local v2, right:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    if-nez v5, :cond_1

    .line 1603
    add-int/lit8 v2, v1, 0x0

    .line 1607
    :goto_1
    const/4 v0, 0x0

    .line 1608
    .local v0, bottom:I
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    if-nez v5, :cond_2

    .line 1609
    add-int/lit8 v0, v4, 0x0

    .line 1614
    :goto_2
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v6

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v8

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v9

    invoke-virtual {p3, v5, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1616
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move v5, v7

    .line 1618
    goto :goto_0

    .line 1605
    .end local v0           #bottom:I
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v2, v1, v5

    goto :goto_1

    .line 1611
    .restart local v0       #bottom:I
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int v0, v4, v5

    goto :goto_2
.end method

.method public SetBackColor(IZ)V
    .locals 7
    .parameter "color"
    .parameter "enableBackColor"

    .prologue
    const/16 v5, 0xff

    .line 1747
    const/4 v0, 0x0

    .line 1748
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 1749
    .local v4, nR:I
    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 1750
    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    .line 1752
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1753
    .local v3, nG:I
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 1754
    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    .line 1756
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 1757
    .local v2, nB:I
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 1758
    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    .line 1760
    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 1761
    .local v1, nA:I
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 1762
    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    .line 1764
    :cond_7
    if-nez p2, :cond_8

    .line 1765
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1768
    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1769
    return-void

    .line 1767
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1827
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 1828
    return-void
.end method

.method public SetForeColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/16 v4, 0xff

    .line 1702
    const/4 v0, 0x0

    .line 1703
    .local v0, StrColor:Ljava/lang/String;
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 1704
    .local v3, nR:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 1705
    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    .line 1707
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1708
    .local v2, nG:I
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 1709
    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    .line 1711
    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 1712
    .local v1, nB:I
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 1713
    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    .line 1715
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1716
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1717
    return-void
.end method

.method public SetImageAttr(III)V
    .locals 4
    .parameter "pointer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1672
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScale()F

    move-result v0

    .line 1673
    .local v0, fCurrentScale:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1674
    int-to-float v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 1675
    int-to-float v1, p3

    div-float/2addr v1, v0

    float-to-int p3, v1

    .line 1678
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x20b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 1680
    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 3686
    invoke-super {p0, p1}, Landroid/webkit/WebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 3687
    return-void
.end method

.method public alignCenter()V
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1534
    return-void
.end method

.method public alignJustified()V
    .locals 2

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1539
    return-void
.end method

.method public alignLeft()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1544
    return-void
.end method

.method public alignRight()V
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1549
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    .line 230
    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1576
    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1
    .parameter "distance"

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    .line 3295
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/webkit/EditableWebView$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    .line 3296
    const/4 v0, 0x0

    .line 3298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 1378
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    .line 1380
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->insetText(ILjava/lang/String;)V

    .line 1381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1553
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1556
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1557
    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 6
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    .line 1401
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1404
    :goto_0
    return-void

    .line 1403
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewCore;->deleteSurroundingText(IIIII)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    .line 186
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 187
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public enableMultiTouch()V
    .locals 0

    .prologue
    .line 3698
    invoke-super {p0}, Landroid/webkit/WebView;->enableMultiTouch()V

    .line 3699
    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 6
    .parameter "portraitScale"
    .parameter "landscapeScale"

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x3f00

    .line 765
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 767
    .local v0, config:Landroid/content/res/Configuration;
    div-float v2, v5, p1

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 768
    .local v1, density:I
    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    if-eq v2, v1, :cond_0

    .line 769
    iput v1, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    .line 770
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 771
    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 773
    :cond_0
    div-float v2, v5, p2

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 774
    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    if-eq v2, v1, :cond_1

    .line 775
    iput v1, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    .line 776
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 777
    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 779
    :cond_1
    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/webkit/WebView;->enableQuickSelection(Z)V

    .line 907
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    .line 234
    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebView;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    .line 1421
    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "path"
    .parameter "callback"

    .prologue
    .line 1424
    if-nez p2, :cond_0

    .line 1425
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1430
    :goto_0
    return-void

    .line 1427
    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1428
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2
    .parameter "bottom"
    .parameter "callback"

    .prologue
    .line 1449
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    .line 1450
    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3498
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetAllAnchorSpan()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 2
    .parameter "id"

    .prologue
    .line 1459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1460
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 1461
    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3
    .parameter "id"

    .prologue
    .line 3475
    if-eqz p1, :cond_0

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3477
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3478
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 3479
    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .parameter "r"
    .parameter "id"

    .prologue
    .line 3470
    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3472
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    .line 3473
    return-void
.end method

.method public getBackColor()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 1772
    iget-object v8, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v8}, Landroid/webkit/HTCWebCore;->nativeGetBackColor()Ljava/lang/String;

    move-result-object v6

    .line 1774
    .local v6, strRGBA:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 1816
    :cond_1
    :goto_0
    return v7

    .line 1776
    :cond_2
    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1777
    const/4 v1, 0x5

    .local v1, start:I
    const/4 v0, 0x0

    .line 1778
    .local v0, end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1779
    if-eq v0, v9, :cond_1

    .line 1780
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1782
    .local v5, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1783
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1784
    if-eq v0, v9, :cond_1

    .line 1785
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1788
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1789
    if-eq v0, v9, :cond_1

    .line 1790
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1792
    .local v3, strB:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1793
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1794
    if-eq v0, v9, :cond_1

    .line 1795
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1797
    .local v2, strA:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    .line 1798
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v2           #strA:Ljava/lang/String;
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1799
    const/4 v1, 0x4

    .restart local v1       #start:I
    const/4 v0, 0x0

    .line 1800
    .restart local v0       #end:I
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1801
    if-eq v0, v9, :cond_1

    .line 1802
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1804
    .restart local v5       #strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1805
    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1806
    if-eq v0, v9, :cond_1

    .line 1807
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1809
    .restart local v4       #strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1810
    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1811
    if-eq v0, v9, :cond_1

    .line 1812
    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1814
    .restart local v3       #strB:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    .line 1816
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v3           #strB:Ljava/lang/String;
    .end local v4           #strG:Ljava/lang/String;
    .end local v5           #strR:Ljava/lang/String;
    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetBoldState()I

    move-result v0

    return v0
.end method

.method public final getCaretRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3125
    .local v0, ret:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .end local v0           #ret:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .restart local v0       #ret:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #ret:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3714
    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    .prologue
    .line 1822
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetFontSize()I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 1721
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v7}, Landroid/webkit/HTCWebCore;->nativeGetForeColor()Ljava/lang/String;

    move-result-object v5

    .line 1723
    .local v5, strRGB:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string/jumbo v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 1740
    :cond_1
    :goto_0
    return v6

    .line 1725
    :cond_2
    const/4 v1, 0x4

    .local v1, start:I
    const/4 v0, 0x0

    .line 1726
    .local v0, end:I
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1727
    if-eq v0, v8, :cond_1

    .line 1728
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1730
    .local v4, strR:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1731
    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1732
    if-eq v0, v8, :cond_1

    .line 1733
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1735
    .local v3, strG:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x2

    .line 1736
    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1737
    if-eq v0, v8, :cond_1

    .line 1738
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1740
    .local v2, strB:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1416
    return-void
.end method

.method public final getHighlightRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 3135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3137
    .local v0, ret:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .end local v0           #ret:Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .restart local v0       #ret:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #ret:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getImageNodeRect(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "pointer"

    .prologue
    .line 1689
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, p1}, Landroid/webkit/HTCWebCore;->nativegetImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1695
    .local v0, rectImage:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1696
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1697
    return-object v0
.end method

.method public getItalicState()I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetItalicState()I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    .line 239
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 240
    .local v0, cap:Landroid/text/method/TextKeyListener$Capitalize;
    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    .line 242
    .end local v0           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 3408
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"

    .prologue
    .line 3190
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 3194
    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "l"
    .parameter "t"
    .parameter "w"
    .parameter "h"
    .parameter "isContentDim"
    .parameter "bmp"
    .parameter "bgColor"

    .prologue
    .line 3200
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3201
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 3203
    if-nez p5, :cond_0

    .line 3204
    invoke-virtual {p0, p1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p1

    .line 3205
    invoke-virtual {p0, p2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result p2

    .line 3206
    invoke-virtual {p0, p3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p3

    .line 3207
    invoke-virtual {p0, p4}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p4

    .line 3214
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3216
    .local v2, clip:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3217
    const/4 v6, 0x0

    .line 3251
    :cond_1
    :goto_0
    return-object v6

    .line 3219
    :cond_2
    const/4 v5, 0x0

    .line 3220
    .local v5, needAlocate:Z
    move-object/from16 v6, p6

    .line 3222
    .local v6, ret:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3223
    :cond_3
    const/4 v5, 0x1

    .line 3224
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3227
    :cond_4
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 3228
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3230
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3232
    neg-int v7, p1

    int-to-float v7, v7

    neg-int v8, p2

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3235
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    .line 3236
    .local v3, defaulScale:F
    const/high16 v7, 0x3f80

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_5

    .line 3237
    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v1, v3, v3, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3239
    :cond_5
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->drawPage(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3241
    if-nez v5, :cond_6

    .line 3242
    const/4 v6, 0x0

    .line 3249
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v3           #defaulScale:F
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20c

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3251
    if-nez v5, :cond_1

    move-object/from16 v6, p6

    goto :goto_0

    .line 3244
    :catch_0
    move-exception v4

    .line 3245
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "EditableWebView"

    const-string v8, ""

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3246
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"

    .prologue
    .line 3176
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "r"
    .parameter "isContentDim"
    .parameter "bmp"

    .prologue
    .line 3166
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 3149
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3152
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 3154
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->invalidate()V

    goto :goto_0
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$ShowSipResultReceiver;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    return-object v0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    .prologue
    .line 3275
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetStrikethroughState()I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetUnderlineState()I

    move-result v0

    return v0
.end method

.method getVSbound(Landroid/graphics/Rect;)I
    .locals 1
    .parameter "ref"

    .prologue
    .line 927
    if-eqz p1, :cond_0

    .line 928
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 929
    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    .prologue
    .line 3682
    invoke-super {p0}, Landroid/webkit/WebView;->gethTCWebCoreInst()Landroid/webkit/HTCWebCore;

    move-result-object v0

    return-object v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 2

    .prologue
    .line 3669
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_1

    .line 3677
    :cond_0
    :goto_0
    return-void

    .line 3671
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3673
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3675
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3676
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction()V

    goto :goto_0
.end method

.method protected initQuickSelect()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v0, :cond_0

    .line 941
    new-instance v0, Landroid/webkit/EditableWebView$QuickSelectionED;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/EditableWebView$QuickSelectionED;-><init>(Landroid/webkit/EditableWebView;Landroid/webkit/EditableWebView$1;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    .line 942
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    .line 945
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView$QuickSelectionED;->init()V

    .line 947
    :cond_1
    return-void
.end method

.method protected initSingleTapQuickAction()V
    .locals 3

    .prologue
    .line 3519
    new-instance v0, Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$SingleTapQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    .line 3520
    .local v0, actions:Landroid/webkit/EditableWebView$SingleTapQuickActions;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView$SingleTapQuickActions;->loadResource(Landroid/content/Context;)V

    .line 3521
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    .line 3522
    new-instance v1, Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 3523
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 3524
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 3525
    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 1571
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1572
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1573
    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1439
    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1434
    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 2
    .parameter "html"

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1579
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->updateContentFromMessage(I)V

    .line 1580
    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3
    .parameter "htmlString"

    .prologue
    .line 1443
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1444
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1445
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1446
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "src"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1473
    new-instance v0, Landroid/webkit/EditableWebView$ImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkit/EditableWebView$ImageInfo;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V

    .line 1474
    .local v0, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x1fe

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1475
    return-void
.end method

.method protected myInitQuickAction()V
    .locals 3

    .prologue
    .line 2953
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    .line 2955
    .local v0, actions:Landroid/webkit/EditableWebView$EditableQuickActions;
    iput-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    .line 2958
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2959
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    .line 2960
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 301
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 302
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 303
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 304
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 309
    :cond_0
    return-void

    .line 307
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 247
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 786
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 788
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 789
    iget v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    .line 793
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 794
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_0

    .line 795
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pauseSelectionUI()V

    .line 797
    :cond_0
    return-void

    .line 791
    :cond_1
    iget v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 213
    new-instance v0, Landroid/webkit/WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewInputConnection;-><init>(Landroid/webkit/EditableWebView;)V

    .line 214
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 215
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 216
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 217
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 218
    const/16 v1, 0x4000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 219
    const v1, 0x24001

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 222
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 223
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 225
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 316
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 318
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 320
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 323
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    .line 324
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 360
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 361
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v1, :cond_2

    .line 362
    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    if-ne v1, v10, :cond_0

    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    if-ne v1, v10, :cond_0

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v11

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v12

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    if-eq v1, v10, :cond_2

    .line 365
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_6

    .line 366
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v9

    .line 367
    .local v9, prior:Landroid/graphics/Rect;
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v8

    .line 368
    .local v8, post:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1, v9, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 376
    .end local v8           #post:Landroid/graphics/Rect;
    .end local v9           #prior:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    .line 377
    iget v1, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    .line 378
    iget v1, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    .line 379
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    aput v10, v1, v11

    .line 380
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    aput v10, v1, v12

    .line 382
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_2

    .line 384
    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    sub-int v2, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    sub-int v3, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    sub-int v4, v1, v10

    iget-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    sub-int v5, v1, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 392
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_3

    .line 393
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 394
    .local v2, selStart:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 395
    .local v3, selEnd:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 396
    .local v4, candStart:I
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 399
    .end local v2           #selStart:I
    .end local v3           #selEnd:I
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    :cond_3
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_4

    .line 400
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    .line 401
    .local v7, observer:Landroid/view/ViewTreeObserver;
    if-eqz v7, :cond_4

    .line 402
    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 403
    iput v11, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 407
    .end local v7           #observer:Landroid/view/ViewTreeObserver;
    :cond_4
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    if-eqz v1, :cond_5

    .line 408
    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    .line 409
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 412
    :cond_5
    return-void

    .line 370
    :cond_6
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_1

    .line 371
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v6, cursor:Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 373
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v6}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public onEditorAction(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 251
    return-void
.end method

.method public onEndSelect()V
    .locals 1

    .prologue
    .line 1334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 1335
    return-void
.end method

.method public onEndSelect(Z)V
    .locals 8
    .parameter "removeSelection"

    .prologue
    const/4 v7, 0x0

    .line 1338
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    .line 1339
    .local v1, mode:Landroid/webkit/WebViewSelectionMethod$SelectionMode;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 1340
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v4}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    .line 1342
    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v4, :cond_0

    .line 1343
    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    iput-boolean v7, v4, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1346
    :cond_0
    if-eqz p1, :cond_1

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1348
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1349
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v3

    .line 1350
    .local v3, type:I
    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1351
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1352
    .local v0, end:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 1356
    .end local v0           #end:Landroid/graphics/Rect;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #type:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v4, :cond_2

    .line 1357
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v4}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 1359
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x20c

    const/4 v2, 0x1

    .line 419
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    .line 420
    .local v7, bReady:Z
    if-eqz v7, :cond_0

    .line 421
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 422
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 427
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v5, :cond_1

    .line 431
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 433
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x8e

    invoke-virtual {v0, v5, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 436
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 438
    if-eqz p1, :cond_3

    if-eqz v7, :cond_3

    .line 439
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 440
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, -0x1

    .line 261
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x14

    if-eq p1, v6, :cond_0

    const/16 v6, 0x13

    if-eq p1, v6, :cond_0

    const/16 v6, 0x15

    if-eq p1, v6, :cond_0

    const/16 v6, 0x16

    if-ne p1, v6, :cond_1

    .line 264
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    .line 266
    :cond_1
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_3

    .line 267
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    .line 268
    .local v5, unicode:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    .line 269
    .local v3, oldLength:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 270
    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 271
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 272
    .local v0, a:I
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 273
    .local v1, b:I
    if-ge v1, v0, :cond_2

    .line 274
    move v4, v0

    .line 275
    .local v4, tmp:I
    move v0, v1

    .line 276
    move v1, v4

    .line 278
    .end local v4           #tmp:I
    :cond_2
    if-eq v0, v8, :cond_3

    if-eq v1, v8, :cond_3

    .line 279
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 280
    .local v2, composingText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    .line 284
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #composingText:Ljava/lang/CharSequence;
    .end local v3           #oldLength:I
    .end local v5           #unicode:I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3311
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .line 3312
    .local v0, filteredMetaState:I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3313
    sparse-switch p1, :sswitch_data_0

    .line 3337
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 3338
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 3318
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    .line 3321
    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    .line 3324
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 3327
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignLeft()V

    goto :goto_0

    .line 3330
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignCenter()V

    goto :goto_0

    .line 3333
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignRight()V

    goto :goto_0

    .line 3313
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_3
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x2f -> :sswitch_4
        0x32 -> :sswitch_2
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 328
    iget v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eq v3, v4, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v4

    .line 332
    :cond_1
    const/4 v0, 0x0

    .line 333
    .local v0, changed:Z
    iget-boolean v3, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 335
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v2, windowRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 337
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 342
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #windowRect:Landroid/graphics/Rect;
    :cond_2
    iput-boolean v5, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    .line 343
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_3

    .line 344
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->checkCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    const/4 v0, 0x1

    .line 348
    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    .line 349
    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1373
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 3493
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 3494
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/EditableWebView$OnScrollChangedListener;->onScrollChanged(IIII)V

    .line 3496
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 467
    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_1

    .line 468
    :cond_0
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 469
    :cond_1
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x20c

    .line 445
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    .line 446
    .local v7, bReady:Z
    if-eqz v7, :cond_0

    .line 447
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 448
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 451
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 454
    if-nez p1, :cond_1

    .line 455
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 456
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 459
    :cond_1
    if-eqz p1, :cond_2

    if-eqz v7, :cond_2

    .line 460
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 461
    :cond_2
    return-void
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x225

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1569
    return-void
.end method

.method public pastePlainText()V
    .locals 2

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1561
    return-void
.end method

.method public pasteWithStyle()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1565
    return-void
.end method

.method pauseSelectionUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 3503
    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    .line 3504
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 3505
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 3507
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 3508
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3509
    return-void
.end method

.method public pauseTextReflow(I)V
    .locals 0
    .parameter "nTextWrapWidth"

    .prologue
    .line 3718
    invoke-super {p0, p1}, Landroid/webkit/WebView;->pauseTextReflow(I)V

    .line 3719
    return-void
.end method

.method public performLongClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2964
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->requestFocus()Z

    .line 2980
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_1

    .line 2981
    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2983
    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2984
    iput-boolean v4, p0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 2985
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mLastTouchX:I

    iget v2, p0, Landroid/webkit/EditableWebView;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/EditableWebView;->mLastTouchY:I

    iget v3, p0, Landroid/webkit/EditableWebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 2989
    invoke-virtual {p0, v5}, Landroid/webkit/EditableWebView;->performHapticFeedback(I)Z

    .line 2990
    return v4
.end method

.method resumeSelctionUI()V
    .locals 4

    .prologue
    const/16 v3, 0x2ebc

    .line 3512
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v0, :cond_0

    .line 3515
    :goto_0
    return-void

    .line 3513
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3514
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resumeTextReflow()V
    .locals 0

    .prologue
    .line 3722
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTextReflow()V

    .line 3723
    return-void
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 1
    .parameter "allow"
    .parameter "threshold"
    .parameter "l"

    .prologue
    .line 3262
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 3263
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    .line 3264
    iput-object p3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3265
    iput p2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    .line 3272
    :goto_0
    return-void

    .line 3268
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    .line 3269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    .line 3270
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public final setCaretPos(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 3109
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3114
    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    .line 3115
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v2, 0x0

    .line 1386
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v3, :cond_0

    .line 1396
    :goto_0
    return v2

    .line 1389
    :cond_0
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 1390
    .local v1, s:I
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    add-int/lit8 v4, v1, 0x1

    const-class v5, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v3, v1, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    .line 1391
    .local v0, bg:[Landroid/text/style/BackgroundColorSpan;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 1392
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v4, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;I)V

    .line 1396
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1394
    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v3, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;)V

    goto :goto_1
.end method

.method setCurrentEditingNodeText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 912
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    .line 913
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 202
    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    .line 206
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3710
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3025
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    .line 3026
    return-void
.end method

.method public setOnImageSelectedListener(Landroid/webkit/EditableWebView$OnImageSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3001
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;

    .line 3002
    return-void
.end method

.method public setOnScrollChangedListener(Landroid/webkit/EditableWebView$OnScrollChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3485
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    .line 3486
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3537
    iput-object p1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    .line 3538
    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 3690
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setScaleWithoutCheck(Z)V

    .line 3691
    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0
    .parameter "willDraw"

    .prologue
    .line 3694
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    .line 3695
    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 0
    .parameter "fLower"

    .prologue
    .line 3706
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomLowerBound(F)V

    .line 3707
    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 0
    .parameter "fUpper"

    .prologue
    .line 3702
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomUpperBound(F)V

    .line 3703
    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 5

    .prologue
    .line 3656
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 3657
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3658
    .local v2, region:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 3659
    invoke-direct {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3660
    .local v0, adjustedRegion:Landroid/graphics/Rect;
    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getAnchorDrawableHeight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x1

    .line 3661
    .local v1, offset:I
    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 3662
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v3, :cond_0

    .line 3663
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v3, v0, p0}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 3666
    :cond_0
    return-void
.end method

.method protected singleTapInEditableWebView()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x1

    .line 3727
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3728
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3729
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    sget v2, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3730
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3732
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3733
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 3734
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v2, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 3735
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3736
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1494
    return-void
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1504
    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1509
    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1499
    return-void
.end method

.method public final transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 3
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 3091
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3093
    .local v0, target:Landroid/graphics/Point;
    if-eqz p2, :cond_0

    .line 3094
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3099
    :goto_0
    return-object v0

    .line 3096
    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public final transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 5
    .parameter "source"
    .parameter "viewToContent"

    .prologue
    .line 3072
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3074
    .local v0, target:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 3075
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3081
    :goto_0
    return-object v0

    .line 3078
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 542
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 544
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 548
    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 549
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 550
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 551
    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    .line 552
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 555
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, v2, Landroid/webkit/HTCWebCore;->mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v1, p0, v2}, Landroid/webkit/EditableWebView$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    .line 557
    :cond_2
    return-void
.end method

.method updatePositionRect()V
    .locals 0

    .prologue
    .line 918
    invoke-super {p0}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 919
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->updateVSbound()V

    .line 920
    return-void
.end method

.method protected updateTextAndSelection(III)V
    .locals 19
    .parameter "nodePointer"
    .parameter "startIndx"
    .parameter "endIndx"

    .prologue
    .line 563
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEditingNode:I

    .line 567
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    .line 572
    .local v7, nodeTxt:Ljava/lang/String;
    if-nez v7, :cond_8

    .line 573
    const-string v7, ""

    .line 574
    const/16 p3, 0x0

    move/from16 p2, p3

    .line 579
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v15, :cond_9

    .line 580
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    .line 581
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 589
    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 592
    .local v8, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v14

    .line 593
    .local v14, type:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    .line 599
    const/4 v3, 0x0

    .line 601
    .local v3, doDoubleTap:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_a

    :cond_0
    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    .line 603
    const/4 v3, 0x1

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v15, :cond_1

    .line 606
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 608
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_2

    .line 611
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 647
    :cond_2
    :goto_2
    const/4 v9, 0x0

    .line 648
    .local v9, renewTimestamp:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v15, :cond_4

    .line 650
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mStartIndex:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mEndIndex:I

    move/from16 v0, p3

    if-eq v15, v0, :cond_f

    :cond_3
    const/4 v9, 0x1

    .line 652
    :cond_4
    :goto_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mStartIndex:I

    .line 653
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEndIndex:I

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 658
    const/16 v15, 0x73

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v11

    .line 659
    .local v11, start:Landroid/graphics/Rect;
    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 660
    .local v4, end:Landroid/graphics/Rect;
    const/16 v15, 0x78

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 661
    .local v5, extend:Landroid/graphics/Rect;
    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 670
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 673
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15, v11, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 676
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    move/from16 v6, p3

    .line 677
    .local v6, indx:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    if-le v6, v15, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v6

    .line 680
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v15, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 681
    if-eqz v9, :cond_7

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    .line 688
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    .line 738
    .end local v4           #end:Landroid/graphics/Rect;
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v6           #indx:I
    .end local v11           #start:Landroid/graphics/Rect;
    :goto_6
    return-void

    .line 577
    .end local v3           #doDoubleTap:Z
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #renewTimestamp:Z
    .end local v14           #type:I
    :cond_8
    const/16 v15, 0xa0

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 584
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clear()V

    .line 585
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clearSpans()V

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    .line 613
    .restart local v3       #doDoubleTap:Z
    .restart local v8       #r:Landroid/graphics/Rect;
    .restart local v14       #type:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->shortTapOnWebView:Z

    if-eqz v15, :cond_e

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 617
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/EditableWebView$QuickSelectionED;->hideQuickActions(Z)V

    .line 619
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_b

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v15}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 622
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 625
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->shortTapOnWebView:Z

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    .line 629
    .local v10, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 630
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    .line 633
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    .line 634
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    sget v17, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x65

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 640
    .end local v10           #result:Landroid/webkit/WebView$HitTestResult;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 641
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 642
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 643
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    .line 650
    .restart local v9       #renewTimestamp:Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 664
    .restart local v4       #end:Landroid/graphics/Rect;
    .restart local v5       #extend:Landroid/graphics/Rect;
    .restart local v11       #start:Landroid/graphics/Rect;
    :cond_10
    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 666
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    .line 669
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    :cond_12
    move/from16 v6, p2

    .line 676
    goto/16 :goto_5

    .line 692
    .end local v4           #end:Landroid/graphics/Rect;
    .end local v5           #extend:Landroid/graphics/Rect;
    .end local v11           #start:Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 713
    :cond_14
    :goto_7
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_15

    .line 714
    move/from16 v12, p2

    .line 715
    .local v12, temp:I
    move/from16 p2, p3

    .line 716
    move/from16 p3, v12

    .line 718
    .end local v12           #temp:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v13

    .line 719
    .local v13, textLen:I
    move/from16 v0, p3

    if-le v0, v13, :cond_16

    .line 724
    sub-int v2, p3, p2

    .line 725
    .local v2, dist:I
    move/from16 p3, v13

    .line 726
    sub-int p2, p3, v2

    .line 727
    if-gez p2, :cond_16

    .line 728
    const/16 p2, 0x0

    .line 730
    .end local v2           #dist:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 731
    invoke-direct/range {p0 .. p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    .line 733
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    if-nez v15, :cond_17

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    .line 737
    :cond_17
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    goto/16 :goto_6

    .line 695
    .end local v13           #textLen:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 696
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    .line 700
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    if-eqz v15, :cond_14

    .line 701
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    if-eqz v15, :cond_1a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    move/from16 v0, p2

    if-eq v0, v15, :cond_19

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    .line 703
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/EditableWebView$SingleTapQuickActions;->checkTimeout:Z

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->showSingleTapQuickActions()V

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x66

    const-wide/16 v17, 0xbb8

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 707
    :cond_1a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/EditableWebView;->longPressOnWebView:Z

    goto/16 :goto_7
.end method

.method updateVSbound()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    .line 924
    return-void
.end method
