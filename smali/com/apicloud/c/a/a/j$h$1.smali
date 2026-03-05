.class Lcom/apicloud/c/a/a/j$h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j$h;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j$h;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->h(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h$1;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->j(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method
