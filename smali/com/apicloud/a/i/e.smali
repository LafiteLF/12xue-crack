.class public abstract Lcom/apicloud/a/i/e;
.super Lcom/apicloud/a/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/apicloud/a/e/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private final b:Lcom/apicloud/a/b/a;

.field private c:Lcom/apicloud/a/i/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "touchstart"

    const-string v1, "touchmove"

    const-string v2, "touchend"

    const-string v3, "touchcancel"

    const-string v4, "longpress"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/e;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/e/i;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    new-instance v0, Lcom/apicloud/a/i/e/d;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/e/d;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/e;->c:Lcom/apicloud/a/i/e/d;

    new-instance p1, Lcom/apicloud/a/b/a;

    sget-object v0, Lcom/apicloud/a/i/e;->d:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/apicloud/a/b/a;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apicloud/a/i/e;->b:Lcom/apicloud/a/b/a;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {v3}, Lcom/apicloud/a/d;->c()Lcom/apicloud/a/e/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/apicloud/a/e/d;->a(Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/apicloud/a/e/b;->b(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/r;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/r;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->g()Lcom/apicloud/a/e/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->e()Lcom/apicloud/a/i/c/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/c/r;->a(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private c(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/e/j;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/apicloud/a/i/c/r;

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/c/r;

    const-class v1, Lcom/apicloud/a/i/c/q;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/r;->b(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/apicloud/a/i/c/q;

    iget-object v2, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/apicloud/a/i/c/q;-><init>(Lcom/apicloud/a/d/h;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/r;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/apicloud/a/i/c/r;

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/c/r;

    const-class v0, Lcom/apicloud/a/i/c/q;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/c/r;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/c/n;

    iget-object v1, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/c/n;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->g()Lcom/apicloud/a/e/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->g()Lcom/apicloud/a/e/a;

    move-result-object v1

    const-class v2, Lcom/apicloud/a/i/c/n;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/apicloud/a/c;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/c;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final a(Landroid/view/View;)Lcom/apicloud/a/c/l;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "bridge-object"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/e/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/c;",
            "Lcom/apicloud/a/c/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->g()Lcom/apicloud/a/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/e/a;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e;->b(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->b()Lcom/apicloud/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/apicloud/a/g/h;->a(Landroid/view/View;)Lcom/apicloud/a/g/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/apicloud/a/c;->a(Lcom/apicloud/a/c;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/e;->c:Lcom/apicloud/a/i/e/d;

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c;->b()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/e;->a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p1}, Lcom/apicloud/a/e/g;->a(Ljava/lang/Object;Lcom/apicloud/a/c;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->b(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/c;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/e;->a(Lcom/apicloud/a/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apicloud/a/i/e/j;->a(Landroid/view/View;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/apicloud/a/c/l;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->e(Ljava/lang/String;)Lcom/apicloud/a/c/l;

    move-result-object p1

    return-object p1
.end method

.method protected b()Lcom/apicloud/a/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/c;",
            "Lcom/apicloud/a/c/f;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1f194f7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getBoundingClientRect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/e;->a(Landroid/view/ViewGroup;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->f()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/e;->g()Lcom/apicloud/a/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/apicloud/a/i/c/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/apicloud/a/i/c;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/i/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/c/l;->a()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/apicloud/a/i/c/r;

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/c/r;

    invoke-static {p2, p3, p4, p1, v0}, Lcom/apicloud/a/i/c/o;->a(Landroid/view/View;Ljava/lang/String;ZLcom/apicloud/a/c/l;Lcom/apicloud/a/i/c/r;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/e;->b:Lcom/apicloud/a/b/a;

    invoke-virtual {v0, p3}, Lcom/apicloud/a/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/a/i/e;->b:Lcom/apicloud/a/b/a;

    invoke-virtual {v0, p3, p4}, Lcom/apicloud/a/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/apicloud/a/i/e;->b:Lcom/apicloud/a/b/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e;->b(Ljava/lang/String;)Lcom/apicloud/a/c/l;

    move-result-object v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/apicloud/a/b/a;->a(Ljava/lang/String;ZLcom/apicloud/a/c/l;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v0, "resize"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;->f(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    return-object v0
.end method

.method public final f()Lcom/apicloud/a/e/f;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/apicloud/a/e/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->d()Lcom/apicloud/a/e/a;

    move-result-object v0

    return-object v0
.end method
