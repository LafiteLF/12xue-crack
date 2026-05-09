.class public Lcom/apicloud/a/i/a/r/m;
.super Lcom/apicloud/a/i/a/r/l;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/m;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/m;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/apicloud/a/i/a/r/m$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/apicloud/a/i/a/r/m$1;-><init>(Lcom/apicloud/a/i/a/r/m;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/m;->b:Lcom/apicloud/a/d;

    const-wide/16 v1, 0xfa

    invoke-interface {p1, v0, v1, v2}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/r/m;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/r/m;->c:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/apicloud/a/i/a/r/w;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/m;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/w;II)V

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/a/r/m;->h(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/r/m;->i(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/m;->f()Lcom/apicloud/a/c/l;

    move-result-object v1

    iget-object v2, p1, Lcom/apicloud/a/i/a/r/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v0, p3}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object p2, p1, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    check-cast p2, Lcom/apicloud/a/i/a/g/d;

    invoke-virtual {p2, p3}, Lcom/apicloud/a/i/a/g/d;->a(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/m;->a(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_1

    iget-object p1, p1, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method protected final b(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/m;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/ViewGroup;I)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/m;->h(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/r/m;->i(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Lcom/apicloud/a/i/a/r/t;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/r/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/m;->f()Lcom/apicloud/a/c/l;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/m;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/apicloud/a/i/a/r/a;

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/m;->b:Lcom/apicloud/a/d;

    invoke-direct {p1, p2}, Lcom/apicloud/a/i/a/r/a;-><init>(Lcom/apicloud/a/d;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/r/m;->a(Landroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/r/w;

    move-result-object p1

    return-object p1
.end method
