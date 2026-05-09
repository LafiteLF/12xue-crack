.class public Lcom/uzmap/pkg/b/b/k;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/b/b/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/k;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/k;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/k;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/b/b/k$a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/k;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/uzmap/pkg/b/b/k$a;-><init>(Lcom/uzmap/pkg/b/b/k;Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/k;->a:Lcom/uzmap/pkg/b/b/k$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/k;->a:Lcom/uzmap/pkg/b/b/k$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/k$a;->a(Ljava/lang/String;II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/k;->a:Lcom/uzmap/pkg/b/b/k$a;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/b/b/k;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
