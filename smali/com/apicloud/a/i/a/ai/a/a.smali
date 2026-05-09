.class Lcom/apicloud/a/i/a/ai/a/a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ai/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/ai/a/h;

.field private b:Lcom/apicloud/a/i/a/ai/a/h;

.field private c:Lcom/apicloud/a/i/a/ai/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/a;->setOrientation(I)V

    new-instance v1, Lcom/apicloud/a/i/a/ai/a/e;

    invoke-direct {v1, p1}, Lcom/apicloud/a/i/a/ai/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a;->a:Lcom/apicloud/a/i/a/ai/a/h;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/apicloud/a/i/a/ai/a/a;->a:Lcom/apicloud/a/i/a/ai/a/h;

    invoke-virtual {v4, v1}, Lcom/apicloud/a/i/a/ai/a/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a;->a:Lcom/apicloud/a/i/a/ai/a/h;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/a;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/apicloud/a/i/a/ai/a/a$a;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/a/ai/a/a$a;-><init>(Lcom/apicloud/a/i/a/ai/a/a;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/a$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/a;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/apicloud/a/i/a/ai/a/g;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ai/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->b:Lcom/apicloud/a/i/a/ai/a/h;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->b:Lcom/apicloud/a/i/a/ai/a/h;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/a;->b:Lcom/apicloud/a/i/a/ai/a/h;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/a;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/i/a/ai/a/h;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->a:Lcom/apicloud/a/i/a/ai/a/h;

    return-object v0
.end method

.method public b()Lcom/apicloud/a/i/a/ai/a/h;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->b:Lcom/apicloud/a/i/a/ai/a/h;

    return-object v0
.end method

.method public c()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    iget-object v0, v0, Lcom/apicloud/a/i/a/ai/a/a$a;->c:Lcom/apicloud/a/i/a/ab/a;

    return-object v0
.end method

.method public d()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    iget-object v0, v0, Lcom/apicloud/a/i/a/ai/a/a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public e()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/a;->c:Lcom/apicloud/a/i/a/ai/a/a$a;

    iget-object v0, v0, Lcom/apicloud/a/i/a/ai/a/a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method
