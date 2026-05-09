.class Lcom/deepe/c/c/a/a/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/a/a/j;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F

.field private e:Lcom/deepe/c/c/a/a/j$b;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/j;Lcom/deepe/c/c/a/a/k$w;)V
    .locals 2

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->a:Lcom/deepe/c/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/j$a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p0}, Lcom/deepe/c/c/a/a/k$w;->a(Lcom/deepe/c/c/a/a/k$x;)V

    iget-boolean p2, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget v1, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {p2, v0}, Lcom/deepe/c/c/a/a/j$b;->a(Lcom/deepe/c/c/a/a/j$b;)V

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget v0, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/j$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(FF)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget v2, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/j$b;->a(Lcom/deepe/c/c/a/a/j$b;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget v1, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput p1, p0, Lcom/deepe/c/c/a/a/j$a;->c:F

    iput p2, p0, Lcom/deepe/c/c/a/a/j$a;->d:F

    new-instance v0, Lcom/deepe/c/c/a/a/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/deepe/c/c/a/a/j$a;->h:I

    return-void
.end method

.method public a(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/c/a/a/j$b;->a(FF)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/deepe/c/c/a/a/j$b;

    sub-float p1, p3, p1

    sub-float p2, p4, p2

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    return-void
.end method

.method public a(FFFFFF)V
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/c/a/a/j$b;->a(FF)V

    iget-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget-object p2, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/j$a;->f:Z

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/a/j$b;

    sub-float p2, p5, p3

    sub-float p3, p6, p4

    invoke-direct {p1, p5, p6, p2, p3}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    return-void
.end method

.method public a(FFFZZFF)V
    .locals 13

    move-object v10, p0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/deepe/c/c/a/a/j$a;->f:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/deepe/c/c/a/a/j$a;->g:Z

    iget-object v0, v10, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget v0, v0, Lcom/deepe/c/c/a/a/j$b;->a:F

    iget-object v1, v10, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget v1, v1, Lcom/deepe/c/c/a/a/j$b;->b:F

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcom/deepe/c/c/a/a/j;->a(FFFFFZZFFLcom/deepe/c/c/a/a/k$x;)V

    iput-boolean v11, v10, Lcom/deepe/c/c/a/a/j$a;->g:Z

    iput-boolean v12, v10, Lcom/deepe/c/c/a/a/j$a;->i:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/deepe/c/c/a/a/j$a;->c:F

    iget v1, p0, Lcom/deepe/c/c/a/a/j$a;->d:F

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/c/a/a/j$a;->b(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    return-void
.end method

.method public b(FF)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/c/a/a/j$b;->a(FF)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/deepe/c/c/a/a/j$b;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget v1, v1, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    iget v2, v2, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float v2, p2, v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/deepe/c/c/a/a/j$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$a;->e:Lcom/deepe/c/c/a/a/j$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/j$a;->i:Z

    return-void
.end method
