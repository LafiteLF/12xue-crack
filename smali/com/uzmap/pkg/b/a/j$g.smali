.class Lcom/uzmap/pkg/b/a/j$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:F

.field final synthetic b:Lcom/uzmap/pkg/b/a/j;

.field private c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$g;->b:Lcom/uzmap/pkg/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j$g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-void
.end method

.method private a(F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/b/a/j$g;->d:F

    return-void
.end method


# virtual methods
.method public a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/j$g;->a(F)V

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/uzmap/pkg/b/a/j$g;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/uzmap/pkg/b/a/j$g;->a:F

    :cond_1
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    float-to-double v2, v2

    const-string v4, "x"

    invoke-virtual {v0, v4, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v4, v2

    const-string v2, "y"

    invoke-virtual {v0, v2, v4, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    float-to-double v4, p1

    const-string p1, "z"

    invoke-virtual {v0, p1, v4, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string p1, "proximity"

    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string p1, "status"

    invoke-virtual {v0, p1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$g;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
