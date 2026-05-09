.class public Lcom/apicloud/a/i/a/aa/i;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/aa/f;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/aa/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "scrollTo"

    const-string v1, "scrollToX"

    const-string v2, "scrollToY"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/aa/i;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/aa/g;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/aa/g;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/aa/i;->a:Lcom/apicloud/a/i/a/aa/g;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 4

    const-string v0, "animated"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/aa/f;->a(Z)V

    const-string v1, "position"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/aa/i;->c(Ljava/lang/String;)I

    move-result p2

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/aa/g;->c(Lcom/apicloud/a/i/a/aa/f;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->f(I)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "view"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/i;->a:Lcom/apicloud/a/i/a/aa/g;

    invoke-virtual {p2, p1, v1, v0}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const-string v2, "x"

    invoke-virtual {p2, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v2

    float-to-int v2, v2

    const-string v3, "y"

    invoke-virtual {p2, v3, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p2

    float-to-int p2, p2

    if-eqz v0, :cond_3

    invoke-static {p1, v2, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2, p2}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    :goto_1
    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/aa/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/k;->a(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/k;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->c()Lcom/apicloud/a/i/a/aa/k;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/aa/k;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/i;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/aa/k;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/aa/f;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/k;)V

    :cond_0
    return-object v0
.end method

.method private b(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "x"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "animated"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->a(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/aa/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/k;->b(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x6262b01

    const/16 v2, 0x82

    if-eq v0, v1, :cond_2

    const v1, 0x6a558a2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "upper"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x21

    return p1

    :cond_2
    const-string v0, "lower"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_3
    :goto_0
    return v2
.end method

.method private c(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/c;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->d()Lcom/apicloud/a/i/a/aa/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/aa/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/i;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/aa/c;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/x/c;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/c;)V

    :cond_0
    return-object v0
.end method

.method private c(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "y"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "animated"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->a(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/aa/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/k;->c(Z)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/aa/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->c(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/c;->a(Z)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/aa/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->c(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/c;->b(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aa/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/i;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/g;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/i;->a:Lcom/apicloud/a/i/a/aa/g;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aa/i;->a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "scrollToY"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/aa/i;->c(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string p4, "scrollToX"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string p4, "scrollTo"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/aa/i;->a(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x17f88dd8 -> :sswitch_2
        0x18e6d330 -> :sswitch_1
        0x18e6d331 -> :sswitch_0
    .end sparse-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "scroll-view"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aa/i;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "scrolltoupper"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/aa/i;->c(Lcom/apicloud/a/i/a/aa/f;Z)V

    return-void

    :sswitch_1
    const-string v0, "scrolltolower"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/aa/i;->b(Lcom/apicloud/a/i/a/aa/f;Z)V

    return-void

    :sswitch_2
    const-string v0, "refresherrestore"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/aa/i;->e(Lcom/apicloud/a/i/a/aa/f;Z)V

    return-void

    :sswitch_3
    const-string v0, "refresherrefresh"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/aa/i;->d(Lcom/apicloud/a/i/a/aa/f;Z)V

    return-void

    :sswitch_4
    const-string v0, "scroll"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/aa/i;->a(Lcom/apicloud/a/i/a/aa/f;Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x361a1933 -> :sswitch_4
        0x46ddcd13 -> :sswitch_3
        0x47960cc6 -> :sswitch_2
        0x73ff39f9 -> :sswitch_1
        0x747e679a -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aa/f;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/aa/f;

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/i;->a:Lcom/apicloud/a/i/a/aa/g;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/aa/f;-><init>(Lcom/apicloud/a/i/a/aa/g;)V

    const-string v1, "scroll-x"

    invoke-virtual {p1, v1}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/f;->n(I)V

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/aa/i;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
