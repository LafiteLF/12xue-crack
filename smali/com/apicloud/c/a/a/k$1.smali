.class Lcom/apicloud/c/a/a/k$1;
.super Landroid/view/View$AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/k;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    iget-object v0, v0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    iget-object v0, v0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    iget-object v0, v0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/k$1;->a:Lcom/apicloud/c/a/a/k;

    iget-object v0, v0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
