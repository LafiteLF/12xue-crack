.class public Lcom/apicloud/ijkplayer/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setFullScreen(Landroid/app/Activity;Z)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 30
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 33
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x1006

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x1007

    .line 45
    :goto_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/apicloud/ijkplayer/R$layout;->test:I

    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/TestActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/TestActivity;->setRequestedOrientation(I)V

    const/4 p1, 0x1

    .line 23
    invoke-static {p0, p1}, Lcom/apicloud/ijkplayer/TestActivity;->setFullScreen(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
