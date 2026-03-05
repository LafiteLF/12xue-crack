.class Lcom/uzmap/pkg/b/a/j$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/j;

.field private b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

.field private c:[F

.field private d:[F

.field private e:[F

.field private f:[F


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 1

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->a:Lcom/uzmap/pkg/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j$d;->c:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j$d;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->f:[F

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j$d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j$d;->c:[F

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->d:[F

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->f:[F

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/uzmap/pkg/b/a/j$d;->c:[F

    iget-object v4, p0, Lcom/uzmap/pkg/b/a/j$d;->d:[F

    invoke-static {p1, v0, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->f:[F

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    const/4 v0, 0x0

    aget v3, p1, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p1, v0

    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v3, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    aget v3, v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    float-to-double v5, v3

    const-string v3, "x"

    invoke-virtual {p1, v3, v5, v6}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    aget v3, v3, v1

    mul-float/2addr v3, v4

    float-to-double v5, v3

    const-string v3, "y"

    invoke-virtual {p1, v3, v5, v6}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object v3, p0, Lcom/uzmap/pkg/b/a/j$d;->e:[F

    aget v2, v3, v2

    mul-float/2addr v2, v4

    float-to-double v2, v2

    const-string v4, "z"

    invoke-virtual {p1, v4, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string v2, "proximity"

    invoke-virtual {p1, v2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j$d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
