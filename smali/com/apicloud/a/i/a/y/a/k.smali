.class public Lcom/apicloud/a/i/a/y/a/k;
.super Landroid/widget/TextView;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/k;->a(Z)V

    return-void
.end method

.method private a()V
    .locals 15

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a/k;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v4, Lcom/apicloud/a/i/a/y/a/j;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/apicloud/a/i/a/y/a/j;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a/k;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a/k;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a/k;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    move v4, v5

    :goto_0
    const/4 v6, 0x1

    if-lt v4, v2, :cond_3

    iput-boolean v6, p0, Lcom/apicloud/a/i/a/y/a/k;->a:Z

    invoke-super {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    if-le v2, v6, :cond_4

    add-int/lit8 v9, v2, -0x1

    if-lt v4, v9, :cond_4

    goto :goto_2

    :cond_4
    const-class v9, Landroid/text/style/ImageSpan;

    invoke-virtual {v3, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_5

    array-length v9, v9

    if-lez v9, :cond_5

    goto :goto_2

    :cond_5
    const-class v9, Lcom/apicloud/a/i/a/y/a/j;

    invoke-virtual {v3, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/apicloud/a/i/a/y/a/j;

    if-eqz v9, :cond_9

    array-length v10, v9

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    array-length v10, v9

    move v11, v5

    :goto_1
    if-lt v11, v10, :cond_7

    goto :goto_2

    :cond_7
    aget-object v12, v9, v11

    new-instance v13, Lcom/apicloud/a/i/a/y/a/a/d;

    int-to-float v14, v1

    invoke-direct {v13, v14}, Lcom/apicloud/a/i/a/y/a/a/d;-><init>(F)V

    invoke-virtual {v0, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/apicloud/a/i/a/y/a/a/d;->a(Z)V

    const/16 v14, 0x21

    invoke-virtual {v3, v13, v7, v8, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-lt v7, v14, :cond_8

    if-lt v8, v12, :cond_8

    invoke-virtual {v13, v6}, Lcom/apicloud/a/i/a/y/a/a/d;->b(Z)V

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    :goto_3
    return-void
.end method

.method static final a(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/apicloud/a/i/a/y/a/a/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/a/i/a/y/a/a/d;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final a(Z)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/k;->a()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/y/a/k;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/y/a/k;->a:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/k;->a()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/y/a/k;->a()V

    return-void
.end method
