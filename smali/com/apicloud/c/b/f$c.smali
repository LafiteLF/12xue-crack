.class public Lcom/apicloud/c/b/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/third/yoga/YogaMeasureFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/apicloud/third/yoga/YogaMeasureMode;)I
    .locals 1

    sget-object v0, Lcom/apicloud/third/yoga/YogaMeasureMode;->AT_MOST:Lcom/apicloud/third/yoga/YogaMeasureMode;

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    sget-object v0, Lcom/apicloud/third/yoga/YogaMeasureMode;->EXACTLY:Lcom/apicloud/third/yoga/YogaMeasureMode;

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public measure(Lcom/apicloud/third/yoga/YogaNode;FLcom/apicloud/third/yoga/YogaMeasureMode;FLcom/apicloud/third/yoga/YogaMeasureMode;)J
    .locals 1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/apicloud/c/b/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-direct {p0, p3}, Lcom/apicloud/c/b/f$c;->a(Lcom/apicloud/third/yoga/YogaMeasureMode;)I

    move-result p3

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0, p5}, Lcom/apicloud/c/b/f$c;->a(Lcom/apicloud/third/yoga/YogaMeasureMode;)I

    move-result p3

    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/apicloud/third/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide p1

    return-wide p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/apicloud/third/yoga/YogaMeasureOutput;->make(II)J

    move-result-wide p1

    return-wide p1
.end method
