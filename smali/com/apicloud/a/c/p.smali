.class public Lcom/apicloud/a/c/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/c/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/d;

.field private b:Lcom/apicloud/a/c/v;

.field private c:Lcom/apicloud/a/c/g;

.field private final d:Lcom/apicloud/a/c/u;

.field private final e:Lcom/apicloud/a/c/e;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/e;Lcom/apicloud/a/c/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/p;->e:Lcom/apicloud/a/c/e;

    iput-object p2, p0, Lcom/apicloud/a/c/p;->d:Lcom/apicloud/a/c/u;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/p;)Lcom/apicloud/a/c/v;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/p;->b:Lcom/apicloud/a/c/v;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/c/p;)Lcom/apicloud/a/c/g;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/p;->c:Lcom/apicloud/a/c/g;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/p;->c:Lcom/apicloud/a/c/g;

    iget-object v1, p0, Lcom/apicloud/a/c/p;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->m()Lcom/apicloud/a/c/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$a;)V

    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/p;->a:Lcom/apicloud/a/d;

    invoke-static {v0}, Lcom/apicloud/a/e/e;->a(Lcom/apicloud/a/d;)Lcom/apicloud/a/e/e;

    return-void
.end method

.method private e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/p;->e:Lcom/apicloud/a/c/e;

    invoke-virtual {v0}, Lcom/apicloud/a/c/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/c/p;->f()V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/a/c/p;->b:Lcom/apicloud/a/c/v;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/apicloud/a/c/p;->c:Lcom/apicloud/a/c/g;

    const-string v2, "Startup execute script failed."

    invoke-static {v0, v2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/c/p;->a:Lcom/apicloud/a/d;

    new-instance v1, Lcom/apicloud/a/c/p$1;

    invoke-direct {v1, p0}, Lcom/apicloud/a/c/p$1;-><init>(Lcom/apicloud/a/c/p;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/b;)Lcom/apicloud/a/d;
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/c/p;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/a/a/a;

    iget-object v1, p0, Lcom/apicloud/a/c/p;->d:Lcom/apicloud/a/c/u;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/a/a;-><init>(Lcom/apicloud/a/b;Lcom/apicloud/a/c/u;)V

    new-instance p1, Lcom/apicloud/a/c/g;

    invoke-direct {p1, v0}, Lcom/apicloud/a/c/g;-><init>(Lcom/apicloud/a/d/a;)V

    new-instance v7, Lcom/apicloud/a/c/v;

    invoke-direct {v7, v0, p1}, Lcom/apicloud/a/c/v;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/c/g;)V

    new-instance v2, Lcom/apicloud/a/c/h;

    invoke-direct {v2, v7}, Lcom/apicloud/a/c/h;-><init>(Lcom/apicloud/a/c/v;)V

    new-instance v4, Lcom/apicloud/a/e/f;

    new-instance v1, Lcom/apicloud/a/c/p$a;

    invoke-direct {v1, v2}, Lcom/apicloud/a/c/p$a;-><init>(Lcom/apicloud/a/c/h;)V

    invoke-direct {v4, v1}, Lcom/apicloud/a/e/f;-><init>(Lcom/apicloud/a/e/f$b;)V

    new-instance v3, Lcom/apicloud/a/d/g;

    invoke-direct {v3, v0}, Lcom/apicloud/a/d/g;-><init>(Lcom/apicloud/a/d;)V

    move-object v1, v0

    move-object v5, v7

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/apicloud/a/a/a;->a(Lcom/apicloud/a/c/o;Lcom/apicloud/a/d/g;Lcom/apicloud/a/e/f;Lcom/apicloud/a/c/v;Lcom/apicloud/a/d/c;)V

    iput-object p1, p0, Lcom/apicloud/a/c/p;->c:Lcom/apicloud/a/c/g;

    iput-object v7, p0, Lcom/apicloud/a/c/p;->b:Lcom/apicloud/a/c/v;

    iput-object v0, p0, Lcom/apicloud/a/c/p;->a:Lcom/apicloud/a/d;

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/c/p;->b()V

    invoke-direct {p0}, Lcom/apicloud/a/c/p;->c()V

    invoke-direct {p0}, Lcom/apicloud/a/c/p;->d()V

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v0

    const-string v1, "module inited"

    invoke-virtual {v0, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/c/p;->b:Lcom/apicloud/a/c/v;

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/c/p;->e()V

    return-void
.end method
