.class public Lcom/apicloud/a/g/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/text/style/AbsoluteSizeSpan;

.field private c:Landroid/text/style/ForegroundColorSpan;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/g/c/a;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Landroid/text/SpannableString;
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/apicloud/a/g/c/a;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/apicloud/a/g/c/a;->b:Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/apicloud/a/g/c/a;->a:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/g/c/a;->c:Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/apicloud/a/g/c/a;->a:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object v0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iput-object v0, p0, Lcom/apicloud/a/g/c/a;->b:Landroid/text/style/AbsoluteSizeSpan;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/c/a;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public b(I)V
    .locals 1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/g/c/a;->c:Landroid/text/style/ForegroundColorSpan;

    return-void
.end method
