.class public Lcom/apicloud/a/i/b/j/c;
.super Lcom/apicloud/a/i/a/o/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/b/j/b;",
        ">",
        "Lcom/apicloud/a/i/a/o/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/b/j/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/b/j/c;->a(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2a6be44a

    if-eq v2, v3, :cond_2

    const v3, 0x4d8e2b05    # 2.98148E8f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "auto-height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v2, "autoHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/b/j/c;->c(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method protected bridge synthetic b(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/b/j/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/b/j/c;->b(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method protected b(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    if-eq v0, v1, :cond_4

    const v1, 0x32a007

    if-eq v0, v1, :cond_2

    const v1, 0x677c21c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/b/j/b;->setGravity(I)V

    return-void

    :cond_2
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_1
    return-void

    :cond_5
    const/4 p2, 0x1

    goto :goto_0
.end method

.method protected c(Lcom/apicloud/a/i/b/j/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "auto-height"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "autoHeight"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/b/j/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v0, -0x2

    iput v0, p2, Lcom/apicloud/a/i/a/q/a$a;->height:I

    invoke-static {p1}, Lcom/apicloud/a/i/b/j/c;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    const-string v0, "auto"

    invoke-interface {p2, v0}, Lcom/apicloud/c/b/b;->n(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/b/j/b;->e(Z)V

    :cond_2
    return-void
.end method
