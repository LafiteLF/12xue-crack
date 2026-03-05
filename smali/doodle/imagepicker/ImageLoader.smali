.class public Ldoodle/imagepicker/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static sInstance:Ldoodle/imagepicker/ImageLoader;


# instance fields
.field private mImageLoaderGroup:Landroids/Image/ImageLoaderGroup;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    .line 39
    new-instance v1, Landroids/Image/ImageLoaderGroup;

    const-wide/32 v2, 0x1900000

    invoke-direct {v1, p1, v0, v2, v3}, Landroids/Image/ImageLoaderGroup;-><init>(Landroid/content/Context;IJ)V

    iput-object v1, p0, Ldoodle/imagepicker/ImageLoader;->mImageLoaderGroup:Landroids/Image/ImageLoaderGroup;

    .line 40
    new-instance v0, Landroids/Image/LocalImagerLoader;

    invoke-direct {v0, p1}, Landroids/Image/LocalImagerLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroids/Image/ImageLoaderGroup;->addImageLoader(Landroids/Image/ImageLoader;)V

    .line 41
    iget-object v0, p0, Ldoodle/imagepicker/ImageLoader;->mImageLoaderGroup:Landroids/Image/ImageLoaderGroup;

    invoke-virtual {v0}, Landroids/Image/ImageLoaderGroup;->getImageLoaderConfig()Landroids/Image/ImageLoaderConfig;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/kukugtu/moduleplotting/R$drawable;->doodle_imageselector_loading:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroids/Image/ImageLoaderConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroids/Image/ImageLoaderConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Ldoodle/imagepicker/ImageLoader;
    .locals 2

    .line 25
    sget-object v0, Ldoodle/imagepicker/ImageLoader;->sInstance:Ldoodle/imagepicker/ImageLoader;

    if-nez v0, :cond_1

    .line 26
    const-class v0, Ldoodle/imagepicker/ImageLoader;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Ldoodle/imagepicker/ImageLoader;->sInstance:Ldoodle/imagepicker/ImageLoader;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Ldoodle/imagepicker/ImageLoader;

    invoke-direct {v1, p0}, Ldoodle/imagepicker/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Ldoodle/imagepicker/ImageLoader;->sInstance:Ldoodle/imagepicker/ImageLoader;

    .line 30
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Ldoodle/imagepicker/ImageLoader;->sInstance:Ldoodle/imagepicker/ImageLoader;

    return-object p0
.end method


# virtual methods
.method public display(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Ldoodle/imagepicker/ImageLoader;->mImageLoaderGroup:Landroids/Image/ImageLoaderGroup;

    invoke-virtual {v0, p1, p2}, Landroids/Image/ImageLoaderGroup;->load(Landroid/view/View;Ljava/lang/String;)Z

    return-void
.end method
