.class public Lcom/apicloud/a/i/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/c/n;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a(Landroid/view/View;FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/c/n;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(F)F

    move-result v0

    invoke-static {p3}, Lcom/apicloud/a/g/h;->b(F)F

    move-result v1

    sub-float/2addr p4, p2

    invoke-static {p4}, Lcom/apicloud/a/g/h;->b(F)F

    move-result p2

    sub-float/2addr p5, p3

    invoke-static {p5}, Lcom/apicloud/a/g/h;->b(F)F

    move-result p3

    new-instance p4, Lcom/apicloud/a/i/c/d;

    invoke-direct {p4}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v0, "left"

    invoke-virtual {p4, v0, p5}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    const-string v0, "top"

    invoke-virtual {p4, v0, p5}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p5, "width"

    invoke-virtual {p4, p5, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p4, p3, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "resize"

    invoke-virtual {p1, p2, p4}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/c/n;Landroid/view/View;FFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/apicloud/a/i/c/n;->a(Landroid/view/View;FFFF)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9

    move v3, p2

    move v0, p6

    move v4, p3

    if-ne v3, v0, :cond_0

    move/from16 v0, p7

    move v5, p4

    if-ne v4, v0, :cond_1

    move/from16 v0, p8

    move v6, p5

    if-ne v5, v0, :cond_2

    move/from16 v0, p9

    if-eq v6, v0, :cond_3

    goto :goto_0

    :cond_0
    move v5, p4

    :cond_1
    move v6, p5

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/apicloud/a/i/c/n$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/apicloud/a/i/c/n$1;-><init>(Lcom/apicloud/a/i/c/n;Landroid/view/View;IIII)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    return-void
.end method
