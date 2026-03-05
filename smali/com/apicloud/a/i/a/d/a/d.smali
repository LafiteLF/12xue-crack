.class Lcom/apicloud/a/i/a/d/a/d;
.super Lcom/apicloud/a/i/a/d/a/c;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/d/a/c;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/apicloud/a/i/a/d/a/l;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 6

    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    new-instance v4, Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    invoke-virtual {p1, v4}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/l;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    :cond_2
    return-void
.end method
