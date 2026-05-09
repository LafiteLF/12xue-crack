.class Lcom/apicloud/a/i/a/i/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/i/b;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/b$a;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/i/b;Lcom/apicloud/a/i/a/i/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b$a;-><init>(Lcom/apicloud/a/i/a/i/b;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-static {p2}, Lcom/apicloud/a/i/a/i/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/c/b/b;->y()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/b$a;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/i/b;->a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/i/a/i/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/i/a;->a(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lcom/apicloud/c/b/b;->s()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/i/b$a;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/i/b;->a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/i/a/i/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/i/a;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-static {p2}, Lcom/apicloud/a/i/a/i/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/c/b/b;->y()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/b$a;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/i/b;->a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/i/a/i/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/i/a;->b(Landroid/view/View;)V

    :cond_0
    invoke-interface {p1}, Lcom/apicloud/c/b/b;->s()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/i/b$a;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/i/b;->a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/i/a/i/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/i/a;->d(Landroid/view/View;)V

    :cond_1
    return-void
.end method
