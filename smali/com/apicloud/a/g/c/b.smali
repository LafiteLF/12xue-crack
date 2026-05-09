.class public Lcom/apicloud/a/g/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/Html$TagHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    array-length p1, p0

    if-lez p1, :cond_0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 3

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLandroid/text/Editable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4, p5}, Lcom/apicloud/a/g/c/b;->a(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p4, p5}, Lcom/apicloud/a/g/c/b;->b(Landroid/text/Editable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static b(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apicloud/a/g/c/b;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/16 v2, 0x21

    invoke-interface {p0, p1, v1, v0, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 12

    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const-string v1, "del"

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/g/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/text/Editable;Ljava/lang/Object;)V

    new-instance v11, Landroid/text/style/UnderlineSpan;

    invoke-direct {v11}, Landroid/text/style/UnderlineSpan;-><init>()V

    const-string v7, "ins"

    move-object v6, p0

    move-object v8, p2

    move v9, p1

    move-object v10, p3

    invoke-direct/range {v6 .. v11}, Lcom/apicloud/a/g/c/b;->a(Ljava/lang/String;Ljava/lang/String;ZLandroid/text/Editable;Ljava/lang/Object;)V

    return-void
.end method
