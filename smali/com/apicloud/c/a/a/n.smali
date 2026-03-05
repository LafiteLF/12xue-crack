.class public Lcom/apicloud/c/a/a/n;
.super Lcom/apicloud/c/a/a/j$h;

# interfaces
.implements Lcom/apicloud/c/a/a/j$s$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/n$a;,
        Lcom/apicloud/c/a/a/n$b;,
        Lcom/apicloud/c/a/a/n$c;,
        Lcom/apicloud/c/a/a/n$d;,
        Lcom/apicloud/c/a/a/n$e;
    }
.end annotation


# instance fields
.field private A:Lcom/apicloud/c/a/a/n$d;

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Lcom/apicloud/c/a/a/n$a;

.field private E:Z

.field private F:Z

.field private G:[I

.field private final H:Ljava/lang/Runnable;

.field a:[Lcom/apicloud/c/a/a/n$e;

.field b:Lcom/apicloud/c/a/a/i;

.field c:Lcom/apicloud/c/a/a/i;

.field d:Z

.field e:Z

.field f:I

.field g:I

.field r:Lcom/apicloud/c/a/a/n$c;

.field private s:I

.field private t:I

.field private u:I

.field private final v:Lcom/apicloud/c/a/a/e;

.field private w:Ljava/util/BitSet;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$h;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n;->d:Z

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    iput v0, p0, Lcom/apicloud/c/a/a/n;->f:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/apicloud/c/a/a/n;->g:I

    new-instance v0, Lcom/apicloud/c/a/a/n$c;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/n$c;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    const/4 v0, 0x2

    iput v0, p0, Lcom/apicloud/c/a/a/n;->x:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    new-instance v0, Lcom/apicloud/c/a/a/n$a;

    invoke-direct {v0, p0}, Lcom/apicloud/c/a/a/n$a;-><init>(Lcom/apicloud/c/a/a/n;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n;->E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    new-instance v2, Lcom/apicloud/c/a/a/n$1;

    invoke-direct {v2, p0}, Lcom/apicloud/c/a/a/n$1;-><init>(Lcom/apicloud/c/a/a/n;)V

    iput-object v2, p0, Lcom/apicloud/c/a/a/n;->H:Ljava/lang/Runnable;

    iput p2, p0, Lcom/apicloud/c/a/a/n;->t:I

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->b(I)V

    iget p1, p0, Lcom/apicloud/c/a/a/n;->x:I

    if-eqz p1, :cond_0

    move v1, v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->b(Z)V

    new-instance p1, Lcom/apicloud/c/a/a/e;

    invoke-direct {p1}, Lcom/apicloud/c/a/a/e;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0}, Lcom/apicloud/c/a/a/n;->N()V

    return-void
.end method

.method private N()V
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    invoke-static {p0, v0}, Lcom/apicloud/c/a/a/i;->a(Lcom/apicloud/c/a/a/j$h;I)Lcom/apicloud/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/apicloud/c/a/a/i;->a(Lcom/apicloud/c/a/a/j$h;I)Lcom/apicloud/c/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    return-void
.end method

.method private O()V
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->d:Z

    xor-int/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->d:Z

    :goto_1
    iput-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    return-void
.end method

.method private P()V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->h()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_7

    iget v4, p0, Lcom/apicloud/c/a/a/n;->u:I

    iget v3, p0, Lcom/apicloud/c/a/a/n;->s:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->h()I

    move-result v3

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->l(I)V

    iget v0, p0, Lcom/apicloud/c/a/a/n;->u:I

    if-ne v0, v4, :cond_2

    return-void

    :cond_2
    :goto_1
    if-lt v2, v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/n$b;

    iget-boolean v5, v3, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr v5, v6

    iget-object v7, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v7, v7, Lcom/apicloud/c/a/a/n$e;->e:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    iget v7, p0, Lcom/apicloud/c/a/a/n;->u:I

    mul-int/2addr v5, v7

    iget v7, p0, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr v7, v6

    iget-object v3, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v3, v3, Lcom/apicloud/c/a/a/n$e;->e:I

    sub-int/2addr v7, v3

    neg-int v3, v7

    mul-int/2addr v3, v4

    sub-int/2addr v5, v3

    goto :goto_2

    :cond_5
    iget-object v5, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v5, v5, Lcom/apicloud/c/a/a/n$e;->e:I

    iget v7, p0, Lcom/apicloud/c/a/a/n;->u:I

    mul-int/2addr v5, v7

    iget-object v3, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v3, v3, Lcom/apicloud/c/a/a/n$e;->e:I

    mul-int/2addr v3, v4

    iget v7, p0, Lcom/apicloud/c/a/a/n;->t:I

    sub-int/2addr v5, v3

    if-ne v7, v6, :cond_6

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v3}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v5, v4}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v0

    if-gez v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/n$b;

    invoke-virtual {v4}, Lcom/apicloud/c/a/a/n$b;->f()Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    iget v4, p0, Lcom/apicloud/c/a/a/n;->s:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    :cond_9
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    iget v1, v6, Lcom/apicloud/c/a/a/n;->s:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/e;->i:Z

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v0, v10, :cond_2

    iget v0, v8, Lcom/apicloud/c/a/a/e;->g:I

    iget v1, v8, Lcom/apicloud/c/a/a/e;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, v8, Lcom/apicloud/c/a/a/e;->f:I

    iget v1, v8, Lcom/apicloud/c/a/a/e;->b:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    iget v0, v8, Lcom/apicloud/c/a/a/e;->e:I

    invoke-direct {v6, v0, v11}, Lcom/apicloud/c/a/a/n;->b(II)V

    iget-boolean v0, v6, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    :goto_1
    move v12, v0

    move v0, v9

    :goto_2
    invoke-virtual/range {p2 .. p3}, Lcom/apicloud/c/a/a/e;->a(Lcom/apicloud/c/a/a/j$t;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-boolean v1, v1, Lcom/apicloud/c/a/a/e;->i:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_14

    :cond_4
    invoke-virtual {v8, v7}, Lcom/apicloud/c/a/a/e;->a(Lcom/apicloud/c/a/a/j$o;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/apicloud/c/a/a/n$b;

    invoke-virtual {v14}, Lcom/apicloud/c/a/a/n$b;->d()I

    move-result v0

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/n$c;->c(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    if-eqz v3, :cond_7

    iget-boolean v1, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v9

    goto :goto_4

    :cond_6
    invoke-direct {v6, v8}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/e;)Lcom/apicloud/c/a/a/n$e;

    move-result-object v1

    :goto_4
    iget-object v4, v6, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v4, v0, v1}, Lcom/apicloud/c/a/a/n$c;->a(ILcom/apicloud/c/a/a/n$e;)V

    goto :goto_5

    :cond_7
    iget-object v4, v6, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v4, v1

    :goto_5
    move-object v15, v1

    iput-object v15, v14, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v1, v8, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v1, v10, :cond_8

    invoke-virtual {v6, v13}, Lcom/apicloud/c/a/a/n;->b(Landroid/view/View;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v6, v13, v9}, Lcom/apicloud/c/a/a/n;->b(Landroid/view/View;I)V

    :goto_6
    invoke-direct {v6, v13, v14, v9}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;Lcom/apicloud/c/a/a/n$b;Z)V

    iget v1, v8, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v1, v10, :cond_b

    iget-boolean v1, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v1, :cond_9

    invoke-direct {v6, v12}, Lcom/apicloud/c/a/a/n;->r(I)I

    move-result v1

    goto :goto_7

    :cond_9
    invoke-virtual {v15, v12}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v1

    :goto_7
    iget-object v4, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v13}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    iget-boolean v5, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v5, :cond_a

    invoke-direct {v6, v1}, Lcom/apicloud/c/a/a/n;->n(I)Lcom/apicloud/c/a/a/n$c$a;

    move-result-object v5

    iput v2, v5, Lcom/apicloud/c/a/a/n$c$a;->b:I

    iput v0, v5, Lcom/apicloud/c/a/a/n$c$a;->a:I

    iget-object v9, v6, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v9, v5}, Lcom/apicloud/c/a/a/n$c;->a(Lcom/apicloud/c/a/a/n$c$a;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_9

    :cond_b
    iget-boolean v1, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v1, :cond_c

    invoke-direct {v6, v12}, Lcom/apicloud/c/a/a/n;->q(I)I

    move-result v1

    goto :goto_8

    :cond_c
    invoke-virtual {v15, v12}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v1

    :goto_8
    iget-object v4, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v4, v13}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    iget-boolean v5, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v5, :cond_d

    invoke-direct {v6, v1}, Lcom/apicloud/c/a/a/n;->o(I)Lcom/apicloud/c/a/a/n$c$a;

    move-result-object v5

    iput v10, v5, Lcom/apicloud/c/a/a/n$c$a;->b:I

    iput v0, v5, Lcom/apicloud/c/a/a/n$c$a;->a:I

    iget-object v9, v6, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v9, v5}, Lcom/apicloud/c/a/a/n$c;->a(Lcom/apicloud/c/a/a/n$c$a;)V

    :cond_d
    move v5, v1

    :goto_9
    iget-boolean v1, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v1, :cond_11

    iget v1, v8, Lcom/apicloud/c/a/a/e;->d:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_f

    :cond_e
    :goto_a
    iput-boolean v10, v6, Lcom/apicloud/c/a/a/n;->E:Z

    goto :goto_c

    :cond_f
    iget v1, v8, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v1, v10, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/n;->l()Z

    move-result v1

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/n;->m()Z

    move-result v1

    :goto_b
    xor-int/2addr v1, v10

    if-eqz v1, :cond_11

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/n$c;->f(I)Lcom/apicloud/c/a/a/n$c$a;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-boolean v10, v0, Lcom/apicloud/c/a/a/n$c$a;->d:Z

    goto :goto_a

    :cond_11
    :goto_c
    invoke-direct {v6, v13, v14, v8}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;Lcom/apicloud/c/a/a/n$b;Lcom/apicloud/c/a/a/e;)V

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Lcom/apicloud/c/a/a/n;->t:I

    if-ne v0, v10, :cond_13

    iget-boolean v0, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    goto :goto_d

    :cond_12
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    iget v1, v6, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr v1, v10

    iget v2, v15, Lcom/apicloud/c/a/a/n$e;->e:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/apicloud/c/a/a/n;->u:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_d
    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, v13}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_f

    :cond_13
    iget-boolean v0, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    goto :goto_e

    :cond_14
    iget v0, v15, Lcom/apicloud/c/a/a/n$e;->e:I

    iget v1, v6, Lcom/apicloud/c/a/a/n;->u:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    :goto_e
    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, v13}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    :goto_f
    iget v0, v6, Lcom/apicloud/c/a/a/n;->t:I

    if-ne v0, v10, :cond_15

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_10

    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    :goto_10
    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;IIII)V

    iget-boolean v0, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v0, v0, Lcom/apicloud/c/a/a/e;->e:I

    invoke-direct {v6, v0, v11}, Lcom/apicloud/c/a/a/n;->b(II)V

    goto :goto_11

    :cond_16
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v0, v0, Lcom/apicloud/c/a/a/e;->e:I

    invoke-direct {v6, v15, v0, v11}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/n$e;II)V

    :goto_11
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {v6, v7, v0}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;)V

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/e;->h:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, v14, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_12

    :cond_17
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    iget v1, v15, Lcom/apicloud/c/a/a/n$e;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_13

    :cond_18
    :goto_12
    const/4 v3, 0x0

    :goto_13
    move v9, v3

    move v0, v10

    goto/16 :goto_2

    :cond_19
    :goto_14
    move v3, v9

    if-nez v0, :cond_1a

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {v6, v7, v0}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;)V

    :cond_1a
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v0, v0, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/apicloud/c/a/a/n;->q(I)I

    move-result v0

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_15

    :cond_1b
    iget-object v0, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/apicloud/c/a/a/n;->r(I)I

    move-result v0

    iget-object v1, v6, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    sub-int v1, v0, v1

    :goto_15
    if-lez v1, :cond_1c

    iget v0, v8, Lcom/apicloud/c/a/a/e;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_16

    :cond_1c
    move v9, v3

    :goto_16
    return v9
