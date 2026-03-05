.class public Lcom/uzmap/pkg/uzcore/f/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/f/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/uzmap/pkg/uzcore/f/b;

.field private c:Lcom/uzmap/pkg/uzcore/f/e$a;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/e$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/e$1;-><init>(Lcom/uzmap/pkg/uzcore/f/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/b;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    return-object p0
.end method

.method private a(Lcom/uzmap/pkg/uzcore/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->a(Lcom/uzmap/pkg/uzcore/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/f/e;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/e;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/e$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/e;->c:Lcom/uzmap/pkg/uzcore/f/e$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/f/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->c:Lcom/uzmap/pkg/uzcore/f/e$a;

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/f/b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/e;->a:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xbb8

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/f/b;->b(Z)V

    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->d:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/e$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/e$2;-><init>(Lcom/uzmap/pkg/uzcore/f/e;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f/b;->a(Lcom/uzmap/pkg/uzcore/f/b$a;)V

    return-void
.end method

.method public a(ZLcom/uzmap/pkg/uzcore/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/c;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/c;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e;->b:Lcom/uzmap/pkg/uzcore/f/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/f/b;->b(Z)V

    :goto_0
    return-void
.end method
