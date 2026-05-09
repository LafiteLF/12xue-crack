.class public Lcom/apicloud/a/i/a/u/a/j;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/u/a/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/u/a/j$a;

.field private b:Lcom/apicloud/a/i/a/u/a/l;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/a/j;->setBackgroundColor(I)V

    new-instance v1, Lcom/apicloud/a/i/a/u/a/l;

    invoke-direct {v1, p1}, Lcom/apicloud/a/i/a/u/a/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    const v2, -0x60fbfffd

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/u/a/l;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v3, v1}, Lcom/apicloud/a/i/a/u/a/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/u/a/j;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/apicloud/a/i/a/u/a/j$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/apicloud/a/i/a/u/a/j$a;-><init>(Lcom/apicloud/a/i/a/u/a/j;Landroid/content/Context;Lcom/apicloud/a/i/a/u/a/j$a;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    const p1, -0x8090a

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->setBackgroundColor(I)V

    const/16 p1, 0x2d

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/j;->c:I

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/j;->c:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/j;->c:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/l;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->c(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->a(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/i;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/i;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->a(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->a(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(F)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->b(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/l;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/u/a/m;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->b(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->a:Lcom/apicloud/a/i/a/u/a/j$a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/j$a;->c(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j;->b:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/l;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
