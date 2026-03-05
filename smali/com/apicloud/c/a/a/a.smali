.class Lcom/apicloud/c/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/a$a;,
        Lcom/apicloud/c/a/a/a$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/apicloud/c/a/a/a$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Lcom/apicloud/c/a/a/h;

.field private g:Lcom/apicloud/c/a/a/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/c/a/a/a/a$a<",
            "Lcom/apicloud/c/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/a$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/a;-><init>(Lcom/apicloud/c/a/a/a$a;Z)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/c/a/a/a$a;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/c/a/a/a/a$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/a/a$b;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/a;->g:Lcom/apicloud/c/a/a/a/a$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/a;->h:I

    iput-object p1, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iput-boolean p2, p0, Lcom/apicloud/c/a/a/a;->e:Z

    new-instance p1, Lcom/apicloud/c/a/a/h;

    invoke-direct {p1, p0}, Lcom/apicloud/c/a/a/h;-><init>(Lcom/apicloud/c/a/a/h$a;)V

    iput-object p1, p0, Lcom/apicloud/c/a/a/a;->f:Lcom/apicloud/c/a/a/h;

    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    return-void
.end method

.method private c(Lcom/apicloud/c/a/a/a$b;)V
    .locals 10

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-lt v2, v1, :cond_2

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    if-eq v5, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    :cond_0
    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->e(Lcom/apicloud/c/a/a/a$b;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    :goto_1
    return-void

    :cond_2
    iget-object v8, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v8, v2}, Lcom/apicloud/c/a/a/a$a;->a(I)Lcom/apicloud/c/a/a/j$w;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    if-ne v4, v9, :cond_4

    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    move v4, v9

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    move v6, v3

    goto :goto_5

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/apicloud/c/a/a/a;->e(Lcom/apicloud/c/a/a/a$b;)V

    move v4, v9

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    move v6, v9

    :goto_5
    if-eqz v4, :cond_7

    sub-int/2addr v2, v5

    sub-int/2addr v1, v5

    move v5, v9

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :goto_6
    add-int/2addr v2, v9

    move v4, v6

    goto :goto_0
.end method

