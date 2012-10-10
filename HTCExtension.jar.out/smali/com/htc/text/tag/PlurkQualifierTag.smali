.class public Lcom/htc/text/tag/PlurkQualifierTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PlurkQualifierTag.java"


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "name"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->type:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->name:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/htc/text/tag/PlurkQualifierTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->type:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/htc/text/tag/PlurkQualifierTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PlurkQualifierTag;->name:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    iget-object v2, p0, Lcom/htc/text/tag/PlurkQualifierTag;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/PlurkQualifierTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, escapedType:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/text/tag/PlurkQualifierTag;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/PlurkQualifierTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, escapedName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<plq type=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method
