.class Lcom/uzmap/pkg/uzcore/i/b/b$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/i/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/b/b;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/b/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/i/b/b$b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/deepe/b;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    const v5, 0x80001

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->c:Landroid/widget/TextView;

    sget-object v6, Lcom/deepe/b;->ah:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    const v1, 0x80090

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/i/b/b$b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b$b;->e:Landroid/widget/EditText;

    return-object p0
.end method
