.class Landroid/webkit/EditableWebView$EditableQuickActions;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;
.implements Landroid/webkit/WebView$WrapActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditableQuickActions"
.end annotation


# instance fields
.field private final BUTTON_ID_BLUE:I

.field private final BUTTON_ID_COPY:I

.field private final BUTTON_ID_CUT:I

.field private final BUTTON_ID_FONTSTYLE:I

.field private final BUTTON_ID_GREEN:I

.field private final BUTTON_ID_HIGHLIGHT:I

.field private final BUTTON_ID_IMAGESTYLE:I

.field private final BUTTON_ID_IME:I

.field private final BUTTON_ID_OPEN_LINK:I

.field private final BUTTON_ID_PASTE:I

.field private final BUTTON_ID_PASTE_STYLE:I

.field private final BUTTON_ID_RED:I

.field private final BUTTON_ID_SELECT:I

.field private final BUTTON_ID_SELECTALL:I

.field private final BUTTON_ID_UNHIGHLIGHT:I

.field private final BUTTON_ID_YELLOW:I

.field private final G_EXTEND:I

.field private final G_HIGHLIGHT:I

.field private final G_MOVABLE:I

.field private final SELECT_FONT_ALIGNMENT:I

.field private final SELECT_FONT_ALIGNMENT_JUSTIFY:I

.field private final SELECT_FONT_ALIGNMENT_LEFT:I

.field private final SELECT_FONT_ALIGNMENT_RIGHT:I

.field private final SELECT_FONT_COLOR:I

.field private final SELECT_FONT_COLOR_BLACK:I

.field private final SELECT_FONT_COLOR_BLUE:I

.field private final SELECT_FONT_COLOR_GRAY:I

.field private final SELECT_FONT_COLOR_GREEN:I

.field private final SELECT_FONT_COLOR_RED:I

.field private final SELECT_FONT_COLOR_WHITE:I

.field private final SELECT_FONT_COLOR_YELLOW:I

.field private final SELECT_FONT_NONE:I

.field private final SELECT_FONT_SETTINGS:I

.field private final SELECT_FONT_SETTINGS_BOLDFACE:I

.field private final SELECT_FONT_SETTINGS_ITALIC:I

.field private final SELECT_FONT_SETTINGS_UNDERLINE:I

.field private final SELECT_FONT_SIZE:I

.field private final SELECT_FONT_SIZE_LARGE:I

.field private final SELECT_FONT_SIZE_LARGEST:I

.field private final SELECT_FONT_SIZE_LARGEST_PX:I

.field private final SELECT_FONT_SIZE_LARGE_PX:I

.field private final SELECT_FONT_SIZE_MEDIUM:I

.field private final SELECT_FONT_SIZE_MEDIUM_PX:I

.field private final SELECT_FONT_SIZE_SMALL:I

.field private final SELECT_FONT_SIZE_SMALL_PX:I

.field bFontBold:Z

.field bFontItalic:Z

.field bFontUnderline:Z

.field fWebViewTextScale:F

.field highlightMode:Z

.field icon_blue:Landroid/graphics/drawable/Drawable;

.field icon_copy:Landroid/graphics/drawable/Drawable;

.field icon_cut:Landroid/graphics/drawable/Drawable;

.field icon_font_style:Landroid/graphics/drawable/Drawable;

.field icon_green:Landroid/graphics/drawable/Drawable;

.field icon_highlight:Landroid/graphics/drawable/Drawable;

.field icon_image_style:Landroid/graphics/drawable/Drawable;

.field icon_ime_switch:Landroid/graphics/drawable/Drawable;

.field icon_open_link:Landroid/graphics/drawable/Drawable;

.field icon_paste:Landroid/graphics/drawable/Drawable;

.field icon_paste_styled:Landroid/graphics/drawable/Drawable;

.field icon_red:Landroid/graphics/drawable/Drawable;

.field icon_select:Landroid/graphics/drawable/Drawable;

.field icon_selectall:Landroid/graphics/drawable/Drawable;

.field icon_unhighlight:Landroid/graphics/drawable/Drawable;

.field icon_yellow:Landroid/graphics/drawable/Drawable;

.field mActionMode:Landroid/view/ActionMode;

