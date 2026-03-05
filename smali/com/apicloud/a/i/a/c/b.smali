.class public Lcom/apicloud/a/i/a/c/b;
.super Lcom/apicloud/a/i/a/ag/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/Button;",
        ">",
        "Lcom/apicloud/a/i/a/ag/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ag/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/c/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/c/b;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/b;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/c/b;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private c(Landroid/widget/Button;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x521dd8ce

    if-eq v0, v1, :cond_4

    const v1, -0x3523bfe8    # -7217164.0f

    if-eq v0, v1, :cond_2

    const v1, 0x6761d4f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/b;->b(Landroid/widget/Button;)V

    return-void

    :cond_2
    const-string v0, "submit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/b;->a(Landroid/widget/Button;)V

    return-void

    :cond_4
    const-string p1, "button"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/Button;)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/c/b$1;-><init>(Lcom/apicloud/a/i/a/c/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/widget/Button;Lcom/apicloud/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/c/b;->c(Landroid/widget/Button;Lcom/apicloud/a/c;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/ag/b;->a(Landroid/widget/TextView;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/widget/TextView;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/c/b;->a(Landroid/widget/Button;Lcom/apicloud/a/c;)V

    return-void
.end method

.method protected b(Landroid/widget/Button;)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/c/b$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/c/b$2;-><init>(Lcom/apicloud/a/i/a/c/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b(Landroid/widget/Button;Lcom/apicloud/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/ag/b;->b(Landroid/widget/TextView;Lcom/apicloud/a/c;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic b(Landroid/widget/TextView;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/c/b;->b(Landroid/widget/Button;Lcom/apicloud/a/c;)V

    return-void
.end method
