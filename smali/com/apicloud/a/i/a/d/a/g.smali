.class Lcom/apicloud/a/i/a/d/a/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/apicloud/a/i/a/d/a/a;

.field static final b:Lcom/apicloud/a/i/a/d/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/d/a/a;->a(II)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/d/a/g;->a:Lcom/apicloud/a/i/a/d/a/a;

    new-instance v0, Lcom/apicloud/a/i/a/d/a/k;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/g;->b:Lcom/apicloud/a/i/a/d/a/k;

    return-void
.end method

.method static a(I)Landroid/media/CamcorderProfile;
    .locals 0

    invoke-static {p0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;)Landroid/media/CamcorderProfile;
    .locals 1

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/i/a/d/a/g;->b(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apicloud/a/i/a/d/a/g;->a(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Landroid/media/CamcorderProfile;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/i/a/d/a/g;->b(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lcom/apicloud/a/i/a/d/a/g;->a(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method static b(I)Landroid/media/CamcorderProfile;
    .locals 3

    const/4 v0, 0x6

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v1, 0x7

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method
