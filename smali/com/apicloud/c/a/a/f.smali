.class public Lcom/apicloud/c/a/a/f;
.super Lcom/apicloud/c/a/a/j$h;

# interfaces
.implements Lcom/apicloud/c/a/a/j$s$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/f$a;,
        Lcom/apicloud/c/a/a/f$b;,
        Lcom/apicloud/c/a/a/f$c;,
        Lcom/apicloud/c/a/a/f$d;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/apicloud/c/a/a/i;

.field c:Z

.field d:I

.field e:I

.field f:Lcom/apicloud/c/a/a/f$d;

.field final g:Lcom/apicloud/c/a/a/f$a;

.field private r:Lcom/apicloud/c/a/a/f$c;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private final x:Lcom/apicloud/c/a/a/f$b;

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$h;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->t:Z

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->u:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/c/a/a/f;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/apicloud/c/a/a/f;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    new-instance v0, Lcom/apicloud/c/a/a/f$a;

    invoke-direct {v0, p0}, Lcom/apicloud/c/a/a/f$a;-><init>(Lcom/apicloud/c/a/a/f;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    new-instance v0, Lcom/apicloud/c/a/a/f$b;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/f$b;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->x:Lcom/apicloud/c/a/a/f$b;

    const/4 v0, 0x2

    iput v0, p0, Lcom/apicloud/c/a/a/f;->y:I

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->b(I)V

    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/f;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->b(Z)V

    return-void
.end method

.method private L()V
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->t:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->t:Z

    :goto_1
    iput-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    return-void
.end method

.method private M()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private N()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/apicloud/c/a/a/f;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1, p3}, Lcom/apicloud/c/a/a/i;->a(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v1

    goto :goto_0
.end method

.method private a(IIZLcom/apicloud/c/a/a/j$t;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->h()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/f$c;->l:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p4}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$t;)I

    move-result p4

    iput p4, v0, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p1, p4, Lcom/apicloud/c/a/a/f$c;->f:I

    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v1, p1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->g()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/apicloud/c/a/a/f$c;->h:I

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->N()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-boolean v2, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, v1, Lcom/apicloud/c/a/a/f$c;->e:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v1, v1, Lcom/apicloud/c/a/a/f$c;->e:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p4, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p4}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->M()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v2, v1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-boolean v2, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v2, :cond_2

    move p4, v0

    :cond_2
    iput p4, v1, Lcom/apicloud/c/a/a/f$c;->e:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v1, v1, Lcom/apicloud/c/a/a/f$c;->e:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p4, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p4}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p4

    add-int/2addr p1, p4

    :goto_1
    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p2, p4, Lcom/apicloud/c/a/a/f$c;->c:I

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget p3, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    :cond_3
    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p1, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/f$a;)V
    .locals 1

    iget v0, p1, Lcom/apicloud/c/a/a/f$a;->a:I

    iget p1, p1, Lcom/apicloud/c/a/a/f$a;->b:I

    invoke-direct {p0, v0, p1}, Lcom/apicloud/c/a/a/f;->g(II)V

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;I)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_3

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->c(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;II)V

    return-void

    :cond_4
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_7

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->c(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-direct {p0, p1, v1, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;II)V

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_2

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ge p3, p2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p3, p1}, Lcom/apicloud/c/a/a/f;->a(ILcom/apicloud/c/a/a/j$o;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gt p2, p3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/apicloud/c/a/a/f;->a(ILcom/apicloud/c/a/a/j$o;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;)V
    .locals 2

    iget-boolean v0, p2, Lcom/apicloud/c/a/a/f$c;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/apicloud/c/a/a/f$c;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/apicloud/c/a/a/f$c;->f:I

    const/4 v1, -0x1

    iget p2, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->b(Lcom/apicloud/c/a/a/j$o;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/f;->b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/apicloud/c/a/a/f$a;->b()V

    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->u:Z

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p3, Lcom/apicloud/c/a/a/f$a;->a:I

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/apicloud/c/a/a/f;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget p1, p0, Lcom/apicloud/c/a/a/f;->d:I

    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->a:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/f$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget-boolean p1, p1, Lcom/apicloud/c/a/a/f$d;->c:Z

    iput-boolean p1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    iget-boolean p1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget v1, v1, Lcom/apicloud/c/a/a/f$d;->b:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget v1, v1, Lcom/apicloud/c/a/a/f$d;->b:I

    add-int/2addr p1, v1

    :goto_0
    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->b:I

    return v0

    :cond_3
    iget p1, p0, Lcom/apicloud/c/a/a/f;->e:I

    if-ne p1, v3, :cond_c

    iget p1, p0, Lcom/apicloud/c/a/a/f;->d:I

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/f$a;->b()V

    return v0

    :cond_4
    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->b:I

    iput-boolean v1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    return v0

    :cond_5
    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_6

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p1

    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->b:I

    iput-boolean v0, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    return v0

    :cond_6
    iget-boolean v1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->b()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result p1

    :goto_1
    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->b:I

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result p1

    if-lez p1, :cond_b

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result p1

    iget v2, p0, Lcom/apicloud/c/a/a/f;->d:I

    if-ge v2, p1, :cond_9

    move p1, v0

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iget-boolean v2, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-ne p1, v2, :cond_a

    move v1, v0

    :cond_a
    iput-boolean v1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    :cond_b
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/f$a;->b()V

    :goto_3
    return v0

    :cond_c
    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iput-boolean p1, p2, Lcom/apicloud/c/a/a/f$a;->c:Z

    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p1

    iget v1, p0, Lcom/apicloud/c/a/a/f;->e:I

    sub-int/2addr p1, v1

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    iget v1, p0, Lcom/apicloud/c/a/a/f;->e:I

    add-int/2addr p1, v1

    :goto_4
    iput p1, p2, Lcom/apicloud/c/a/a/f$a;->b:I

    return v0

    :cond_e
    :goto_5
    iput v2, p0, Lcom/apicloud/c/a/a/f;->d:I

    iput v3, p0, Lcom/apicloud/c/a/a/f;->e:I

    :cond_f
    :goto_6
    return v1
.end method

.method private b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lcom/apicloud/c/a/a/f;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lcom/apicloud/c/a/a/i;->a(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    goto :goto_0
.end method

.method private b(Lcom/apicloud/c/a/a/f$a;)V
    .locals 1

    iget v0, p1, Lcom/apicloud/c/a/a/f$a;->a:I

    iget p1, p1, Lcom/apicloud/c/a/a/f$a;->b:I

    invoke-direct {p0, v0, p1}, Lcom/apicloud/c/a/a/f;->h(II)V

    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$o;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->e()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean p2, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_3

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->d(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;II)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-gez p2, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_7

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->d(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;II)V

    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/c/a/a/j$t;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/f;->n()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/c/a/a/j$o;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-lt v7, v4, :cond_3

    iget-object v4, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput-object v3, v4, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    if-lez v8, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/apicloud/c/a/a/f;->M()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v10, p3

    invoke-direct {v0, v3, v10}, Lcom/apicloud/c/a/a/f;->h(II)V

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v8, v3, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v5, v3, Lcom/apicloud/c/a/a/f$c;->c:I

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/f$c;->a()V

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    :cond_1
    if-lez v9, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/apicloud/c/a/a/f;->N()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v3

    move/from16 v11, p4

    invoke-direct {v0, v3, v11}, Lcom/apicloud/c/a/a/f;->g(II)V

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v9, v3, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v5, v3, Lcom/apicloud/c/a/a/f$c;->c:I

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/f$c;->a()V

    iget-object v3, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    :cond_2
    iget-object v1, v0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    return-void

    :cond_3
    move/from16 v10, p3

    move/from16 v11, p4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v12}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v6, :cond_5

    move v13, v14

    goto :goto_1

    :cond_5
    move v13, v5

    :goto_1
    iget-boolean v15, v0, Lcom/apicloud/c/a/a/f;->c:Z

    const/4 v5, -0x1

    if-eq v13, v15, :cond_6

    move v14, v5

    :cond_6
    if-ne v14, v5, :cond_7

    iget-object v5, v0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    iget-object v12, v12, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v5, v12}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v8, v5

    goto :goto_2

    :cond_7
    iget-object v5, v0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    iget-object v12, v12, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v5, v12}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v9, v5

    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->E()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p3, v0, p2}, Lcom/apicloud/c/a/a/f$a;->a(Landroid/view/View;Lcom/apicloud/c/a/a/j$t;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3, v0}, Lcom/apicloud/c/a/a/f$a;->a(Landroid/view/View;)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->s:Z

    iget-boolean v3, p0, Lcom/apicloud/c/a/a/f;->u:Z

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p3, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->f(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->g(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p3, p1}, Lcom/apicloud/c/a/a/f$a;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->n()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    iget-boolean p1, p3, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    :goto_2
    iput p1, p3, Lcom/apicloud/c/a/a/f$a;->b:I

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method private f(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->h(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->i(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->i(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->h(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private g(II)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lcom/apicloud/c/a/a/f$c;->c:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lcom/apicloud/c/a/a/f$c;->e:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p1, v0, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v2, p1, Lcom/apicloud/c/a/a/f$c;->f:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p2, p1, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/apicloud/c/a/a/f$c;->g:I

    return-void
.end method

.method private h(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v4

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private h(II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lcom/apicloud/c/a/a/f$c;->c:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p1, v0, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Lcom/apicloud/c/a/a/f$c;->e:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v1, p1, Lcom/apicloud/c/a/a/f$c;->f:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p2, p1, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/high16 p2, -0x80000000

    iput p2, p1, Lcom/apicloud/c/a/a/f$c;->g:I

    return-void
.end method

.method private i(Lcom/apicloud/c/a/a/j$t;)I
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->v:Z

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/f;->c:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/apicloud/c/a/a/l;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;ZZ)I

    move-result p1

    return p1
.end method

.method private i(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private j(Lcom/apicloud/c/a/a/j$t;)I
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->v:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/apicloud/c/a/a/l;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;Z)I

    move-result p1

    return p1
.end method

.method private j(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->l(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->m(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private k(Lcom/apicloud/c/a/a/j$t;)I
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->a(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->v:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/f;->b(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->v:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/apicloud/c/a/a/l;->b(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;Z)I

    move-result p1

    return p1
.end method

.method private k(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->m(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->l(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private l(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/c/a/a/f;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->b(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/f;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I
    .locals 7

    iget v0, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    iget v1, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    if-gez v1, :cond_0

    iget v1, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    iget v3, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    add-int/2addr v1, v3

    iput v1, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;)V

    :cond_1
    iget v1, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    iget v3, p2, Lcom/apicloud/c/a/a/f$c;->h:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->x:Lcom/apicloud/c/a/a/f$b;

    :cond_2
    iget-boolean v4, p2, Lcom/apicloud/c/a/a/f$c;->l:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_a

    :cond_3
    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/f$c;->a(Lcom/apicloud/c/a/a/j$t;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/apicloud/c/a/a/f$b;->a()V

    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/f$b;)V

    iget-boolean v4, v3, Lcom/apicloud/c/a/a/f$b;->b:Z

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->b:I

    iget v5, v3, Lcom/apicloud/c/a/a/f$b;->a:I

    iget v6, p2, Lcom/apicloud/c/a/a/f$c;->f:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-boolean v4, v3, Lcom/apicloud/c/a/a/f$b;->c:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget-object v4, v4, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    if-nez v4, :cond_6

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    iget v5, v3, Lcom/apicloud/c/a/a/f$b;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    iget v4, v3, Lcom/apicloud/c/a/a/f$b;->a:I

    sub-int/2addr v1, v4

    :cond_7
    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    if-eq v4, v2, :cond_9

    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    iget v5, v3, Lcom/apicloud/c/a/a/f$b;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    if-gez v4, :cond_8

    iget v4, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    iget v5, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    add-int/2addr v4, v5

    iput v4, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;)V

    :cond_9
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Lcom/apicloud/c/a/a/f$b;->d:Z

    if-eqz v4, :cond_2

    :cond_a
    :goto_0
    iget p1, p2, Lcom/apicloud/c/a/a/f$c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected a(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->f()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method a(IIZZ)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->j:Lcom/apicloud/c/a/a/o;

    goto :goto_2

    :cond_2
    iget-object p4, p0, Lcom/apicloud/c/a/a/f;->k:Lcom/apicloud/c/a/a/o;

    :goto_2
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->L()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->e(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    const v1, 0x3eaaaaab

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Lcom/apicloud/c/a/a/f;->a(IIZLcom/apicloud/c/a/a/j$t;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p2, v1, Lcom/apicloud/c/a/a/f$c;->g:I

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput-boolean v2, p2, Lcom/apicloud/c/a/a/f$c;->a:Z

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p3, p4}, Lcom/apicloud/c/a/a/f;->k(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/apicloud/c/a/a/f;->j(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->M()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->N()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    return-object p1

    :cond_5
    return-object p3
.end method

.method a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;III)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-ne p3, p4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    return-object v1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_6

    if-ge v4, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {v4}, Lcom/apicloud/c/a/a/j$i;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_5

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_4

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    move-object v1, v3

    :cond_6
    :goto_4
    add-int/2addr p3, v0

    goto :goto_1
.end method

.method public a()Lcom/apicloud/c/a/a/j$i;
    .locals 2

    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a/a/f;->d:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/apicloud/c/a/a/f;->e:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/f$d;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->o()V

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a/a/f;->d:I

    iput p2, p0, Lcom/apicloud/c/a/a/f;->e:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/f$d;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->o()V

    return-void
.end method

.method public a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$h$a;)V
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x1

    if-lez p1, :cond_2

    move v0, p2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/apicloud/c/a/a/f;->a(IIZLcom/apicloud/c/a/a/j$t;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p3, p1, p4}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$h$a;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(ILcom/apicloud/c/a/a/j$h$a;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/f$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/f$d;->c:Z

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget v3, v3, Lcom/apicloud/c/a/a/f$d;->a:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->L()V

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iget v3, p0, Lcom/apicloud/c/a/a/f;->d:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Lcom/apicloud/c/a/a/f;->y:I

    if-lt v0, v4, :cond_4

    goto :goto_3

    :cond_4
    if-ltz v3, :cond_5

    if-ge v3, p1, :cond_5

    invoke-interface {p2, v3, v2}, Lcom/apicloud/c/a/a/j$h$a;->b(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/c/a/a/f$d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/c/a/a/f$d;

    iput-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/c/a/a/f;->d:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->c(Lcom/apicloud/c/a/a/j$o;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/f$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    iget v0, v0, Lcom/apicloud/c/a/a/f$d;->a:I

    iput v0, p0, Lcom/apicloud/c/a/a/f;->d:I

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/apicloud/c/a/a/f$c;->a:Z

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->L()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/f$a;->d:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/apicloud/c/a/a/f;->d:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/f$a;->a()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    iget-boolean v4, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->u:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Lcom/apicloud/c/a/a/f$a;->c:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    iput-boolean v3, v0, Lcom/apicloud/c/a/a/f$a;->d:Z

    :cond_4
    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$t;)I

    move-result v0

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v4, v4, Lcom/apicloud/c/a/a/f$c;->j:I

    if-ltz v4, :cond_5

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/i;->g()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/apicloud/c/a/a/f;->d:I

    if-eq v5, v1, :cond_8

    iget v6, p0, Lcom/apicloud/c/a/a/f;->e:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_8

    invoke-virtual {p0, v5}, Lcom/apicloud/c/a/a/f;->c(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v6

    iget-object v7, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v7, v5}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    iget v5, p0, Lcom/apicloud/c/a/a/f;->e:I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v6, v5}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/apicloud/c/a/a/f;->e:I

    :goto_1
    sub-int/2addr v6, v5

    if-lez v6, :cond_7

    add-int/2addr v0, v6

    goto :goto_2

    :cond_7
    sub-int/2addr v4, v6

    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    iget-boolean v5, v5, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v5, :cond_b

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eqz v5, :cond_9

    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->h()Z

    move-result v5

    iput-boolean v5, v1, Lcom/apicloud/c/a/a/f$c;->l:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v5

    iput-boolean v5, v1, Lcom/apicloud/c/a/a/f$c;->i:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    iget-boolean v1, v1, Lcom/apicloud/c/a/a/f$a;->c:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-direct {p0, v1}, Lcom/apicloud/c/a/a/f;->b(Lcom/apicloud/c/a/a/f$a;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v0, v1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v0, v0, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v1, v1, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    if-lez v5, :cond_c

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    add-int/2addr v4, v5

    :cond_c
    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-direct {p0, v5}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/f$a;)V

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v4, v5, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v4, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v6, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v6, v6, Lcom/apicloud/c/a/a/f$c;->e:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v4, v4, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    invoke-direct {p0, v1, v0}, Lcom/apicloud/c/a/a/f;->h(II)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v5, v0, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v0, v0, Lcom/apicloud/c/a/a/f$c;->b:I

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-direct {p0, v1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/f$a;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v4, v1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v4, v1, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v1, v1, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    if-lez v5, :cond_e

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    add-int/2addr v0, v5

    :cond_e
    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-direct {p0, v5}, Lcom/apicloud/c/a/a/f;->b(Lcom/apicloud/c/a/a/f$a;)V

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v0, v5, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v0, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v6, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v6, v6, Lcom/apicloud/c/a/a/f$c;->e:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/apicloud/c/a/a/f$c;->d:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v0, v0, Lcom/apicloud/c/a/a/f$c;->b:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v5, v5, Lcom/apicloud/c/a/a/f$c;->c:I

    invoke-direct {p0, v1, v4}, Lcom/apicloud/c/a/a/f;->g(II)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput v5, v1, Lcom/apicloud/c/a/a/f$c;->h:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v4, v1, Lcom/apicloud/c/a/a/f$c;->b:I

    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v1

    if-lez v1, :cond_11

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/f;->u:Z

    xor-int/2addr v1, v5

    if-eqz v1, :cond_10

    invoke-direct {p0, v4, p1, p2, v3}, Lcom/apicloud/c/a/a/f;->a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/apicloud/c/a/a/f;->b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I

    move-result v1

    goto :goto_5

    :cond_10
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/apicloud/c/a/a/f;->b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v1

    invoke-direct {p0, v4, p1, p2, v2}, Lcom/apicloud/c/a/a/f;->a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    add-int/2addr v4, v1

    :cond_11
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/apicloud/c/a/a/f;->b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;II)V

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->a()V

    goto :goto_6

    :cond_12
    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/f$a;->a()V

    :goto_6
    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->u:Z

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->s:Z

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$a;I)V
    .locals 0

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/f$b;)V
    .locals 7

    invoke-virtual {p3, p1}, Lcom/apicloud/c/a/a/f$c;->a(Lcom/apicloud/c/a/a/j$o;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p4, Lcom/apicloud/c/a/a/f$b;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/apicloud/c/a/a/j$i;

    iget-object v0, p3, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iget v3, p3, Lcom/apicloud/c/a/a/f$c;->f:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/apicloud/c/a/a/f;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->c:Z

    iget v3, p3, Lcom/apicloud/c/a/a/f$c;->f:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/apicloud/c/a/a/f;->a(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p0, p1, v2, v2}, Lcom/apicloud/c/a/a/f;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lcom/apicloud/c/a/a/f$b;->a:I

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne v0, p2, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->C()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->A()I

    move-result v2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/i;->f(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget v3, p3, Lcom/apicloud/c/a/a/f$c;->f:I

    if-ne v3, v1, :cond_7

    iget v1, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget p3, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget v3, p4, Lcom/apicloud/c/a/a/f$b;->a:I

    sub-int/2addr p3, v3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    :cond_7
    iget v1, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget p3, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget v3, p4, Lcom/apicloud/c/a/a/f$b;->a:I

    add-int/2addr p3, v3

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->B()I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p3, Lcom/apicloud/c/a/a/f$c;->f:I

    if-ne v3, v1, :cond_9

    iget v1, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget p3, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget v3, p4, Lcom/apicloud/c/a/a/f$b;->a:I

    sub-int/2addr p3, v3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    :cond_9
    iget v1, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget p3, p3, Lcom/apicloud/c/a/a/f$c;->b:I

    iget v3, p4, Lcom/apicloud/c/a/a/f$b;->a:I

    add-int/2addr p3, v3

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/f;->a(Landroid/view/View;IIII)V

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/j$i;->b()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/j$i;->c()Z

    move-result p3

    if-eqz p3, :cond_b

    :cond_a
    iput-boolean p2, p4, Lcom/apicloud/c/a/a/f$b;->c:Z

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Lcom/apicloud/c/a/a/f$b;->d:Z

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$h$a;)V
    .locals 1

    iget v0, p2, Lcom/apicloud/c/a/a/f$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    iget p2, p2, Lcom/apicloud/c/a/a/f$c;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Lcom/apicloud/c/a/a/j$h$a;->b(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V

    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->w:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->c(Lcom/apicloud/c/a/a/j$o;)V

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$o;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
    .locals 0

    new-instance p2, Lcom/apicloud/c/a/a/g;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/apicloud/c/a/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/g;->d(I)V

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->t:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f;->t:Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->o()V

    return-void
.end method

.method public b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/f;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/f$d;

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/f$d;-><init>(Lcom/apicloud/c/a/a/f$d;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/c/a/a/f$d;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/f$d;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/f;->s:Z

    iget-boolean v2, p0, Lcom/apicloud/c/a/a/f;->c:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/f$d;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->N()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/apicloud/c/a/a/f$d;->b:I

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/apicloud/c/a/a/f$d;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/c/a/a/f;->M()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/apicloud/c/a/a/f$d;->a:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/apicloud/c/a/a/f$d;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/f$d;->b()V

    :goto_0
    return-object v0
.end method

.method b(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    :goto_1
    iget v2, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->j:Lcom/apicloud/c/a/a/o;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->k:Lcom/apicloud/c/a/a/o;

    :goto_2
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/apicloud/c/a/a/o;->a(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne p1, v1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->o()V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j$t;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j$t;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/c/a/a/f;->d:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/apicloud/c/a/a/f;->e:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/f;->g:Lcom/apicloud/c/a/a/f$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/f$a;->a()V

    return-void
.end method

.method c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/apicloud/c/a/a/f$c;->a:Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->f()V

    if-lez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v2, p3}, Lcom/apicloud/c/a/a/f;->a(IIZLcom/apicloud/c/a/a/j$t;)V

    iget-object v2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iget v2, v2, Lcom/apicloud/c/a/a/f$c;->g:I

    iget-object v4, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    invoke-virtual {p0, p2, v4, p3, v1}, Lcom/apicloud/c/a/a/f;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/f$c;Lcom/apicloud/c/a/a/j$t;Z)I

    move-result p2

    add-int/2addr v2, p2

    if-gez v2, :cond_2

    return v1

    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    :cond_3
    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/i;->a(I)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    iput p1, p2, Lcom/apicloud/c/a/a/f$c;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public c(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->i(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->i(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    :cond_1
    iget-boolean p1, p0, Lcom/apicloud/c/a/a/f;->c:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    :cond_2
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Lcom/apicloud/c/a/a/f;->a:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->e()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public e(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->j(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method protected e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->j(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->g()Lcom/apicloud/c/a/a/f$c;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->r:Lcom/apicloud/c/a/a/f$c;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/apicloud/c/a/a/f;->a:I

    invoke-static {p0, v0}, Lcom/apicloud/c/a/a/i;->a(Lcom/apicloud/c/a/a/j$h;I)Lcom/apicloud/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    :cond_1
    return-void
.end method

.method public g(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->k(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method g()Lcom/apicloud/c/a/a/f$c;
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/f$c;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/f$c;-><init>()V

    return-object v0
.end method

.method public h(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/f;->k(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method h()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->x()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->w()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public l()I
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public m()I
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/f;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/apicloud/c/a/a/f;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f;->d(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f;->f:Lcom/apicloud/c/a/a/f$d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/f;->s:Z

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/f;->u:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
