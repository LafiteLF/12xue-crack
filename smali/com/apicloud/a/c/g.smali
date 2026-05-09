.class public Lcom/apicloud/a/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/c/g$a;,
        Lcom/apicloud/a/c/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/apicloud/a/d/a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/c/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/c/g;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/apicloud/a/c/g;->a:Lcom/apicloud/a/d/a;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/g;->a:Lcom/apicloud/a/d/a;

    invoke-interface {v0}, Lcom/apicloud/a/d/a;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/c/u;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pages/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b(Lcom/apicloud/a/c/g$b;Ljava/lang/String;)V
    .locals 7

    iget v0, p1, Lcom/apicloud/a/c/g$b;->f:I

    invoke-static {v0, p2}, Lcom/deepe/d/a;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/apicloud/a/c/g$b;->e:Lcom/apicloud/a/c/g$b;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/apicloud/a/c/g$b;->c:Lcom/apicloud/a/c/g$b;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/c/g;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method

.method private b(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/c/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/c/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/apicloud/a/c/g$a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/apicloud/a/c/g$a;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/apicloud/a/c/b;)V
    .locals 6

    sget-object v1, Lcom/apicloud/a/c/g$b;->c:Lcom/apicloud/a/c/g$b;

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->c()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/apicloud/a/c/g;->a:Lcom/apicloud/a/d/a;

    invoke-interface {v0}, Lcom/apicloud/a/d/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->d()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Could not execute script.\n\n"

    invoke-static {v0, p1}, Lcom/deepe/d/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/c/g$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/g$b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6

    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/c/g;->a()Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c/b;)V
    .locals 6

    sget-object v1, Lcom/apicloud/a/c/g$b;->e:Lcom/apicloud/a/c/g$b;

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->c()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/apicloud/a/c/g;->a:Lcom/apicloud/a/d/a;

    invoke-interface {v0}, Lcom/apicloud/a/d/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->d()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/b;->d()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Could not execute script.\n\n"

    invoke-static {v0, p1}, Lcom/deepe/d/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v1, Lcom/apicloud/a/c/g$b;->b:Lcom/apicloud/a/c/g$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/c/g$b;->valueOf(Ljava/lang/String;)Lcom/apicloud/a/c/g$b;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method
