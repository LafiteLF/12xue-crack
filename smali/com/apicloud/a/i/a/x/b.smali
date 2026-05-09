.class public Lcom/apicloud/a/i/a/x/b;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/x/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/b;->c:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected F()Lcom/apicloud/a/i/a/x/b$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/x/b$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(II)V

    return-object v0
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/x/b$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/x/b$a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/x/b$a;
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/x/b$a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method a(IIIIZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingTop()I

    move-result p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    :goto_0
    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/x/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/i/a/x/b$a;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v3, Lcom/apicloud/a/i/a/x/b$a;->b:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const v6, 0x800033

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->getLayoutDirection()I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v6, v6, 0x70

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    sub-int v7, p3, v4

    goto :goto_2

    :cond_3
    :goto_1
    iget v7, v3, Lcom/apicloud/a/i/a/x/b$a;->leftMargin:I

    add-int/2addr v7, v1

    goto :goto_3

    :cond_4
    sub-int v7, p3, v1

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    iget v8, v3, Lcom/apicloud/a/i/a/x/b$a;->leftMargin:I

    add-int/2addr v7, v8

    :goto_2
    iget v8, v3, Lcom/apicloud/a/i/a/x/b$a;->rightMargin:I

    sub-int/2addr v7, v8

    :goto_3
    const/16 v8, 0x10

    if-eq v6, v8, :cond_7

    const/16 v8, 0x30

    if-eq v6, v8, :cond_6

    const/16 v8, 0x50

    if-eq v6, v8, :cond_5

    goto :goto_4

    :cond_5
    sub-int v6, p4, v5

    goto :goto_5

    :cond_6
    :goto_4
    iget v3, v3, Lcom/apicloud/a/i/a/x/b$a;->topMargin:I

    add-int/2addr v3, p1

    goto :goto_6

    :cond_7
    sub-int v6, p4, p1

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    iget v8, v3, Lcom/apicloud/a/i/a/x/b$a;->topMargin:I

    add-int/2addr v6, v8

    :goto_5
    iget v3, v3, Lcom/apicloud/a/i/a/x/b$a;->bottomMargin:I

    sub-int v3, v6, v3

    :goto_6
    add-int/2addr v4, v7

    add-int/2addr v5, v3

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/a/i/a/x/b$a;

    return p1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/b;->F()Lcom/apicloud/a/i/a/x/b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/b;->a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/x/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/b;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/x/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/x/b;->a(IIIIZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getChildCount()I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v11, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move v13, v10

    :goto_0
    iget-object v0, v6, Lcom/apicloud/a/i/a/x/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v3, -0x1

    if-lt v14, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v7, v4}, Lcom/apicloud/a/i/a/x/b;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v4, 0x10

    invoke-static {v0, v8, v2}, Lcom/apicloud/a/i/a/x/b;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/apicloud/a/i/a/x/b;->setMeasuredDimension(II)V

    iget-object v0, v6, Lcom/apicloud/a/i/a/x/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_4

    const/4 v12, 0x0

    :goto_2
    if-lt v12, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, v6, Lcom/apicloud/a/i/a/x/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v4, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v4, v5}, Lcom/apicloud/a/i/a/x/b;->getChildMeasureSpec(III)I

    move-result v4

    :goto_3
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingTop()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v5, v9

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v9

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/a/x/b;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v5, v2}, Lcom/apicloud/a/i/a/x/b;->getChildMeasureSpec(III)I

    move-result v2

    :goto_4
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :cond_5
    invoke-virtual {v6, v14}, Lcom/apicloud/a/i/a/x/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, v6, Lcom/apicloud/a/i/a/x/b;->c:Z

    if-nez v0, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    :cond_6
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v18, v2

    move/from16 v2, p1

    move v10, v3

    move/from16 v3, v16

    move v11, v4

    move/from16 v4, p2

    move v12, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/x/b;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/x/b$a;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/apicloud/a/i/a/x/b$a;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/apicloud/a/i/a/x/b$a;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lcom/apicloud/a/i/a/x/b$a;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/apicloud/a/i/a/x/b$a;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v11, v1}, Lcom/apicloud/a/i/a/x/b;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v13, :cond_8

    iget v1, v0, Lcom/apicloud/a/i/a/x/b$a;->width:I

    if-eq v1, v10, :cond_7

    iget v0, v0, Lcom/apicloud/a/i/a/x/b$a;->height:I

    if-ne v0, v10, :cond_8

    :cond_7
    iget-object v0, v6, Lcom/apicloud/a/i/a/x/b;->a:Ljava/util/ArrayList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    goto/16 :goto_1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
