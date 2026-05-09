.class Lcom/apicloud/c/a/a/j$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/apicloud/c/a/a/j$w;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/c/a/a/j;->a(IZ)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    iget-object v2, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/apicloud/c/a/a/b;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/apicloud/c/a/a/j;->a(IIZ)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iput-boolean v1, p1, Lcom/apicloud/c/a/a/j;->C:Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget v0, p1, Lcom/apicloud/c/a/a/j$t;->b:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/apicloud/c/a/a/j$t;->b:I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j;->a(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/apicloud/c/a/a/j;->D:Z

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/a$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$6;->c(Lcom/apicloud/c/a/a/a$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/apicloud/c/a/a/j;->a(IIZ)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/apicloud/c/a/a/j;->C:Z

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/a$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$6;->c(Lcom/apicloud/c/a/a/a$b;)V

    return-void
.end method

.method public c(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j;->g(II)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/apicloud/c/a/a/j;->C:Z

    return-void
.end method

.method c(Lcom/apicloud/c/a/a/a$b;)V
    .locals 4

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v2, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget v3, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    iget-object p1, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j;II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;II)V

    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j;->f(II)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$6;->a:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/apicloud/c/a/a/j;->C:Z

    return-void
.end method
