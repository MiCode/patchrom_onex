.class public Lcom/htc/text/tag/SecondaryLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "SecondaryLinkTag.java"


# instance fields
.field private description:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "description"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->uri:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/htc/text/tag/SecondaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->uri:Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/htc/text/tag/SecondaryLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    iget-object v2, p0, Lcom/htc/text/tag/SecondaryLinkTag;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/SecondaryLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, escapedUri:Ljava/lang/String;
    const-string v2, ""

    iget-object v3, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<lk2 uri=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</lk2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    :goto_0
    return-object v2

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/text/tag/SecondaryLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, escapedDescription:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<lk2 uri=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</lk2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    const-string v0, ""

    iget-object v1, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->uri:Ljava/lang/String;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/text/tag/SecondaryLinkTag;->description:Ljava/lang/String;

    goto :goto_0
.end method
