.class public Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static getComplexUnit(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 8

    .line 59
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 61
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    :try_start_0
    const-string v2, "android.view.Display"

    .line 67
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRealMetrics"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 69
    const-class v6, Landroid/util/DisplayMetrics;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 70
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getMetaDataHei(Landroid/content/Context;)I
    .locals 1

    const-string v0, "design_height"

    .line 24
    invoke-static {p0, v0}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getMetaDataValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getMetaDataValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 106
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 107
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getMetaDataWid(Landroid/content/Context;)I
    .locals 1

    const-string v0, "design_width"

    .line 29
    invoke-static {p0, v0}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getMetaDataValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRateHei()F
    .locals 2

    .line 41
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getScreenHeight()I

    move-result v0

    .line 42
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getDesignHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getRateWid()F
    .locals 2

    .line 34
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getScreenWidth()I

    move-result v0

    .line 35
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getDesignWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method static isPxVal(Landroid/util/TypedValue;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 87
    iget v0, p0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 88
    invoke-static {p0}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getComplexUnit(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
