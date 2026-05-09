.class Lcom/apicloud/a/i/a/n/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/apicloud/a/c/l;

.field private d:Lcom/apicloud/a/i/a/n/b;

.field private e:Lcom/apicloud/a/h/b;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/c;->d:Lcom/apicloud/a/i/a/n/b;

    iput-object p2, p0, Lcom/apicloud/a/i/a/n/c;->c:Lcom/apicloud/a/c/l;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/c;->e:Lcom/apicloud/a/h/b;

    return-void
.end method

.method private a(ZII)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/n/c;->f:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/c;->c:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/n/c;->e:Lcom/apicloud/a/h/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {v0, p3, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/n/c;->d:Lcom/apicloud/a/i/a/n/b;

    invoke-static {p2}, Lcom/apicloud/a/i/c;->g(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "index"

    invoke-virtual {v0, p3, p2}, Lcom/apicloud/a/i/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/apicloud/a/i/a/n/c;->c:Lcom/apicloud/a/c/l;

    if-eqz p1, :cond_2

    const-string p1, "load"

    goto :goto_0

    :cond_2
    const-string p1, "error"

    :goto_0
    invoke-virtual {p2, p1, v0}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/n/c;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/apicloud/a/i/a/n/c;->a(ZII)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/n/c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/apicloud/a/i/a/n/c;->a(ZII)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/n/c;->a:Z

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/n/c;->f:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/n/c;->d:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->i()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/n/c;->d:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/n/c;->a(II)V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/n/c;->b:Z

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/n/c;->f:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/n/c;->d:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->i()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/c;->a()V

    :cond_0
    return-void
.end method
