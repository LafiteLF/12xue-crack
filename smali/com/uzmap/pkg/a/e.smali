.class public Lcom/uzmap/pkg/a/e;
.super Lcom/uzmap/pkg/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/a/e$a;,
        Lcom/uzmap/pkg/a/e$b;
    }
.end annotation


# instance fields
.field private c:Lcom/apicloud/b/a;

.field private d:Lcom/uzmap/pkg/a/f;

.field private e:Ljava/lang/String;

.field private f:Lcom/uzmap/pkg/uzcore/d/i;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/a/g;-><init>(ILandroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    iput-object p3, p0, Lcom/uzmap/pkg/a/e;->f:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-static {p0}, Lcom/apicloud/b/b;->a(Landroid/view/ViewGroup;)Lcom/apicloud/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    new-instance p1, Lcom/uzmap/pkg/a/e$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/uzmap/pkg/a/e$a;-><init>(Lcom/uzmap/pkg/a/e;Lcom/uzmap/pkg/a/e$a;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/e;->a(Lcom/apicloud/b/a/a;)V

    new-instance p1, Lcom/uzmap/pkg/a/e$b;

    invoke-direct {p1, p0, p2}, Lcom/uzmap/pkg/a/e$b;-><init>(Lcom/uzmap/pkg/a/e;Lcom/uzmap/pkg/a/e$b;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/e;->a(Lcom/apicloud/b/a/c;)V

    new-instance p1, Lcom/apicloud/b/c;

    invoke-direct {p1}, Lcom/apicloud/b/c;-><init>()V

    invoke-interface {p3}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p2

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/b/d;->o:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Lcom/apicloud/b/c;->a(Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/e;->a(Lcom/apicloud/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/a/e;->d:Lcom/uzmap/pkg/a/f;

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/uzcore/d/i;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/a/e;->f:Lcom/uzmap/pkg/uzcore/d/i;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->a(Lcom/apicloud/b/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/b/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->a(Lcom/apicloud/b/a/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->a(Lcom/apicloud/b/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/x;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Lcom/uzmap/pkg/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/a/f;

    iput-object p1, p0, Lcom/uzmap/pkg/a/e;->d:Lcom/uzmap/pkg/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/a/e;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/a/e;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    iget-object p2, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/apicloud/b/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/i/t;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/uzmap/pkg/a/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->d:Lcom/uzmap/pkg/a/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/a/e;->d:Lcom/uzmap/pkg/a/f;

    :cond_0
    return-void
.end method

.method protected final c(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/b/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/b/a;->b()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/b/a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e;->c:Lcom/apicloud/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/b/a;->a()V

    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
