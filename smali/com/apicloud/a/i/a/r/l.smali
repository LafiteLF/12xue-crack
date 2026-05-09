.class public Lcom/apicloud/a/i/a/r/l;
.super Lcom/apicloud/c/a/a/j$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/c/a/a/j$a<",
        "Lcom/apicloud/a/i/a/r/w;",
        ">;"
    }
.end annotation


# static fields
.field static final a:I


# instance fields
.field protected final b:Lcom/apicloud/a/d;

.field private final c:Lcom/apicloud/a/i/a/r/n;

.field private d:Lcom/apicloud/a/c/l;

.field private e:Ljava/util/List;

.field private f:Lcom/apicloud/a/i/a/r/u;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/r/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/r/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cell"

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/r/l;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$a;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->b:Lcom/apicloud/a/d;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->i:Landroid/util/SparseArray;

    sget p2, Lcom/apicloud/a/i/a/r/l;->a:I

    const-string v0, "cell"

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list-view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " aborted, invalid index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    return-void
.end method

.method private a(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/r/c;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private final b(Lcom/apicloud/a/i/a/r/w;)V
    .locals 3

    iget-object v0, p1, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->f:Lcom/apicloud/a/i/a/r/u;

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/apicloud/a/i/a/r/l$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/apicloud/a/i/a/r/l$1;-><init>(Lcom/apicloud/a/i/a/r/l;Lcom/apicloud/a/i/a/r/u;Lcom/apicloud/a/i/a/r/w;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/apicloud/a/i/a/r/l$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/apicloud/a/i/a/r/l$2;-><init>(Lcom/apicloud/a/i/a/r/l;Lcom/apicloud/a/i/a/r/u;Lcom/apicloud/a/i/a/r/w;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/r/c;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/r/l;->l(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "delete()"

    invoke-direct {p0, v2, v1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private k(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "delete()"

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method private l(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->d()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final a(Landroid/view/View;Z)I
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    const/4 v0, -0x2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/c/b/b;->u()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-gez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->h()I

    move-result p1

    :cond_1
    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "itemWidth"

    goto :goto_0

    :cond_0
    const-string v0, "itemHeight"

    :goto_0
    check-cast p1, Lcom/apicloud/a/c;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_1
    const/4 p1, -0x2

    return p1
.end method

.method public final a(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected final a(Landroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/r/w;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->e()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;Z)I

    move-result v0

    new-instance v2, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v2, v1, v0}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/View;Z)I

    move-result v0

    new-instance v2, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v2, v0, v1}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/w;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/a/i/a/r/w;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/r/l;->b(Lcom/apicloud/a/i/a/r/w;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/apicloud/a/i/a/r/w;

    new-instance p2, Lcom/apicloud/a/i/a/r/a;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->b:Lcom/apicloud/a/d;

    invoke-direct {p2, v0}, Lcom/apicloud/a/i/a/r/a;-><init>(Lcom/apicloud/a/d;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/apicloud/a/i/a/r/w;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;
    .locals 1

    invoke-static {p2}, Lcom/apicloud/a/i/a/r/x;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/r/l;->g(I)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1
.end method

.method public final a(II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "delete()"

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    if-gtz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->k(I)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int v2, p1, p2

    if-lt v2, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    move v2, p1

    :goto_1
    if-lt v2, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/r/l;->c(Ljava/util/List;)V

    :goto_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/apicloud/a/i/a/r/l;->e(II)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void

    :cond_0
    const-string p2, "update()"

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    const/4 v3, 0x1

    const/16 v4, 0x30

    const/high16 v5, -0x80000000

    if-nez v2, :cond_1

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    move p2, v1

    move p1, v5

    move v1, p1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v1

    if-gt p1, v5, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 p1, 0x50

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result p2

    add-int/2addr v1, p2

    move p2, p1

    move p1, v5

    move v2, p1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int p2, v1, p1

    add-int v2, p1, v0

    add-int/2addr v2, v1

    iget-object v6, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    sub-int/2addr p1, v3

    add-int/2addr v1, p1

    invoke-virtual {v6, v1}, Lcom/apicloud/a/i/a/r/n;->m(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v5

    :goto_0
    move v1, p2

    move p2, v4

    :goto_1
    if-eq v1, v5, :cond_5

    iget-object v6, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v6}, Lcom/apicloud/a/i/a/r/n;->e()Z

    move-result v6

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/r/l;->d(II)V

    if-eqz v6, :cond_4

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/r/l;->c(II)V

    :cond_4
    if-ne p2, v4, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    :cond_6
    if-eq v2, v5, :cond_7

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->e()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0, v2, p2, p1, v3}, Lcom/apicloud/a/i/a/r/n;->a(IIIZ)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/r/c;

    iget-object v2, v2, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    if-ne p1, v2, :cond_2

    :goto_1
    if-ltz v1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/apicloud/a/i/a/r/f;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/f;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;Z)I

    move-result v0

    new-instance v1, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v1, v2, v0}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/View;Z)I

    move-result v0

    new-instance v1, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v1, v0, v2}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/r/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/r/c;-><init>(Landroid/view/View;)V

    if-ltz p2, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/r/h;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/h;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;Z)I

    move-result v0

    new-instance v1, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v1, v2, v0}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/View;Z)I

    move-result v0

    new-instance v1, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v1, v0, v2}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    :goto_0
    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/r/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/r/c;-><init>(Landroid/view/View;)V

    if-ltz p2, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/r/u;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->f:Lcom/apicloud/a/i/a/r/u;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/w;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j$a;->a(Lcom/apicloud/c/a/a/j$w;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/w;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/r/w;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/r/l;->b(I)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/r/x;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, v0, p2}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/w;II)V

    return-void
