.class public Lcom/apicloud/a/i/a/u/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/u/a/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/u/a/a;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/apicloud/a/i/a/u/a/j;

.field private h:Lcom/apicloud/a/i/a/u/a/k$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/u/a/k;->b:Z

    sget-object v0, Lcom/deepe/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->c:Ljava/lang/String;

    sget-object v0, Lcom/deepe/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->e:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/k;->f:I

    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->h:Lcom/apicloud/a/i/a/u/a/k$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/i/a/u/a/k$a;->a(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/a/k;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/a/k;->a(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->g:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/j;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->g:Lcom/apicloud/a/i/a/u/a/j;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/u/a/k;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/apicloud/a/i/a/u/a/j;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/u/a/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->g:Lcom/apicloud/a/i/a/u/a/j;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/j;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/j;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/k;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/k;->c:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/u/a/j;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/apicloud/a/i/a/u/a/k$1;

    invoke-direct {v1, p0, v0}, Lcom/apicloud/a/i/a/u/a/k$1;-><init>(Lcom/apicloud/a/i/a/u/a/k;Lcom/apicloud/a/i/a/u/a/j;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/j;->a(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    :cond_5
    const/high16 p2, -0x1000000

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->a(I)V

    const/16 p2, 0x12

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->b(I)V

    iget p2, p0, Lcom/apicloud/a/i/a/u/a/k;->f:I

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->c(I)V

    iget-boolean p2, p0, Lcom/apicloud/a/i/a/u/a/k;->b:Z

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->a(Z)V

    new-instance p2, Lcom/apicloud/a/i/a/u/a/k$2;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/u/a/k$2;-><init>(Lcom/apicloud/a/i/a/u/a/k;)V

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/u/a/j;->a(Lcom/apicloud/a/i/a/u/a/i;)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-nez p2, :cond_6

    new-instance p2, Lcom/apicloud/a/i/a/u/a/a;

    invoke-direct {p2, p1}, Lcom/apicloud/a/i/a/u/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-virtual {p2, v0}, Lcom/apicloud/a/i/a/u/a/a;->setContentView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/apicloud/a/i/a/u/a/a;->dismiss()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/a;->setContentView(Landroid/view/View;)V

    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->i:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/k;->a(Ljava/util/List;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->i:Ljava/util/List;

    :cond_7
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->g:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/j;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->h:Lcom/apicloud/a/i/a/u/a/k$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/k;->i:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->g:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/j;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/a;->show()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/a;->dismiss()V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/k;->a:Lcom/apicloud/a/i/a/u/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
