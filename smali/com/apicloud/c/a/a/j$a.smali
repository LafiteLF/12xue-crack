.class public abstract Lcom/apicloud/c/a/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/apicloud/c/a/a/j$w;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/c/a/a/j$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/c/a/a/j$b;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(Lcom/apicloud/c/a/a/j$c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$a;->a(Lcom/apicloud/c/a/a/j$w;I)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    return-void
.end method

.method public b(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/apicloud/c/a/a/j$c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/apicloud/c/a/a/j$w;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    iput p2, p1, Lcom/apicloud/c/a/a/j$w;->e:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/j$a;->a(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/apicloud/c/a/a/j$w;->g:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/c/a/a/j$w;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/j$a;->a(Lcom/apicloud/c/a/a/j$w;ILjava/util/List;)V

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->v()V

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/apicloud/c/a/a/j$i;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    iput-boolean v1, p1, Lcom/apicloud/c/a/a/j$i;->c:Z

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    return-void
.end method

.method public abstract c(Landroid/view/ViewGroup;I)Lcom/apicloud/c/a/a/j$w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j$b;->a(II)V

    return-void
.end method

.method public c(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final d(Landroid/view/ViewGroup;I)Lcom/apicloud/c/a/a/j$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$a;->c(Landroid/view/ViewGroup;I)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    iput p2, p1, Lcom/apicloud/c/a/a/j$w;->h:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1
.end method

.method public final d(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j$b;->b(II)V

    return-void
.end method

.method public d(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j$b;->c(II)V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$a;->b:Z

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$b;->a()V

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$a;->a:Lcom/apicloud/c/a/a/j$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/c/a/a/j$b;->c(II)V

    return-void
.end method
