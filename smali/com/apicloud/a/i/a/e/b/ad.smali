.class public Lcom/apicloud/a/i/a/e/b/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(D)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(DD)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(FFZ)F
    .locals 4

    sub-float v0, p1, p0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v2, v0, v1

    cmpl-float v3, p0, p1

    if-lez v3, :cond_0

    add-float/2addr v2, v1

    :cond_0
    if-nez p2, :cond_1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    sub-float/2addr p0, p1

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_3

    :cond_2
    return v1

    :cond_3
    if-eqz p2, :cond_4

    sub-float/2addr v2, v1

    :cond_4
    return v2
.end method

.method public static b(D)F
    .locals 2

    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method
