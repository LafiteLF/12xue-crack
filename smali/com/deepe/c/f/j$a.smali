.class Lcom/deepe/c/f/j$a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/f/j;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/deepe/c/f/j;Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/deepe/c/f/j$a;->a:Lcom/deepe/c/f/j;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/j$a;->setOrientation(I)V

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/deepe/c/f/j;->a(F)I

    move-result p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/f/j$a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/deepe/c/f/j$a;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/deepe/c/f/j$a;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/j$a;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/deepe/c/f/j;Landroid/content/Context;Lcom/deepe/c/f/j$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/f/j$a;-><init>(Lcom/deepe/c/f/j;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/f/j$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/f/j$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepe/c/f/j$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
