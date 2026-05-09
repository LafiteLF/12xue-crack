.class public Lcom/apicloud/a/i/a/o/a;
.super Landroid/widget/EditText;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;
.implements Lcom/apicloud/a/i/a/g/k;
.implements Lcom/apicloud/a/i/c/f;


# instance fields
.field private a:I

.field private b:Ljava/lang/Integer;

.field private c:Lcom/apicloud/a/i/c/f$a;

.field private d:Z

.field private e:Z

.field private f:Lcom/apicloud/a/i/a/o/f;

.field private g:Lcom/apicloud/a/i/a/o/g;

.field private h:Lcom/apicloud/a/i/a/o/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/o/a;->b:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->a(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private e(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/o/a;->b:Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method protected a(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/i;->b(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/apicloud/a/i/a/o/a;->setPadding(IIII)V

    invoke-static {p0}, Lcom/apicloud/a/i/d/a;->b(Landroid/view/View;)V

    new-instance v1, Lcom/apicloud/a/i/a/o/f;

    invoke-direct {v1, p1}, Lcom/apicloud/a/i/a/o/f;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/o/a;->a(Lcom/apicloud/a/i/a/o/f;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setSingleLine(Z)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setGravity(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/o/a;->b(I)V

    const p1, 0x80001

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setInputType(I)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/o/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->h:Lcom/apicloud/a/i/a/o/d;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/o/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->f:Lcom/apicloud/a/i/a/o/f;

    invoke-super {p0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/o/g;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->g:Lcom/apicloud/a/i/a/o/g;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/c/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->c:Lcom/apicloud/a/i/c/f$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/o/a;->d:Z

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/g/i;->c(Landroid/widget/TextView;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Lcom/apicloud/a/i/c/l;

    invoke-direct {v2, v0, v1}, Lcom/apicloud/a/i/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/o/a;->a:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setImeOptions(I)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/o/d;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->h:Lcom/apicloud/a/i/a/o/d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->h:Lcom/apicloud/a/i/a/o/d;

    :cond_0
    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/o/g;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->g:Lcom/apicloud/a/i/a/o/g;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/a;->g:Lcom/apicloud/a/i/a/o/g;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->f:Lcom/apicloud/a/i/a/o/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/o/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/apicloud/a/i/a/o/b;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d()Lcom/apicloud/a/i/a/o/g;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->g:Lcom/apicloud/a/i/a/o/g;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/o/a;->e:Z

    return-void
.end method

.method public e()Lcom/apicloud/a/i/a/o/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->h:Lcom/apicloud/a/i/a/o/d;

    return-object v0
.end method

.method public f()Lcom/apicloud/a/i/a/o/f;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->f:Lcom/apicloud/a/i/a/o/f;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/o/a;->d:Z

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/a;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/apicloud/a/i/c/f$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->c:Lcom/apicloud/a/i/c/f$a;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/o/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/o/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/o/a$1;-><init>(Lcom/apicloud/a/i/a/o/a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/o/a;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p0, Lcom/apicloud/a/i/a/o/a;->a:I

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/apicloud/a/i/a/o/a;->a:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x10000000

    iget v3, p0, Lcom/apicloud/a/i/a/o/a;->a:I

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/a;->getSelectionEnd()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/a;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/a;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/a;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/a;->e(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[input]"

    return-object v0
.end method
