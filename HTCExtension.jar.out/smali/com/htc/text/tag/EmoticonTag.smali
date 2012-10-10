.class public Lcom/htc/text/tag/EmoticonTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "EmoticonTag.java"


# static fields
.field public static ALIGN_BASELINE:I

.field public static ALIGN_BOTTOM:I


# instance fields
.field private alg:I

.field private pkg:Ljava/lang/String;

.field private res:Ljava/lang/String;

.field private resAlt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BASELINE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .parameter "res"

    .prologue
    .line 14
    const/4 v0, 0x0

    sget v1, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"
    .parameter "res"
    .parameter "res_alt"

    .prologue
    .line 18
    sget v0, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/text/tag/EmoticonTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "res"
    .parameter "res_alt"
    .parameter "alg"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    .line 22
    invoke-static {p1}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    .line 24
    invoke-static {p3}, Lcom/htc/text/tag/EmoticonTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    .line 26
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 35
    iget-object v4, p0, Lcom/htc/text/tag/EmoticonTag;->pkg:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, escapedPkg:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/text/tag/EmoticonTag;->res:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, escapedRes:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v3, output:Ljava/lang/StringBuilder;
    const-string v4, "<emo pkg=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v4, "\" res=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, ""

    iget-object v5, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/htc/text/tag/EmoticonTag;->resAlt:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/text/tag/EmoticonTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, escapedResAlt:Ljava/lang/String;
    const-string v4, "\" res_alt=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .end local v2           #escapedResAlt:Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    sget v5, Lcom/htc/text/tag/EmoticonTag;->ALIGN_BOTTOM:I

    if-eq v4, v5, :cond_1

    .line 47
    const-string v4, "\" alg=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/text/tag/EmoticonTag;->alg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, ""

    return-object v0
.end method
