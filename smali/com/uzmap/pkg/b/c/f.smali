.class public Lcom/uzmap/pkg/b/c/f;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/c/f;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/c/f;)I
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/b/c/f;->b:I

    return p0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/c/f;I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/b/c/f;->a:I

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/c/f;)I
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/b/c/f;->a:I

    return p0
.end method

.method private b(I)V
    .locals 1

    if-nez p1, :cond_0

    const p1, -0xba3fe6

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/c/f;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    iput v0, p0, Lcom/uzmap/pkg/b/c/f;->a:I

    iput v0, p0, Lcom/uzmap/pkg/b/c/f;->b:I

    new-instance p1, Lcom/uzmap/pkg/b/c/f$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/uzmap/pkg/b/c/f$1;-><init>(Lcom/uzmap/pkg/b/c/f;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/uzmap/pkg/b/c/f;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/c/f;)I
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/b/c/f;->c:I

    return p0
.end method

.method static synthetic d(Lcom/uzmap/pkg/b/c/f;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic e(Lcom/uzmap/pkg/b/c/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/c/f;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/b/c/f;->b:I

    iput v0, p0, Lcom/uzmap/pkg/b/c/f;->a:I

    iput p1, p0, Lcom/uzmap/pkg/b/c/f;->b:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/uzmap/pkg/b/c/f;->c:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->e:Landroid/os/Handler;

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->e:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/f;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/uzmap/pkg/b/c/f;->a:I

    mul-int/2addr p4, p2

    div-int/lit16 p4, p4, 0x2710

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/f;->d:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
