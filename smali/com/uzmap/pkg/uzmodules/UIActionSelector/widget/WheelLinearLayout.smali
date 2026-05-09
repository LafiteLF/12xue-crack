.class public Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WheelLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WheeLinearLayout"


# instance fields
.field private enableScale:Z

.field private isEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mTranslateOffset:I

.field private numberTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->enableScale:Z

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->isEnabled:Z

    .line 25
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->enableScale:Z

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->isEnabled:Z

    .line 31
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->setStaticTransformationsEnabled(Z)V

    .line 33
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->enableScale:Z

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 4

    .line 45
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->getHeight()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "child height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->mTranslateOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 58
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_0

    int-to-float v0, v0

    sub-float v2, v0, v2

    :cond_0
    div-float/2addr v2, v1

    const/4 v0, 0x0

    .line 69
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 70
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 73
    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 74
    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    float-to-double v0, v2

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    if-eqz p1, :cond_3

    .line 78
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->isEnabled:Z

    if-eqz v0, :cond_3

    .line 79
    sget v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->colorActive:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    sget v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->sizeActive:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 87
    sget v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->color:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    sget v0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/Constans;->size:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 p1, 0x2

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setEnabledColor(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->isEnabled:Z

    return-void
.end method

.method protected updateTranslateScrollingOffset(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelLinearLayout;->mTranslateOffset:I

    return-void
.end method