.end method

.method protected a(Lcom/apicloud/a/i/a/r/w;II)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/a/r/l;->h(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p1, p1, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    check-cast p1, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/i/a/r/a;->a(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/w;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/w;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/apicloud/c/a/a/j$w;I)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/w;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/w;I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->c(I)I

    move-result p1

    return p1
.end method

.method protected final b(Landroid/view/View;Z)I
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/c/b/b;->v()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-gez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->b()I

    move-result p1

    :cond_1
    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0
.end method

.method protected b(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/n;->l(I)Lcom/apicloud/a/i/a/r/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->c(II)V

    return-void

    :cond_0
    const-string p2, "refresh()"

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/r/c;

    iget-object v2, v2, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    if-ne p1, v2, :cond_2

    :goto_1
    if-ltz v1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->c(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/l;->k(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/l;->j(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->j()V

    :cond_3
    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final c(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->d(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/apicloud/a/i/a/r/x;->a(I)I

    move-result p1

    return p1
.end method

.method public synthetic c(Landroid/view/ViewGroup;I)Lcom/apicloud/c/a/a/j$w;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final d(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget p1, Lcom/apicloud/a/i/a/r/l;->a:I

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->h(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/apicloud/a/c;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/apicloud/a/c;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v0

    :cond_1
    sget p1, Lcom/apicloud/a/i/a/r/l;->a:I

    return p1
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result v0

    return v0
.end method

.method protected final e(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final f()Lcom/apicloud/a/c/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->d:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/l;->d:Lcom/apicloud/a/c/l;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->d:Lcom/apicloud/a/c/l;

    return-object v0
.end method

.method protected final f(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final g(I)Lcom/apicloud/a/i/a/r/w;
    .locals 3

    invoke-static {p1}, Lcom/apicloud/a/i/a/r/x;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/l;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/r/w;

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/r/c;

    iget-object p1, p1, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/i/a/r/w;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    new-instance v0, Lcom/apicloud/a/i/a/r/w;

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/l;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/r/c;

    iget-object p1, p1, Lcom/apicloud/a/i/a/r/c;->a:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/i/a/r/w;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final h(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final h()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->c:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->y()Z

    move-result v0

    return v0
.end method

.method protected final i(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/l;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
