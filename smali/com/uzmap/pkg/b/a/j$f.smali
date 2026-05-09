.class Lcom/uzmap/pkg/b/a/j$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/j;

.field private b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/j$f;->a:Lcom/uzmap/pkg/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j$f;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j$f;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    new-instance v2, Lcom/deepe/c/i/i;

    invoke-direct {v2}, Lcom/deepe/c/i/i;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v3, "y"

    invoke-virtual {v2, v3, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v3, "z"

    invoke-virtual {v2, v3, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v3, "proximity"

    invoke-virtual {v2, v3, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string p1, "status"

    invoke-virtual {v2, p1, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j$f;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