.method private d(II)I
    .locals 6

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-gez v0, :cond_4

    iget-object p2, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_1
    if-gez p2, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/a$b;

    iget v1, v0, Lcom/apicloud/c/a/a/a$b;->a:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/apicloud/c/a/a/a$b;->d:I

    iget v3, v0, Lcom/apicloud/c/a/a/a$b;->b:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Lcom/apicloud/c/a/a/a$b;->d:I

    if-gez v1, :cond_3

    goto :goto_2

    :cond_1
    iget v1, v0, Lcom/apicloud/c/a/a/a$b;->d:I

    if-gtz v1, :cond_3

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/a$b;

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_d

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    if-ge v2, v4, :cond_5

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    goto :goto_3

    :cond_5
    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    :goto_3
    if-lt p1, v2, :cond_b

    if-gt p1, v4, :cond_b

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ne v2, v4, :cond_8

    if-ne p2, v1, :cond_6

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v2, v1

    :goto_4
    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    goto :goto_5

    :cond_6
    if-ne p2, v5, :cond_7

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_8
    if-ne p2, v1, :cond_9

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    add-int/2addr v2, v1

    :goto_6
    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    goto :goto_7

    :cond_9
    if-ne p2, v5, :cond_a

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    sub-int/2addr v2, v1

    goto :goto_6

    :cond_a
    :goto_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_a

    :cond_b
    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ge p1, v2, :cond_11

    if-ne p2, v1, :cond_c

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v2, v1

    :goto_8
    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    goto :goto_a

    :cond_c
    if-ne p2, v5, :cond_11

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_8

    :cond_d
    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    if-gt v2, p1, :cond_f

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    if-ne v2, v1, :cond_e

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_a

    :cond_e
    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    if-ne v2, v5, :cond_11

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr p1, v2

    goto :goto_a

    :cond_f
    if-ne p2, v1, :cond_10

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    add-int/2addr v2, v1

    :goto_9
    iput v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    goto :goto_a

    :cond_10
    if-ne p2, v5, :cond_11

    iget v2, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    sub-int/2addr v2, v1

    goto :goto_9

    :cond_11
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method private d(Lcom/apicloud/c/a/a/a$b;)V
    .locals 9

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    :goto_0
    const/4 v6, 0x4

    if-lt v2, v1, :cond_2

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    if-eq v5, v1, :cond_0

    iget-object v1, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    invoke-virtual {p0, v6, v0, v5, v1}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    :cond_0
    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->e(Lcom/apicloud/c/a/a/a$b;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v7, v2}, Lcom/apicloud/c/a/a/a$a;->a(I)Lcom/apicloud/c/a/a/j$w;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, v8, :cond_4

    iget-object v4, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v0, v5, v4}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    move v0, v2

    move v5, v3

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v0, v5, v4}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/a;->e(Lcom/apicloud/c/a/a/a$b;)V

    move v0, v2

    move v5, v3

    :cond_6
    move v4, v8

    :goto_3
    add-int/2addr v5, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private d(I)Z
    .locals 7

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/a$b;

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    iget v3, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/apicloud/c/a/a/a;->a(II)I

    move-result v3

    if-ne v3, p1, :cond_4

    return v6

    :cond_1
    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    if-ne v4, v6, :cond_4

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v5, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v4, v5

    iget v3, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    :goto_1
    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/apicloud/c/a/a/a;->a(II)I

    move-result v5

    if-ne v5, p1, :cond_3

    return v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private e(Lcom/apicloud/c/a/a/a$b;)V
    .locals 12

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    invoke-direct {p0, v0, v2}, Lcom/apicloud/c/a/a/a;->d(II)I

    move-result v0

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v6

    :goto_0
    move v7, v1

    move v8, v7

    :goto_1
    iget v9, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    if-lt v7, v9, :cond_3

    iget-object v1, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    if-lez v8, :cond_2

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    invoke-virtual {p0, p1, v0, v8, v1}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    :cond_2
    return-void

    :cond_3
    iget v9, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    mul-int v10, v3, v7

    add-int/2addr v9, v10

    iget v10, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    invoke-direct {p0, v9, v10}, Lcom/apicloud/c/a/a/a;->d(II)I

    move-result v9

    iget v10, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    if-eq v10, v4, :cond_6

    if-eq v10, v5, :cond_5

    :cond_4
    move v10, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v0, 0x1

    if-ne v9, v10, :cond_4

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_6
    if-ne v9, v0, :cond_4

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    iget v10, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    iget-object v11, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v8, v11}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    if-ne v0, v5, :cond_8

    add-int/2addr v2, v8

    :cond_8
    move v8, v1

    move v0, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Lcom/apicloud/c/a/a/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/a;->g(Lcom/apicloud/c/a/a/a$b;)V

    return-void
.end method

