.class public Lcom/apicloud/a/i/a/o/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/o/a;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/o/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "focus"

    const-string v1, "blur"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/o/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/o/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/o/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/o/c;->a:Lcom/apicloud/a/i/a/o/b;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/o/a;->f()Lcom/apicloud/a/i/a/o/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/o/f;->a(Z)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->g()Lcom/apicloud/a/e/a;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/apicloud/a/i/a/o/g;

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/o/c;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object v1

    invoke-direct {p4, p2, p3, v1}, Lcom/apicloud/a/i/a/o/g;-><init>(Landroid/widget/EditText;Ljava/lang/String;Lcom/apicloud/a/c/l;)V

    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/o/a;->a(Lcom/apicloud/a/i/a/o/g;)V

    invoke-virtual {v0, p1, p4}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class p3, Lcom/apicloud/a/i/a/o/g;

    invoke-virtual {v0, p1, p3}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/o/g;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/o/a;->b(Lcom/apicloud/a/i/a/o/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/o/a;->e()Lcom/apicloud/a/i/a/o/d;

    move-result-object p1

    if-eqz p4, :cond_0

    new-instance p3, Lcom/apicloud/a/i/a/o/d;

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/o/c;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lcom/apicloud/a/i/a/o/d;-><init>(Landroid/widget/EditText;Lcom/apicloud/a/c/l;)V

    invoke-virtual {p2, p3}, Lcom/apicloud/a/i/a/o/a;->a(Lcom/apicloud/a/i/a/o/d;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/deepe/c/a/f;->a(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/o/a;->b(Lcom/apicloud/a/i/a/o/d;)V

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->d()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/deepe/c/a/f;->b(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/o/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/c;->a(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/a/o/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/a/o/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/o/c;->a:Lcom/apicloud/a/i/a/o/b;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->a(Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const p4, 0x2e3067

    if-eq p3, p4, :cond_2

    const p4, 0x5d154d8

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "focus"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/o/b;->a(Lcom/apicloud/a/i/a/o/a;Z)V

    goto :goto_0

    :cond_2
    const-string p3, "blur"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->e()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/a/d;->e()Lcom/apicloud/a/i/c/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "input"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p3}, Lcom/apicloud/a/i/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->c(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "confirm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string v0, "keyboardheightchange"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->d(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/o/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/o/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/o/c;->b(Lcom/apicloud/a/i/a/o/a;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/o/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->e()Lcom/apicloud/a/i/c/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/c/g;->a(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->e()Lcom/apicloud/a/i/a/o/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/o/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/o/a;->e()Lcom/apicloud/a/i/a/o/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/c/a/f;->b(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/o/c;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
