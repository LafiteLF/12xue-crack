.class Lcom/uzmap/pkg/uzcore/uzmodule/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)Lcom/deepe/a/g/a/g;
    .locals 3

    new-instance v0, Lcom/deepe/a/g/a/g;

    invoke-direct {v0}, Lcom/deepe/a/g/a/g;-><init>()V

    if-eqz p0, :cond_5

    const/4 v1, 0x0

    const-string v2, "layerColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepe/a/g/a/g;->d:I

    :cond_0
    const-string v2, "itemNormalColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepe/a/g/a/g;->e:I

    :cond_1
    const-string v2, "itemPressColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepe/a/g/a/g;->f:I

    :cond_2
    const-string v2, "fontNormalColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepe/a/g/a/g;->g:I

    :cond_3
    const-string v2, "fontPressColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepe/a/g/a/g;->h:I

    :cond_4
    const-string v2, "titleFontColor"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssColor(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/deepe/a/g/a/g;->i:I

    :cond_5
    return-object v0
.end method

.method public static b(Lcom/uzmap/pkg/uzcore/uzmodule/b;)Lcom/deepe/a/g/a/d;
    .locals 5

    new-instance v0, Lcom/deepe/a/g/a/d;

    invoke-direct {v0}, Lcom/deepe/a/g/a/d;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "title"

    invoke-interface {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/a/g/a/d;->a:Ljava/lang/String;

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    const-string v2, "cancelTitle"

    invoke-interface {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/a/g/a/d;->c:Ljava/lang/String;

    const-string v1, "destructiveTitle"

    invoke-interface {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/a/g/a/d;->b:Ljava/lang/String;

    const-string v1, "buttons"

    invoke-interface {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    iput-object v2, v0, Lcom/deepe/a/g/a/d;->d:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {p0, v3}, Lcom/uzmap/pkg/uzcore/a/c;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
