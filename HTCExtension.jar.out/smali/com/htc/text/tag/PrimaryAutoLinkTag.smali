.class public Lcom/htc/text/tag/PrimaryAutoLinkTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryAutoLinkTag.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    iget-object v1, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/text/tag/PrimaryAutoLinkTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, escapedText:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ak1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ak1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryAutoLinkTag;->text:Ljava/lang/String;

    return-object v0
.end method
