.class public Lcom/htc/text/tag/EmphasisTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "EmphasisTag.java"


# instance fields
.field private argb:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/tag/EmphasisTag;->argb:I

    .line 9
    invoke-static {p1}, Lcom/htc/text/tag/EmphasisTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "argb"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/tag/EmphasisTag;->argb:I

    .line 13
    invoke-static {p1}, Lcom/htc/text/tag/EmphasisTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/htc/text/tag/EmphasisTag;->argb:I

    .line 15
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    iget-object v1, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/text/tag/EmphasisTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, escapedText:Ljava/lang/String;
    iget v1, p0, Lcom/htc/text/tag/EmphasisTag;->argb:I

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<emp value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<emp argb=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/text/tag/EmphasisTag;->argb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/text/tag/EmphasisTag;->text:Ljava/lang/String;

    return-object v0
.end method
