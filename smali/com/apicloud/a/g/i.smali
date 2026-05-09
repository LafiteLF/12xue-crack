.class public Lcom/apicloud/a/g/i;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "casual"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "cursive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "serif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "monospace"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "sans"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "sans-serif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "sans-serif-condensed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "sans-serif-smallcaps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "sans-serif-monospace"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    const-string v1, "serif-monospace"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcom/apicloud/a/g/e/f;)I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/g/e/f;->b()Z

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/g/e/f;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    or-int/lit8 p0, v0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method public static final a(Landroid/view/View;)Lcom/apicloud/a/g/c/c;
    .locals 1

    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/g/c/c;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "sans-serif"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-object v0

    :cond_1
    aget-object v3, p0, v2

    sget-object v4, Lcom/apicloud/a/g/i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static final a(Landroid/view/View;Lcom/apicloud/a/g/c/c;)V
    .locals 1

    const v0, 0x7f040007

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 2

    sget v0, Lcom/apicloud/a/g/e/f;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;FZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/c/c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lcom/apicloud/a/g/c/c;->a(II)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;II)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const v1, -0x101009e

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    new-array v5, v3, [I

    aput v1, v5, v4

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v2, [[I

    aput-object v5, v1, v4

    new-array v5, v4, [I

    aput-object v5, v1, v3

    new-array v2, v2, [I

    aput p2, v2, v4

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    new-array v0, v3, [I

    aput v1, v0, v4

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    aput-object v0, v5, v4

    new-array v0, v4, [I

    aput-object v0, v5, v3

    new-array v0, v2, [I

    aput p2, v0, v4

    aput p1, v0, v3

    invoke-direct {v1, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/apicloud/a/g/e/f;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/g/i;->a(Lcom/apicloud/a/g/e/f;)I

    move-result v1

    invoke-static {p1}, Lcom/apicloud/a/g/i;->b(Lcom/apicloud/a/g/e/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/apicloud/a/g/e/f;->a()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/g/e/f;->a()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/widget/TextView;Lcom/apicloud/a/g/l;Z)V
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p1

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/c/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/a/g/c/c;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/apicloud/a/g/c/c;->a()I

    move-result v0

    invoke-static {p0, p1, v1, v0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;II)V
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/c/c;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/g/c/c;

    invoke-direct {p1}, Lcom/apicloud/a/g/c/c;-><init>()V

    invoke-static {p0, p1}, Lcom/apicloud/a/g/i;->a(Landroid/view/View;Lcom/apicloud/a/g/c/c;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/apicloud/a/g/c/c;->a(II)V

    invoke-virtual {p1}, Lcom/apicloud/a/g/c/c;->a()I

    move-result p2

    if-eq p3, p2, :cond_1

    invoke-virtual {p1, p3}, Lcom/apicloud/a/g/c/c;->a(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 p3, 0x12

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;ZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/g/i;->e(Landroid/widget/TextView;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-instance p3, Lcom/apicloud/a/g/c/b;

    invoke-direct {p3}, Lcom/apicloud/a/g/c/b;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    :cond_1
    invoke-static {p0, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/apicloud/a/g/i;->c(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    const-string v0, "bold"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private static b(Lcom/apicloud/a/g/e/f;)Ljava/lang/String;
    .locals 0

    const-string p0, "sans-serif"

    return-object p0
.end method

.method public static b(Landroid/widget/TextView;)V
    .locals 2

    sget v0, Lcom/apicloud/a/g/e/f;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x415553f8    # 13.333f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/c/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1, p1}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/a/g/c/c;->a()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/c/c;->a(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x62ce05cf

    if-eq v0, v1, :cond_1

    const v1, -0x4642c5d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    const-string v0, "oblique"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_1
    return-void
.end method

.method public static c(Landroid/widget/TextView;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/apicloud/a/g/i;->d(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_2
    const/16 v0, 0x2bc

    if-lt p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public static c(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/a/g/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/apicloud/a/g/c;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/g/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public static d(Landroid/widget/TextView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(TT;)Z"
        }
    .end annotation

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static e(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method
