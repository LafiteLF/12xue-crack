.class Lcom/apicloud/a/i/a/ai/a/a$a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/apicloud/a/i/a/ab/a;

.field final synthetic d:Lcom/apicloud/a/i/a/ai/a/a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/ai/a/a;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->d:Lcom/apicloud/a/i/a/ai/a/a;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/a$a;->setOrientation(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v1, v4, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/a$a;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/apicloud/a/i/a/ab/a;

    invoke-direct {v1, p2}, Lcom/apicloud/a/i/a/ab/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    const/16 v7, 0xc

    invoke-static {v7}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/apicloud/a/i/a/ab/a;->d(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    const v7, -0x525153

    invoke-virtual {v1, v7}, Lcom/apicloud/a/i/a/ab/a;->b(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    const v7, -0x1d1b1c

    invoke-virtual {v1, v7}, Lcom/apicloud/a/i/a/ab/a;->a(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    const v7, -0x666667

    invoke-virtual {v1, v7}, Lcom/apicloud/a/i/a/ab/a;->g(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {v7, v1}, Lcom/apicloud/a/i/a/ab/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/a$a;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-static {p2, v4, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/a$a;->addView(Landroid/view/View;)V

    return-void
.end method
