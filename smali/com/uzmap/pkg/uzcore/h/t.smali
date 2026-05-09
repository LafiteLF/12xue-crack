.class public Lcom/uzmap/pkg/uzcore/h/t;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/t$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/uzmap/pkg/uzcore/ag;

.field private d:Lcom/uzmap/pkg/uzcore/h/t$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/t;->a:I

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/t;->b:I

    new-instance p1, Lcom/uzmap/pkg/uzcore/ag;

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/ag;-><init>(F)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/t;->c:Lcom/uzmap/pkg/uzcore/ag;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/t;)Lcom/uzmap/pkg/uzcore/h/t$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/h/t;->d:Lcom/uzmap/pkg/uzcore/h/t$a;

    return-object p0
.end method


# virtual methods
.method public a(Z)I
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->a:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->a:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->b()V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/t$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/t;->d:Lcom/uzmap/pkg/uzcore/h/t$a;

    return-void
.end method

.method public b(Z)I
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->b:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->b:I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->b:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->c:Lcom/uzmap/pkg/uzcore/ag;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/ag;->b()V

    return-void
.end method

.method public c(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->b()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/t;->b()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/t;->d:Lcom/uzmap/pkg/uzcore/h/t$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/t$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/uzmap/pkg/uzcore/h/t$1;-><init>(Lcom/uzmap/pkg/uzcore/h/t;IIII)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/t;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
