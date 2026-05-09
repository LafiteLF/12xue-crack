.class public final Lcom/apicloud/c/a/a/j$o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Lcom/apicloud/c/a/a/j$n;

.field final synthetic f:Lcom/apicloud/c/a/a/j;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/apicloud/c/a/a/j$u;


# direct methods
.method public constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$o;->g:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lcom/apicloud/c/a/a/j$o;->h:I

    iput p1, p0, Lcom/apicloud/c/a/a/j$o;->d:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/apicloud/c/a/a/j$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private a(Lcom/apicloud/c/a/a/j$w;IIJ)Z
    .locals 9

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iput-object v0, p1, Lcom/apicloud/c/a/a/j$w;->o:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->j()I

    move-result v2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->z()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/apicloud/c/a/a/j$n;->b(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p4, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p4, p4, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {p4, p1, p2}, Lcom/apicloud/c/a/a/j$a;->b(Lcom/apicloud/c/a/a/j$w;I)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j;->z()J

    move-result-wide p4

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->j()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Lcom/apicloud/c/a/a/j$n;->b(IJ)V

    iget-object p2, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/j$o;->d(Landroid/view/View;)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p2, p2, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iput p3, p1, Lcom/apicloud/c/a/a/j$w;->i:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/b/m;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->F:Lcom/apicloud/c/a/a/k;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/k;->b()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    return-void
.end method

.method private e(Lcom/apicloud/c/a/a/j$w;)V
    .locals 1

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/j$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/j$o;->a(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method a(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/apicloud/c/a/a/j$o;->a(IZJ)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    return-object p1
.end method

.method a(IZJ)Lcom/apicloud/c/a/a/j$w;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_18

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v1

    if-ge v3, v1, :cond_18

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/apicloud/c/a/a/j$o;->d(I)Lcom/apicloud/c/a/a/j$w;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p2}, Lcom/apicloud/c/a/a/j$o;->b(IZ)Lcom/apicloud/c/a/a/j$w;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Lcom/apicloud/c/a/a/j$o;->a(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v9, v1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Lcom/apicloud/c/a/a/j;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->l()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->n()V

    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/apicloud/c/a/a/j$o;->b(Lcom/apicloud/c/a/a/j$w;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_10

    iget-object v5, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v5, v5, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v5, v3}, Lcom/apicloud/c/a/a/a;->b(I)I

    move-result v5

    if-ltz v5, :cond_f

    iget-object v9, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v9, v9, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result v9

    if-ge v5, v9, :cond_f

    iget-object v9, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v9, v9, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v9, v5}, Lcom/apicloud/c/a/a/j$a;->b(I)I

    move-result v9

    iget-object v10, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v10, v10, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v10}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v1, v5}, Lcom/apicloud/c/a/a/j$a;->a(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lcom/apicloud/c/a/a/j$o;->a(JIZ)Lcom/apicloud/c/a/a/j$w;

    move-result-object v1

    if-eqz v1, :cond_7

    iput v5, v1, Lcom/apicloud/c/a/a/j$w;->e:I

    move v4, v7

    :cond_7
    if-nez v1, :cond_a

    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->i:Lcom/apicloud/c/a/a/j$u;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v6, v3, v9}, Lcom/apicloud/c/a/a/j$u;->a(Lcom/apicloud/c/a/a/j$o;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/j;->b(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/j$o;->g()Lcom/apicloud/c/a/a/j$n;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/apicloud/c/a/a/j$n;->a(I)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->x()V

    sget-boolean v1, Lcom/apicloud/c/a/a/j;->b:Z

    if-eqz v1, :cond_b

    invoke-direct {v6, v0}, Lcom/apicloud/c/a/a/j$o;->e(Lcom/apicloud/c/a/a/j$w;)V

    :cond_b
    move-object v1, v0

    :cond_c
    if-nez v1, :cond_10

    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->z()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_d

    iget-object v10, v6, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lcom/apicloud/c/a/a/j$n;->a(IJJ)Z

    move-result v5

    if-nez v5, :cond_d

    return-object v2

    :cond_d
    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    iget-object v5, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v2, v5, v9}, Lcom/apicloud/c/a/a/j$a;->d(Landroid/view/ViewGroup;I)Lcom/apicloud/c/a/a/j$w;

    move-result-object v2

    invoke-static {}, Lcom/apicloud/c/a/a/j;->B()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v2, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-static {v5}, Lcom/apicloud/c/a/a/j;->j(Landroid/view/View;)Lcom/apicloud/c/a/a/j;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Lcom/apicloud/c/a/a/j$w;->d:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v5, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j;->z()J

    move-result-wide v10

    iget-object v5, v6, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Lcom/apicloud/c/a/a/j$n;->a(IJ)V

    move-object v9, v2

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, v1

    :goto_4
    move v10, v4

    if-eqz v10, :cond_11

    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2000

    invoke-virtual {v9, v0}, Lcom/apicloud/c/a/a/j$w;->a(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v9, v8, v0}, Lcom/apicloud/c/a/a/j$w;->a(II)V

    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j$t;->i:Z

    if-eqz v0, :cond_11

    invoke-static {v9}, Lcom/apicloud/c/a/a/j$e;->e(Lcom/apicloud/c/a/a/j$w;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$w;->w()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v9, v0, v4}, Lcom/apicloud/c/a/a/j$e;->a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$w;ILjava/util/List;)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object v0

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, v9, v0}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;)V

    :cond_11
    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$w;->r()Z

    move-result v0

    if-eqz v0, :cond_12

    iput v3, v9, Lcom/apicloud/c/a/a/j$w;->i:I

    goto :goto_5

    :cond_12
    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$w;->r()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$w;->q()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    move v0, v8

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v0, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v0, v3}, Lcom/apicloud/c/a/a/a;->b(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/c/a/a/j$o;->a(Lcom/apicloud/c/a/a/j$w;IIJ)Z

    move-result v0

    :goto_7
    iget-object v1, v9, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_15

    iget-object v1, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_8
    check-cast v1, Lcom/apicloud/c/a/a/j$i;

    iget-object v2, v9, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_15
    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/j;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v2, v1}, Lcom/apicloud/c/a/a/j;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_8

    :cond_16
    check-cast v1, Lcom/apicloud/c/a/a/j$i;

    :goto_9
    iput-object v9, v1, Lcom/apicloud/c/a/a/j$i;->a:Lcom/apicloud/c/a/a/j$w;

    if-eqz v10, :cond_17

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    move v7, v8

    :goto_a
    iput-boolean v7, v1, Lcom/apicloud/c/a/a/j$i;->d:Z

    return-object v9

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(JIZ)Lcom/apicloud/c/a/a/j$w;
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$w;->i()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$w;->j()I

    move-result v3

    if-ne p3, v3, :cond_2

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-object v2

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->i()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->j()I

    move-result v2

    if-ne p3, v2, :cond_6

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Lcom/apicloud/c/a/a/j$w;->a(II)V

    :cond_5
    return-object v1

    :cond_6
    if-nez p4, :cond_7

    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/apicloud/c/a/a/j;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v1, v1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$o;->b(Landroid/view/View;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$o;->d()V

    return-void
.end method

.method a(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-lt v5, v3, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apicloud/c/a/a/j$w;

    if-eqz v6, :cond_4

    iget v7, v6, Lcom/apicloud/c/a/a/j$w;->e:I

    if-lt v7, v1, :cond_4

    iget v7, v6, Lcom/apicloud/c/a/a/j$w;->e:I

    if-le v7, v2, :cond_2

    goto :goto_2

    :cond_2
    iget v7, v6, Lcom/apicloud/c/a/a/j$w;->e:I

    if-ne v7, p1, :cond_3

    sub-int v7, p2, p1

    invoke-virtual {v6, v7, v4}, Lcom/apicloud/c/a/a/j$w;->a(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v0, v4}, Lcom/apicloud/c/a/a/j$w;->a(IZ)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method a(IIZ)V
    .locals 4

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/apicloud/c/a/a/j$w;->e:I

    if-lt v3, v0, :cond_1

    neg-int v3, p2

    invoke-virtual {v2, v3, p3}, Lcom/apicloud/c/a/a/j$w;->a(IZ)V

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/apicloud/c/a/a/j$w;->e:I

    if-lt v3, p1, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/c/a/a/j;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->l()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->n()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->b(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$a;Lcom/apicloud/c/a/a/j$a;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$o;->a()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$o;->g()Lcom/apicloud/c/a/a/j$n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j$n;->a(Lcom/apicloud/c/a/a/j$a;Lcom/apicloud/c/a/a/j$a;Z)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$w;Z)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->c(Lcom/apicloud/c/a/a/j$w;)V

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$o;->d(Lcom/apicloud/c/a/a/j$w;)V

    :cond_0
    iput-object v1, p1, Lcom/apicloud/c/a/a/j$w;->o:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$o;->g()Lcom/apicloud/c/a/a/j$n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/j$n;->a(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result p1

    return p1

    :cond_0
    iget v0, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    if-ltz v0, :cond_4

    iget v0, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    iget v2, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/j$a;->b(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->j()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->i()J

    move-result-wide v3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    iget p1, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$a;->a(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(IZ)Lcom/apicloud/c/a/a/j$w;
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_5

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p2, p2, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p2, v0}, Lcom/apicloud/c/a/a/b;->e(Landroid/view/View;)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object p2, p2, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p2, v0}, Lcom/apicloud/c/a/a/b;->b(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v1, p2}, Lcom/apicloud/c/a/a/b;->e(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->c(Landroid/view/View;)V

    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-lt v1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v2

    if-ne v2, p1, :cond_4

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v4

    if-ne v4, p1, :cond_7

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget-boolean v4, v4, Lcom/apicloud/c/a/a/j$t;->f:Z

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    return-object v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget v0, v0, Lcom/apicloud/c/a/a/j$h;->p:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apicloud/c/a/a/j$o;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/apicloud/c/a/a/j$o;->d:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/apicloud/c/a/a/j$o;->d:I

    if-gt v1, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method b(I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$w;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/c/a/a/j$o;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method b(II)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/apicloud/c/a/a/j$w;->e:I

    if-lt v3, p1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/apicloud/c/a/a/j$w;->a(IZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$o;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->n()V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$o;->b(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j$w;)V
    .locals 6

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v0

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/j$a;->c(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_7

    :cond_3
    :goto_1
    iget v3, p0, Lcom/apicloud/c/a/a/j$o;->d:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Lcom/apicloud/c/a/a/j$w;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/apicloud/c/a/a/j$o;->d:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    invoke-static {}, Lcom/apicloud/c/a/a/j;->B()Z

    move-result v4

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    iget v5, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    invoke-virtual {v4, v5}, Lcom/apicloud/c/a/a/d$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-gez v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/j$w;

    iget v4, v4, Lcom/apicloud/c/a/a/j$w;->e:I

    iget-object v5, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v5, v5, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    invoke-virtual {v5, v4}, Lcom/apicloud/c/a/a/d$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_3
    add-int/2addr v3, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    if-nez v3, :cond_9

    invoke-virtual {p0, p1, v2}, Lcom/apicloud/c/a/a/j$o;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    goto :goto_6

    :cond_9
    move v2, v1

    :goto_6
    move v1, v3

    :goto_7
    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/p;->g(Lcom/apicloud/c/a/a/j$w;)V

    if-nez v1, :cond_a

    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/apicloud/c/a/a/j$w;->o:Lcom/apicloud/c/a/a/j;

    :cond_a
    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$w;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->g:Ljava/util/List;

    return-object v0
.end method

.method c(II)V
    .locals 3

    add-int/2addr p2, p1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/j$w;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/apicloud/c/a/a/j$w;->e:I

    if-lt v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method c(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->b(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$o;Z)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$o;Z)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Lcom/apicloud/c/a/a/j$w;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/c/a/a/j$w;->b(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$o;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->n()V

    return-void
.end method

.method d(I)Lcom/apicloud/c/a/a/j$w;
    .locals 9

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-lt v3, v0, :cond_4

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/a;->b(I)I

    move-result p1

    if-lez p1, :cond_3

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result v3

    if-ge p1, v3, :cond_3

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v3, p1}, Lcom/apicloud/c/a/a/j$a;->a(I)J

    move-result-wide v5

    :goto_1
    if-lt v2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->i()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_2

    invoke-virtual {p1, v4}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    iget-object v5, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v6

    if-ne v6, p1, :cond_5

    invoke-virtual {v5, v4}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    return-object v5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-object v1
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/apicloud/c/a/a/j;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/d$a;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$o;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method d(Lcom/apicloud/c/a/a/j$w;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->o:Lcom/apicloud/c/a/a/j$p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->o:Lcom/apicloud/c/a/a/j$p;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/j$p;->a(Lcom/apicloud/c/a/a/j$w;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$a;->b(Lcom/apicloud/c/a/a/j$w;)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/p;->g(Lcom/apicloud/c/a/a/j$w;)V

    :cond_2
    return-void
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method g()Lcom/apicloud/c/a/a/j$n;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/j$n;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/j$n;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->e:Lcom/apicloud/c/a/a/j$n;

    return-object v0
.end method

.method h()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    if-eqz v2, :cond_1

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method i()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->f:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/j$w;->a(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$o;->d()V

    :goto_1
    return-void
.end method

.method j()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-lt v1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$w;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$w;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method k()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$i;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/apicloud/c/a/a/j$i;->c:Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