.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/dialog/HtcAlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field m_bFontStyleKeyUpDown:Z

.field private final m_nBlackColor_select:I

.field m_nBlueColor:I

.field private final m_nBlueColor_select:I

.field private final m_nGrayColor_select:I

.field m_nGreenColor:I

.field private final m_nGreenColor_select:I

.field m_nImgNode:[I

.field m_nRedColor:I

.field private final m_nRedColor_select:I

.field private final m_nWhiteColor_select:I

.field m_nYellowColor:I

.field private final m_nYellowColor_select:I

.field m_rectImgAttr:Landroid/graphics/Rect;

.field m_strImgPath:[Ljava/lang/String;

.field menuCopy:Landroid/view/MenuItem;

.field menuQuikckLookup:Landroid/view/MenuItem;

.field private onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

.field private onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

.field private resLoaded:Z

.field showQuickLookup:Z

.field str_blue:Ljava/lang/String;

.field str_copy:Ljava/lang/String;

.field str_cut:Ljava/lang/String;

.field str_font_style:Ljava/lang/String;

.field str_green:Ljava/lang/String;

.field str_highlight:Ljava/lang/String;

.field str_image_style:Ljava/lang/String;

.field str_ime_switch:Ljava/lang/String;

.field str_open_link:Ljava/lang/String;

.field str_paste:Ljava/lang/String;

.field str_paste_styled:Ljava/lang/String;

.field str_red:Ljava/lang/String;

.field str_select:Ljava/lang/String;

.field str_selectall:Ljava/lang/String;

.field str_unhighlight:Ljava/lang/String;

.field str_yellow:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1835
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_EXTEND:I

    .line 1837
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_MOVABLE:I

    .line 1838
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->G_HIGHLIGHT:I

    .line 1840
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_COPY:I

    .line 1841
    const/16 v0, 0x9

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_CUT:I

    .line 1842
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_SELECT:I

    .line 1843
    const/16 v0, 0xb

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE:I

    .line 1844
    const/16 v0, 0xc

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_PASTE_STYLE:I

    .line 1845
    const/16 v0, 0xd

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_IME:I

    .line 1846
    const/16 v0, 0xe

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_OPEN_LINK:I

    .line 1847
    const/16 v0, 0xf

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_HIGHLIGHT:I

    .line 1848
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_GREEN:I

    .line 1849
    const/16 v0, 0x11

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_BLUE:I

    .line 1850
    const/16 v0, 0x12

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_YELLOW:I

    .line 1851
    const/16 v0, 0x13

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_RED:I

    .line 1852
    const/16 v0, 0x14

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_UNHIGHLIGHT:I

    .line 1855
    const/16 v0, 0x15

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_FONTSTYLE:I

    .line 1857
    const/16 v0, 0x16

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_IMAGESTYLE:I

    .line 1859
    const/16 v0, 0x17

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->BUTTON_ID_SELECTALL:I

    .line 1863
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE:I

    .line 1864
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR:I

    .line 1865
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS:I

    .line 1866
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT:I

    .line 1867
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_NONE:I

    .line 1872
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL:I

    .line 1873
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM:I

    .line 1874
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE:I

    .line 1875
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST:I

    .line 1879
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_SMALL_PX:I

    .line 1880
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_MEDIUM_PX:I

    .line 1881
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGE_PX:I

    .line 1882
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SIZE_LARGEST_PX:I

    .line 1886
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_WHITE:I

    .line 1887
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLACK:I

    .line 1888
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GRAY:I

    .line 1889
    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_RED:I

    .line 1890
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_GREEN:I

    .line 1891
    const/4 v0, 0x5

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_YELLOW:I

    .line 1892
    const/4 v0, 0x6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_COLOR_BLUE:I

    .line 1895
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_UNDERLINE:I

    .line 1896
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_BOLDFACE:I

    .line 1897
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_SETTINGS_ITALIC:I

    .line 1900
    iput v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_LEFT:I

    .line 1901
    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_JUSTIFY:I

    .line 1902
    iput v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->SELECT_FONT_ALIGNMENT_RIGHT:I

    .line 1913
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_bFontStyleKeyUpDown:Z

    .line 1914
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 1962
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    .line 1963
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 1964
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    .line 1966
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    .line 1967
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    .line 1968
    const/16 v0, 0x7f

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    .line 1969
    invoke-static {v4, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    .line 1970
    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    .line 1971
    invoke-static {v3, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    .line 1972
    invoke-static {v3, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    .line 1975
    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 1976
    const v0, 0xa6e1ff

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 1977
    const v0, 0xffef99

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 1978
    const v0, 0xffa6a6

    iput v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 1980
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 1982
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 2360
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$1;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    .line 2368
    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$2;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    .line 2737
    iput-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->showQuickLookup:Z

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/EditableWebView$EditableQuickActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/EditableWebView$EditableQuickActions;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/webkit/EditableWebView$EditableQuickActions;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    iput-object p1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$4600(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontsize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontcolor(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogSettings(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/EditableWebView$EditableQuickActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogAlignment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/EditableWebView$EditableQuickActions;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/EditableWebView$EditableQuickActions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1835
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    return v0
.end method

.method private getDialogFontStyleContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 2673
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2674
    .local v1, context:Landroid/content/Context;
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v0

    .line 2677
    .local v0, TextSize_current:I
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2680
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #context:Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 2682
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private getFontColorIdx(I)I
    .locals 1
    .parameter "nFontcolor_current"

    .prologue
    .line 2713
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nWhiteColor_select:I

    if-ne p1, v0, :cond_0

    .line 2714
    const/4 v0, 0x0

    .line 2728
    :goto_0
    return v0

    .line 2715
    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlackColor_select:I

    if-ne p1, v0, :cond_1

    .line 2716
    const/4 v0, 0x1

    goto :goto_0

    .line 2717
    :cond_1
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGrayColor_select:I

    if-ne p1, v0, :cond_2

    .line 2718
    const/4 v0, 0x2

    goto :goto_0

    .line 2719
    :cond_2
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor_select:I

    if-ne p1, v0, :cond_3

    .line 2720
    const/4 v0, 0x3

    goto :goto_0

    .line 2721
    :cond_3
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor_select:I

    if-ne p1, v0, :cond_4

    .line 2722
    const/4 v0, 0x4

    goto :goto_0

    .line 2723
    :cond_4
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor_select:I

    if-ne p1, v0, :cond_5

    .line 2724
    const/4 v0, 0x5

    goto :goto_0

    .line 2725
    :cond_5
    iget v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor_select:I

    if-ne p1, v0, :cond_6

    .line 2726
    const/4 v0, 0x6

    goto :goto_0

    .line 2728
    :cond_6
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontSizeIdx(I)I
    .locals 3
    .parameter "nFontsize_current"

    .prologue
    .line 2687
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->GetOwnerActivityContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2690
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v1}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    iget v0, v1, Landroid/webkit/WebSettings$TextSize;->value:I

    .line 2691
    .local v0, nWebViewTextScale:I
    int-to-float v1, v0

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    .line 2692
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->fWebViewTextScale:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2694
    .end local v0           #nWebViewTextScale:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2707
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 2696
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2698
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2700
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2702
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 2694
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadResource(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const v6, 0x1080770

    const v8, 0x104000b

    const/4 v7, 0x0

    .line 1985
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1989
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080248

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 1991
    const v5, 0x1040001

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    .line 1995
    const v5, 0x1080767

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    .line 1996
    const v5, 0x1040003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    .line 2000
    const v5, 0x1080779

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    .line 2002
    const v5, 0x1040016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    .line 2006
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 2007
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    .line 2011
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste_styled:Landroid/graphics/drawable/Drawable;

    .line 2012
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Styled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste_styled:Ljava/lang/String;

    .line 2017
    const v5, 0x1080768

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    .line 2018
    const v5, 0x1040562

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    .line 2021
    const v5, 0x4020009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_image_style:Landroid/graphics/drawable/Drawable;

    .line 2022
    const v5, 0x1040568

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_image_style:Ljava/lang/String;

    .line 2027
    const v5, 0x10403ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    .line 2029
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2033
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2034
    .local v4, target:Landroid/content/Intent;
    invoke-virtual {v2, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2035
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2036
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2037
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    .line 2039
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v5, "Open Link"

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    .line 2044
    const v5, 0x1080769

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    .line 2045
    const v5, 0x204022e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    .line 2049
    const v5, 0x108076c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    .line 2050
    const v5, 0x204022f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    .line 2051
    const v5, 0x206003c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    .line 2055
    const v5, 0x108076a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    .line 2056
    const v5, 0x2040230

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    .line 2057
    const v5, 0x206003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    .line 2061
    const v5, 0x108076e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    .line 2062
    const v5, 0x2040231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    .line 2063
    const v5, 0x206003e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    .line 2067
    const v5, 0x108076d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    .line 2068
    const v5, 0x2040232

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    .line 2069
    const v5, 0x206003f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    .line 2073
    const v5, 0x108076b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    .line 2074
    const v5, 0x2040233

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    .line 2077
    const v5, 0x208025d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_selectall:Landroid/graphics/drawable/Drawable;

    .line 2078
    const v5, 0x204014f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_selectall:Ljava/lang/String;

    .line 2079
    return-void
.end method

.method private onCreateDialogAlignment(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2630
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2631
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2633
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040567

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1070042

    const/4 v3, -0x1

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$14;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$14;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$13;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$13;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2667
    .local v0, dialog_font_style_alignment:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2668
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2669
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2670
    return-void
.end method

.method private onCreateDialogFontStyle(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2379
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2380
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2383
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040563

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x107003e

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$6;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$6;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$5;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$5;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$4;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$4;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Landroid/webkit/EditableWebView$EditableQuickActions$3;

    invoke-direct {v2, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$3;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2441
    .local v0, dialog_font_style:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2442
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2443
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2444
    return-void
.end method

.method private onCreateDialogFontcolor(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2507
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2508
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2511
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040565

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1070040

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getForeColor()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontColorIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$10;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$10;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$9;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$9;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2558
    .local v0, dialog_font_style_fontcolor:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2559
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2560
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2561
    return-void
.end method

.method private onCreateDialogFontsize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 2448
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2449
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2452
    :cond_0
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040564

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x107003f

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v3}, Landroid/webkit/EditableWebView;->getFontSize()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/EditableWebView$EditableQuickActions;->getFontSizeIdx(I)I

    move-result v3

    new-instance v4, Landroid/webkit/EditableWebView$EditableQuickActions$8;

    invoke-direct {v4, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$8;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Landroid/webkit/EditableWebView$EditableQuickActions$7;

    invoke-direct {v3, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$7;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    .line 2500
    .local v0, dialog_font_style_fontsize:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2501
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2502
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2503
    return-void
.end method

.method private onCreateDialogSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2565
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2566
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    .line 2569
    :cond_0
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getUnderlineState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    .line 2570
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getBoldState()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    .line 2571
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->getItalicState()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    .line 2572
    const/4 v2, 0x3

    new-array v0, v2, [Z

    iget-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontUnderline:Z

    aput-boolean v2, v0, v3

    iget-boolean v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontBold:Z

    aput-boolean v2, v0, v4

    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->bFontItalic:Z

    aput-boolean v3, v0, v2

    .line 2574
    .local v0, arrayIsChecked:[Z
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040566

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1070041

    new-instance v5, Landroid/webkit/EditableWebView$EditableQuickActions$12;

    invoke-direct {v5, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$12;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v2, v3, v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Landroid/webkit/EditableWebView$EditableQuickActions$11;

    invoke-direct {v5, p0}, Landroid/webkit/EditableWebView$EditableQuickActions$11;-><init>(Landroid/webkit/EditableWebView$EditableQuickActions;)V

    invoke-virtual {v2, v3, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onCancelListener_FontStyle:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 2623
    .local v1, dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->onDismissListener_FontStyle:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2624
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 2625
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mDialog:Ljava/lang/ref/WeakReference;

    .line 2626
    return-void

    .end local v0           #arrayIsChecked:[Z
    .end local v1           #dialog_font_style_settings:Lcom/htc/dialog/HtcAlertDialog;
    :cond_1
    move v2, v4

    .line 2569
    goto :goto_0

    :cond_2
    move v2, v4

    .line 2570
    goto :goto_1

    :cond_3
    move v2, v4

    .line 2571
    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2946
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2948
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2929
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2767
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 7
    .parameter "actions"

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2083
    iget-boolean v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    if-nez v0, :cond_0

    .line 2084
    iput-boolean v4, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->resLoaded:Z

    .line 2085
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$3000(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView$EditableQuickActions;->loadResource(Landroid/content/Context;)V

    .line 2088
    :cond_0
    const/16 v0, 0x17

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_selectall:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_selectall:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2090
    const/16 v0, 0x8

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_copy:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2091
    const/16 v0, 0x9

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_cut:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2092
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2094
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_highlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_highlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2097
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "3.5"

    if-eq v0, v1, :cond_1

    .line 2098
    const/16 v0, 0x15

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_font_style:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_font_style:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2101
    :cond_1
    const/16 v0, 0x16

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_image_style:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_image_style:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2106
    const/16 v0, 0xa

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_select:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2107
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_paste:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v6, v0, v1}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2109
    const/16 v0, 0xd

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_ime_switch:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2110
    const/16 v0, 0xe

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_open_link:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v4, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2113
    const/16 v0, 0x10

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_green:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_green:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2114
    const/16 v0, 0x11

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_blue:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_blue:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2115
    const/16 v0, 0x12

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_yellow:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_yellow:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2116
    const/16 v0, 0x13

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_red:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_red:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2117
    const/16 v0, 0x14

    iget-object v1, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->str_unhighlight:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->icon_unhighlight:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 2118
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2936
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v0, v0, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v1, :cond_0

    .line 2937
    iget-object v0, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2938
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2833
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 14
    .parameter "actions"

    .prologue
    const/4 v8, 0x2

    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 2122
    invoke-interface {p1, v9, v9}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2123
    invoke-interface {p1, v13, v9}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2124
    invoke-interface {p1, v8, v9}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2126
    const/4 v3, 0x0

    .line 2127
    .local v3, groupID:I
    iget-object v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v10, v10, Landroid/webkit/EditableWebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v10}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v10

    sget-object v11, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v10, v11, :cond_6

    .line 2128
    iget-boolean v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    if-eqz v10, :cond_5

    move v3, v8

    .line 2133
    :goto_0
    invoke-interface {p1, v3, v13}, Lcom/htc/textselection/ActionMenu;->setGroupVisibility(IZ)V

    .line 2136
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v8

    const-string/jumbo v10, "text/plain"

    invoke-virtual {v8, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ne v8, v13, :cond_1

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2142
    :cond_0
    const/16 v8, 0xb

    invoke-interface {p1, v3, v8}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 2143
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 2144
    invoke-interface {v0, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2148
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_1
    const/16 v8, 0x16

    invoke-interface {p1, v3, v8}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v6

    .line 2149
    .local v6, imageaction:Lcom/htc/textselection/Action;
    const/16 v8, 0xf

    invoke-interface {p1, v3, v8}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v4

    .line 2150
    .local v4, highlightaction:Lcom/htc/textselection/Action;
    const/16 v8, 0x15

    invoke-interface {p1, v3, v8}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v2

    .line 2151
    .local v2, fontstyleaction:Lcom/htc/textselection/Action;
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    iget-object v11, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    iget-object v12, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    #calls: Landroid/webkit/EditableWebView;->getImageAttr([Ljava/lang/String;[ILandroid/graphics/Rect;)I
    invoke-static {v8, v10, v11, v12}, Landroid/webkit/EditableWebView;->access$3100(Landroid/webkit/EditableWebView;[Ljava/lang/String;[ILandroid/graphics/Rect;)I

    move-result v7

    .line 2152
    .local v7, nSelectionContainImage:I
    if-eqz v6, :cond_3

    .line 2153
    if-ne v7, v13, :cond_2

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v8

    if-nez v8, :cond_7

    .line 2154
    :cond_2
    invoke-interface {v6, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2155
    if-nez v7, :cond_3

    .line 2156
    invoke-interface {v4, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2157
    invoke-interface {v2, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2178
    :cond_3
    :goto_1
    const/16 v8, 0xe

    invoke-interface {p1, v3, v8}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v1

    .line 2179
    .local v1, aLink:Lcom/htc/textselection/Action;
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v8, :cond_8

    const-string v5, ""

    .line 2180
    .local v5, href:Ljava/lang/String;
    :goto_2
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2181
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/webkit/EditableWebView;->access$3302(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2182
    if-eqz v1, :cond_4

    .line 2183
    invoke-interface {v1, v13}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2197
    :cond_4
    :goto_3
    return-void

    .end local v1           #aLink:Lcom/htc/textselection/Action;
    .end local v2           #fontstyleaction:Lcom/htc/textselection/Action;
    .end local v4           #highlightaction:Lcom/htc/textselection/Action;
    .end local v5           #href:Ljava/lang/String;
    .end local v6           #imageaction:Lcom/htc/textselection/Action;
    .end local v7           #nSelectionContainImage:I
    :cond_5
    move v3, v9

    .line 2128
    goto/16 :goto_0

    .line 2130
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2162
    .restart local v2       #fontstyleaction:Lcom/htc/textselection/Action;
    .restart local v4       #highlightaction:Lcom/htc/textselection/Action;
    .restart local v6       #imageaction:Lcom/htc/textselection/Action;
    .restart local v7       #nSelectionContainImage:I
    :cond_7
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v8}, Landroid/webkit/EditableWebView;->clearTextEntry()V

    .line 2163
    invoke-interface {v4, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 2164
    invoke-interface {v2, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_1

    .line 2179
    .restart local v1       #aLink:Lcom/htc/textselection/Action;
    :cond_8
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, v8, Landroid/webkit/EditableWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mEditingNode:I
    invoke-static {v10}, Landroid/webkit/EditableWebView;->access$2800(Landroid/webkit/EditableWebView;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/webkit/HTCWebCore;->nativeGetHREF(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2185
    .restart local v5       #href:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const-string v10, ""

    #setter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v8, v10}, Landroid/webkit/EditableWebView;->access$3302(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2186
    if-eqz v1, :cond_4

    .line 2187
    invoke-interface {v1, v9}, Lcom/htc/textselection/Action;->setVisible(Z)V

    goto :goto_3
.end method

.method public onQuickActionItemClicked(I)V
    .locals 12
    .parameter "actionID"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2201
    packed-switch p1, :pswitch_data_0

    .line 2353
    :cond_0
    :goto_0
    const/16 v7, 0xf

    if-eq v7, p1, :cond_1

    const/16 v7, 0x17

    if-eq v7, p1, :cond_1

    .line 2355
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v11}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2356
    :cond_1
    return-void

    .line 2206
    :pswitch_0
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    .line 2209
    :pswitch_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    .line 2212
    :pswitch_2
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    .line 2215
    :pswitch_3
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/16 v8, 0x219

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2216
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7, v10}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    .line 2217
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->getContentWidth()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v8}, Landroid/webkit/EditableWebView;->getContentHeight()I

    move-result v8

    invoke-direct {v4, v11, v11, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2218
    .local v4, r:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v8, 0x12c

    invoke-virtual {v7, v4, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 2223
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_4
    invoke-direct {p0}, Landroid/webkit/EditableWebView$EditableQuickActions;->getDialogFontStyleContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/EditableWebView$EditableQuickActions;->onCreateDialogFontStyle(Landroid/content/Context;)V

    goto :goto_0

    .line 2231
    :pswitch_5
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$3400(Landroid/webkit/EditableWebView;)Landroid/widget/ScrollView;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2232
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$3400(Landroid/webkit/EditableWebView;)Landroid/widget/ScrollView;

    move-result-object v5

    .line 2236
    .local v5, scrollableView:Landroid/view/View;
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2237
    .local v6, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2238
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScreenOffset:[I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$1400(Landroid/webkit/EditableWebView;)[I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    .line 2239
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScreenOffset:[I
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1400(Landroid/webkit/EditableWebView;)[I

    move-result-object v7

    aget v7, v7, v11

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScreenOffset:[I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$1400(Landroid/webkit/EditableWebView;)[I

    move-result-object v8

    aget v8, v8, v10

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2240
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$3500(Landroid/webkit/EditableWebView;)I

    move-result v7

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollY:I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3600(Landroid/webkit/EditableWebView;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 2242
    const/4 v1, 0x0

    .local v1, dx:I
    const/4 v2, 0x0

    .local v2, dy:I
    const/4 v0, 0x1

    .line 2243
    .local v0, bias:I
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    if-le v7, v8, :cond_2

    .line 2244
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v7, v8

    .line 2246
    :cond_2
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_3

    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_7

    .line 2247
    :cond_3
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #calls: Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3700(Landroid/webkit/EditableWebView;)I

    move-result v8

    add-int v2, v7, v8

    .line 2252
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 2253
    .local v3, offsetY:I
    if-nez v2, :cond_5

    if-eqz v1, :cond_9

    .line 2255
    :cond_5
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    .line 2256
    neg-int v7, v2

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollY:I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3900(Landroid/webkit/EditableWebView;)I

    move-result v8

    if-le v7, v8, :cond_8

    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$4000(Landroid/webkit/EditableWebView;)I

    move-result v3

    .line 2257
    :goto_3
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    neg-int v8, v1

    invoke-virtual {v7, v8, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2274
    :goto_4
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2275
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 2276
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v10}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    .line 2278
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2280
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mOnImageSelectedListener:Landroid/webkit/EditableWebView$OnImageSelectedListener;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$3200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$OnImageSelectedListener;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_strImgPath:[Ljava/lang/String;

    aget-object v8, v8, v11

    iget-object v9, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    aget v9, v9, v11

    iget-object v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    invoke-interface {v7, v8, v9, v10}, Landroid/webkit/EditableWebView$OnImageSelectedListener;->onImageSelected(Ljava/lang/String;ILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2234
    .end local v0           #bias:I
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #offsetY:I
    .end local v5           #scrollableView:Landroid/view/View;
    .end local v6           #visibleRect:Landroid/graphics/Rect;
    :cond_6
    iget-object v5, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    .restart local v5       #scrollableView:Landroid/view/View;
    goto/16 :goto_1

    .line 2248
    .restart local v0       #bias:I
    .restart local v1       #dx:I
    .restart local v2       #dy:I
    .restart local v6       #visibleRect:Landroid/graphics/Rect;
    :cond_7
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_4

    .line 2249
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #calls: Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3800(Landroid/webkit/EditableWebView;)I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_2

    .line 2256
    .restart local v3       #offsetY:I
    :cond_8
    neg-int v3, v2

    goto :goto_3

    .line 2260
    :cond_9
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nImgNode:[I

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getImageNodeRect(I)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_rectImgAttr:Landroid/graphics/Rect;

    goto :goto_4

    .line 2292
    .end local v0           #bias:I
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #offsetY:I
    .end local v5           #scrollableView:Landroid/view/View;
    .end local v6           #visibleRect:Landroid/graphics/Rect;
    :pswitch_6
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto/16 :goto_0

    .line 2295
    :pswitch_7
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    const/16 v8, 0x73

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 2296
    .restart local v4       #r:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v7, v8, v9, v11, v10}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto/16 :goto_0

    .line 2315
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_8
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$4100(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_0

    .line 2319
    :pswitch_9
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;
    invoke-static {v8}, Landroid/webkit/EditableWebView;->access$3300(Landroid/webkit/EditableWebView;)Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/webkit/EditableWebView;->access$4200(Landroid/webkit/EditableWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2322
    :pswitch_a
    iput-boolean v10, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    .line 2323
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2324
    .restart local v4       #r:Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v4}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    .line 2325
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/EditableWebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7, v4, v11}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 2328
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_b
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2329
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    iput v8, v7, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2330
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nGreenColor:I

    invoke-virtual {v7, v8, v10}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2333
    :pswitch_c
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2334
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    iput v8, v7, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2335
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nBlueColor:I

    invoke-virtual {v7, v8, v10}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2338
    :pswitch_d
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2339
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    iput v8, v7, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2340
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nYellowColor:I

    invoke-virtual {v7, v8, v10}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2343
    :pswitch_e
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2344
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    iput v8, v7, Landroid/webkit/EditableWebView;->m_nSelectHighlightColor:I

    .line 2345
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->m_nRedColor:I

    invoke-virtual {v7, v8, v10}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2348
    :pswitch_f
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iput-boolean v10, v7, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    .line 2349
    iget-object v7, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$EditableQuickActions;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v8}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v8

    invoke-virtual {v7, v8, v11}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    goto/16 :goto_0

    .line 2201
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
