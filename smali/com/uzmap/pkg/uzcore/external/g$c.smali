.class Lcom/uzmap/pkg/uzcore/external/g$c;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/external/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/external/g$c;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/g$c;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/external/g$c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x60000000
        -0x60000000
    .end array-data
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/g$c;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/g$c;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/external/g$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/external/g$c;->a(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/g$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
