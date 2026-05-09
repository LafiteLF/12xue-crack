.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/i;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public a:Lcom/deepe/c/c/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/uzmodule/b/i;ZLcom/deepe/c/c/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a(ZLcom/deepe/c/c/g;)V

    return-void
.end method

.method private a(ZLcom/deepe/c/c/g;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-boolean v2, v2, Lcom/deepe/c/c/k;->b:Z

    if-eqz v2, :cond_0

    iget-object p1, p2, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-object p1, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    :goto_1
    new-instance p2, Lcom/deepe/c/i/i;

    invoke-direct {p2}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "url"

    invoke-virtual {p2, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "status"

    invoke-virtual {p2, p1, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-object p1, p1, Lcom/deepe/c/c/k;->d:Ljava/lang/String;

    const-string v0, "tag"

    invoke-virtual {p2, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private d()V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "thumbnail"

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "tag"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "policy"

    invoke-virtual {p0, v5, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "cache_else_network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "no_cache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v5, "cache_only"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x3

    :cond_4
    :goto_0
    invoke-static {v0, v2, v1}, Lcom/deepe/c/c/k;->a(Ljava/lang/String;ZI)Lcom/deepe/c/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iput-object v3, v0, Lcom/deepe/c/c/k;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget v0, v0, Lcom/deepe/c/c/k;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget v0, v0, Lcom/deepe/c/c/k;->c:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    invoke-virtual {v0, v3}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/deepe/c/c/g;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-boolean v3, v3, Lcom/deepe/c/c/k;->b:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/c/g;->a()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/deepe/c/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_3

    return v1

    :cond_3
    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v3, "url"

    invoke-virtual {v1, v3, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-object v0, v0, Lcom/deepe/c/c/k;->d:Ljava/lang/String;

    const-string v3, "tag"

    invoke-virtual {v1, v3, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->success(Lorg/json/JSONObject;Z)V

    return v2

    :cond_4
    return v1
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/k;Lcom/deepe/c/c/i;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a:Lcom/deepe/c/c/k;

    iget-object v0, v0, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
