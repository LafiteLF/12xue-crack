.class Lcom/uzmap/pkg/b/a/j$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/j;

.field private b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$b;->a:Lcom/uzmap/pkg/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j$b;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$b;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget p1, p1, v5

    mul-float/2addr p1, v2

    new-instance v2, Lcom/deepe/c/i/i;

    invoke-direct {v2}, Lcom/deepe/c/i/i;-><init>()V

    float-to-double v5, v0

    const-string v0, "x"

    invoke-virtual {v2, v0, v5, v6}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    float-to-double v5, v3

    const-string v0, "y"

    invoke-virtual {v2, v0, v5, v6}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    float-to-double v5, p1

    const-string p1, "z"

    invoke-virtual {v2, p1, v5, v6}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string p1, "proximity"

    invoke-virtual {v2, p1, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string p1, "status"

    invoke-virtual {v2, p1, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$b;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
