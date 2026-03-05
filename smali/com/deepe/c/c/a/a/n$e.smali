.class Lcom/deepe/c/c/a/a/n$e;
.super Lorg/xml/sax/ext/DefaultHandler2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/a/a/n;


# direct methods
.method private constructor <init>(Lcom/deepe/c/c/a/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/c/a/a/n;Lcom/deepe/c/c/a/a/n$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/n$e;-><init>(Lcom/deepe/c/c/a/a/n;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->b(Lcom/deepe/c/c/a/a/n;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {v0, p1, p2, p3}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/a/a/p;

    invoke-direct {v0, p2}, Lcom/deepe/c/c/a/a/p;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {p2, v0}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;Lcom/deepe/c/c/a/a/p;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {v0, p1, p2}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/n$e;->a:Lcom/deepe/c/c/a/a/n;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/n;->a(Lcom/deepe/c/c/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
