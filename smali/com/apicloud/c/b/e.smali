.class public Lcom/apicloud/c/b/e;
.super Landroid/view/ViewGroup;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/apicloud/third/yoga/YogaNode;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/apicloud/third/yoga/YogaNode;


# virtual methods
.method public a()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/b/e;->c:Lcom/apicloud/third/yoga/YogaNode;

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/apicloud/third/yoga/YogaNode;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/b/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/c/b/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 4

    instance-of v0, p1, Lcom/apicloud/c/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/b/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lcom/apicloud/c/b/e;

    iget-object v3, p0, Lcom/apicloud/c/b/e;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v2, v1, v3}, Lcom/apicloud/c/b/e;->a(Landroid/view/View;Lcom/apicloud/third/yoga/YogaNode;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/apicloud/c/b/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/c/b/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    iget-object p1, p0, Lcom/apicloud/c/b/e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, p1

    check-cast v2, Lcom/apicloud/c/b/f;

    iget-object v3, p0, Lcom/apicloud/c/b/e;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v2, v1, v3}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Lcom/apicloud/third/yoga/YogaNode;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VirtualYogaLayout cannot transfer children to ViewGroup of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Must either be a VirtualYogaLayout or a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "YogaLayout."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of p2, p1, Lcom/apicloud/c/b/e;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/apicloud/c/b/e;

    invoke-virtual {p1, p0}, Lcom/apicloud/c/b/e;->a(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/apicloud/c/b/e;->a()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/c/b/e;->c:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p2}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/apicloud/third/yoga/YogaNode;->addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/apicloud/third/yoga/YogaNodeFactory;->create()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p2

    new-instance v0, Lcom/apicloud/c/b/f$a;

    invoke-direct {v0, p3}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, p2, p1}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/c/b/f$a;Lcom/apicloud/third/yoga/YogaNode;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/apicloud/third/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    new-instance p3, Lcom/apicloud/c/b/f$c;

    invoke-direct {p3}, Lcom/apicloud/c/b/f$c;-><init>()V

    invoke-virtual {p2, p3}, Lcom/apicloud/third/yoga/YogaNode;->setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V

    iget-object p3, p0, Lcom/apicloud/c/b/e;->c:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p3}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lcom/apicloud/third/yoga/YogaNode;->addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/b/e;->a(Landroid/view/View;Lcom/apicloud/third/yoga/YogaNode;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/c/b/f$a;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/apicloud/c/b/f$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/c/b/f$a;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/apicloud/c/b/f$a;

    invoke-virtual {p0}, Lcom/apicloud/c/b/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/apicloud/c/b/f$a;

    invoke-direct {v0, p1}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to layout a VirtualYogaLayout"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
