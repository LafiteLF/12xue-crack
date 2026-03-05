.class final Lcom/apicloud/a/i/a/i/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/i/a$a;,
        Lcom/apicloud/a/i/a/i/a$b;
    }
.end annotation


# static fields
.field private static final f:Lcom/apicloud/a/i/a/i/a$b;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/apicloud/a/i/a/i/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/i/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/i/a$b;-><init>(Lcom/apicloud/a/i/a/i/a$b;)V

    sput-object v0, Lcom/apicloud/a/i/a/i/a;->f:Lcom/apicloud/a/i/a/i/a$b;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    iput v0, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/a;->a:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/ViewGroup;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/apicloud/a/i/a/i/a;->b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/i/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/i/a;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Landroid/view/View;ZI)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/apicloud/a/i/a/i/a;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/i/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/i/a$a;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance p2, Lcom/apicloud/a/i/a/i/a$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/apicloud/a/i/a/i/a$1;-><init>(Lcom/apicloud/a/i/a/i/a;Landroid/view/View;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(II)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/q/a$a;

    iget p1, p1, Lcom/apicloud/a/i/a/q/a$a;->a:I

    return p1

    :cond_2
    :goto_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method static b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/apicloud/a/i/a/g/i;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-ltz p0, :cond_1

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ltz p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    if-nez p0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/i/a;->b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    sget-object v1, Lcom/apicloud/a/i/a/i/a;->f:Lcom/apicloud/a/i/a/i/a$b;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/i/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/i/a/q/a$a;

    iput v1, v3, Lcom/apicloud/a/i/a/q/a$a;->a:I

    iget-object v3, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/i/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/apicloud/a/i/a/i/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/a/i/a/i/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/apicloud/c/b/b;->s()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    invoke-interface {v4}, Lcom/apicloud/c/b/b;->y()I

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/a/i/a/i/a;->a(Landroid/view/View;ZI)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/i/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/i/a;->b(II)I

    move-result p1

    return p1
.end method

.method final a()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/a;->d()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/a;->e()V

    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final b()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/i/a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    return-void
.end method

.method final c()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/apicloud/a/i/a/i/a;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/i/a;->a(Landroid/view/View;ZI)V

    return-void
.end method
