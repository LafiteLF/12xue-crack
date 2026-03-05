.class Lcom/uzmap/pkg/b/b/j$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ScrollView;

.field final synthetic c:Lcom/uzmap/pkg/b/b/j;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/b/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/j$a;->c:Lcom/uzmap/pkg/b/b/j;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    invoke-static {p1, p1}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/j$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/b/j$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/j$a;)Lcom/uzmap/pkg/b/b/j;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/j$a;->c:Lcom/uzmap/pkg/b/b/j;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/j$a;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v3, v5}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const/4 v6, 0x5

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v6

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v6, "Javascript Error"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/uzmap/pkg/b/b/j$a;->c:Lcom/uzmap/pkg/b/b/j;

    invoke-static {v6}, Lcom/uzmap/pkg/b/b/j;->a(Lcom/uzmap/pkg/b/b/j;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v1, v2}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/uzmap/pkg/b/b/j$a;->b:Landroid/widget/ScrollView;

    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v7, p0, Lcom/uzmap/pkg/b/b/j$a;->b:Landroid/widget/ScrollView;

    invoke-virtual {v7, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v3, v7}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v3

    iget-object v7, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    const/high16 v7, -0x10000

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/j$a;->b:Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/j$a;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/uzmap/pkg/b/b/j$a;->c:Lcom/uzmap/pkg/b/b/j;

    invoke-virtual {v7}, Lcom/uzmap/pkg/b/b/j;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x28

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v5}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    sget-object v5, Lcom/deepe/b;->aj:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v4

    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    const v4, -0xffff01

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1, v2}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/uzmap/pkg/b/b/j$a$2;

    invoke-direct {v4, p0}, Lcom/uzmap/pkg/b/b/j$a$2;-><init>(Lcom/uzmap/pkg/b/b/j$a;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    const-string v5, "\u8fd0\u884c\u671f\u95f4\n\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    iget-object v4, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setGravity(I)V

    invoke-static {v2, v1}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    const/4 v4, 0x3

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p1, -0x333334

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 p1, 0x2

    invoke-static {v1, p1}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/uzmap/pkg/b/b/j$a$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/b/b/j$a$1;-><init>(Lcom/uzmap/pkg/b/b/j$a;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/j$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$a;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
