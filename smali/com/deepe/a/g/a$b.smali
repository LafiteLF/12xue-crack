.class Lcom/deepe/a/g/a$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ScrollView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;F)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a$b;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/g/a$b;->a(Landroid/content/Context;F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;FLcom/deepe/a/g/a$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/g/a$b;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/content/Context;F)V
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v6, 0xf

    invoke-static {v6}, Lcom/deepe/a/g/a;->a(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a$b;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    const v7, -0xeeeeef

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    const/16 v8, 0x1f4

    invoke-static {v2, v8}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v2, v8}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    sget-object v9, Lcom/deepe/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/deepe/a/g/a;->a(I)I

    move-result v10

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    const/16 v10, 0x2d

    invoke-static {v10}, Lcom/deepe/a/g/a;->a(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v5, 0xa

    invoke-static {v5}, Lcom/deepe/a/g/a;->a(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v9}, Lcom/deepe/a/g/a;->a(I)I

    move-result v2

    invoke-static {v6}, Lcom/deepe/a/g/a;->a(I)I

    move-result v5

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v6, v9}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v10, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    invoke-virtual {v10, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-static {v1, p2}, Lcom/deepe/a/g/a;->b(ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-static {v6, v9}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v5, -0xf0f10

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x1e

    invoke-static {v7}, Lcom/deepe/a/g/a;->a(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    invoke-static {p2}, Lcom/deepe/a/g/a;->c(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    invoke-static {v0, v8}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    sget-object v7, Lcom/deepe/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    invoke-static {v0}, Lcom/deepe/a/g/a;->a(Landroid/widget/Button;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a$b;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, p0, Lcom/deepe/a/g/a$b;->h:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    invoke-static {v6, p2}, Lcom/deepe/a/g/a;->a(ZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    const v6, -0xf56674

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    invoke-static {v0, v8}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    sget-object v6, Lcom/deepe/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    invoke-static {v0}, Lcom/deepe/a/g/a;->a(Landroid/widget/Button;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v6, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a$b;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/deepe/a/g/a$b;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->i:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    invoke-static {p2}, Lcom/deepe/a/g/a;->d(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    const p2, -0xa8946b

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    invoke-static {p1, v8}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    sget-object p2, Lcom/deepe/b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    invoke-static {p1}, Lcom/deepe/a/g/a;->a(Landroid/widget/Button;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p2, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->f:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic c(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->e:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic d(Lcom/deepe/a/g/a$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/deepe/a/g/a$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/deepe/a/g/a$b;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Lcom/deepe/a/g/a$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a$b;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/deepe/a/g/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/a/g/a$b;->k:Z

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepe/a/g/a$b;->k:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/a/g/a$b;->c:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/g/a$b;->k:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/g/a$b;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public c()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a$b;->g:Landroid/widget/EditText;

    return-object v0
.end method
