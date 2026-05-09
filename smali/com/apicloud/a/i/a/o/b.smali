.class public Lcom/apicloud/a/i/a/o/b;
.super Lcom/apicloud/a/i/a/ag/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/o/a;",
        ">",
        "Lcom/apicloud/a/i/a/ag/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ag/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method static a(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/a/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/o/a;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getInputType()I

    move-result v0

    not-int p2, p2

    and-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->a(I)V

    return-void
.end method

.method static a(Lcom/apicloud/a/i/a/o/a;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/i/a/o/b;->a(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/i/a/o/b;->b(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/o/a;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/o/b;->b(Lcom/apicloud/a/i/a/o/a;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;I)V

    :goto_0
    return-void
.end method

.method private a(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static b(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->clearFocus()V

    :cond_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/o/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/o/a;->setSingleLine(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/o/a;->b(I)V

    const v0, 0x80001

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/o/a;->setInputType(I)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/o/a;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getInputType()I

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->a(I)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getInputType()I

    move-result p1

    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/o/b;->a(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getInputType()I

    move-result p1

    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/o/b;->a(II)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->i()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/o/b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "password"

    return-object p1

    :cond_0
    const-string p1, "text"

    return-object p1
.end method

.method private f(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->i()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/i/a/o/e;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p1}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->d()Lcom/apicloud/a/i/a/o/g;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/o/g;->a(Z)V

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/o/b;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/o/g;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/o/b;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->h()Lcom/apicloud/a/i/c/f$a;

    move-result-object v0

    sget-object v1, Lcom/apicloud/a/i/c/f$a;->a:Lcom/apicloud/a/i/c/f$a;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->h()Lcom/apicloud/a/i/c/f$a;

    move-result-object p1

    sget-object v0, Lcom/apicloud/a/i/c/f$a;->b:Lcom/apicloud/a/i/c/f$a;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private h(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "maxlength"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "autoCorrect"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;ZI)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const/high16 v0, 0x80000

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;ZI)V

    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "autoCapitalize"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;ZI)V

    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "auto-focus"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "autofocus"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->d(Z)V

    :cond_1
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "hold-keyboard"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->a(Z)V

    :cond_0
    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->b(Lcom/apicloud/a/i/a/o/a;)V

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x36452d

    if-eq v0, v1, :cond_2

    const v1, 0x4889ba9b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const p2, 0x80090

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->a(I)V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_2
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    return-void

    :cond_3
    const p2, 0x80001

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->a(I)V

    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "keyboard-type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "keyboardType"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->i()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;I)V

    :cond_2
    invoke-static {p2}, Lcom/apicloud/a/i/a/o/e;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->b(Lcom/apicloud/a/i/a/o/a;I)V

    :cond_3
    return-void
.end method

.method private o(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "confirm-type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "confirmType"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/apicloud/a/i/a/o/e;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->b(I)V

    return-void
.end method

.method private p(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "confirm-hold"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "confirmHold"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->b(Z)V

    return-void
.end method

.method private q(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "adjust-position"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->c(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getSelectionStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getSelectionEnd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "keyboard-type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "keyboardType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->f(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "maxlength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->g(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->e(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v0, "autoCorrect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->c(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "focused"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->h(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_6
    const-string v0, "autoCapitalize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/b;->d(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_7
    const-string v0, "selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/ag/b;->a(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66478e74 -> :sswitch_7
        -0x4fd7d605 -> :sswitch_6
        -0x29307489 -> :sswitch_5
        -0x19fb9045 -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x76f454a -> :sswitch_2
        0xc742bc1 -> :sswitch_1
        0x7fe99560 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Landroid/widget/TextView;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/ag/b;->a(Landroid/widget/TextView;Lcom/apicloud/a/c;)V

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "keyboard-type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :sswitch_1
    const-string v2, "confirm-type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v2, "confirm-hold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :sswitch_3
    const-string v2, "autofocus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :sswitch_4
    const-string v2, "adjust-position"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->q(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "selection-start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->e(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "selection-end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->f(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "confirmType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->o(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_8
    const-string v2, "confirmHold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->p(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_9
    const-string v2, "keyboardType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->n(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "maxlength"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->h(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->g(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_c
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->m(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "autoCorrect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->i(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "focused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;Z)V

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "autoCapitalize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->j(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "cursor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->c(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "auto-focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->k(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "hold-keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->l(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->d(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66478e74 -> :sswitch_13
        -0x598516cb -> :sswitch_12
        -0x586df8c6 -> :sswitch_11
        -0x5069ecaa -> :sswitch_10
        -0x4fd7d605 -> :sswitch_f
        -0x29307489 -> :sswitch_e
        -0x19fb9045 -> :sswitch_d
        0x368f3a -> :sswitch_c
        0x6ac9171 -> :sswitch_b
        0x76f454a -> :sswitch_a
        0xc742bc1 -> :sswitch_9
        0x1481ef9f -> :sswitch_8
        0x14878a1a -> :sswitch_7
        0x3de2c91a -> :sswitch_6
        0x511cf0e1 -> :sswitch_5
        0x5dd4f5a7 -> :sswitch_4
        0x6365ac89 -> :sswitch_3
        0x7a3c67ac -> :sswitch_2
        0x7a420227 -> :sswitch_1
        0x7fe99560 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic b(Landroid/widget/TextView;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/o/b;->b(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method protected b(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    if-eq v0, v1, :cond_4

    const v1, 0x32a007

    if-eq v0, v1, :cond_2

    const v1, 0x677c21c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x15

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->setGravity(I)V

    return-void

    :cond_2
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x13

    goto :goto_0

    :cond_4
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_1
    return-void

    :cond_5
    const/16 p2, 0x11

    goto :goto_0
.end method

.method protected c(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/o/a;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected d(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "selection"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/o/a;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "selection-start"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/o/a;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected f(Lcom/apicloud/a/i/a/o/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "selection-end"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->getSelectionStart()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/o/a;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method
