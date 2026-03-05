.class public Lcom/apicloud/c/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/third/yoga/YogaBaselineFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public baseline(Lcom/apicloud/third/yoga/YogaNode;FF)F
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result p1

    if-ltz p1, :cond_0

    int-to-float p1, p1

    return p1

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    return p3
.end method
