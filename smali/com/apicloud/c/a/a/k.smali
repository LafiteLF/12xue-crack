.class public Lcom/apicloud/c/a/a/k;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field final a:Lcom/apicloud/c/a/a/j;

.field final b:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Lcom/apicloud/c/a/a/k$1;

    invoke-direct {v0, p0}, Lcom/apicloud/c/a/a/k$1;-><init>(Lcom/apicloud/c/a/a/k;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/k;->b:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->x()Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/k;->b:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/k;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/k;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/k;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->d()Lcom/apicloud/c/a/a/j$h;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/c/a/a/j$h;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
