.class Lcom/apicloud/a/i/a/aa/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/aa/f;

.field private final b:Lcom/apicloud/a/i/c/d;

.field private c:Lcom/apicloud/a/d;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/apicloud/a/c/l;

.field private j:J

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/aa/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/aa/k;->g:I

    iput v0, p0, Lcom/apicloud/a/i/a/aa/k;->h:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->c:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    return-void
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apicloud/a/i/a/aa/k;->j:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/apicloud/a/i/a/aa/k;->j:J

    return v2
.end method


# virtual methods
.method a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/k;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/aa/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    const/4 v1, 0x0

    const-string v2, "scrolltolower"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/aa/k;->g:I

    return-void
.end method

.method final a(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/k;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollLeft"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollTop"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "x"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "y"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "deltaX"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "deltaY"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->g()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/aa/f;->h()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "scrollHeight"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "scrollWidth"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->b:Lcom/apicloud/a/i/c/d;

    const-string v0, "scroll"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/aa/k;->a(II)V

    return-void
.end method

.method public final a(IIZZ)V
    .locals 4

    iget v0, p0, Lcom/apicloud/a/i/a/aa/k;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/aa/k;->l:I

    iput p2, p0, Lcom/apicloud/a/i/a/aa/k;->m:I

    iget-object v3, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p3, p4

    :goto_2
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/k;->a()V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    iget p2, p0, Lcom/apicloud/a/i/a/aa/k;->g:I

    if-ge p1, p2, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/k;->b()V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/aa/f;->e()I

    move-result p2

    iget p3, p0, Lcom/apicloud/a/i/a/aa/k;->h:I

    sub-int p3, p2, p3

    iget-object p4, p0, Lcom/apicloud/a/i/a/aa/k;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p4}, Lcom/apicloud/a/i/a/aa/f;->f()I

    move-result p4

    add-int/2addr p4, p1

    iget v0, p0, Lcom/apicloud/a/i/a/aa/k;->k:I

    sub-int v0, p1, v0

    sget v3, Lcom/apicloud/a/a/d;->g:I

    if-gt v0, v3, :cond_7

    if-eq p4, p2, :cond_7

    move v1, v2

    :cond_7
    iput p1, p0, Lcom/apicloud/a/i/a/aa/k;->k:I

    if-lt p4, p3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/k;->a()V

    :cond_8
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/k;->d:Z

    return-void
.end method

.method b()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/k;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/aa/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/k;->i:Lcom/apicloud/a/c/l;

    const/4 v1, 0x0

    const-string v2, "scrolltoupper"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/aa/k;->h:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/k;->e:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/k;->f:Z

    return-void
.end method
