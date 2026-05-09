.class Lcom/uzmap/pkg/b/a/j$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/j;

.field private b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$e;->a:Lcom/uzmap/pkg/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j$e;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$e;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v3, v1

    const-string v1, "x"

    invoke-virtual {v0, v1, v3, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-double v4, v1

    const-string v1, "y"

    invoke-virtual {v0, v1, v4, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget p1, p1, v1

    float-to-double v4, p1

    const-string p1, "z"

    invoke-virtual {v0, p1, v4, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string p1, "proximity"

    invoke-virtual {v0, p1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string p1, "status"

    invoke-virtual {v0, p1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$e;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