.end method

.method private a(Lcom/apicloud/c/a/a/j$t;)I
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/n;->F:Z

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/n;->e:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/apicloud/c/a/a/l;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;ZZ)I

    move-result p1

    return p1
.end method

.method private a(Lcom/apicloud/c/a/a/e;)Lcom/apicloud/c/a/a/n$e;
    .locals 7

    iget v0, p1, Lcom/apicloud/c/a/a/e;->e:I

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/n;->t(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    move v3, v2

    :goto_0
    iget p1, p1, Lcom/apicloud/c/a/a/e;->e:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_3

    const p1, 0x7fffffff

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v2

    :goto_1
    if-ne v0, v1, :cond_1

    return-object v4

    :cond_1
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v6

    if-ge v6, p1, :cond_2

    move-object v4, v5

    move p1, v6

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    const/high16 p1, -0x80000000

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v2

    :goto_2
    if-ne v0, v1, :cond_4

    return-object v4

    :cond_4
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v6

    if-le v6, p1, :cond_5

    move-object v4, v5

    move p1, v6

    :cond_5
    add-int/2addr v0, v3

    goto :goto_2
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/n;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/n$b;

    iget v1, v0, Lcom/apicloud/c/a/a/n$b;->leftMargin:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/apicloud/c/a/a/n$b;->rightMargin:I

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Lcom/apicloud/c/a/a/n;->b(III)I

    move-result p2

    iget v1, v0, Lcom/apicloud/c/a/a/n$b;->topMargin:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/apicloud/c/a/a/n$b;->bottomMargin:I

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->C:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcom/apicloud/c/a/a/n;->b(III)I

    move-result p3

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;IILcom/apicloud/c/a/a/j$i;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/n;->b(Landroid/view/View;IILcom/apicloud/c/a/a/j$i;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/c/a/a/n$b;Lcom/apicloud/c/a/a/e;)V
    .locals 1

    iget p3, p3, Lcom/apicloud/c/a/a/e;->e:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-boolean p3, p2, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->p(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/n$e;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->q(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p2, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/n$e;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/c/a/a/n$b;Z)V
    .locals 5

    iget-boolean v0, p2, Lcom/apicloud/c/a/a/n$b;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/apicloud/c/a/a/n;->B:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->w()I

    move-result v3

    iget p2, p2, Lcom/apicloud/c/a/a/n$b;->width:I

    invoke-static {v0, v3, v2, p2, v1}, Lcom/apicloud/c/a/a/n;->a(IIIIZ)I

    move-result p2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->B:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;IIZ)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->u:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->w()I

    move-result v3

    iget v4, p2, Lcom/apicloud/c/a/a/n$b;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Lcom/apicloud/c/a/a/n;->a(IIIIZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->z()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->x()I

    move-result v4

    iget p2, p2, Lcom/apicloud/c/a/a/n$b;->height:I

    invoke-static {v3, v4, v2, p2, v1}, Lcom/apicloud/c/a/a/n;->a(IIIIZ)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->y()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->w()I

    move-result v3

    iget v4, p2, Lcom/apicloud/c/a/a/n$b;->width:I

    invoke-static {v0, v3, v2, v4, v1}, Lcom/apicloud/c/a/a/n;->a(IIIIZ)I

    move-result v0

    iget v1, p0, Lcom/apicloud/c/a/a/n;->u:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->x()I

    move-result v3

    iget p2, p2, Lcom/apicloud/c/a/a/n$b;->height:I

    invoke-static {v1, v3, v2, p2, v2}, Lcom/apicloud/c/a/a/n;->a(IIIIZ)I

    move-result p2

    :goto_1
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;IIZ)V

    :goto_2
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;I)V
    .locals 5

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_6

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/i;->c(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/n$b;

    iget-boolean v3, v2, Lcom/apicloud/c/a/a/n$b;->f:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v2, v3, :cond_2

    :goto_2
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/n$e;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    return-void

    :cond_5
    iget-object v0, v2, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$e;->h()V

    :goto_3
    invoke-virtual {p0, v1, p1}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;Lcom/apicloud/c/a/a/j$o;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;)V
    .locals 2

    iget-boolean v0, p2, Lcom/apicloud/c/a/a/e;->a:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/apicloud/c/a/a/e;->i:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget v0, p2, Lcom/apicloud/c/a/a/e;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p2, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget p2, p2, Lcom/apicloud/c/a/a/e;->g:I

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/n;->b(Lcom/apicloud/c/a/a/j$o;I)V

    goto :goto_4

    :cond_1
    :goto_2
    iget p2, p2, Lcom/apicloud/c/a/a/e;->f:I

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;I)V

    goto :goto_4

    :cond_2
    iget v0, p2, Lcom/apicloud/c/a/a/e;->e:I

    if-ne v0, v1, :cond_4

    iget v0, p2, Lcom/apicloud/c/a/a/e;->f:I

    iget v1, p2, Lcom/apicloud/c/a/a/e;->f:I

    invoke-direct {p0, v1}, Lcom/apicloud/c/a/a/n;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/apicloud/c/a/a/e;->g:I

    iget p2, p2, Lcom/apicloud/c/a/a/e;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    goto :goto_1

    :cond_4
    iget v0, p2, Lcom/apicloud/c/a/a/e;->g:I

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/n;->s(I)I

    move-result v0

    iget v1, p2, Lcom/apicloud/c/a/a/e;->g:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    iget v1, p2, Lcom/apicloud/c/a/a/e;->f:I

    iget p2, p2, Lcom/apicloud/c/a/a/e;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/apicloud/c/a/a/n;->f:I

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->c(Lcom/apicloud/c/a/a/j$o;)V

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$a;->a()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/apicloud/c/a/a/n$a;->e:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/apicloud/c/a/a/n;->f:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$a;->a()V

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v5, :cond_3

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/n$a;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/c/a/a/n;->O()V

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/n;->e:Z

    iput-boolean v5, v0, Lcom/apicloud/c/a/a/n$a;->c:Z

    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)V

    iput-boolean v4, v0, Lcom/apicloud/c/a/a/n$a;->e:Z

    :cond_4
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-nez v5, :cond_6

    iget v5, p0, Lcom/apicloud/c/a/a/n;->f:I

    if-ne v5, v2, :cond_6

    iget-boolean v5, v0, Lcom/apicloud/c/a/a/n$a;->c:Z

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/n;->y:Z

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v5

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/n;->z:Z

    if-eq v5, v6, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/n$c;->a()V

    iput-boolean v4, v0, Lcom/apicloud/c/a/a/n$a;->d:Z

    :cond_6
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v5, :cond_7

    iget v5, v5, Lcom/apicloud/c/a/a/n$d;->c:I

    if-ge v5, v4, :cond_f

    :cond_7
    iget-boolean v5, v0, Lcom/apicloud/c/a/a/n$a;->d:Z

    if-eqz v5, :cond_a

    move v1, v3

    :goto_2
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/n$e;->e()V

    iget v5, v0, Lcom/apicloud/c/a/a/n$a;->b:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v1

    iget v6, v0, Lcom/apicloud/c/a/a/n$a;->b:I

    invoke-virtual {v5, v6}, Lcom/apicloud/c/a/a/n$e;->c(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$a;->f:[I

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v1, v3

    :goto_3
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v5, :cond_c

    goto :goto_6

    :cond_c
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/n$e;->e()V

    iget-object v6, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    iget-object v6, v6, Lcom/apicloud/c/a/a/n$a;->f:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/apicloud/c/a/a/n$e;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    move v1, v3

    :goto_5
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v5, :cond_e

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    invoke-virtual {v1, v5}, Lcom/apicloud/c/a/a/n$a;->a([Lcom/apicloud/c/a/a/n$e;)V

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Lcom/apicloud/c/a/a/n;->e:Z

    iget v7, v0, Lcom/apicloud/c/a/a/n$a;->b:I

    invoke-virtual {v5, v6, v7}, Lcom/apicloud/c/a/a/n$e;->a(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput-boolean v3, v1, Lcom/apicloud/c/a/a/e;->a:Z

    iput-boolean v3, p0, Lcom/apicloud/c/a/a/n;->E:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->l(I)V

    iget v1, v0, Lcom/apicloud/c/a/a/n$a;->a:I

    invoke-direct {p0, v1, p2}, Lcom/apicloud/c/a/a/n;->b(ILcom/apicloud/c/a/a/j$t;)V

    iget-boolean v1, v0, Lcom/apicloud/c/a/a/n$a;->c:Z

    if-eqz v1, :cond_10

    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/n;->m(I)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p1, v1, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I

    invoke-direct {p0, v4}, Lcom/apicloud/c/a/a/n;->m(I)V

    goto :goto_7

    :cond_10
    invoke-direct {p0, v4}, Lcom/apicloud/c/a/a/n;->m(I)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p1, v1, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I

    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/n;->m(I)V

    :goto_7
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v2, v0, Lcom/apicloud/c/a/a/n$a;->a:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v5, v5, Lcom/apicloud/c/a/a/e;->d:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/apicloud/c/a/a/e;->c:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p1, v1, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I

    invoke-direct {p0}, Lcom/apicloud/c/a/a/n;->P()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v1

    if-lez v1, :cond_12

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v1, :cond_11

    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/c/a/a/n;->b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/apicloud/c/a/a/n;->c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    goto :goto_8

    :cond_11
    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/c/a/a/n;->c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    invoke-direct {p0, p1, p2, v3}, Lcom/apicloud/c/a/a/n;->b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    :cond_12
    :goto_8
    if-eqz p3, :cond_15

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p3

    if-nez p3, :cond_15

    iget p3, p0, Lcom/apicloud/c/a/a/n;->x:I

    if-eqz p3, :cond_14

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result p3

    if-lez p3, :cond_14

    iget-boolean p3, p0, Lcom/apicloud/c/a/a/n;->E:Z

    if-nez p3, :cond_13

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->f()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_14

    :cond_13
    move p3, v4

    goto :goto_9

    :cond_14
    move p3, v3

    :goto_9
    if-eqz p3, :cond_15

    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->e()Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_a

    :cond_15
    move v4, v3

    :goto_a
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p3

    if-eqz p3, :cond_16

    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/n$a;->a()V

    :cond_16
    iget-boolean p3, v0, Lcom/apicloud/c/a/a/n$a;->c:Z

    iput-boolean p3, p0, Lcom/apicloud/c/a/a/n;->y:Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result p3

    iput-boolean p3, p0, Lcom/apicloud/c/a/a/n;->z:Z

    if-eqz v4, :cond_17

    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/n$a;->a()V

    invoke-direct {p0, p1, p2, v3}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    :cond_17
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/n$a;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget v0, v0, Lcom/apicloud/c/a/a/n$d;->c:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget v0, v0, Lcom/apicloud/c/a/a/n$d;->c:I

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/n$e;->e()V

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$d;->d:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-boolean v2, v2, Lcom/apicloud/c/a/a/n$d;->i:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    :cond_2
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/n$e;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$d;->a()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget v1, v0, Lcom/apicloud/c/a/a/n$d;->b:I

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/n$d;->j:Z

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/n;->z:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/n$d;->h:Z

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Z)V

    invoke-direct {p0}, Lcom/apicloud/c/a/a/n;->O()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget v0, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget v0, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    iput v0, p0, Lcom/apicloud/c/a/a/n;->f:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/n$d;->i:Z

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    :goto_3
    iput-boolean v0, p1, Lcom/apicloud/c/a/a/n$a;->c:Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget p1, p1, Lcom/apicloud/c/a/a/n$d;->e:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n$d;->f:[I

    iput-object v0, p1, Lcom/apicloud/c/a/a/n$c;->a:[I

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n$d;->g:Ljava/util/List;

    iput-object v0, p1, Lcom/apicloud/c/a/a/n$c;->b:Ljava/util/List;

    :cond_6
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/n$e;II)V
    .locals 3

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$e;->i()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$e;->b()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$e;->d()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    :goto_0
    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    iget p1, p1, Lcom/apicloud/c/a/a/n$e;->e:I

    invoke-virtual {p2, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/n$e;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$e;->d()I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p1, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/n$e;->c(Landroid/view/View;)Lcom/apicloud/c/a/a/n$b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/apicloud/c/a/a/n$b;->f:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$e;->b()I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p1, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/n$e;->c(Landroid/view/View;)Lcom/apicloud/c/a/a/n$b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/apicloud/c/a/a/n$b;->f:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private b(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private b(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/n$e;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(ILcom/apicloud/c/a/a/j$t;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    const/4 v1, 0x0

    iput v1, v0, Lcom/apicloud/c/a/a/e;->b:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput p1, v0, Lcom/apicloud/c/a/a/e;->c:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->s()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->c()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->f()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->f()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/apicloud/c/a/a/e;->f:I

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Lcom/apicloud/c/a/a/e;->g:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->e()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Lcom/apicloud/c/a/a/e;->g:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    neg-int p2, p2

    iput p2, p1, Lcom/apicloud/c/a/a/e;->f:I

    :goto_2
    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput-boolean v1, p1, Lcom/apicloud/c/a/a/e;->h:Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput-boolean v2, p1, Lcom/apicloud/c/a/a/e;->a:Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/i;->h()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/i;->e()I

    move-result p2

    if-nez p2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p1, Lcom/apicloud/c/a/a/e;->i:Z

    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$o;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_6

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/i;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/n$b;

    iget-boolean v4, v3, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v3, v5, :cond_2

    :goto_2
    iget v3, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v4, v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/n$e;->g()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget-object v4, v4, Lcom/apicloud/c/a/a/n$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    return-void

    :cond_5
    iget-object v3, v3, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/n$e;->g()V

    :goto_3
    invoke-virtual {p0, v2, p1}, Lcom/apicloud/c/a/a/n;->a(Landroid/view/View;Lcom/apicloud/c/a/a/j$o;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/n;->r(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    invoke-virtual {p0, v1, p1, p2}, Lcom/apicloud/c/a/a/n;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/i;->a(I)V

    :cond_1
    return-void
.end method

.method private c(III)V
    .locals 6

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    :goto_2
    iget-object v4, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/n$c;->b(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {p3, p1, v4}, Lcom/apicloud/c/a/a/n$c;->a(II)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {p1, p2, v4}, Lcom/apicloud/c/a/a/n$c;->b(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/c/a/a/n$c;->a(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/c/a/a/n$c;->b(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    :cond_8
    return-void
.end method

.method private c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/n;->q(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Lcom/apicloud/c/a/a/n;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/i;->a(I)V

    :cond_1
    return-void
.end method

.method private c(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->y:Z

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->w(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->v(I)I

    move-result p1

    :goto_0
    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    const/high16 p1, -0x80000000

    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    const/4 p1, 0x1

    return p1
.end method

.method private i(Lcom/apicloud/c/a/a/j$t;)I
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/n;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/apicloud/c/a/a/l;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;Z)I

    move-result p1

    return p1
.end method

.method private j(Lcom/apicloud/c/a/a/j$t;)I
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->c(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->F:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/apicloud/c/a/a/n;->F:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/apicloud/c/a/a/l;->b(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/i;Landroid/view/View;Landroid/view/View;Lcom/apicloud/c/a/a/j$h;Z)I

    move-result p1

    return p1
.end method

.method private m(I)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput p1, v0, Lcom/apicloud/c/a/a/e;->e:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput v2, v0, Lcom/apicloud/c/a/a/e;->d:I

    return-void
.end method

.method private n(I)Lcom/apicloud/c/a/a/n$c$a;
    .locals 4

    new-instance v0, Lcom/apicloud/c/a/a/n$c$a;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/n$c$a;-><init>()V

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/apicloud/c/a/a/n$c$a;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/apicloud/c/a/a/n$c$a;->c:[I

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private o(I)Lcom/apicloud/c/a/a/n$c$a;
    .locals 4

    new-instance v0, Lcom/apicloud/c/a/a/n$c$a;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/n$c$a;-><init>()V

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/apicloud/c/a/a/n$c$a;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/apicloud/c/a/a/n$c$a;->c:[I

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private p(I)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v2

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private p(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/n$e;->b(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private q(I)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private q(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/n$e;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private r(I)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v2

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private s(I)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private t(I)Z
    .locals 4

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean p1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-ne p1, v1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-ne p1, v0, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v0

    if-ne p1, v0, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private u(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private v(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    if-ge v3, p1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private w(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    if-ge v1, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private x(I)I
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
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne p1, v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne p1, v1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method


# virtual methods
.method L()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method M()I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/n;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/c/a/a/n;->O()V

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/n;->x(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/n$b;

    iget-boolean v2, v0, Lcom/apicloud/c/a/a/n$b;->f:Z

    iget-object v0, v0, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v4

    :goto_0
    invoke-direct {p0, v4, p4}, Lcom/apicloud/c/a/a/n;->b(ILcom/apicloud/c/a/a/j$t;)V

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/n;->m(I)V

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v6, v5, Lcom/apicloud/c/a/a/e;->d:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/apicloud/c/a/a/e;->c:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    const v6, 0x3eaaaaab

    iget-object v7, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v7}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v5, Lcom/apicloud/c/a/a/e;->b:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput-boolean v3, v5, Lcom/apicloud/c/a/a/e;->h:Z

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/apicloud/c/a/a/e;->a:Z

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p3, v5, p4}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I

    iget-boolean p3, p0, Lcom/apicloud/c/a/a/n;->e:Z

    iput-boolean p3, p0, Lcom/apicloud/c/a/a/n;->y:Z

    if-nez v2, :cond_4

    invoke-virtual {v0, v4, p2}, Lcom/apicloud/c/a/a/n$e;->a(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    :cond_4
    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/n;->t(I)Z

    move-result p3

    if-eqz p3, :cond_7

    iget p3, p0, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr p3, v3

    :goto_1
    if-gez p3, :cond_5

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lcom/apicloud/c/a/a/n$e;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_6

    if-eq p4, p1, :cond_6

    return-object p4

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_7
    move p3, v6

    :goto_2
    iget p4, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p3, p4, :cond_14

    :goto_3
    iget-boolean p3, p0, Lcom/apicloud/c/a/a/n;->d:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_8

    move p4, v3

    goto :goto_4

    :cond_8
    move p4, v6

    :goto_4
    if-ne p3, p4, :cond_9

    move p4, v3

    goto :goto_5

    :cond_9
    move p4, v6

    :goto_5
    if-nez v2, :cond_b

    if-eqz p4, :cond_a

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$e;->j()I

    move-result p3

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$e;->l()I

    move-result p3

    :goto_6
    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/n;->c(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_b

    if-eq p3, p1, :cond_b

    return-object p3

    :cond_b
    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/n;->t(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, p0, Lcom/apicloud/c/a/a/n;->s:I

    sub-int/2addr p2, v3

    :goto_7
    if-gez p2, :cond_c

    goto :goto_b

    :cond_c
    iget p3, v0, Lcom/apicloud/c/a/a/n$e;->e:I

    if-ne p2, p3, :cond_d

    goto :goto_9

    :cond_d
    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    if-eqz p4, :cond_e

    aget-object p3, p3, p2

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/n$e;->j()I

    move-result p3

    goto :goto_8

    :cond_e
    aget-object p3, p3, p2

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/n$e;->l()I

    move-result p3

    :goto_8
    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/n;->c(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    if-eq p3, p1, :cond_f

    return-object p3

    :cond_f
    :goto_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_10
    :goto_a
    iget p2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v6, p2, :cond_11

    :goto_b
    return-object v1

    :cond_11
    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    if-eqz p4, :cond_12

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$e;->j()I

    move-result p2

    goto :goto_c

    :cond_12
    aget-object p2, p2, v6

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$e;->l()I

    move-result p2

    :goto_c
    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/n;->c(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_13

    if-eq p2, p1, :cond_13

    return-object p2

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_14
    iget-object p4, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lcom/apicloud/c/a/a/n$e;->a(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_15

    if-eq p4, p1, :cond_15

    return-object p4

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2
.end method

.method public a()Lcom/apicloud/c/a/a/j$i;
    .locals 3

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/n$b;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/c/a/a/n$b;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/c/a/a/n$b;

    invoke-direct {v0, v2, v1}, Lcom/apicloud/c/a/a/n$b;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/apicloud/c/a/a/j$i;
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/n$b;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/c/a/a/n$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/c/a/a/j$i;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/n$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a/a/n$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/c/a/a/n$b;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a/a/n$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$d;->b()V

    :cond_0
    iput p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/apicloud/c/a/a/n;->g:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$d;->b()V

    :cond_0
    iput p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    iput p2, p0, Lcom/apicloud/c/a/a/n;->g:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$h$a;)V
    .locals 4

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result p2

    if-eqz p2, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/c/a/a/n;->a(ILcom/apicloud/c/a/a/j$t;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->G:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->G:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p2, v1, :cond_6

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->G:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_2
    if-ge p1, v0, :cond_5

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/e;->a(Lcom/apicloud/c/a/a/j$t;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget p2, p2, Lcom/apicloud/c/a/a/e;->c:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->G:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Lcom/apicloud/c/a/a/j$h$a;->b(II)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v1, p2, Lcom/apicloud/c/a/a/e;->c:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v2, v2, Lcom/apicloud/c/a/a/e;->d:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/apicloud/c/a/a/e;->c:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v1, v1, Lcom/apicloud/c/a/a/e;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v1, v1, Lcom/apicloud/c/a/a/e;->f:I

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v3, v3, Lcom/apicloud/c/a/a/e;->f:I

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v2

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v2, v2, Lcom/apicloud/c/a/a/e;->g:I

    invoke-virtual {v1, v2}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v2, v2, Lcom/apicloud/c/a/a/e;->g:I

    :goto_4
    sub-int/2addr v1, v2

    if-ltz v1, :cond_8

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->G:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    return-void
.end method

.method a(ILcom/apicloud/c/a/a/j$t;)V
    .locals 5

    const/4 v0, 0x1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput-boolean v0, v3, Lcom/apicloud/c/a/a/e;->a:Z

    invoke-direct {p0, v1, p2}, Lcom/apicloud/c/a/a/n;->b(ILcom/apicloud/c/a/a/j$t;)V

    invoke-direct {p0, v2}, Lcom/apicloud/c/a/a/n;->m(I)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v0, p2, Lcom/apicloud/c/a/a/e;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/apicloud/c/a/a/e;->c:I

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Lcom/apicloud/c/a/a/e;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->A()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->C()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->B()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->D()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->H()I

    move-result v1

    invoke-static {p3, p1, v1}, Lcom/apicloud/c/a/a/n;->a(III)I

    move-result p1

    iget p3, p0, Lcom/apicloud/c/a/a/n;->u:I

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->G()I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/apicloud/c/a/a/n;->a(III)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->G()I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/apicloud/c/a/a/n;->a(III)I

    move-result p2

    iget p1, p0, Lcom/apicloud/c/a/a/n;->u:I

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->H()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/apicloud/c/a/a/n;->a(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/apicloud/c/a/a/n;->f(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/c/a/a/n$d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/c/a/a/n$d;

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->c(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Z)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/apicloud/c/a/a/n$b;

    if-nez p2, :cond_0

    invoke-super {p0, p3, p4}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/c/a/a/n$b;

    iget p2, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 p3, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$b;->g()I

    move-result v0

    iget-boolean p2, p1, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz p2, :cond_1

    iget p3, p0, Lcom/apicloud/c/a/a/n;->s:I

    :cond_1
    move v1, p3

    const/4 v2, -0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$b;->g()I

    move-result v2

    iget-boolean p2, p1, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz p2, :cond_3

    iget p3, p0, Lcom/apicloud/c/a/a/n;->s:I

    :cond_3
    move v3, p3

    :goto_0
    iget-boolean v4, p1, Lcom/apicloud/c/a/a/n$b;->f:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/n;->b(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/n;->c(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$a;->b()V

    const/4 p1, 0x0

    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/c/a/a/n;->c(III)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;III)V
    .locals 0

    const/16 p1, 0x8

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/c/a/a/n;->c(III)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/c/a/a/n;->c(III)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V
    .locals 1

    iget-object p2, p0, Lcom/apicloud/c/a/a/n;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$e;->e()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
    .locals 0

    new-instance p2, Lcom/apicloud/c/a/a/g;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/apicloud/c/a/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/g;->d(I)V

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/n$d;->h:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iput-boolean p1, v0, Lcom/apicloud/c/a/a/n$d;->h:Z

    :cond_0
    iput-boolean p1, p0, Lcom/apicloud/c/a/a/n;->d:Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$i;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/c/a/a/n$b;

    return p1
.end method

.method public a([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_2

    :goto_0
    move-object v0, p1

    const/4 p1, 0x0

    :goto_1
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/n$e;->k()I

    move-result v1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/apicloud/c/a/a/n;->x:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput p1, p0, Lcom/apicloud/c/a/a/n;->x:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->b(Z)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/n;->c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/n$d;

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/n$d;-><init>(Lcom/apicloud/c/a/a/n$d;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/c/a/a/n$d;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/n$d;-><init>()V

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->d:Z

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/n$d;->h:Z

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->y:Z

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/n$d;->i:Z

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->z:Z

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/n$d;->j:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$c;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$c;->a:[I

    iput-object v1, v0, Lcom/apicloud/c/a/a/n$d;->f:[I

    iget-object v1, v0, Lcom/apicloud/c/a/a/n$d;->f:[I

    array-length v1, v1

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->e:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget-object v1, v1, Lcom/apicloud/c/a/a/n$c;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/apicloud/c/a/a/n$d;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput v2, v0, Lcom/apicloud/c/a/a/n$d;->e:I

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v1

    if-lez v1, :cond_6

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->y:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->k()I

    move-result v1

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->b:I

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->c:I

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/apicloud/c/a/a/n$d;->d:[I

    :goto_2
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v2, v1, :cond_3

    goto :goto_4

    :cond_3
    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->y:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v3

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    :cond_5
    iget-object v3, v0, Lcom/apicloud/c/a/a/n$d;->d:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->a:I

    iput v1, v0, Lcom/apicloud/c/a/a/n$d;->b:I

    iput v2, v0, Lcom/apicloud/c/a/a/n$d;->c:I

    :goto_4
    return-object v0
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->h()V

    iput p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->w:Ljava/util/BitSet;

    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array p1, p1, [Lcom/apicloud/c/a/a/n$e;

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    new-instance v1, Lcom/apicloud/c/a/a/n$e;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/c/a/a/n$e;-><init>(Lcom/apicloud/c/a/a/n;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j$t;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j$t;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/apicloud/c/a/a/n;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->D:Lcom/apicloud/c/a/a/n$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$a;->a()V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p2, p3, p1}, Lcom/apicloud/c/a/a/n;->c(III)V

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/n$a;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/apicloud/c/a/a/n;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p1, Lcom/apicloud/c/a/a/n$d;->a:I

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    iget p1, p1, Lcom/apicloud/c/a/a/n$d;->c:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v3, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    iget p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/n;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v1

    :goto_1
    iput v1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    iget v1, p0, Lcom/apicloud/c/a/a/n;->g:I

    if-eq v1, v3, :cond_6

    iget-boolean v1, p2, Lcom/apicloud/c/a/a/n$a;->c:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    iget v2, p0, Lcom/apicloud/c/a/a/n;->g:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result p1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v1

    iget v2, p0, Lcom/apicloud/c/a/a/n;->g:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result p1

    :goto_2
    sub-int/2addr v1, p1

    iput v1, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    return v0

    :cond_6
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/i;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->f()I

    move-result v2

    if-le v1, v2, :cond_8

    iget-boolean p1, p2, Lcom/apicloud/c/a/a/n$a;->c:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/i;->c()I

    move-result p1

    :goto_3
    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    return v0

    :cond_8
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p1, v1

    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    return v0

    :cond_9
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    if-gez v1, :cond_a

    iput v1, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    return v0

    :cond_a
    iput v3, p2, Lcom/apicloud/c/a/a/n$a;->b:I

    goto :goto_5

    :cond_b
    iget p1, p0, Lcom/apicloud/c/a/a/n;->f:I

    iput p1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    iget p1, p0, Lcom/apicloud/c/a/a/n;->g:I

    if-ne p1, v3, :cond_d

    iget p1, p2, Lcom/apicloud/c/a/a/n$a;->a:I

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->u(I)I

    move-result p1

    if-ne p1, v0, :cond_c

    move v1, v0

    :cond_c
    iput-boolean v1, p2, Lcom/apicloud/c/a/a/n$a;->c:Z

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$a;->b()V

    goto :goto_4

    :cond_d
    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/n$a;->a(I)V

    :goto_4
    iput-boolean v0, p2, Lcom/apicloud/c/a/a/n$a;->d:Z

    :goto_5
    return v0

    :cond_e
    :goto_6
    iput v2, p0, Lcom/apicloud/c/a/a/n;->f:I

    iput v3, p0, Lcom/apicloud/c/a/a/n;->g:I

    :cond_f
    :goto_7
    return v1
.end method

.method public b([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    new-array p1, p1, [I

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_2

    :goto_0
    move-object v0, p1

    const/4 p1, 0x0

    :goto_1
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/n$e;->m()I

    move-result v1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apicloud/c/a/a/n;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", array size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/c/a/a/n;->a(ILcom/apicloud/c/a/a/j$t;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p2, v0, p3}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;Lcom/apicloud/c/a/a/j$t;)I

    move-result p3

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iget v0, v0, Lcom/apicloud/c/a/a/e;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Lcom/apicloud/c/a/a/i;->a(I)V

    iget-boolean p3, p0, Lcom/apicloud/c/a/a/n;->e:Z

    iput-boolean p3, p0, Lcom/apicloud/c/a/a/n;->y:Z

    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    iput v1, p3, Lcom/apicloud/c/a/a/e;->b:I

    iget-object p3, p0, Lcom/apicloud/c/a/a/n;->v:Lcom/apicloud/c/a/a/e;

    invoke-direct {p0, p2, p3}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/e;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-nez v0, :cond_0

    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public c(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method c(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, v4}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v6, v5}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v7, v5}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_4

    if-lt v6, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ge v6, v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_4

    move-object v3, v5

    goto :goto_2

    :cond_3
    :goto_1
    return-object v5

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/apicloud/c/a/a/n;->s:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->d(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 3

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->u(I)I

    move-result p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method d(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gez v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v5, v4}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v6, v4}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_4

    if-lt v5, v1, :cond_1

    goto :goto_2

    :cond_1
    if-le v6, v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    return-object v4

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->i(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public e(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/apicloud/c/a/a/n;->t:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/apicloud/c/a/a/n;->t:I

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    iput-object v0, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    iput-object p1, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public e(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/n$c;->a()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method e()Z
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/apicloud/c/a/a/n;->x:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->M()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->L()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->f()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$c;->a()V

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->J()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return v3

    :cond_2
    iget-boolean v4, p0, Lcom/apicloud/c/a/a/n;->E:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Lcom/apicloud/c/a/a/n;->e:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v6, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    add-int/2addr v2, v3

    invoke-virtual {v6, v0, v2, v4, v3}, Lcom/apicloud/c/a/a/n$c;->a(IIIZ)Lcom/apicloud/c/a/a/n$c$a;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n;->E:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/n$c;->a(I)I

    return v1

    :cond_5
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget v2, v6, Lcom/apicloud/c/a/a/n$c$a;->a:I

    mul-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/apicloud/c/a/a/n$c;->a(IIIZ)Lcom/apicloud/c/a/a/n$c$a;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget v1, v6, Lcom/apicloud/c/a/a/n$c$a;->a:I

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/n$c;->a(I)I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    iget v0, v0, Lcom/apicloud/c/a/a/n$c$a;->a:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/n$c;->a(I)I

    goto :goto_1

    :cond_7
    :goto_3
    return v1
.end method

.method public f(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->i(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method f()Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->v()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/apicloud/c/a/a/n;->s:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Lcom/apicloud/c/a/a/n;->s:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Lcom/apicloud/c/a/a/n;->t:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iget-boolean v6, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_1
    if-ge v0, v6, :cond_2

    move v5, v1

    :cond_2
    :goto_2
    if-ne v0, v6, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/apicloud/c/a/a/n$b;

    iget-object v9, v8, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v9, v9, Lcom/apicloud/c/a/a/n$e;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    invoke-direct {p0, v9}, Lcom/apicloud/c/a/a/n;->a(Lcom/apicloud/c/a/a/n$e;)Z

    move-result v9

    if-eqz v9, :cond_4

    return-object v7

    :cond_4
    iget-object v9, v8, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v9, v9, Lcom/apicloud/c/a/a/n$e;->e:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    :cond_5
    iget-boolean v9, v8, Lcom/apicloud/c/a/a/n$b;->f:Z

    if-eqz v9, :cond_6

    goto :goto_7

    :cond_6
    add-int v9, v0, v5

    if-eq v9, v6, :cond_d

    invoke-virtual {p0, v9}, Lcom/apicloud/c/a/a/n;->h(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Lcom/apicloud/c/a/a/n;->e:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v10, v7}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v11, v9}, Lcom/apicloud/c/a/a/i;->b(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_7

    return-object v7

    :cond_7
    if-ne v10, v11, :cond_a

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v10, v7}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v11, v9}, Lcom/apicloud/c/a/a/i;->a(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_9

    return-object v7

    :cond_9
    if-ne v10, v11, :cond_a

    :goto_3
    move v10, v1

    goto :goto_4

    :cond_a
    move v10, v4

    :goto_4
    if-eqz v10, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/apicloud/c/a/a/n$b;

    iget-object v8, v8, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v8, v8, Lcom/apicloud/c/a/a/n$e;->e:I

    iget-object v9, v9, Lcom/apicloud/c/a/a/n$b;->e:Lcom/apicloud/c/a/a/n$e;

    iget v9, v9, Lcom/apicloud/c/a/a/n$e;->e:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_b

    move v8, v1

    goto :goto_5

    :cond_b
    move v8, v4

    :goto_5
    if-gez v3, :cond_c

    move v9, v1

    goto :goto_6

    :cond_c
    move v9, v4

    :goto_6
    if-eq v8, v9, :cond_d

    return-object v7

    :cond_d
    :goto_7
    add-int/2addr v0, v5

    goto :goto_2
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    return v0
.end method

.method public g(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->j(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public h(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/n;->j(Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->r:Lcom/apicloud/c/a/a/n$c;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n$c;->a()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->o()V

    return-void
.end method

.method public i(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->i(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/n$e;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$h;->j(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/n$e;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method j()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method k()I
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->d(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/n;->c(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/n;->d(Landroid/view/View;)I

    move-result v0

    :goto_1
    return v0
.end method

.method public k(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n;->e()Z

    :cond_0
    return-void
.end method

.method l(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/n;->s:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/apicloud/c/a/a/n;->u:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->c:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->h()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/n;->B:I

    return-void
.end method

.method l()Z
    .locals 6

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v4, v5, :cond_0

    return v3

    :cond_0
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/apicloud/c/a/a/n$e;->b(I)I

    move-result v5

    if-eq v5, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method m()Z
    .locals 6

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/apicloud/c/a/a/n;->s:I

    if-lt v4, v5, :cond_0

    return v3

    :cond_0
    iget-object v5, p0, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v5

    if-eq v5, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/n;->A:Lcom/apicloud/c/a/a/n$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
