.class public Lcom/apicloud/c/b/f;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/b/f$a;,
        Lcom/apicloud/c/b/f$b;,
        Lcom/apicloud/c/b/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/apicloud/third/yoga/YogaNode;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/apicloud/third/yoga/YogaNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-static {}, Lcom/apicloud/c/b/d;->a()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p3

    iput-object p3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p3, p0}, Lcom/apicloud/third/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    new-instance v0, Lcom/apicloud/c/b/f$c;

    invoke-direct {v0}, Lcom/apicloud/c/b/f$c;-><init>()V

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V

    iget-object p3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    new-instance v0, Lcom/apicloud/c/b/f$b;

    invoke-direct {v0}, Lcom/apicloud/c/b/f$b;-><init>()V

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setBaselineFunction(Lcom/apicloud/third/yoga/YogaBaselineFunction;)V

    iget-object p3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setIsReferenceBaseline(Z)V

    if-eqz p2, :cond_0

    new-instance p3, Lcom/apicloud/c/b/f$a;

    invoke-direct {p3, p1, p2}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/apicloud/c/b/f$a;

    :goto_0
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p3, p1, p0}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/c/b/f$a;Lcom/apicloud/third/yoga/YogaNode;Landroid/view/View;)V

    return-void
.end method

.method private a(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    iget-object v3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/apicloud/third/yoga/YogaNode;->setHeight(F)V

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/apicloud/third/yoga/YogaNode;->setWidth(F)V

    :cond_1
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_2

    iget-object v3, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeight(F)V

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidth(F)V

    :cond_3
    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p2}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    :cond_5
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p2, p2}, Lcom/apicloud/third/yoga/YogaNode;->calculateLayout(FF)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/third/yoga/YogaNode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getOwner()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/apicloud/third/yoga/YogaNode;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/apicloud/third/yoga/YogaNode;->removeChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p2, p2}, Lcom/apicloud/third/yoga/YogaNode;->calculateLayout(FF)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/apicloud/c/b/f$a;Lcom/apicloud/third/yoga/YogaNode;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    invoke-virtual {v1, v2}, Lcom/apicloud/third/yoga/YogaNode;->setDirection(Lcom/apicloud/third/yoga/YogaDirection;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    sget-object v2, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    sget-object v2, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    sget-object v2, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/apicloud/c/b/f$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/16 v15, 0x1d

    const/16 v3, 0x1c

    const/16 v7, 0x1b

    const/16 v8, 0x1a

    const/16 v9, 0x19

    const/16 v10, 0x18

    const/16 v11, 0x17

    const/16 v12, 0x16

    const/16 v13, 0x37

    const/16 v2, 0x14

    if-lt v5, v6, :cond_31

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v0, Lcom/apicloud/c/b/f$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    return-void

    :cond_2
    iget-object v6, v0, Lcom/apicloud/c/b/f$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v4, v0, Lcom/apicloud/c/b/f$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v14, "auto"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-ne v6, v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    goto :goto_3

    :cond_3
    if-ne v6, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    goto :goto_3

    :cond_4
    if-ne v6, v12, :cond_5

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_2
    invoke-virtual {v1, v14}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_3

    :cond_5
    if-ne v6, v11, :cond_6

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_6
    if-ne v6, v10, :cond_7

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_7
    if-ne v6, v9, :cond_8

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_8
    if-ne v6, v8, :cond_9

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_9
    if-ne v6, v7, :cond_a

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_a
    if-ne v6, v3, :cond_b

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_b
    if-ne v6, v15, :cond_c

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_c
    const/16 v14, 0x1e

    if-ne v6, v14, :cond_d

    sget-object v14, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_2

    :cond_d
    :goto_3
    const-string v14, "%"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/16 v14, 0x10

    if-ne v6, v14, :cond_e

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisPercent(F)V

    goto/16 :goto_7

    :cond_e
    if-ne v6, v2, :cond_f

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setHeightPercent(F)V

    goto/16 :goto_7

    :cond_f
    if-ne v6, v13, :cond_10

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setWidthPercent(F)V

    goto/16 :goto_7

    :cond_10
    if-ne v6, v12, :cond_11

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_4
    invoke-virtual {v1, v6, v4}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto/16 :goto_7

    :cond_11
    if-ne v6, v11, :cond_12

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_12
    if-ne v6, v10, :cond_13

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_13
    if-ne v6, v9, :cond_14

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_14
    if-ne v6, v8, :cond_15

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_15
    if-ne v6, v7, :cond_16

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_16
    if-ne v6, v3, :cond_17

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_17
    const/16 v14, 0x1d

    if-ne v6, v14, :cond_18

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_18
    const/16 v14, 0x1e

    if-ne v6, v14, :cond_19

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_4

    :cond_19
    const/16 v14, 0x1f

    if-ne v6, v14, :cond_1a

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeightPercent(F)V

    goto/16 :goto_7

    :cond_1a
    const/16 v14, 0x20

    if-ne v6, v14, :cond_1b

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidthPercent(F)V

    goto/16 :goto_7

    :cond_1b
    const/16 v14, 0x21

    if-ne v6, v14, :cond_1c

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeightPercent(F)V

    goto/16 :goto_7

    :cond_1c
    const/16 v14, 0x22

    if-ne v6, v14, :cond_1d

    invoke-virtual {v1, v4}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidthPercent(F)V

    goto/16 :goto_7

    :cond_1d
    const/16 v14, 0x24

    if-ne v6, v14, :cond_1e

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_5
    invoke-virtual {v1, v6, v4}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto/16 :goto_7

    :cond_1e
    const/16 v14, 0x25

    if-ne v6, v14, :cond_1f

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_1f
    const/16 v14, 0x26

    if-ne v6, v14, :cond_20

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_20
    const/16 v14, 0x27

    if-ne v6, v14, :cond_21

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_21
    const/16 v14, 0x28

    if-ne v6, v14, :cond_22

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_22
    const/16 v14, 0x29

    if-ne v6, v14, :cond_23

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_23
    const/16 v14, 0x2a

    if-ne v6, v14, :cond_24

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_24
    const/16 v14, 0x2b

    if-ne v6, v14, :cond_25

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_25
    const/16 v14, 0x2c

    if-ne v6, v14, :cond_26

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_5

    :cond_26
    const/16 v14, 0x2d

    if-ne v6, v14, :cond_27

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_6
    invoke-virtual {v1, v6, v4}, Lcom/apicloud/third/yoga/YogaNode;->setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto :goto_7

    :cond_27
    const/16 v14, 0x2e

    if-ne v6, v14, :cond_28

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_28
    const/16 v14, 0x2f

    if-ne v6, v14, :cond_29

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_29
    const/16 v14, 0x30

    if-ne v6, v14, :cond_2a

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2a
    const/16 v14, 0x31

    if-ne v6, v14, :cond_2b

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2b
    const/16 v14, 0x32

    if-ne v6, v14, :cond_2c

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2c
    const/16 v14, 0x33

    if-ne v6, v14, :cond_2d

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2d
    const/16 v14, 0x34

    if-ne v6, v14, :cond_2e

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2e
    const/16 v14, 0x35

    if-ne v6, v14, :cond_30

    sget-object v6, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_6

    :cond_2f
    const/4 v15, 0x0

    :cond_30
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    const/16 v15, 0x1d

    goto/16 :goto_1

    :cond_31
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/apicloud/c/b/f$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v6, v0, Lcom/apicloud/c/b/f$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    if-ne v4, v2, :cond_32

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setHeight(F)V

    :goto_8
    const/4 v2, 0x1

    :goto_9
    const/16 v13, 0x11

    goto/16 :goto_e

    :cond_32
    if-ne v4, v13, :cond_33

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setWidth(F)V

    goto :goto_8

    :cond_33
    if-nez v4, :cond_34

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apicloud/third/yoga/YogaNode;->setAlignContent(Lcom/apicloud/third/yoga/YogaAlign;)V

    goto :goto_8

    :cond_34
    const/4 v2, 0x1

    if-ne v4, v2, :cond_35

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setAlignItems(Lcom/apicloud/third/yoga/YogaAlign;)V

    goto :goto_9

    :cond_35
    const/4 v13, 0x2

    if-ne v4, v13, :cond_36

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setAlignSelf(Lcom/apicloud/third/yoga/YogaAlign;)V

    goto :goto_9

    :cond_36
    const/4 v13, 0x3

    if-ne v4, v13, :cond_37

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setAspectRatio(F)V

    goto :goto_9

    :cond_37
    const/4 v13, 0x4

    if-ne v4, v13, :cond_38

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_a
    invoke-virtual {v1, v3, v6}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto :goto_9

    :cond_38
    const/4 v13, 0x5

    if-ne v4, v13, :cond_39

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_39
    const/4 v13, 0x6

    if-ne v4, v13, :cond_3a

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3a
    const/4 v13, 0x7

    if-ne v4, v13, :cond_3b

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3b
    const/16 v13, 0x8

    if-ne v4, v13, :cond_3c

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3c
    const/16 v13, 0x9

    if-ne v4, v13, :cond_3d

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3d
    const/16 v13, 0xa

    if-ne v4, v13, :cond_3e

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3e
    const/16 v13, 0xb

    if-ne v4, v13, :cond_3f

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_3f
    const/16 v13, 0xc

    if-ne v4, v13, :cond_40

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_a

    :cond_40
    const/16 v13, 0xd

    if-ne v4, v13, :cond_41

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaDirection;->fromInt(I)Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setDirection(Lcom/apicloud/third/yoga/YogaDirection;)V

    goto/16 :goto_9

    :cond_41
    const/16 v13, 0xe

    if-ne v4, v13, :cond_42

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaDisplay;->fromInt(I)Lcom/apicloud/third/yoga/YogaDisplay;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setDisplay(Lcom/apicloud/third/yoga/YogaDisplay;)V

    goto/16 :goto_9

    :cond_42
    const/16 v13, 0xf

    if-ne v4, v13, :cond_43

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setFlex(F)V

    goto/16 :goto_9

    :cond_43
    const/16 v13, 0x10

    if-ne v4, v13, :cond_44

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasis(F)V

    goto/16 :goto_9

    :cond_44
    const/16 v14, 0x39

    if-ne v4, v14, :cond_45

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisPercent(F)V

    goto/16 :goto_9

    :cond_45
    if-ne v4, v13, :cond_46

    invoke-virtual/range {p1 .. p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisAuto()V

    goto/16 :goto_9

    :cond_46
    const/16 v13, 0x11

    if-ne v4, v13, :cond_47

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaFlexDirection;->fromInt(I)Lcom/apicloud/third/yoga/YogaFlexDirection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setFlexDirection(Lcom/apicloud/third/yoga/YogaFlexDirection;)V

    goto/16 :goto_e

    :cond_47
    const/16 v14, 0x12

    if-ne v4, v14, :cond_48

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setFlexGrow(F)V

    goto/16 :goto_e

    :cond_48
    const/16 v14, 0x13

    if-ne v4, v14, :cond_49

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setFlexShrink(F)V

    goto/16 :goto_e

    :cond_49
    if-ne v4, v12, :cond_4a

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_b
    invoke-virtual {v1, v3, v6}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto/16 :goto_e

    :cond_4a
    const/16 v12, 0x15

    if-ne v4, v12, :cond_4b

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaJustify;->fromInt(I)Lcom/apicloud/third/yoga/YogaJustify;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setJustifyContent(Lcom/apicloud/third/yoga/YogaJustify;)V

    goto/16 :goto_e

    :cond_4b
    if-ne v4, v11, :cond_4c

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_4c
    if-ne v4, v10, :cond_4d

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_4d
    if-ne v4, v9, :cond_4e

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_4e
    if-ne v4, v8, :cond_4f

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_4f
    if-ne v4, v7, :cond_50

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_50
    if-ne v4, v3, :cond_51

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_51
    const/16 v3, 0x1d

    if-ne v4, v3, :cond_52

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_52
    const/16 v3, 0x1e

    if-ne v4, v3, :cond_53

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_b

    :cond_53
    const/16 v3, 0x1f

    if-ne v4, v3, :cond_54

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeight(F)V

    goto/16 :goto_e

    :cond_54
    const/16 v3, 0x20

    if-ne v4, v3, :cond_55

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidth(F)V

    goto/16 :goto_e

    :cond_55
    const/16 v3, 0x21

    if-ne v4, v3, :cond_56

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeight(F)V

    goto/16 :goto_e

    :cond_56
    const/16 v3, 0x22

    if-ne v4, v3, :cond_57

    invoke-virtual {v1, v6}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidth(F)V

    goto/16 :goto_e

    :cond_57
    const/16 v3, 0x23

    if-ne v4, v3, :cond_58

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaOverflow;->fromInt(I)Lcom/apicloud/third/yoga/YogaOverflow;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setOverflow(Lcom/apicloud/third/yoga/YogaOverflow;)V

    goto/16 :goto_e

    :cond_58
    const/16 v3, 0x24

    if-ne v4, v3, :cond_59

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_c
    invoke-virtual {v1, v3, v6}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto/16 :goto_e

    :cond_59
    const/16 v3, 0x25

    if-ne v4, v3, :cond_5a

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5a
    const/16 v3, 0x26

    if-ne v4, v3, :cond_5b

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5b
    const/16 v3, 0x27

    if-ne v4, v3, :cond_5c

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5c
    const/16 v3, 0x28

    if-ne v4, v3, :cond_5d

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5d
    const/16 v3, 0x29

    if-ne v4, v3, :cond_5e

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5e
    const/16 v3, 0x2a

    if-ne v4, v3, :cond_5f

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_5f
    const/16 v3, 0x2b

    if-ne v4, v3, :cond_60

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_60
    const/16 v3, 0x2c

    if-ne v4, v3, :cond_61

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_c

    :cond_61
    const/16 v3, 0x2d

    if-ne v4, v3, :cond_62

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    :goto_d
    invoke-virtual {v1, v3, v6}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    goto :goto_e

    :cond_62
    const/16 v3, 0x2e

    if-ne v4, v3, :cond_63

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_63
    const/16 v3, 0x2f

    if-ne v4, v3, :cond_64

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_64
    const/16 v3, 0x30

    if-ne v4, v3, :cond_65

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_65
    const/16 v3, 0x31

    if-ne v4, v3, :cond_66

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_66
    const/16 v3, 0x32

    if-ne v4, v3, :cond_67

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_67
    const/16 v3, 0x33

    if-ne v4, v3, :cond_68

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_68
    const/16 v3, 0x34

    if-ne v4, v3, :cond_69

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_69
    const/16 v3, 0x35

    if-ne v4, v3, :cond_6a

    sget-object v3, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    goto :goto_d

    :cond_6a
    const/16 v3, 0x36

    if-ne v4, v3, :cond_6b

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaPositionType;->fromInt(I)Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setPositionType(Lcom/apicloud/third/yoga/YogaPositionType;)V

    goto :goto_e

    :cond_6b
    const/16 v3, 0x38

    if-ne v4, v3, :cond_6c

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Lcom/apicloud/third/yoga/YogaWrap;->fromInt(I)Lcom/apicloud/third/yoga/YogaWrap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->setWrap(Lcom/apicloud/third/yoga/YogaWrap;)V

    :cond_6c
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v4, v2

    move v3, v13

    goto/16 :goto_0
.end method

.method private a(Lcom/apicloud/third/yoga/YogaNode;FF)V
    .locals 6

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutX()F

    move-result v1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutY()F

    move-result v2

    add-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {v0}, Lcom/apicloud/c/b/a;->a(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lcom/apicloud/third/yoga/YogaNode;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/third/yoga/YogaNode;FF)V

    goto :goto_1

    :cond_3
    instance-of v3, v0, Lcom/apicloud/c/b/f;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/apicloud/third/yoga/YogaNode;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutX()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutY()F

    move-result v5

    add-float/2addr v5, p3

    invoke-direct {p0, v3, v4, v5}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/third/yoga/YogaNode;FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/apicloud/third/yoga/YogaNode;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/apicloud/c/b/f;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaNode;->setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V

    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaNode;->setBaselineFunction(Lcom/apicloud/third/yoga/YogaBaselineFunction;)V

    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaNode;->setIsReferenceBaseline(Z)V

    instance-of v0, p1, Lcom/apicloud/c/b/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/c/b/e;

    invoke-virtual {p1, p0}, Lcom/apicloud/c/b/e;->a(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/apicloud/c/b/e;->a()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p2}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/apicloud/third/yoga/YogaNode;->addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    instance-of p3, p1, Lcom/apicloud/c/b/f;

    if-eqz p3, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/apicloud/c/b/f;

    invoke-virtual {p3}, Lcom/apicloud/c/b/f;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p3, p1}, Lcom/apicloud/third/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apicloud/third/yoga/YogaNode;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/apicloud/c/b/d;->a()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p3

    :goto_0
    invoke-virtual {p3, p1}, Lcom/apicloud/third/yoga/YogaNode;->setData(Ljava/lang/Object;)V

    new-instance v0, Lcom/apicloud/c/b/f$c;

    invoke-direct {v0}, Lcom/apicloud/c/b/f$c;-><init>()V

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V

    new-instance v0, Lcom/apicloud/c/b/f$b;

    invoke-direct {v0}, Lcom/apicloud/c/b/f$b;-><init>()V

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setBaselineFunction(Lcom/apicloud/third/yoga/YogaBaselineFunction;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/apicloud/third/yoga/YogaNode;->setIsReferenceBaseline(Z)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/b/f$a;

    invoke-static {v0, p3, p1}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/c/b/f$a;Lcom/apicloud/third/yoga/YogaNode;Landroid/view/View;)V

    invoke-virtual {v0, p3}, Lcom/apicloud/c/b/f$a;->a(Lcom/apicloud/third/yoga/YogaNode;)V

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result p2

    :goto_2
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/third/yoga/YogaNode;->addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->dirty()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->invalidate()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v2, v1}, Lcom/apicloud/third/yoga/YogaNode;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/apicloud/c/b/f;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/b/f;

    invoke-virtual {v2, p1}, Lcom/apicloud/c/b/f;->c(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/apicloud/c/b/f;

    if-nez p1, :cond_0

    sub-int/2addr p4, p2

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p4, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    sub-int/2addr p5, p3

    invoke-static {p5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/apicloud/c/b/f;->a(II)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lcom/apicloud/c/b/f;->a(Lcom/apicloud/third/yoga/YogaNode;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/apicloud/c/b/f;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/b/f;->a(II)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutWidth()F

    move-result p1

    iget-object p2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p2}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutHeight()F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/b/f;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/apicloud/c/b/f;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeAllViewsInLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/b/f;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/b/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/b/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/b/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/b/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/apicloud/c/b/f;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 2

    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    iget-object p2, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    sget-object p3, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    sget-object p2, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    iget-object p1, p0, Lcom/apicloud/c/b/f;->b:Lcom/apicloud/third/yoga/YogaNode;

    sget-object p2, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method
