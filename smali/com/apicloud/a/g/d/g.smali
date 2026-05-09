.class public Lcom/apicloud/a/g/d/g;
.super Landroid/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/g/d/g$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "android:changeTransform:transforms"

    const-string v1, "android:rotate:rotation"

    const-string v2, "android:rotate:x"

    const-string v3, "android:rotate:y"

    const-string v4, "android:translation:x"

    const-string v5, "android:translation:y"

    const-string v6, "android:scale:x"

    const-string v7, "android:scale:y"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/g/d/g;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private a(Landroid/transition/TransitionValues;)V
    .locals 9

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/apicloud/a/g/d/g$a;

    invoke-direct {v1, v0}, Lcom/apicloud/a/g/d/g$a;-><init>(Landroid/view/View;)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget-object v7, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v8, "android:rotate:rotation"

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v7, "android:rotate:x"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "android:rotate:y"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "android:translation:x"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:translation:y"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:scale:x"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "android:scale:y"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/d/g;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;FFFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/apicloud/a/g/d/g;->b(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/apicloud/a/g/d/g;->b(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method private static b(Landroid/view/View;FFFFFFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "transform"

    return-object v0
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/d/g;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/g/d/g;->a(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:transforms"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/g/d/g$a;

    iget-object v4, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v4}, Lcom/apicloud/a/g/d/g;->b(Landroid/view/View;)V

    iget-object v5, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:translation:x"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:translation:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v9, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v10, "android:rotate:rotation"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v11, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v12, "android:rotate:x"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v13, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:rotate:y"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v15, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:scale:x"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v16, v3

    const-string v3, "android:scale:y"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move/from16 p2, v0

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v6, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v8, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v10, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v12, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v14, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v1, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v14, v5, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 p3, v1

    const/4 v1, 0x2

    if-eqz v14, :cond_1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v19, v2

    new-array v2, v1, [F

    aput v5, v2, v18

    aput v0, v2, v17

    invoke-static {v4, v14, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move/from16 v19, v2

    :goto_0
    cmpl-float v0, v7, v6

    if-eqz v0, :cond_2

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v1, [F

    aput v7, v2, v18

    aput v6, v2, v17

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    cmpl-float v0, v9, v8

    if-eqz v0, :cond_3

    invoke-virtual {v4, v9}, Landroid/view/View;->setRotation(F)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v1, [F

    aput v9, v2, v18

    aput v8, v2, v17

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    cmpl-float v0, v11, v10

    if-eqz v0, :cond_4

    invoke-virtual {v4, v11}, Landroid/view/View;->setRotationX(F)V

    sget-object v0, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v1, [F

    aput v11, v2, v18

    aput v10, v2, v17

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    cmpl-float v0, v13, v12

    if-eqz v0, :cond_5

    invoke-virtual {v4, v13}, Landroid/view/View;->setRotationY(F)V

    sget-object v0, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    new-array v2, v1, [F

    aput v13, v2, v18

    aput v12, v2, v17

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    cmpl-float v0, v15, v19

    if-eqz v0, :cond_6

    invoke-virtual {v4, v15}, Landroid/view/View;->setScaleX(F)V

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v1, [F

    aput v15, v2, v18

    aput v19, v2, v17

    invoke-static {v4, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_7

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleY(F)V

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput v0, v1, v18

    aput p3, v1, v17

    invoke-static {v4, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/apicloud/a/g/d/g$1;

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    invoke-direct {v1, v2, v3, v4}, Lcom/apicloud/a/g/d/g$1;-><init>(Lcom/apicloud/a/g/d/g;Lcom/apicloud/a/g/d/g$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-object v0

    :cond_8
    const/4 v0, 0x0

    move-object/from16 v2, p0

    return-object v0

    :cond_9
    :goto_1
    const/4 v0, 0x0

    move-object/from16 v2, p0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/d/g;->a:[Ljava/lang/String;

    return-object v0
.end method
