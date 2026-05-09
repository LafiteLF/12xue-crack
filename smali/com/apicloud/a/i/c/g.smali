.class public Lcom/apicloud/a/i/c/g;
.super Lcom/apicloud/a/i/c/m;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private b:Lcom/deepe/c/a/i;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/c/m;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/c/g;->b:Lcom/deepe/c/a/i;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/a/i/c/f$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/c/f;

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/c/f;->a(Lcom/apicloud/a/i/c/f$a;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-static {v0, p1, p2, p3}, Lcom/apicloud/a/g/b/b;->a(Lcom/apicloud/a/d;Landroid/view/View;ZI)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->e(Ljava/lang/String;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const v1, 0x101009c

    invoke-direct {p0, p1, p2, v1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;ZI)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/apicloud/a/i/c/f$a;->b:Lcom/apicloud/a/i/c/f$a;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/apicloud/a/i/c/f$a;->a:Lcom/apicloud/a/i/c/f$a;

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;Lcom/apicloud/a/i/c/f$a;)V

    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p2, "focus"

    goto :goto_1

    :cond_1
    const-string p2, "blur"

    :goto_1
    invoke-virtual {v0, p2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;Lcom/apicloud/a/i/c/f$a;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/apicloud/a/i/c/g;->b()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/c/g;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, v0, Lcom/apicloud/a/i/a/o/a;

    if-eqz p1, :cond_0

    check-cast v0, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/o/a;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v3
.end method

.method private b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    const-class v2, Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/apicloud/a/c/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/c/g;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0}, Lcom/apicloud/a/i/c/g;->b()Landroid/view/View;

    move-result-object v3

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/c/g;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/c/g;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/c/g;->c()V

    return-void

    :cond_0
    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->c(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/c/g;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    return-void

    :cond_3
    iput-object v1, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/apicloud/a/i/c/g;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/c/g;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/c/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->o()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->b:Lcom/deepe/c/a/i;

    iget-object v1, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->o()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/a/i/c/f;

    return p1
.end method

.method private d(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/c/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/l;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/c/g;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/apicloud/a/i/c/g;->c()V

    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const v1, 0x10100a7

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/apicloud/a/i/c/g;->d:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v2, v1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;ZI)V

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;ZI)V

    :cond_1
    iget-object p2, p0, Lcom/apicloud/a/i/c/g;->e:Landroid/view/View;

    if-eq p2, p1, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/g;->b(Landroid/view/View;)V

    :cond_2
    iput-object p1, p0, Lcom/apicloud/a/i/c/g;->e:Landroid/view/View;

    :cond_3
    return v0
.end method
