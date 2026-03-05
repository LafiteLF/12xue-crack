.class public Lcom/apicloud/third/yoga/YogaConstants;
.super Ljava/lang/Object;


# static fields
.field public static final UNDEFINED:F = NaNf


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUndefined()F
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public static isUndefined(F)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUndefined(Lcom/apicloud/third/yoga/YogaValue;)Z
    .locals 1

    iget-object p0, p0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v0, Lcom/apicloud/third/yoga/YogaUnit;->UNDEFINED:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
