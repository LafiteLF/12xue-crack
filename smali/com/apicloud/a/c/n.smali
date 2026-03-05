.class public Lcom/apicloud/a/c/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/apicloud/a/b;

.field private b:Lcom/apicloud/a/c/p;

.field private c:Lcom/apicloud/a/c/u;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/n;->a:Lcom/apicloud/a/b;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/apicloud/a/c/e;)Lcom/apicloud/a/c/u;
    .locals 2

    invoke-virtual {p2}, Lcom/apicloud/a/c/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/c/e;->c()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/apicloud/a/d/i;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v1, p1, v0, p2}, Lcom/apicloud/a/d/i;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private b(Lcom/apicloud/a/c/e;)Lcom/apicloud/a/c/p;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/n;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/c/n;->a(Landroid/content/Context;Lcom/apicloud/a/c/e;)Lcom/apicloud/a/c/u;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/c/n;->c:Lcom/apicloud/a/c/u;

    new-instance v0, Lcom/apicloud/a/c/p;

    iget-object v1, p0, Lcom/apicloud/a/c/n;->c:Lcom/apicloud/a/c/u;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/c/p;-><init>(Lcom/apicloud/a/c/e;Lcom/apicloud/a/c/u;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apicloud/a/c/e;)Lcom/apicloud/a/d;
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/n;->b(Lcom/apicloud/a/c/e;)Lcom/apicloud/a/c/p;

    move-result-object p1

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v0

    const-string v1, "create launcher"

    invoke-virtual {v0, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/c/n;->a:Lcom/apicloud/a/b;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c/p;->a(Lcom/apicloud/a/b;)Lcom/apicloud/a/d;

    move-result-object v0

    iput-object p1, p0, Lcom/apicloud/a/c/n;->b:Lcom/apicloud/a/c/p;

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object p1

    const-string v1, "launcher inited"

    invoke-virtual {p1, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/n;->b:Lcom/apicloud/a/c/p;

    invoke-virtual {v0}, Lcom/apicloud/a/c/p;->a()V

    return-void
.end method
