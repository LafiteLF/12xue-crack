.class public Lcom/apicloud/a/i/a/k/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/apicloud/a/i/e<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/i/a/k/c<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "load"

    const-string v1, "setIndex"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/k/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/k/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/k/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/k/d;->a:Lcom/apicloud/a/i/a/k/c;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 2

    const-class v0, Lcom/apicloud/b/a/b;

    const-string v1, "frames"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/c/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/apicloud/a/i/a/k/e;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/apicloud/a/i/a/k/e;Ljava/lang/String;Z)V
    .locals 1

    invoke-interface {p2}, Lcom/apicloud/a/i/a/k/e;->a()Lcom/apicloud/b/a/g;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/k/d;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object p1

    new-instance v0, Lcom/apicloud/a/i/a/k/i;

    invoke-direct {v0, p1, p3}, Lcom/apicloud/a/i/a/k/i;-><init>(Lcom/apicloud/a/c/l;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/k/e;->a(Lcom/apicloud/b/a/g;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/apicloud/a/i/a/k/i;

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/k/i;->a(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 5

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "url"

    invoke-virtual {p2, v2, v1}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "scroll"

    invoke-virtual {p2, v3, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "reload"

    invoke-virtual {p2, v4, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1, v3, p2}, Lcom/apicloud/a/i/a/k/e;->a(ILjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/f/a/a;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/k/e;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/k/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/k/b;-><init>(Landroid/content/Context;)V

    :cond_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/k/d;->c(Landroid/view/View;)Lcom/apicloud/a/i/a/k/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, 0x32c4e6

    if-eq p4, v0, :cond_2

    const v0, 0x5326e990

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "setIndex"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/k/d;->b(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_2
    const-string p4, "load"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/k/d;->a(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "frame-group"

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "change"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/k/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/k/e;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)Lcom/apicloud/a/i/a/k/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/apicloud/a/i/a/k/c<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/k/d;->a:Lcom/apicloud/a/i/a/k/c;

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/k/d;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
