.class Lcom/deepe/a/g/a/h;
.super Landroid/widget/FrameLayout;


# static fields
.field static final a:F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F

.field public static final e:[F


# instance fields
.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget v0, Lcom/deepe/a/g/a/g;->c:F

    sput v0, Lcom/deepe/a/g/a/h;->a:F

    const/4 v1, 0x4

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v2, v5

    const/4 v7, 0x3

    aput v6, v2, v7

    sput-object v2, Lcom/deepe/a/g/a/h;->b:[F

    new-array v2, v1, [F

    aput v6, v2, v3

    aput v6, v2, v4

    aput v0, v2, v5

    aput v0, v2, v7

    sput-object v2, Lcom/deepe/a/g/a/h;->c:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lcom/deepe/a/g/a/h;->d:[F

    new-array v1, v1, [F

    aput v0, v1, v3

    aput v0, v1, v4

    aput v0, v1, v5

    aput v0, v1, v7

    sput-object v1, Lcom/deepe/a/g/a/h;->e:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a/h;->setClickable(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/apicloud/a/a/d;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p1, 0xf

    invoke-static {p1}, Lcom/apicloud/a/a/d;->b(I)I

    move-result p1

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/apicloud/a/a/d;->b(I)I

    move-result v1

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/h;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    sget-object v0, Lcom/deepe/a/g/a/h;->b:[F

    invoke-static {v0, p1, p2}, Lcom/deepe/a/g/a/f;->a([FII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/h;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/deepe/a/g/a/f;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/h;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    sget-object v0, Lcom/deepe/a/g/a/h;->b:[F

    invoke-static {v0, p1}, Lcom/deepe/a/g/a/f;->a([FI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/h;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
