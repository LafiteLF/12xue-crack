.class public Lcom/apicloud/a/i/b/c/a;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/b;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/apicloud/a/i/c/j;
    .locals 2

    new-instance p1, Lcom/apicloud/a/i/c/j;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/j;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/b/c/a$1;

    const-class v1, Landroid/view/View;

    invoke-direct {v0, p0, v1, p1}, Lcom/apicloud/a/i/b/c/a$1;-><init>(Lcom/apicloud/a/i/b/c/a;Ljava/lang/Class;Lcom/apicloud/a/i/c/j;)V

    invoke-static {p0, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-object p1
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/b/c/a$2;

    const-class v1, Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/b/c/a$2;-><init>(Lcom/apicloud/a/i/b/c/a;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lcom/apicloud/a/i/b/c/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/b/c/a;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-direct {p0, p0}, Lcom/apicloud/a/i/b/c/a;->a(Landroid/view/ViewGroup;)Lcom/apicloud/a/i/c/j;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submit"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/b/c/a;->a:Z

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/b/c/a;->c()V

    iget-boolean v0, p0, Lcom/apicloud/a/i/b/c/a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/b/c/a;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/b/c/a;->b:Z

    return-void
.end method
