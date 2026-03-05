.class public Lcom/deepe/a/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static j:Lcom/deepe/a/b/k;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:J

.field private e:Landroid/hardware/SensorManager;

.field private f:Landroid/os/Vibrator;

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/a/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/b/k;->h:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/deepe/a/b/k;
    .locals 1

    sget-object v0, Lcom/deepe/a/b/k;->j:Lcom/deepe/a/b/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/k;

    invoke-direct {v0, p0}, Lcom/deepe/a/b/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/a/b/k;->j:Lcom/deepe/a/b/k;

    :cond_0
    sget-object p0, Lcom/deepe/a/b/k;->j:Lcom/deepe/a/b/k;

    return-object p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4041708b

    if-eq v1, v2, :cond_5

    const v2, 0x5e8f0c7

    if-eq v1, v2, :cond_3

    const v2, 0x6233516

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x4b

    return p1

    :cond_3
    const-string v1, "heavy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xc8

    return p1

    :cond_5
    const-string v1, "medium"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    return v0

    :cond_6
    const/16 p1, 0x9b

    return p1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/b/k;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/a/b/k;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->q(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/a/b/k;->e:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepe/a/b/k;->e:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/deepe/a/b/k;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    invoke-virtual {p0, v2}, Lcom/deepe/a/b/k;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/b/k;->e:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepe/a/b/k;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/a/b/k;->f()V

    iget-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    iget-object v0, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/a/b/j;

    invoke-interface {v2}, Lcom/deepe/a/b/j;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :array_0
    .array-data 8
        0x64
        0x12c
        0x64
        0x12c
    .end array-data
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/a/b/k;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->p(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lcom/deepe/a/b/k;->a(JI)V

    return-void
.end method

.method public a(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/a/b/k;->f()V

    iget-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    if-lez p3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    invoke-static {v0, p1, p2, p3}, Lcom/deepe/a/b/l;->a(Landroid/os/Vibrator;JI)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/deepe/a/b/k;->f:Landroid/os/Vibrator;

    invoke-virtual {p3, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/deepe/a/b/j;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/a/b/k;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/deepe/a/b/k;->c()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/b/k;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/b/k;->a(I)V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/b/k;->g:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/b/k;->g:Z

    return v0
.end method

.method public b()V
    .locals 3

    const-wide/16 v0, 0x190

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/a/b/k;->a(JI)V

    return-void
.end method

.method public final b(Lcom/deepe/a/b/j;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepe/a/b/k;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/deepe/a/b/k;->d()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepe/a/b/k;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x46

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/deepe/a/b/k;->d:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    iget v4, p0, Lcom/deepe/a/b/k;->a:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/deepe/a/b/k;->b:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/deepe/a/b/k;->c:F

    sub-float v6, p1, v6

    iput v0, p0, Lcom/deepe/a/b/k;->a:F

    iput v1, p0, Lcom/deepe/a/b/k;->b:F

    iput p1, p0, Lcom/deepe/a/b/k;->c:F

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/deepe/a/b/k;->e()V

    :cond_1
    return-void
.end method
