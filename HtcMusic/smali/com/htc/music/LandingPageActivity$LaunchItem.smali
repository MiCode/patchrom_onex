.class Lcom/htc/music/LandingPageActivity$LaunchItem;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchItem"
.end annotation


# instance fields
.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconId:I

.field mIsInnerItem:Z

.field mIsSoundHound:Z

.field mItemType:I

.field mLaunchIntent:Landroid/content/Intent;

.field private mLaunchItemClickListener:Landroid/view/View$OnClickListener;

.field private mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

.field mName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPreloadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$1;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    .line 210
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$2;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$2;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 227
    new-instance v0, Lcom/htc/music/LandingPageActivity$LaunchItem$3;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem$3;-><init>(Lcom/htc/music/LandingPageActivity$LaunchItem;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 253
    iput v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 254
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 255
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 257
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 259
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 260
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPreloadId:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method static synthetic access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getPreloadId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setPreloadId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getIconId()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    return v0
.end method

.method private getItemType()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    return v0
.end method

.method private getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getPreloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPreloadId:Ljava/lang/String;

    return-object v0
.end method

.method private isInnerItem()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    return v0
.end method

.method private isSoundHound()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    return v0
.end method

.method private setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemClickListener:Landroid/view/View$OnClickListener;

    .line 298
    return-void
.end method

.method private setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 269
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIconId:I

    .line 270
    return-void
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 266
    return-void
.end method

.method private setInnerItemEnable(Z)V
    .locals 0
    .parameter "isInnerItem"

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsInnerItem:Z

    .line 322
    return-void
.end method

.method private setItemType(I)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 329
    iput p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mItemType:I

    .line 330
    return-void
.end method

.method private setLaunchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "launchIntent"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchIntent:Landroid/content/Intent;

    .line 290
    return-void
.end method

.method private setLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 306
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method private setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mLaunchItemTouchListener:Landroid/view/View$OnTouchListener;

    .line 314
    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPackageName:Ljava/lang/String;

    .line 354
    return-void
.end method

.method private setPreloadId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mPreloadId:Ljava/lang/String;

    .line 346
    return-void
.end method

.method private setSoundHoundEnable(Z)V
    .locals 0
    .parameter "isSoundHound"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity$LaunchItem;->mIsSoundHound:Z

    .line 338
    return-void
.end method
