.class public Lcom/deepe/e/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {p0}, Lcom/deepe/e/f;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/deepe/e/c;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/e/c;

    invoke-virtual {v1, p1}, Lcom/deepe/e/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/g;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/h;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/h;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/j;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/j;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/a;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/a;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/i;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/i;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepe/e/f;->b:Ljava/util/List;

    new-instance v1, Lcom/deepe/e/b;

    iget-object v2, p0, Lcom/deepe/e/f;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-direct {v1, v2}, Lcom/deepe/e/b;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/deepe/e/d;)V
    .locals 3

    const-string v0, "apiMethodName"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/e/f;->a(Ljava/lang/String;)Lcom/deepe/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/deepe/e/c;->a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    :cond_0
    return-void
.end method

.method public final b(Lcom/deepe/e/d;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "apiMethodName"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/e/f;->a(Ljava/lang/String;)Lcom/deepe/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/deepe/e/c;->a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
