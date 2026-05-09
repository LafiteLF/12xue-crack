.class public Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;
.super Ljava/lang/Object;
.source "AutoLayoutConifg.java"


# static fields
.field private static final KEY_DESIGN_HEIGHT:Ljava/lang/String; = "design_height"

.field private static final KEY_DESIGN_WIDTH:Ljava/lang/String; = "design_width"

.field private static inited:Z

.field private static sIntance:Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;


# instance fields
.field private mDesignHeight:I

.field private mDesignWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    invoke-direct {v0}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;-><init>()V

    sput-object v0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->sIntance:Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->inited:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;
    .locals 1

    .line 32
    sget-object v0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->sIntance:Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    return-object v0
.end method


# virtual methods
.method public checkParams()V
    .locals 2

    .line 25
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignWidth:I

    if-lez v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must set design_width and design_height  in your manifest file or AutoLayoutConifg.initScreen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDesignHeight()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignHeight:I

    return v0
.end method

.method public getDesignWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignWidth:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenWidth:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenWidth:I

    .line 62
    invoke-static {p1}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenHeight:I

    .line 63
    invoke-static {p1}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getMetaDataWid(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignWidth:I

    .line 64
    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenHeight:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenWidth:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignHeight:I

    const/4 p1, 0x1

    .line 65
    sput-boolean p1, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->inited:Z

    return-void
.end method

.method public initScreen(IIII)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenWidth:I

    .line 81
    iput p2, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mScreenHeight:I

    .line 82
    iput p3, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignWidth:I

    mul-int/2addr p3, p2

    .line 83
    div-int/2addr p3, p1

    iput p3, p0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->mDesignHeight:I

    const/4 p1, 0x1

    .line 84
    sput-boolean p1, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->inited:Z

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->inited:Z

    return v0
.end method
