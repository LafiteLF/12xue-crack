.class public Lcom/apicloud/a/i/a/o/g;
.super Lcom/apicloud/a/i/a/o/h;


# instance fields
.field protected final a:Landroid/widget/EditText;

.field private b:Z

.field private final c:Ljava/lang/String;

.field private d:Lcom/apicloud/a/c/l;

.field private final e:Lcom/apicloud/a/h/b;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Lcom/apicloud/a/c/l;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/o/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/o/g;->b:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/g;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/apicloud/a/i/a/o/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/apicloud/a/i/a/o/g;->d:Lcom/apicloud/a/c/l;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/g;->e:Lcom/apicloud/a/h/b;

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/EditText;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/apicloud/a/c;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/apicloud/a/c;

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/o/g;->a(Z)V

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/ag/b;->b(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/o/g;->a(Z)V

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method protected a(Lcom/apicloud/a/i/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/g;->d:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/o/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/g;->a:Landroid/widget/EditText;

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/a/o/g;->a(Landroid/widget/EditText;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/o/g;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/o/g;->b:Z

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/o/g;->e:Lcom/apicloud/a/h/b;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/o/g;->a(Lcom/apicloud/a/i/c/d;)V

    :cond_1
    return-void
.end method
