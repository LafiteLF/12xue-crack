.class public Lcom/uzmap/pkg/b/c/h;
.super Lcom/deepe/c/b/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/b/c/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/b/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/4 p2, 0x1

    const/high16 p3, 0x11000000

    aput p3, p1, p2

    const/4 p2, 0x2

    const/high16 p3, 0x33000000

    aput p3, p1, p2

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object p3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/b/c/h;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/h;->b(I)V

    new-instance p1, Lcom/uzmap/pkg/b/c/h$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/b/c/h$1;-><init>(Lcom/uzmap/pkg/b/c/h;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/h;->a(Lcom/deepe/c/b/b/a$d;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method protected j_()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/deepe/c/b/b/a;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Lcom/deepe/c/b/b/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
