.class public Lcom/apicloud/a/i/a/j/e;
.super Lcom/apicloud/a/i/a/aj/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/aj/a<",
        "Lcom/apicloud/a/i/a/j/b;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/apicloud/a/i/a/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "close"

    const-string v1, "show"

    const-string v2, "showModal"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/j/e;->a:[Ljava/lang/String;

    const-string v0, "returnValue"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/j/e;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aj/a;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/j/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/j/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/j/e;->c:Lcom/apicloud/a/i/a/j/c;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/j/b;Z)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/j/b;->a(Lcom/apicloud/a/i/a/j/a;)V

    return-void

    :cond_0
    new-instance p2, Lcom/apicloud/a/i/a/j/e$1;

    invoke-direct {p2, p0, p1}, Lcom/apicloud/a/i/a/j/e$1;-><init>(Lcom/apicloud/a/i/a/j/e;Lcom/apicloud/a/i/a/j/b;)V

    goto :goto_0
.end method

.method private b(Lcom/apicloud/a/i/a/j/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v0

    const-string v1, "dialog"

    const-string v2, "backdrop"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "background"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/high16 v0, -0x67000000

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/j/b;->a(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/j/e;->a(Lcom/apicloud/a/i/a/j/b;)Lcom/apicloud/a/i/a/j/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/j/b;)Lcom/apicloud/a/i/a/j/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/j/e;->c:Lcom/apicloud/a/i/a/j/c;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/j/e;->a(Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, -0x72727a50    # -8.72198E-31f

    if-eq p4, v0, :cond_4

    const v0, 0x35dafd

    if-eq p4, v0, :cond_2

    const v0, 0x5a5ddf8

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "close"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "js_parameters"

    const-string p4, ""

    invoke-virtual {p3, p2, p4}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/j/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, "show"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/j/b;->a()V

    goto :goto_0

    :cond_4
    const-string p3, "showModal"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/j/b;->b()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "dialog"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/j/e;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "close"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cancel"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aj/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/j/e;->a(Lcom/apicloud/a/i/a/j/b;Z)V

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "auto"

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "border"

    const-string v2, "1px solid #ccc"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "backgroundColor"

    const-string v2, "#FFFFFF"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/j/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/j/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/j/e;->b(Lcom/apicloud/a/i/a/j/b;)V

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/j/e;->a:[Ljava/lang/String;

    sget-object v1, Lcom/apicloud/a/i/a/j/e;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/i/c/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aj/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/j/e;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/j/b;

    move-result-object p1

    return-object p1
.end method
