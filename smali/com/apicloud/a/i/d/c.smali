.class public Lcom/apicloud/a/i/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/d/c$a;
    }
.end annotation


# direct methods
.method public static a(FFF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, v0, p2

    if-eqz v1, :cond_4

    mul-float v1, p0, p1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_2

    mul-float/2addr p2, p0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    cmpl-float p1, p2, p0

    if-lez p1, :cond_3

    move p2, p0

    :cond_3
    return p2

    :cond_4
    :goto_1
    return v0
.end method

.method public static a(F)Landroid/view/ViewOutlineProvider;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/d/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/d/c$a;-><init>(FLcom/apicloud/a/i/d/c$a;)V

    return-object v0
.end method
