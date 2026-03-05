.class public Lcom/apicloud/a/i/a/r/x;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    return p0
.end method

.method public static b(I)I
    .locals 1

    const/high16 v0, -0x80000000

    sub-int/2addr p0, v0

    return p0
.end method

.method public static c(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
