.class public Lcom/apicloud/a/i/a/d/b;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/d/a/e;

.field private b:Lcom/apicloud/a/i/a/d/d;

.field private c:Lcom/apicloud/a/i/a/d/b$a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/b;->b:Lcom/apicloud/a/i/a/d/d;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/a/e;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    return-object p0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/d/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/e;->setBackgroundColor(I)V

    new-instance v0, Lcom/apicloud/a/i/a/d/b$a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/d/b$a;-><init>(Lcom/apicloud/a/i/a/d/b;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/b;->c:Lcom/apicloud/a/i/a/d/b$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a/e$a;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/e;->a(Z)V

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/d/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e;->b()V

    :cond_0
    invoke-static {}, Lcom/apicloud/a/i/a/d/a/h;->a()Lcom/apicloud/a/i/a/d/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/h;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/e;->b()V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/e;->a()V

    :cond_3
    return-void
.end method

.method public a(Lcom/apicloud/a/c/f;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->c:Lcom/apicloud/a/i/a/d/b$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/c/f;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/e;->i()V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a;Lcom/apicloud/a/c/f;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->c:Lcom/apicloud/a/i/a/d/b$a;

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/d/b$a;->a(Lcom/apicloud/a/c/f;)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/d/a/e;->b(Lcom/apicloud/a/i/a/d/a;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b;->b:Lcom/apicloud/a/i/a/d/d;

    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/e;->a(I)V

    return-void
.end method

.method public c()Lcom/apicloud/a/i/a/d/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->b:Lcom/apicloud/a/i/a/d/d;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/e;->b(I)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/g;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/apicloud/a/i/a/d/a/e;->a(Ljava/io/File;Lcom/apicloud/a/i/a/d/a;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/apicloud/a/i/a/i/b;->onAttachedToWindow()V

    new-instance v0, Lcom/apicloud/a/i/a/d/b$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/d/b$1;-><init>(Lcom/apicloud/a/i/a/d/b;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/apicloud/a/i/a/d/b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/b;->a:Lcom/apicloud/a/i/a/d/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e;->b()V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/i/b;->onDetachedFromWindow()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[camera]"

    return-object v0
.end method
