.class public Lcom/apicloud/a/i/a/j/f;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private a:Lcom/apicloud/a/i/a/i/b;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/apicloud/a/i/a/j/d;

.field private f:Z

.field private g:I

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->c:Z

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->f:Z

    const/high16 v1, -0x67000000

    iput v1, p0, Lcom/apicloud/a/i/a/j/f;->g:I

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/apicloud/a/i/a/j/f;->h:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/j/f;->i:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/f;->d:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/j/f;->requestWindowFeature(I)Z

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/j/f;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/j/f;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/j/f;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/j/f;->setCancelable(Z)V

    new-instance v1, Lcom/apicloud/a/i/a/i/b;

    invoke-direct {v1, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/i/b;->k(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/i/b;->i(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/i/b;->setFocusable(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/i/b;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/deepe/a/b/d;->b(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/i/b;->w(F)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/j/f;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/i/b;->i(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/apicloud/a/i/a/j/f;->h:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x77

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x78000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Lcom/deepe/a/b/d;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/j/f;->g:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/apicloud/a/i/a/j/f;->h:F

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/f;->e:Lcom/apicloud/a/i/a/j/d;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/j/f;->c:Z

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/j/f;->b(Z)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->c:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->i:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->f:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->e:Lcom/apicloud/a/i/a/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/j/d;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/j/f;->c(Z)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->e:Lcom/apicloud/a/i/a/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/j/d;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/j/f;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/i/b;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/f;->b:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/j/f;->f:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/j/f;->c(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->e:Lcom/apicloud/a/i/a/j/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/j/d;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/j/f;->cancel()V

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/j/f;->i:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/i/b;->removeAllViews()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/j/f;->a:Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/j/f;->b:Landroid/view/View;

    return-void
.end method
