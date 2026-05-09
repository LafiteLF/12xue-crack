.class public Lcom/apicloud/a/i/a/r/r;
.super Lcom/apicloud/c/a/a/j$m;


# instance fields
.field private final a:Lcom/apicloud/a/i/c/d;

.field private b:Lcom/apicloud/a/d;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/apicloud/a/c/l;

.field private g:Lcom/apicloud/c/a/a/j$h;

.field private h:J

.field private i:I

.field private j:I

.field private k:Z

.field private final l:Lcom/apicloud/a/i/a/r/n;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$m;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/r/r;->k:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/r;->b:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->r()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/r;->g:Lcom/apicloud/c/a/a/j$h;

    return-void
.end method

.method private final d()Z
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/r;->g:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$h;->F()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v3, :cond_0

    return v4

    :cond_0
    aget v6, v0, v5

    if-ne v6, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/r/r;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    const/4 v1, 0x0

    const-string v2, "scrolltolower"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/r/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    const/4 v1, 0x0

    const-string v2, "scrolltoupper"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apicloud/a/i/a/r/r;->h:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/apicloud/a/i/a/r/r;->h:J

    return v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/r/r;->i:I

    iput v0, p0, Lcom/apicloud/a/i/a/r/r;->j:I

    return-void
.end method

.method public final a(II)V
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/r/r;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/apicloud/a/i/a/r/r;->i:I

    iget p1, p0, Lcom/apicloud/a/i/a/r/r;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/apicloud/a/i/a/r/r;->j:I

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    iget p2, p0, Lcom/apicloud/a/i/a/r/r;->j:I

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollLeft"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollTop"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "deltaX"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "deltaY"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->m()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/r;->l:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/r/n;->n()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "scrollHeight"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "scrollWidth"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/r;->f:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/r;->a:Lcom/apicloud/a/i/c/d;

    const-string v0, "scroll"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;I)V
    .locals 0

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->e()V

    return-void

    :cond_0
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->f()V

    :cond_1
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->k:Z

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/apicloud/a/i/a/r/r;->a(II)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->c:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->g()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/r/r;->i:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->d:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->g()V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/r/r;->j:I

    return v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/r;->e:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/r;->g()V

    return-void
.end method
