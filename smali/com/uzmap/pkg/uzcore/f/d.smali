.class public Lcom/uzmap/pkg/uzcore/f/d;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# static fields
.field private static b:Lcom/uzmap/pkg/uzcore/f/d;


# instance fields
.field private a:Lcom/uzmap/pkg/openapi/SuperWebview;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/d;->requestWindowFeature(I)Z

    invoke-virtual {p0, p0}, Lcom/uzmap/pkg/uzcore/f/d;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, p0}, Lcom/uzmap/pkg/uzcore/f/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, p0}, Lcom/uzmap/pkg/uzcore/f/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/d;->setCancelable(Z)V

    new-instance v1, Lcom/uzmap/pkg/openapi/SuperWebview;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/uzmap/pkg/openapi/SuperWebview;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/f/d;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->setAcceptClient(Z)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/f/d;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->j()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/c/a;->f()Z

    move-result v1

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->p:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/f/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/b/f/a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/privacy/privacy.js"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "file:///android_asset/widget/pages/privacy/privacy.js"

    :goto_0
    invoke-static {v0}, Lcom/deepe/c/i/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/uzmap/pkg/uzcore/f/d;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/f/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/f/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/f/d;->show()V

    sput-object v1, Lcom/uzmap/pkg/uzcore/f/d;->b:Lcom/uzmap/pkg/uzcore/f/d;

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepe/c/a;->a(Z)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/f/d;->b:Lcom/uzmap/pkg/uzcore/f/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/d;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/uzmap/pkg/uzcore/f/d;->b:Lcom/uzmap/pkg/uzcore/f/d;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/d;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/d;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->windowBack()Z

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/d;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/f/d;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/d;->a(Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/d;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-virtual {p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->destroy()V

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
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/d;->a(Z)V

    return-void
.end method
