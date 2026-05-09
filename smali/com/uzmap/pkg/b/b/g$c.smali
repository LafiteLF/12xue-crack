.class Lcom/uzmap/pkg/b/b/g$c;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/EditText;

.field public c:Z

.field final synthetic d:Lcom/uzmap/pkg/b/b/g;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/b/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/g$c;->d:Lcom/uzmap/pkg/b/b/g;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/b/g$c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(II)Landroid/graphics/drawable/PaintDrawable;
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/g$c;)Lcom/uzmap/pkg/b/b/g;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/g$c;->d:Lcom/uzmap/pkg/b/b/g;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v5

    const/16 v6, 0xf

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v7

    const/16 v8, 0x18

    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v9

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v6

    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v10

    invoke-virtual {v2, v7, v9, v6, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/16 v6, 0x14

    invoke-direct {v0, v6, v4}, Lcom/uzmap/pkg/b/b/g$c;->a(II)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/b/b/g$c;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    const-string v7, "WIFI\u771f\u673a\u540c\u6b65\u914d\u7f6e"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v5, v7}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const v7, -0xe3e3d8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/deepe/c/k/j;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Lcom/uzmap/pkg/b/b/g$c$1;

    invoke-direct {v11, v0}, Lcom/uzmap/pkg/b/b/g$c$1;-><init>(Lcom/uzmap/pkg/b/b/g$c;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/EditText;

    invoke-direct {v9, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setId(I)V

    iget-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v9, v11}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    const-string v13, "\u8bf7\u8f93\u5165\u5f00\u53d1\u5de5\u5177\u4e2d\u5c55\u793a\u7684IP\u5730\u5740"

    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v13

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v14

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v15

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v12

    invoke-virtual {v9, v13, v14, v15, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    const/16 v12, 0x13

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v9, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setTextColor(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v8

    iput v8, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v9, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    const v9, -0xa0909

    const/16 v13, 0xc

    invoke-direct {v0, v13, v9}, Lcom/uzmap/pkg/b/b/g$c;->a(II)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setId(I)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-static {v5, v11}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    const-string v11, "\u8bf7\u8f93\u5165\u5f00\u53d1\u5de5\u5177\u4e2d\u5c55\u793a\u7684\u7aef\u53e3"

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v11

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v14

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v6

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v10

    invoke-virtual {v5, v11, v14, v6, v10}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setTextColor(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v13}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-direct {v0, v13, v9}, Lcom/uzmap/pkg/b/b/g$c;->a(II)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getId()I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v3, v6}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const-string v3, "\u626b\u4e00\u626b"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/b/b/g$c;->d()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x2e

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/uzmap/pkg/b/b/g$c$2;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/b/b/g$c$2;-><init>(Lcom/uzmap/pkg/b/b/g$c;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-static {v1, v6}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const-string v1, "\u8fde\u63a5"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x17

    const v3, -0x98a7

    invoke-direct {v0, v1, v3}, Lcom/uzmap/pkg/b/b/g$c;->a(II)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v3

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/uzmap/pkg/b/b/g$c$3;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/b/b/g$c$3;-><init>(Lcom/uzmap/pkg/b/b/g$c;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()Landroid/graphics/drawable/ShapeDrawable;
    .locals 13

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    const/16 v1, 0x8

    new-array v2, v1, [F

    int-to-float v0, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v5, 0x2

    aput v0, v2, v5

    const/4 v6, 0x3

    aput v0, v2, v6

    const/4 v7, 0x4

    aput v0, v2, v7

    const/4 v8, 0x5

    aput v0, v2, v8

    const/4 v9, 0x6

    aput v0, v2, v9

    const/4 v10, 0x7

    aput v0, v2, v10

    new-instance v11, Landroid/graphics/RectF;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v11, v12, v12, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v1, v1, [F

    aput v0, v1, v3

    aput v0, v1, v4

    aput v0, v1, v5

    aput v0, v1, v6

    aput v0, v1, v7

    aput v0, v1, v8

    aput v0, v1, v9

    aput v0, v1, v10

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v11, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x9f9f93

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/g$c;->c:Z

    return v0
.end method

.method public b()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/g$c;->c:Z

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/b/b/g$c$4;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/b/b/g$c$4;-><init>(Lcom/uzmap/pkg/b/b/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/g$c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/g$c;->c:Z

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/b/b/g$c$5;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/b/b/g$c$5;-><init>(Lcom/uzmap/pkg/b/b/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/g$c;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