.method private g(Lcom/apicloud/c/a/a/a$b;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v0, v1, p1}, Lcom/apicloud/c/a/a/a$a;->d(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v2, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    iget-object p1, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/apicloud/c/a/a/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v0, v1, p1}, Lcom/apicloud/c/a/a/a$a;->b(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v0, v1, p1}, Lcom/apicloud/c/a/a/a$a;->c(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt p2, v0, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/a$b;

    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ne v2, p1, :cond_1

    iget p1, v1, Lcom/apicloud/c/a/a/a$b;->d:I

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ge v2, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget v1, v1, Lcom/apicloud/c/a/a/a$b;->d:I

    if-gt v1, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->b:I

    if-gt v2, p1, :cond_6

    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, v1, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    iget v1, v1, Lcom/apicloud/c/a/a/a$b;->d:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    iget v2, v1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    iget v1, v1, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr p1, v1

    :cond_6
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->g:Lcom/apicloud/c/a/a/a/a$a;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/a/a$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/apicloud/c/a/a/a$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/apicloud/c/a/a/a$b;->a:I

    iput p2, v0, Lcom/apicloud/c/a/a/a$b;->b:I

    iput p3, v0, Lcom/apicloud/c/a/a/a$b;->d:I

    iput-object p4, v0, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/a;->h:I

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/a$b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->g:Lcom/apicloud/c/a/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/a/a$a;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method a(Lcom/apicloud/c/a/a/a$b;I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/a$a;->a(Lcom/apicloud/c/a/a/a$b;)V

    iget v0, p1, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    iget-object p1, p1, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Lcom/apicloud/c/a/a/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget p1, p1, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v0, p2, p1}, Lcom/apicloud/c/a/a/a$a;->a(II)V

    :goto_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apicloud/c/a/a/a$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/a$b;

    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/a;->a(Lcom/apicloud/c/a/a/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method a(I)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/a;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/a;->a(II)I

    move-result p1

    return p1
.end method

.method b()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->f:Lcom/apicloud/c/a/a/h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/h;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/a$b;

    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->b(Lcom/apicloud/c/a/a/a$b;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->d(Lcom/apicloud/c/a/a/a$b;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->c(Lcom/apicloud/c/a/a/a$b;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/a;->f(Lcom/apicloud/c/a/a/a$b;)V

    :goto_1
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->d:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public c(I)I
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return p1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/a$b;

    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ne v3, p1, :cond_2

    iget p1, v2, Lcom/apicloud/c/a/a/a$b;->d:I

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->b:I

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    iget v2, v2, Lcom/apicloud/c/a/a/a$b;->d:I

    if-gt v2, p1, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->b:I

    if-gt v3, p1, :cond_7

    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v4, v2, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    iget v2, v2, Lcom/apicloud/c/a/a/a$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_6
    iget v3, v2, Lcom/apicloud/c/a/a/a$b;->b:I

    if-gt v3, p1, :cond_7

    iget v2, v2, Lcom/apicloud/c/a/a/a$b;->d:I

    add-int/2addr p1, v2

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method c()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Ljava/util/List;)V

    iput v1, p0, Lcom/apicloud/c/a/a/a;->h:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/a$b;

    invoke-interface {v3, v4}, Lcom/apicloud/c/a/a/a$a;->b(Lcom/apicloud/c/a/a/a$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method c(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/apicloud/c/a/a/a;->a(IIILjava/lang/Object;)Lcom/apicloud/c/a/a/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/apicloud/c/a/a/a;->h:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/a;->c()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/a;->a(Ljava/util/List;)V

    iput v1, p0, Lcom/apicloud/c/a/a/a;->h:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/a$b;

    iget v4, v3, Lcom/apicloud/c/a/a/a$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v4, v3}, Lcom/apicloud/c/a/a/a$a;->b(Lcom/apicloud/c/a/a/a$b;)V

    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v5, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v4, v5, v3}, Lcom/apicloud/c/a/a/a$a;->d(II)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v4, v3}, Lcom/apicloud/c/a/a/a$a;->b(Lcom/apicloud/c/a/a/a$b;)V

    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v5, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v6, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    iget-object v3, v3, Lcom/apicloud/c/a/a/a$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lcom/apicloud/c/a/a/a$a;->a(IILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v4, v3}, Lcom/apicloud/c/a/a/a$a;->b(Lcom/apicloud/c/a/a/a$b;)V

    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v5, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v4, v5, v3}, Lcom/apicloud/c/a/a/a$a;->a(II)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    invoke-interface {v4, v3}, Lcom/apicloud/c/a/a/a$a;->b(Lcom/apicloud/c/a/a/a$b;)V

    iget-object v4, p0, Lcom/apicloud/c/a/a/a;->c:Lcom/apicloud/c/a/a/a$a;

    iget v5, v3, Lcom/apicloud/c/a/a/a$b;->b:I

    iget v3, v3, Lcom/apicloud/c/a/a/a$b;->d:I

    invoke-interface {v4, v5, v3}, Lcom/apicloud/c/a/a/a$a;->c(II)V

    :goto_1
    iget-object v3, p0, Lcom/apicloud/c/a/a/a;->d:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
