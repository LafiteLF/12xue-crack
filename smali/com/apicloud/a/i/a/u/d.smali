.class public Lcom/apicloud/a/i/a/u/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/u/b;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/u/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "setData"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/u/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/u/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/u/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/d;->a:Lcom/apicloud/a/i/a/u/c;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/d;->a:Lcom/apicloud/a/i/a/u/c;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/u/b;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/u/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/d;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/u/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/b;->a(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/u/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/u/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/d;->a(Lcom/apicloud/a/i/a/u/b;)Lcom/apicloud/a/i/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/u/b;)Lcom/apicloud/a/i/a/u/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/d;->a:Lcom/apicloud/a/i/a/u/c;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/u/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/u/d;->a(Lcom/apicloud/a/i/a/u/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/u/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, 0x76491f2c

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "setData"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/u/d;->a(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "select"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/u/b;
    .locals 2

    new-instance p1, Lcom/apicloud/a/i/a/u/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/u/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/d;->b(Lcom/apicloud/a/i/a/u/b;)V

    new-instance v0, Lcom/apicloud/a/i/a/u/e;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/d;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/u/e;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/b;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/u/d;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
