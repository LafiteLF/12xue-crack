.class Lcom/apicloud/a/i/a/y/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/a$b;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Lcom/apicloud/a/i/a/y/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/y/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/e;->b:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/y/a/e;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/y/a/e;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private static a(FF)Lcom/deepe/c/c/ad;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ad;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Landroid/graphics/drawable/Drawable;FFI)Lcom/deepe/c/c/ad;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/e;->b(Landroid/graphics/drawable/Drawable;FFI)Lcom/deepe/c/c/ad;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/widget/TextView;Lcom/apicloud/a/i/a/y/a/i;Lcom/deepe/c/c/ad;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/e;->b(Landroid/widget/TextView;Lcom/apicloud/a/i/a/y/a/i;Lcom/deepe/c/c/ad;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/y/a/e;Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/e;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/apicloud/a/i/a/y/a/e$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apicloud/a/i/a/y/a/e$2;-><init>(Lcom/apicloud/a/i/a/y/a/e;Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/graphics/drawable/Drawable;FFI)Lcom/deepe/c/c/ad;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    int-to-float v1, p3

    mul-float/2addr p1, v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    if-le v1, p3, :cond_1

    int-to-float p2, p3

    int-to-float v2, p0

    int-to-float v3, v1

    div-float/2addr v2, v3

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    int-to-float p2, v1

    int-to-float v2, p0

    :goto_0
    move v4, v2

    move v2, p2

    move p2, v4

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    cmpg-float v3, p2, v0

    if-gez v3, :cond_4

    cmpl-float p2, p1, v0

    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    int-to-float p1, p3

    :goto_2
    int-to-float p0, p0

    int-to-float p2, v1

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p2, p0

    :cond_4
    new-instance p0, Lcom/deepe/c/c/ad;

    invoke-direct {p0, v2, p2}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0
.end method

.method private static b(Landroid/widget/TextView;Lcom/apicloud/a/i/a/y/a/i;Lcom/deepe/c/c/ad;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    instance-of v2, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ImageSpan;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    if-eqz v3, :cond_b

    array-length v4, v3

    if-nez v4, :cond_3

    goto :goto_6

    :cond_3
    move v4, v5

    :goto_1
    array-length v6, v3

    if-lt v4, v6, :cond_4

    goto :goto_5

    :cond_4
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-ne v7, p1, :cond_a

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_5

    add-int/lit8 v3, p1, -0x1

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    const v4, 0xfffc

    const/4 v6, 0x1

    if-ne v3, v4, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    iget v7, p2, Lcom/deepe/c/c/ad;->a:F

    add-float/2addr v0, v7

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_7

    move v0, v6

    goto :goto_4

    :cond_7
    move v0, v5

    :goto_4
    iget p2, p2, Lcom/deepe/c/c/ad;->a:F

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_8

    move v5, v6

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    const/16 p2, 0xa

    if-eq v3, p2, :cond_9

    sget-object p2, Lcom/apicloud/a/i/a/y/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9
    :goto_5
    invoke-static {v1}, Lcom/apicloud/a/i/a/y/a/k;->a(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FF)Landroid/graphics/drawable/Drawable;
    .locals 9

    new-instance v6, Lcom/apicloud/a/i/a/y/a/i;

    invoke-direct {v6, p1}, Lcom/apicloud/a/i/a/y/a/i;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/apicloud/a/i/a/y/a/e;->a(FF)Lcom/deepe/c/c/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v0}, Lcom/apicloud/a/i/a/y/a/i;->a(Lcom/deepe/c/c/ad;)V

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/e;->c:Lcom/apicloud/a/i/a/y/a/c;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/y/a/c;->a()I

    move-result v4

    iget-object v7, p0, Lcom/apicloud/a/i/a/y/a/e;->c:Lcom/apicloud/a/i/a/y/a/c;

    new-instance v8, Lcom/apicloud/a/i/a/y/a/e$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/a/y/a/e$1;-><init>(Lcom/apicloud/a/i/a/y/a/e;FFILcom/apicloud/a/i/a/y/a/i;)V

    invoke-interface {v7, p1, v8}, Lcom/apicloud/a/i/a/y/a/c;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/c$a;)V

    :cond_2
    :goto_0
    return-object v6
.end method

.method public a(Lcom/apicloud/a/i/a/y/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/e;->c:Lcom/apicloud/a/i/a/y/a/c;

    return-void
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0, v0}, Lcom/apicloud/a/i/a/y/a/e;->a(Ljava/lang/String;FF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
