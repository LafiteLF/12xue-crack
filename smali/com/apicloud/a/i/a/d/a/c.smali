.class Lcom/apicloud/a/i/a/d/a/c;
.super Lcom/apicloud/a/i/a/d/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/d/a/c$a;
    }
.end annotation


# static fields
.field private static final d:Landroid/util/SparseIntArray;


# instance fields
.field private final A:I

.field a:Lcom/apicloud/a/i/a/d/a/c$a;

.field private final e:Landroid/hardware/camera2/CameraManager;

.field private final f:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final g:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final h:Landroid/media/ImageReader$OnImageAvailableListener;

.field private i:Ljava/lang/String;

.field private j:Landroid/hardware/camera2/CameraCharacteristics;

.field private k:Landroid/hardware/camera2/CameraDevice;

.field private l:Landroid/hardware/camera2/CameraCaptureSession;

.field private m:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private n:Landroid/media/ImageReader;

.field private final o:Lcom/apicloud/a/i/a/d/a/l;

.field private final p:Lcom/apicloud/a/i/a/d/a/l;

.field private q:I

.field private r:Lcom/apicloud/a/i/a/d/a/a;

.field private s:Z

.field private t:Lcom/apicloud/a/i/a/d/a;

.field private u:I

.field private v:I

.field private w:Lcom/apicloud/a/i/a/d/a/p;

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/d/a/f;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V

    new-instance p1, Lcom/apicloud/a/i/a/d/a/c$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/d/a/c$1;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->f:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/c$2;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/d/a/c$2;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->g:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/c$3;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/d/a/c$3;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/c$4;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/d/a/c$4;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->h:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/l;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/l;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    new-instance p1, Lcom/apicloud/a/i/a/d/a/l;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/l;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    sget-object p1, Lcom/apicloud/a/i/a/d/a/g;->a:Lcom/apicloud/a/i/a/d/a/a;

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/c;->x:I

    const/16 p1, 0xc8

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/c;->A:I

    invoke-static {p3}, Lcom/deepe/c/a/j;->e(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->e:Landroid/hardware/camera2/CameraManager;

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    new-instance p2, Lcom/apicloud/a/i/a/d/a/c$5;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/d/a/c$5;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/a/j;->a(Lcom/apicloud/a/i/a/d/a/j$a;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method private q()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, p0, Lcom/apicloud/a/i/a/d/a/c;->y:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    div-float/2addr v0, v4

    iput v0, p0, Lcom/apicloud/a/i/a/d/a/c;->z:F

    return-void
.end method

.method private r()Z
    .locals 11

    :try_start_0
    sget-object v0, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->e:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_9

    array-length v2, v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "Unexpected state: LENS_FACING null"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v2, :cond_5

    :try_start_1
    aget-object v0, v1, v3

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->e:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-lt v2, v1, :cond_1

    iput v3, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    return v7

    :cond_1
    sget-object v4, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    sget-object v0, Lcom/apicloud/a/i/a/d/a/c;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    return v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return v3

    :cond_5
    aget-object v8, v1, v4

    iget-object v9, p0, Lcom/apicloud/a/i/a/d/a/c;->e:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_6

    goto :goto_3

    :cond_6
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_8

    iput-object v8, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    iput-object v9, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    return v7

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera available."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get a list of camera devices"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private s()V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/l;->c()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_3

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/l;->c()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/l;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/l;->b(Lcom/apicloud/a/i/a/d/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->a()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/d/a/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/d/a/l;->b(Lcom/apicloud/a/i/a/d/a/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    goto :goto_1

    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v6, 0x780

    if-gt v5, v6, :cond_4

    const/16 v6, 0x438

    if-gt v4, v6, :cond_4

    iget-object v6, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    new-instance v7, Lcom/apicloud/a/i/a/d/a/k;

    invoke-direct {v7, v5, v4}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get configuration map: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/l;->d(Lcom/apicloud/a/i/a/d/a/a;)Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v0

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->h:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-static {}, Lcom/apicloud/a/i/a/d/a/h;->a()Lcom/apicloud/a/i/a/d/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/d/a/h;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private u()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->e:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->f:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private v()Lcom/apicloud/a/i/a/d/a/k;
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->h()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v3, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/d/a/k;

    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {v4}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v5

    if-lt v5, v0, :cond_1

    invoke-virtual {v4}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v5

    if-lt v5, v1, :cond_1

    return-object v4
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/d/a/c$a;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to lock focus."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private x()I
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/c;->v:I

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->b()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->a()Z

    :cond_1
    return-void
.end method

.method protected a(Lcom/apicloud/a/i/a/d/a/l;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 5

    const/16 p1, 0x100

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    new-instance v3, Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/apicloud/a/i/a/d/a/k;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/d/a/l;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/apicloud/a/i/a/d/a;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->t:Lcom/apicloud/a/i/a/d/a;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->t:Lcom/apicloud/a/i/a/d/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a;->b()I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->t:Lcom/apicloud/a/i/a/d/a;

    :cond_1
    :goto_0
    return-void
.end method

.method a(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/a/r;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/d/a/r;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/d/a/j;->a()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    new-instance v1, Lcom/apicloud/a/i/a/d/a/c$7;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/d/a/c$7;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/p;->a(Lcom/apicloud/a/i/a/d/a/o;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/p;->a(Ljava/io/File;)V

    new-instance p1, Lcom/apicloud/a/i/a/d/a/s;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/d/a/s;-><init>()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->x()I

    move-result v0

    iput v0, p1, Lcom/apicloud/a/i/a/d/a/s;->c:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->p:Lcom/apicloud/a/i/a/d/a/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/l;->d(Lcom/apicloud/a/i/a/d/a/a;)Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v1

    iput v1, p1, Lcom/apicloud/a/i/a/d/a/s;->a:I

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v0

    iput v0, p1, Lcom/apicloud/a/i/a/d/a/s;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/p;->a(Lcom/apicloud/a/i/a/d/a/s;)V

    return-void
.end method

.method a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->k()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    :cond_1
    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->s()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->q()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->t()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->u()V

    const/4 v0, 0x1

    return v0
.end method

.method a(Lcom/apicloud/a/i/a/d/a/a;)Z
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/l;->b(Lcom/apicloud/a/i/a/d/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->t()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->c()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->m()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    :cond_2
    return-void
.end method

.method b(I)V
    .locals 4

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->l()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v0, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    :cond_1
    :goto_0
    return-void
.end method

.method c()V
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->v()Lcom/apicloud/a/i/a/d/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v2

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/i/a/d/a/j;->a(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/j;->a()Landroid/view/Surface;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->g:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to start camera session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method c(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/c;->v:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c;->c:Lcom/apicloud/a/i/a/d/a/j;

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->v:I

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/d/a/j;->a(I)V

    return-void
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->q:I

    return v0
.end method

.method f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->o:Lcom/apicloud/a/i/a/d/a/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/apicloud/a/i/a/d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->r:Lcom/apicloud/a/i/a/d/a/a;

    return-object v0
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    return v0
.end method

.method j()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->w()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->n()V

    :goto_0
    return-void
.end method

.method k()V
    .locals 5

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->j:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    array-length v3, v0

    if-eqz v3, :cond_1

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/d/a/c;->s:Z

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method l()V
    .locals 5

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method m()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->w:Lcom/apicloud/a/i/a/d/a/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/p;->e()V

    :cond_0
    return-void
.end method

.method n()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->k:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->n:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/c;->u:I

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/4 v4, 0x3

    if-eq v2, v3, :cond_3

    if-eq v2, v1, :cond_2

    if-eq v2, v4, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c;->x()I

    move-result v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcom/apicloud/a/i/a/d/a/c$6;

    invoke-direct {v2, p0}, Lcom/apicloud/a/i/a/d/a/c$6;-><init>(Lcom/apicloud/a/i/a/d/a/c;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Cannot capture a still picture."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method o()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->k()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/c;->l()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->l:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c;->m:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    invoke-virtual {v0, v1, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/d/a/c$a;->a(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to restart camera preview."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
