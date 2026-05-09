.class public Lcom/apicloud/a/i/a/ab/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/ab/a;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ab/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "stepUp"

    const-string v1, "stepDown"

    const-string v2, "getValue"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/ab/d;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ab/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ab/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ab/d;->a:Lcom/apicloud/a/i/a/ab/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ab/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ab/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ab/d;->a(Lcom/apicloud/a/i/a/ab/a;)Lcom/apicloud/a/i/a/ab/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ab/a;)Lcom/apicloud/a/i/a/ab/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ab/d;->a:Lcom/apicloud/a/i/a/ab/b;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ab/d;->a(Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, -0x35307179    # -6801219.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "js_parameters"

    if-eq p4, v0, :cond_4

    const v0, 0x551e598e

    if-eq p4, v0, :cond_2

    const p3, 0x754a37bb

    if-eq p4, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "getValue"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ab/a;->d()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p4, "stepDown"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->f(I)V

    goto :goto_0

    :cond_4
    const-string p4, "stepUp"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p3, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->e(I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "slider"

    return-object v0
.end method

.method protected a(Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ab/a;->e()Lcom/apicloud/a/i/a/ab/c;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5128ec50

    if-eq v0, v1, :cond_2

    const v1, 0x5561046d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "changing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Lcom/apicloud/a/i/a/ab/c;->b(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "change"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p3}, Lcom/apicloud/a/i/a/ab/c;->a(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/ab/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ab/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ab/d;->a(Lcom/apicloud/a/i/a/ab/a;)Lcom/apicloud/a/i/a/ab/b;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/apicloud/a/i/a/ab/b;->a(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    invoke-virtual {p3, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/apicloud/a/i/a/ab/d;->a(Lcom/apicloud/a/i/a/ab/a;Ljava/lang/String;Z)V

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

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ab/a;
    .locals 2

    new-instance p1, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ab/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ab/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/apicloud/a/i/a/ab/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ab/d;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ab/c;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ab/a;->a(Lcom/apicloud/a/i/a/ab/c;)V

    return-object p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/ab/d;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/i/c/h;

    move-result-object v0

    return-object v0
.end method
