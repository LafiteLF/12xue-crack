.class Lcom/uzmap/pkg/uzcore/f/b$b;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f/b;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/f/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b$b;->a:Lcom/uzmap/pkg/uzcore/f/b;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/f/b$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f/b$b;)Lcom/uzmap/pkg/uzcore/f/b;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/b$b;->a:Lcom/uzmap/pkg/uzcore/f/b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 14

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b$b;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x457

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v1, v3}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const-string v3, "\u6b64\u7248\u672c\u4e3a\u6d4b\u8bd5\u7248"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, -0x2

    invoke-static {v0, v4}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v7

    iget v7, v7, Lcom/uzmap/pkg/uzcore/z;->a:I

    const/4 v8, 0x4

    div-int/2addr v7, v8

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/f/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0xcccccd

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v1, v7}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const/16 v9, 0x458

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setId(I)V

    const-string v10, "\u4ec5\u4f9b\u5f00\u53d1\u8005\u8c03\u8bd5\u4f7f\u7528\uff0c\u4e0d\u5f97\u7528\u4e8e\u5546\u4e1a\u7528\u9014"

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0, v4}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v12

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/f/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1, v7}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const/16 v5, 0x8

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v5

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v5, "\u6b64\u7248\u672c\u4e3a\u5185\u90e8\u6d4b\u8bd5\u7248\u672c\uff0c\u8bf7\u8c28\u614e\u4e0b\u8f7d\u5b89\u88c5\u3002\n\n\u4efb\u4f55\u5229\u7528\u672cAPP\u4ece\u4e8b\u7684\u8fdd\u6cd5\u8fdd\u89c4\u884c\u4e3a\uff0c\u7531\u5f00\u53d1\u8005\u627f\u62c5\u4e00\u5207\u6cd5\u5f8b\u8d23\u4efb\uff01"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0, v4}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v5

    invoke-virtual {v5, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0x28

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v9

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v11, v10, [I

    sget v12, Lcom/deepe/c/b/c;->a:I

    const/4 v13, 0x0

    aput v12, v11, v13

    sget v12, Lcom/deepe/c/b/c;->a:I

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-direct {v5, v9, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v11

    const v12, -0x818182

    invoke-virtual {v5, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/f/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41b00000    # 22.0f

    invoke-static {v1, p1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const-string p1, "\u8fdb\u5165\u5e94\u7528"

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v2

    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v4, v4}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object p1

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v2, v10, [I

    fill-array-data v2, :array_0

    invoke-direct {p1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/f/b$b;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/f/b$b$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/f/b$b$1;-><init>(Lcom/uzmap/pkg/uzcore/f/b$b;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_0
    .array-data 4
        -0xa34b1c
        -0xa34b1c
    .end array-data
.end method
