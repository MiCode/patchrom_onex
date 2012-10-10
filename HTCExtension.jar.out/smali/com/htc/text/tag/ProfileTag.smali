.class public Lcom/htc/text/tag/ProfileTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "ProfileTag.java"


# instance fields
.field private name:Ljava/lang/String;

.field private nameAlt:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 10
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/text/tag/ProfileTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "name_alt"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Lcom/htc/text/tag/ProfileTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 29
    iget-object v3, p0, Lcom/htc/text/tag/ProfileTag;->uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, escapedUri:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, escapedName:Ljava/lang/String;
    const-string v3, ""

    iget-object v4, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<pf uri=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    :goto_0
    return-object v3

    .line 34
    :cond_0
    iget-object v3, p0, Lcom/htc/text/tag/ProfileTag;->nameAlt:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/text/tag/ProfileTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, escapedNameAlt:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<pf uri=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" name_alt=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/text/tag/ProfileTag;->name:Ljava/lang/String;

    return-object v0
.end method
