.class public Lcom/apicloud/a/i/a/ad/l;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/ad/j;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ad/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "load"

    const-string v1, "insert"

    const-string v2, "remove"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/ad/l;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ad/k;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ad/k;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/l;->a:Lcom/apicloud/a/i/a/ad/k;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/ad/j;->a(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "count"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/ad/j;->a(II)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/l;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ad/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/l;->a(Lcom/apicloud/a/i/a/ad/j;)Lcom/apicloud/a/i/a/ad/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ad/j;)Lcom/apicloud/a/i/a/ad/k;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/l;->a:Lcom/apicloud/a/i/a/ad/k;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ad/l;->a(Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, -0x468f3d47

    if-eq p4, v0, :cond_4

    const v0, -0x37b5077c

    if-eq p4, v0, :cond_2

    const v0, 0x32c4e6

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "load"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/ad/l;->a(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_2
    const-string p4, "remove"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/ad/l;->c(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_4
    const-string p4, "insert"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/ad/l;->b(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "swiper"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/l;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/ad/j;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ad/l;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/ad/j;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f6ac1ab

    if-eq v0, v1, :cond_2

    const v1, -0x66c492ab

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "transition"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ad/j;->g(Z)V

    return-void

    :cond_2
    const-string v0, "itemclick"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :cond_3
    if-eqz p4, :cond_4

    new-instance p1, Lcom/apicloud/a/i/a/ad/e;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/l;->e()Lcom/apicloud/a/d;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/apicloud/a/i/a/ad/e;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/ad/j;->a(Lcom/apicloud/a/i/a/r/u;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ad/j;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/l;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ad/j;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/l;->b(Lcom/apicloud/a/i/a/ad/j;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ad/j;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ad/j;->i()V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/ad/l;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
