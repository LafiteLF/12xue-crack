.class public abstract Lcom/apicloud/third/yoga/YogaNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/third/yoga/YogaNode$Inputs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V
.end method

.method public abstract calculateLayout(FF)V
.end method

.method public abstract cloneWithChildren()Lcom/apicloud/third/yoga/YogaNode;
.end method

.method public abstract cloneWithoutChildren()Lcom/apicloud/third/yoga/YogaNode;
.end method

.method public abstract copyStyle(Lcom/apicloud/third/yoga/YogaNode;)V
.end method

.method public abstract dirty()V
.end method

.method public abstract getAlignContent()Lcom/apicloud/third/yoga/YogaAlign;
.end method

.method public abstract getAlignItems()Lcom/apicloud/third/yoga/YogaAlign;
.end method

.method public abstract getAlignSelf()Lcom/apicloud/third/yoga/YogaAlign;
.end method

.method public abstract getAspectRatio()F
.end method

.method public abstract getBorder(Lcom/apicloud/third/yoga/YogaEdge;)F
.end method

.method public abstract getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getData()Ljava/lang/Object;
.end method

.method public abstract getDisplay()Lcom/apicloud/third/yoga/YogaDisplay;
.end method

.method public abstract getFlex()F
.end method

.method public abstract getFlexBasis()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getFlexDirection()Lcom/apicloud/third/yoga/YogaFlexDirection;
.end method

.method public abstract getFlexGrow()F
.end method

.method public abstract getFlexShrink()F
.end method

.method public abstract getHeight()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getJustifyContent()Lcom/apicloud/third/yoga/YogaJustify;
.end method

.method public abstract getLayoutBorder(Lcom/apicloud/third/yoga/YogaEdge;)F
.end method

.method public abstract getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;
.end method

.method public abstract getLayoutHeight()F
.end method

.method public abstract getLayoutMargin(Lcom/apicloud/third/yoga/YogaEdge;)F
.end method

.method public abstract getLayoutPadding(Lcom/apicloud/third/yoga/YogaEdge;)F
.end method

.method public abstract getLayoutWidth()F
.end method

.method public abstract getLayoutX()F
.end method

.method public abstract getLayoutY()F
.end method

.method public abstract getMargin(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getMaxHeight()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getMaxWidth()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getMinHeight()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getMinWidth()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getOverflow()Lcom/apicloud/third/yoga/YogaOverflow;
.end method

.method public abstract getOwner()Lcom/apicloud/third/yoga/YogaNode;
.end method

.method public abstract getPadding(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getParent()Lcom/apicloud/third/yoga/YogaNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPosition(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getPositionType()Lcom/apicloud/third/yoga/YogaPositionType;
.end method

.method public abstract getStyleDirection()Lcom/apicloud/third/yoga/YogaDirection;
.end method

.method public abstract getWidth()Lcom/apicloud/third/yoga/YogaValue;
.end method

.method public abstract getWrap()Lcom/apicloud/third/yoga/YogaWrap;
.end method

.method public abstract hasNewLayout()Z
.end method

.method public abstract indexOf(Lcom/apicloud/third/yoga/YogaNode;)I
.end method

.method public abstract isBaselineDefined()Z
.end method

.method public abstract isDirty()Z
.end method

.method public abstract isMeasureDefined()Z
.end method

.method public abstract isReferenceBaseline()Z
.end method

.method public abstract markLayoutSeen()V
.end method

.method public abstract print()V
.end method

.method public abstract removeChildAt(I)Lcom/apicloud/third/yoga/YogaNode;
.end method

.method public abstract reset()V
.end method

.method public abstract setAlignContent(Lcom/apicloud/third/yoga/YogaAlign;)V
.end method

.method public abstract setAlignItems(Lcom/apicloud/third/yoga/YogaAlign;)V
.end method

.method public abstract setAlignSelf(Lcom/apicloud/third/yoga/YogaAlign;)V
.end method

.method public abstract setAspectRatio(F)V
.end method

.method public abstract setBaselineFunction(Lcom/apicloud/third/yoga/YogaBaselineFunction;)V
.end method

.method public abstract setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setData(Ljava/lang/Object;)V
.end method

.method public abstract setDirection(Lcom/apicloud/third/yoga/YogaDirection;)V
.end method

.method public abstract setDisplay(Lcom/apicloud/third/yoga/YogaDisplay;)V
.end method

.method public abstract setFlex(F)V
.end method

.method public abstract setFlexBasis(F)V
.end method

.method public abstract setFlexBasisAuto()V
.end method

.method public abstract setFlexBasisPercent(F)V
.end method

.method public abstract setFlexDirection(Lcom/apicloud/third/yoga/YogaFlexDirection;)V
.end method

.method public abstract setFlexGrow(F)V
.end method

.method public abstract setFlexShrink(F)V
.end method

.method public abstract setHeight(F)V
.end method

.method public abstract setHeightAuto()V
.end method

.method public abstract setHeightPercent(F)V
.end method

.method public abstract setIsReferenceBaseline(Z)V
.end method

.method public abstract setJustifyContent(Lcom/apicloud/third/yoga/YogaJustify;)V
.end method

.method public abstract setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V
.end method

.method public abstract setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setMaxHeight(F)V
.end method

.method public abstract setMaxHeightPercent(F)V
.end method

.method public abstract setMaxWidth(F)V
.end method

.method public abstract setMaxWidthPercent(F)V
.end method

.method public abstract setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V
.end method

.method public abstract setMinHeight(F)V
.end method

.method public abstract setMinHeightPercent(F)V
.end method

.method public abstract setMinWidth(F)V
.end method

.method public abstract setMinWidthPercent(F)V
.end method

.method public abstract setOverflow(Lcom/apicloud/third/yoga/YogaOverflow;)V
.end method

.method public abstract setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
.end method

.method public abstract setPositionType(Lcom/apicloud/third/yoga/YogaPositionType;)V
.end method

.method public abstract setWidth(F)V
.end method

.method public abstract setWidthAuto()V
.end method

.method public abstract setWidthPercent(F)V
.end method

.method public abstract setWrap(Lcom/apicloud/third/yoga/YogaWrap;)V
.end method
