.class Lcom/apicloud/a/i/a/y/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/a$c;


# instance fields
.field private a:Lcom/apicloud/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/f;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/f;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rich-text receive exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    return-void
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    const-string p3, "html"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "body"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/f;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported tag with rich-text: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    :cond_1
    :goto_0
    return-void
.end method
