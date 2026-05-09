.class public abstract Lcom/apicloud/third/yoga/YogaNodeJNIBase;
.super Lcom/apicloud/third/yoga/YogaNode;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge:[I = null

.field private static final BORDER:B = 0x4t

.field private static final DOES_LEGACY_STRETCH_BEHAVIOUR:B = 0x8t

.field private static final HAS_NEW_LAYOUT:B = 0x10t

.field private static final LAYOUT_BORDER_START_INDEX:B = 0xet

.field private static final LAYOUT_DIRECTION_INDEX:B = 0x5t

.field private static final LAYOUT_EDGE_SET_FLAG_INDEX:B = 0x0t

.field private static final LAYOUT_HEIGHT_INDEX:B = 0x2t

.field private static final LAYOUT_LEFT_INDEX:B = 0x3t

.field private static final LAYOUT_MARGIN_START_INDEX:B = 0x6t

.field private static final LAYOUT_PADDING_START_INDEX:B = 0xat

.field private static final LAYOUT_TOP_INDEX:B = 0x4t

.field private static final LAYOUT_WIDTH_INDEX:B = 0x1t

.field private static final MARGIN:B = 0x1t

.field private static final PADDING:B = 0x2t


# instance fields
.field private arr:[F

.field private mBaselineFunction:Lcom/apicloud/third/yoga/YogaBaselineFunction;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/third/yoga/YogaNodeJNIBase;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/Object;

.field private mHasNewLayout:Z

.field private mLayoutDirection:I

.field private mMeasureFunction:Lcom/apicloud/third/yoga/YogaMeasureFunction;

.field protected mNativePointer:J

.field private mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;


# direct methods
.method static synthetic $SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge()[I
    .locals 3

    sget-object v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apicloud/third/yoga/YogaEdge;->values()[Lcom/apicloud/third/yoga/YogaEdge;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->END:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->HORIZONTAL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->START:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->VERTICAL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge:[I

    return-object v0
.end method

.method constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeNewJNI()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;-><init>(J)V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/third/yoga/YogaNode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mLayoutDirection:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mHasNewLayout:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to allocate native memory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/apicloud/third/yoga/YogaConfig;)V
    .locals 2

    check-cast p1, Lcom/apicloud/third/yoga/YogaConfigJNIBase;

    iget-wide v0, p1, Lcom/apicloud/third/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeNewWithConfigJNI(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;-><init>(J)V

    return-void
.end method

.method private clearChildren()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeClearChildrenJNI(J)V

    return-void
.end method

.method private freeze()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/apicloud/third/yoga/YogaNode$Inputs;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/third/yoga/YogaNode$Inputs;

    invoke-interface {v0}, Lcom/apicloud/third/yoga/YogaNode$Inputs;->freeze()V

    :cond_0
    return-void
.end method

.method private final replaceChild(Lcom/apicloud/third/yoga/YogaNodeJNIBase;I)J
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide p1, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot replace child. YogaNode does not have children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;
    .locals 3

    new-instance v0, Lcom/apicloud/third/yoga/YogaValue;

    long-to-int v1, p0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    long-to-int p0, p0

    invoke-direct {v0, v1, p0}, Lcom/apicloud/third/yoga/YogaValue;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public addChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V
    .locals 4

    instance-of v0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    iget-wide v2, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeInsertChildJNI(JJI)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Child already has a parent, it must be removed first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final baseline(FF)F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mBaselineFunction:Lcom/apicloud/third/yoga/YogaBaselineFunction;

    invoke-interface {v0, p0, p1, p2}, Lcom/apicloud/third/yoga/YogaBaselineFunction;->baseline(Lcom/apicloud/third/yoga/YogaNode;FF)F

    move-result p1

    return p1
.end method

.method public calculateLayout(FF)V
    .locals 8

    invoke-direct {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->freeze()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    array-length v0, v7

    new-array v6, v0, [J

    :goto_1
    array-length v0, v7

    if-lt v1, v0, :cond_0

    iget-wide v2, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeCalculateLayoutJNI(JFF[J[Lcom/apicloud/third/yoga/YogaNodeJNIBase;)V

    return-void

    :cond_0
    aget-object v0, v7, v1

    iget-wide v2, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    aput-wide v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-object v3, v3, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    invoke-direct {v4}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->freeze()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic cloneWithChildren()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->cloneWithChildren()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithChildren()Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-object v1, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    :cond_0
    iget-wide v1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v1, v2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeCloneJNI(J)J

    move-result-wide v1

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iput-wide v1, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->cloneWithChildren()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->swapChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic cloneWithoutChildren()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->cloneWithoutChildren()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public cloneWithoutChildren()Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide v1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v1, v2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeCloneJNI(J)J

    move-result-wide v1

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iput-wide v1, v0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-direct {v0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->clearChildren()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public copyStyle(Lcom/apicloud/third/yoga/YogaNode;)V
    .locals 4

    instance-of v0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    check-cast p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide v2, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeCopyStyleJNI(JJ)V

    return-void
.end method

.method public dirty()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeMarkDirtyJNI(J)V

    return-void
.end method

.method public dirtyAllDescendants()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeMarkDirtyAndPropogateToDescendantsJNI(J)V

    return-void
.end method

.method public getAlignContent()Lcom/apicloud/third/yoga/YogaAlign;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetAlignContentJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAlignItems()Lcom/apicloud/third/yoga/YogaAlign;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetAlignItemsJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAlignSelf()Lcom/apicloud/third/yoga/YogaAlign;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetAlignSelfJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaAlign;->fromInt(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetAspectRatioJNI(J)F

    move-result v0

    return v0
.end method

.method public getBorder(Lcom/apicloud/third/yoga/YogaEdge;)F
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetBorderJNI(JI)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(I)Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "YogaNode does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDisplay()Lcom/apicloud/third/yoga/YogaDisplay;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetDisplayJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaDisplay;->fromInt(I)Lcom/apicloud/third/yoga/YogaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDoesLegacyStretchFlagAffectsLayout()Z
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getFlex()F
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexJNI(J)F

    move-result v0

    return v0
.end method

.method public getFlexBasis()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexBasisJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getFlexDirection()Lcom/apicloud/third/yoga/YogaFlexDirection;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexDirectionJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaFlexDirection;->fromInt(I)Lcom/apicloud/third/yoga/YogaFlexDirection;

    move-result-object v0

    return-object v0
.end method

.method public getFlexGrow()F
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexGrowJNI(J)F

    move-result v0

    return v0
.end method

.method public getFlexShrink()F
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexShrinkJNI(J)F

    move-result v0

    return v0
.end method

.method public getHeight()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetHeightJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getJustifyContent()Lcom/apicloud/third/yoga/YogaJustify;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetJustifyContentJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaJustify;->fromInt(I)Lcom/apicloud/third/yoga/YogaJustify;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutBorder(Lcom/apicloud/third/yoga/YogaEdge;)F
    .locals 6

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    rsub-int/lit8 v0, v0, 0xe

    iget-object v4, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget v4, v4, v1

    float-to-int v4, v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sub-int/2addr v0, v1

    invoke-static {}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout border of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v5

    aget p1, p1, v0

    :goto_2
    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v5

    aget p1, p1, v0

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    :goto_3
    return p1

    :pswitch_2
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/lit8 v0, v0, 0x3

    aget p1, p1, v0

    return p1

    :pswitch_3
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v5

    aget p1, p1, v0

    return p1

    :pswitch_4
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v2

    aget p1, p1, v0

    return p1

    :pswitch_5
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    aget v0, v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mLayoutDirection:I

    :goto_0
    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaDirection;->fromInt(I)Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutMargin(Lcom/apicloud/third/yoga/YogaEdge;)F
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x8

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout margins of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v2, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    :goto_0
    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v2, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v1

    :goto_1
    return p1

    :pswitch_2
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/16 v0, 0x9

    aget p1, p1, v0

    return p1

    :pswitch_3
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    return p1

    :pswitch_4
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/4 v0, 0x7

    aget p1, p1, v0

    return p1

    :pswitch_5
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutPadding(Lcom/apicloud/third/yoga/YogaEdge;)F
    .locals 4

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    rsub-int/lit8 v0, v1, 0xa

    invoke-static {}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->$SWITCH_TABLE$com$apicloud$third$yoga$YogaEdge()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot get layout paddings of multi-edge shorthands"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    :goto_1
    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getLayoutDirection()Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object p1

    sget-object v1, Lcom/apicloud/third/yoga/YogaDirection;->RTL:Lcom/apicloud/third/yoga/YogaDirection;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    :goto_2
    return p1

    :pswitch_2
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/lit8 v0, v0, 0x3

    aget p1, p1, v0

    return p1

    :pswitch_3
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v3

    aget p1, p1, v0

    return p1

    :pswitch_4
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    add-int/2addr v0, v2

    aget p1, p1, v0

    return p1

    :pswitch_5
    iget-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    aget p1, p1, v0

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutWidth()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutX()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLayoutY()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMargin(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetMarginJNI(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    return-object p1
.end method

.method public getMaxHeight()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetMaxHeightJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getMaxWidth()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetMaxWidthJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getMinHeight()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetMinHeightJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getMinWidth()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetMinWidthJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getOverflow()Lcom/apicloud/third/yoga/YogaOverflow;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetOverflowJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaOverflow;->fromInt(I)Lcom/apicloud/third/yoga/YogaOverflow;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOwner()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getOwner()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    return-object v0
.end method

.method public getPadding(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetPaddingJNI(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParent()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getParent()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->getOwner()Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/apicloud/third/yoga/YogaEdge;)Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetPositionJNI(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    return-object p1
.end method

.method public getPositionType()Lcom/apicloud/third/yoga/YogaPositionType;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetPositionTypeJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaPositionType;->fromInt(I)Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object v0

    return-object v0
.end method

.method public getStyleDirection()Lcom/apicloud/third/yoga/YogaDirection;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetDirectionJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaDirection;->fromInt(I)Lcom/apicloud/third/yoga/YogaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Lcom/apicloud/third/yoga/YogaValue;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetWidthJNI(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->valueFromLong(J)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    return-object v0
.end method

.method public getWrap()Lcom/apicloud/third/yoga/YogaWrap;
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleGetFlexWrapJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaWrap;->fromInt(I)Lcom/apicloud/third/yoga/YogaWrap;

    move-result-object v0

    return-object v0
.end method

.method public hasNewLayout()Z
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mHasNewLayout:Z

    return v0
.end method

.method public indexOf(Lcom/apicloud/third/yoga/YogaNode;)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isBaselineDefined()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mBaselineFunction:Lcom/apicloud/third/yoga/YogaBaselineFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty()Z
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeIsDirtyJNI(J)Z

    move-result v0

    return v0
.end method

.method public isMeasureDefined()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mMeasureFunction:Lcom/apicloud/third/yoga/YogaMeasureFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReferenceBaseline()Z
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeIsReferenceBaselineJNI(J)Z

    move-result v0

    return v0
.end method

.method public markLayoutSeen()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v2, v0, v1

    float-to-int v2, v2

    and-int/lit8 v2, v2, -0x11

    int-to-float v2, v2

    aput v2, v0, v1

    :cond_0
    iput-boolean v1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mHasNewLayout:Z

    return-void
.end method

.method public final measure(FIFI)J
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->isMeasureDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mMeasureFunction:Lcom/apicloud/third/yoga/YogaMeasureFunction;

    invoke-static {p2}, Lcom/apicloud/third/yoga/YogaMeasureMode;->fromInt(I)Lcom/apicloud/third/yoga/YogaMeasureMode;

    move-result-object v4

    invoke-static {p4}, Lcom/apicloud/third/yoga/YogaMeasureMode;->fromInt(I)Lcom/apicloud/third/yoga/YogaMeasureMode;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/apicloud/third/yoga/YogaMeasureFunction;->measure(Lcom/apicloud/third/yoga/YogaNode;FLcom/apicloud/third/yoga/YogaMeasureMode;FLcom/apicloud/third/yoga/YogaMeasureMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Measure function isn\'t defined!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public print()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodePrintJNI(J)V

    return-void
.end method

.method public bridge synthetic removeChildAt(I)Lcom/apicloud/third/yoga/YogaNode;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->removeChildAt(I)Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    move-result-object p1

    return-object p1
.end method

.method public removeChildAt(I)Lcom/apicloud/third/yoga/YogaNodeJNIBase;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    iget-wide v2, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeRemoveChildJNI(JJ)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to remove a child of a YogaNode that does not have children"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mMeasureFunction:Lcom/apicloud/third/yoga/YogaMeasureFunction;

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mBaselineFunction:Lcom/apicloud/third/yoga/YogaBaselineFunction;

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->arr:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mHasNewLayout:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mLayoutDirection:I

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeResetJNI(J)V

    return-void
.end method

.method public setAlignContent(Lcom/apicloud/third/yoga/YogaAlign;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetAlignContentJNI(JI)V

    return-void
.end method

.method public setAlignItems(Lcom/apicloud/third/yoga/YogaAlign;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetAlignItemsJNI(JI)V

    return-void
.end method

.method public setAlignSelf(Lcom/apicloud/third/yoga/YogaAlign;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetAlignSelfJNI(JI)V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetAspectRatioJNI(JF)V

    return-void
.end method

.method public setBaselineFunction(Lcom/apicloud/third/yoga/YogaBaselineFunction;)V
    .locals 2

    iput-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mBaselineFunction:Lcom/apicloud/third/yoga/YogaBaselineFunction;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeSetHasBaselineFuncJNI(JZ)V

    return-void
.end method

.method public setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetBorderJNI(JIF)V

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mData:Ljava/lang/Object;

    return-void
.end method

.method public setDirection(Lcom/apicloud/third/yoga/YogaDirection;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaDirection;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetDirectionJNI(JI)V

    return-void
.end method

.method public setDisplay(Lcom/apicloud/third/yoga/YogaDisplay;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaDisplay;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetDisplayJNI(JI)V

    return-void
.end method

.method public setFlex(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexJNI(JF)V

    return-void
.end method

.method public setFlexBasis(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexBasisJNI(JF)V

    return-void
.end method

.method public setFlexBasisAuto()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexBasisAutoJNI(J)V

    return-void
.end method

.method public setFlexBasisPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexBasisPercentJNI(JF)V

    return-void
.end method

.method public setFlexDirection(Lcom/apicloud/third/yoga/YogaFlexDirection;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaFlexDirection;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexDirectionJNI(JI)V

    return-void
.end method

.method public setFlexGrow(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexGrowJNI(JF)V

    return-void
.end method

.method public setFlexShrink(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexShrinkJNI(JF)V

    return-void
.end method

.method public setHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetHeightJNI(JF)V

    return-void
.end method

.method public setHeightAuto()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetHeightAutoJNI(J)V

    return-void
.end method

.method public setHeightPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetHeightPercentJNI(JF)V

    return-void
.end method

.method public setIsReferenceBaseline(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeSetIsReferenceBaselineJNI(JZ)V

    return-void
.end method

.method public setJustifyContent(Lcom/apicloud/third/yoga/YogaJustify;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaJustify;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetJustifyContentJNI(JI)V

    return-void
.end method

.method public setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMarginJNI(JIF)V

    return-void
.end method

.method public setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMarginAutoJNI(JI)V

    return-void
.end method

.method public setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMarginPercentJNI(JIF)V

    return-void
.end method

.method public setMaxHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMaxHeightJNI(JF)V

    return-void
.end method

.method public setMaxHeightPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMaxHeightPercentJNI(JF)V

    return-void
.end method

.method public setMaxWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMaxWidthJNI(JF)V

    return-void
.end method

.method public setMaxWidthPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMaxWidthPercentJNI(JF)V

    return-void
.end method

.method public setMeasureFunction(Lcom/apicloud/third/yoga/YogaMeasureFunction;)V
    .locals 2

    iput-object p1, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mMeasureFunction:Lcom/apicloud/third/yoga/YogaMeasureFunction;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeSetHasMeasureFuncJNI(JZ)V

    return-void
.end method

.method public setMinHeight(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMinHeightJNI(JF)V

    return-void
.end method

.method public setMinHeightPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMinHeightPercentJNI(JF)V

    return-void
.end method

.method public setMinWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMinWidthJNI(JF)V

    return-void
.end method

.method public setMinWidthPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetMinWidthPercentJNI(JF)V

    return-void
.end method

.method public setOverflow(Lcom/apicloud/third/yoga/YogaOverflow;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaOverflow;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetOverflowJNI(JI)V

    return-void
.end method

.method public setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetPaddingJNI(JIF)V

    return-void
.end method

.method public setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetPaddingPercentJNI(JIF)V

    return-void
.end method

.method public setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetPositionJNI(JIF)V

    return-void
.end method

.method public setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaEdge;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetPositionPercentJNI(JIF)V

    return-void
.end method

.method public setPositionType(Lcom/apicloud/third/yoga/YogaPositionType;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaPositionType;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetPositionTypeJNI(JI)V

    return-void
.end method

.method public setWidth(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetWidthJNI(JF)V

    return-void
.end method

.method public setWidthAuto()V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetWidthAutoJNI(J)V

    return-void
.end method

.method public setWidthPercent(F)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetWidthPercentJNI(JF)V

    return-void
.end method

.method public setWrap(Lcom/apicloud/third/yoga/YogaWrap;)V
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaWrap;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeStyleSetFlexWrapJNI(JI)V

    return-void
.end method

.method public swapChildAt(Lcom/apicloud/third/yoga/YogaNode;I)V
    .locals 4

    instance-of v0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mChildren:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p0, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mOwner:Lcom/apicloud/third/yoga/YogaNodeJNIBase;

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    iget-wide v2, p1, Lcom/apicloud/third/yoga/YogaNodeJNIBase;->mNativePointer:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGNodeSwapChildJNI(JJI)V

    return-void
.end method
