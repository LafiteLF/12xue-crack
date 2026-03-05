.class final Lcom/apicloud/c/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/d$a;,
        Lcom/apicloud/c/a/a/d$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/apicloud/c/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/apicloud/c/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/apicloud/c/a/a/d;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/apicloud/c/a/a/d$1;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/d$1;-><init>()V

    sput-object v0, Lcom/apicloud/c/a/a/d;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j;IJ)Lcom/apicloud/c/a/a/j$w;
    .locals 1

    invoke-static {p1, p2}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/j;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/apicloud/c/a/a/j$o;->a(IZJ)Lcom/apicloud/c/a/a/j$w;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$w;->r()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/apicloud/c/a/a/j$o;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/apicloud/c/a/a/j$o;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method private a()V
    .locals 11

    iget-object v0, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_5

    iget-object v2, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v2, v1

    move v4, v2

    :goto_1
    if-lt v4, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    sget-object v1, Lcom/apicloud/c/a/a/d;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/apicloud/c/a/a/j;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :cond_1
    iget-object v6, v5, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    iget v3, v6, Lcom/apicloud/c/a/a/d$a;->a:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, v6, Lcom/apicloud/c/a/a/d$a;->b:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v3

    move v3, v1

    :goto_2
    iget v8, v6, Lcom/apicloud/c/a/a/d$a;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-lt v3, v8, :cond_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_3

    new-instance v8, Lcom/apicloud/c/a/a/d$b;

    invoke-direct {v8}, Lcom/apicloud/c/a/a/d$b;-><init>()V

    iget-object v9, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    iget-object v8, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/apicloud/c/a/a/d$b;

    :goto_4
    iget-object v9, v6, Lcom/apicloud/c/a/a/d$a;->c:[I

    add-int/lit8 v10, v3, 0x1

    aget v9, v9, v10

    if-gt v9, v7, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    move v10, v1

    :goto_5
    iput-boolean v10, v8, Lcom/apicloud/c/a/a/d$b;->a:Z

    iput v7, v8, Lcom/apicloud/c/a/a/d$b;->b:I

    iput v9, v8, Lcom/apicloud/c/a/a/d$b;->c:I

    iput-object v5, v8, Lcom/apicloud/c/a/a/d$b;->d:Lcom/apicloud/c/a/a/j;

    iget-object v9, v6, Lcom/apicloud/c/a/a/d$a;->c:[I

    aget v9, v9, v3

    iput v9, v8, Lcom/apicloud/c/a/a/d$b;->e:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/j;

    invoke-virtual {v4}, Lcom/apicloud/c/a/a/j;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v4, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    invoke-virtual {v5, v4, v1}, Lcom/apicloud/c/a/a/d$a;->a(Lcom/apicloud/c/a/a/j;Z)V

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    iget v4, v4, Lcom/apicloud/c/a/a/d$a;->d:I

    add-int/2addr v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private a(Lcom/apicloud/c/a/a/d$b;J)V
    .locals 3

    iget-boolean v0, p1, Lcom/apicloud/c/a/a/d$b;->a:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iget-object v2, p1, Lcom/apicloud/c/a/a/d$b;->d:Lcom/apicloud/c/a/a/j;

    iget p1, p1, Lcom/apicloud/c/a/a/d$b;->e:I

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/j;IJ)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j;

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/j;J)V

    :cond_1
    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/apicloud/c/a/a/j;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/b;->c()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->b()V

    :cond_1
    iget-object v0, p1, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/c/a/a/d$a;->a(Lcom/apicloud/c/a/a/j;Z)V

    iget v1, v0, Lcom/apicloud/c/a/a/d$a;->d:I

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget-object v2, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v1, v2}, Lcom/apicloud/c/a/a/j$t;->a(Lcom/apicloud/c/a/a/j$a;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/apicloud/c/a/a/d$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/apicloud/c/a/a/d$a;->c:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/j;IJ)Lcom/apicloud/c/a/a/j$w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method static a(Lcom/apicloud/c/a/a/j;I)Z
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/b;->c()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/b;->d(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v3

    iget v4, v3, Lcom/apicloud/c/a/a/j$w;->e:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private b(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/d$b;

    iget-object v2, v1, Lcom/apicloud/c/a/a/d$b;->d:Lcom/apicloud/c/a/a/j;

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/d$b;J)V

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/d$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(J)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/c/a/a/d;->a()V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/d;->b(J)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/apicloud/c/a/a/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->z()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apicloud/c/a/a/d;->c:J

    invoke-virtual {p1, p0}, Lcom/apicloud/c/a/a/j;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/c/a/a/d$a;->a(II)V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/apicloud/c/a/a/d;->c:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_1
    if-lt v3, v2, :cond_2

    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/apicloud/c/a/a/d;->d:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/apicloud/c/a/a/d;->a(J)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/apicloud/c/a/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apicloud/c/a/a/j;

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/j;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/apicloud/c/a/a/j;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Lcom/apicloud/c/a/a/d;->c:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method
