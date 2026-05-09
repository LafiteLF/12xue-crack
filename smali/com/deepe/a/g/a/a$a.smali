.class Lcom/deepe/a/g/a/a$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Landroid/widget/LinearLayout;

.field protected b:Landroid/widget/LinearLayout;

.field protected c:Lcom/deepe/a/g/a/h;

.field protected d:Lcom/deepe/a/g/a/c;

.field final synthetic e:Lcom/deepe/a/g/a/a;


# direct methods
.method public constructor <init>(Lcom/deepe/a/g/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/deepe/c/b/e;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/a$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/a$a;->setVisibility(I)V

    invoke-direct {p0, p2}, Lcom/deepe/a/g/a/a$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a$a;)Lcom/deepe/a/g/a/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/deepe/a/g/a/g;->b:I

    iget-object v2, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, -0x2

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/deepe/a/g/a/a$a;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/deepe/a/g/a/h;

    invoke-direct {v3, p1}, Lcom/deepe/a/g/a/h;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/deepe/a/g/a/h;->setVisibility(I)V

    invoke-static {v2, v0}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    invoke-virtual {v4, v3}, Lcom/deepe/a/g/a/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    invoke-static {v2, v0}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/deepe/a/g/a/a$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/deepe/a/g/a/a$a;->b:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/deepe/a/g/a/h;->e:[F

    const v5, -0x333334

    invoke-static {v4, v5}, Lcom/deepe/a/g/a/f;->a([FI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/deepe/a/g/a/c;

    invoke-direct {v0, p1}, Lcom/deepe/a/g/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    const/16 p1, 0x2e

    invoke-static {p1}, Lcom/apicloud/a/a/d;->b(I)I

    move-result p1

    invoke-static {v2, p1}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    sget v0, Lcom/deepe/a/g/a/g;->b:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/deepe/a/g/a/g;->b:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    invoke-virtual {v0, p1}, Lcom/deepe/a/g/a/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    new-instance v0, Lcom/deepe/a/g/a/a$a$1;

    invoke-direct {v0, p0}, Lcom/deepe/a/g/a/a$a$1;-><init>(Lcom/deepe/a/g/a/a$a;)V

    invoke-virtual {p1, v0}, Lcom/deepe/a/g/a/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    iget-object v1, p0, Lcom/deepe/a/g/a/a$a;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    invoke-virtual {v0, p1}, Lcom/deepe/a/g/a/h;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    invoke-virtual {p1}, Lcom/deepe/a/g/a/h;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/g;

    move-result-object v0

    iget v0, v0, Lcom/deepe/a/g/a/g;->i:I

    invoke-virtual {p1, v0}, Lcom/deepe/a/g/a/h;->b(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/g;

    move-result-object v0

    iget v0, v0, Lcom/deepe/a/g/a/g;->e:I

    invoke-virtual {p1, v0}, Lcom/deepe/a/g/a/h;->c(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->c:Lcom/deepe/a/g/a/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/deepe/a/g/a/h;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/deepe/b;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    invoke-virtual {v0, p1}, Lcom/deepe/a/g/a/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a$a;->d:Lcom/deepe/a/g/a/c;

    iget-object v0, p0, Lcom/deepe/a/g/a/a$a;->e:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V

    return-void
.end method
