.class Lcom/apicloud/a/i/a/u/a/j$a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/u/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/a/j;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/u/a/j;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->a:Lcom/apicloud/a/i/a/u/a/j;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->setOrientation(I)V

    const v0, -0x8090a

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/a/j$a;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    const v1, -0x60fbfff9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/u/a/j$a;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    const p2, -0x60fbfff8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->a(F)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/j$a;->a(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/u/a/j;Landroid/content/Context;Lcom/apicloud/a/i/a/u/a/j$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/a/j$a;-><init>(Lcom/apicloud/a/i/a/u/a/j;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/u/a/j$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method a(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;F)V

    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/j$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
