.class public Lcom/htc/text/tag/PrimaryTextTag;
.super Lcom/htc/text/tag/AbstractTag;
.source "PrimaryTextTag.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/text/tag/AbstractTag;-><init>()V

    .line 9
    invoke-static {p1}, Lcom/htc/text/tag/PrimaryTextTag;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/text/tag/PrimaryTextTag;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/text/tag/PrimaryTextTag;->text:Ljava/lang/String;

    return-object v0
.end method
