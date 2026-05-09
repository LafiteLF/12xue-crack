.class public Lcom/uzmap/pkg/uzcore/h/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/d;->b(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/d;->a()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    return-void
.end method

.method public b(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/d;->a:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    if-lez v0, :cond_1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    return-void
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/d;->b:I

    return-void
.end method
