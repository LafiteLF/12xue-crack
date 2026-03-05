.class Lcom/apicloud/c/a/a/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/o$a;,
        Lcom/apicloud/c/a/a/o$b;
    }
.end annotation


# instance fields
.field final a:Lcom/apicloud/c/a/a/o$b;

.field b:Lcom/apicloud/c/a/a/o$a;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/o$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    new-instance p1, Lcom/apicloud/c/a/a/o$a;

    invoke-direct {p1}, Lcom/apicloud/c/a/a/o$a;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/o$b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-interface {v1}, Lcom/apicloud/c/a/a/o$b;->b()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ne p1, p2, :cond_1

    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-interface {v4, p1}, Lcom/apicloud/c/a/a/o$b;->a(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-interface {v5, v4}, Lcom/apicloud/c/a/a/o$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/apicloud/c/a/a/o;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-interface {v6, v4}, Lcom/apicloud/c/a/a/o$b;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Lcom/apicloud/c/a/a/o$a;->a(IIII)V

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/o$a;->a()V

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5, p3}, Lcom/apicloud/c/a/a/o$a;->a(I)V

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    if-eqz p4, :cond_3

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/o$a;->a()V

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5, p4}, Lcom/apicloud/c/a/a/o$a;->a(I)V

    iget-object v5, p0, Lcom/apicloud/c/a/a/o;->b:Lcom/apicloud/c/a/a/o$a;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/o$a;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    :cond_3
    add-int/2addr p1, v2

    goto :goto_1
.end method
