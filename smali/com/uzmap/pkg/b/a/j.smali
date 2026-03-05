.class public Lcom/uzmap/pkg/b/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/a/j$a;,
        Lcom/uzmap/pkg/b/a/j$b;,
        Lcom/uzmap/pkg/b/a/j$c;,
        Lcom/uzmap/pkg/b/a/j$d;,
        Lcom/uzmap/pkg/b/a/j$e;,
        Lcom/uzmap/pkg/b/a/j$f;,
        Lcom/uzmap/pkg/b/a/j$g;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Lcom/uzmap/pkg/b/a/j$a;

.field private c:Lcom/uzmap/pkg/b/a/j$b;

.field private d:Lcom/uzmap/pkg/b/a/j$c;

.field private e:Lcom/uzmap/pkg/b/a/j$f;

.field private f:Lcom/uzmap/pkg/b/a/j$d;

.field private g:Lcom/uzmap/pkg/b/a/j$e;

.field private h:Lcom/uzmap/pkg/b/a/j$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$g;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$e;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$d;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$f;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$c;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$b;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/j$a;->a()Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    :goto_0
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->interrupt()V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IILcom/uzmap/pkg/uzcore/uzmodule/b/m;)Z
    .locals 5

    const/4 v0, 0x1

    if-gez p2, :cond_0

    move p2, v0

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/a/j;->q(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 p1, 0x13

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p2, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    if-nez p2, :cond_4

    new-instance p2, Lcom/uzmap/pkg/b/a/j$g;

    invoke-direct {p2, p0, p3}, Lcom/uzmap/pkg/b/a/j$g;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j;->h:Lcom/uzmap/pkg/b/a/j$g;

    goto :goto_0

    :cond_4
    return v0

    :pswitch_1
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    iget-object p2, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    if-nez p2, :cond_6

    new-instance p2, Lcom/uzmap/pkg/b/a/j$e;

    invoke-direct {p2, p0, p3}, Lcom/uzmap/pkg/b/a/j$e;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/j;->g:Lcom/uzmap/pkg/b/a/j$e;

    :goto_0
    iget-object p3, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p3, p2, p1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_2

    :cond_6
    return v0

    :pswitch_2
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v2, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    if-nez v2, :cond_9

    new-instance v2, Lcom/uzmap/pkg/b/a/j$d;

    invoke-direct {v2, p0, p3}, Lcom/uzmap/pkg/b/a/j$d;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v2, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    iget-object p3, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p3, v2, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    iget-object p3, p0, Lcom/uzmap/pkg/b/a/j;->f:Lcom/uzmap/pkg/b/a/j$d;

    invoke-virtual {p1, p3, v1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2

    :cond_9
    return v0

    :pswitch_3
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    if-nez v1, :cond_b

    new-instance v1, Lcom/uzmap/pkg/b/a/j$f;

    invoke-direct {v1, p0, p3}, Lcom/uzmap/pkg/b/a/j$f;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v1, p0, Lcom/uzmap/pkg/b/a/j;->e:Lcom/uzmap/pkg/b/a/j$f;

    goto :goto_1

    :cond_b
    return v0

    :pswitch_4
    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    if-nez v1, :cond_d

    new-instance v1, Lcom/uzmap/pkg/b/a/j$c;

    invoke-direct {v1, p0, p3}, Lcom/uzmap/pkg/b/a/j$c;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v1, p0, Lcom/uzmap/pkg/b/a/j;->d:Lcom/uzmap/pkg/b/a/j$c;

    goto :goto_1

    :cond_d
    return v0

    :pswitch_5
    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    if-nez v1, :cond_f

    new-instance v1, Lcom/uzmap/pkg/b/a/j$b;

    invoke-direct {v1, p0, p3}, Lcom/uzmap/pkg/b/a/j$b;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v1, p0, Lcom/uzmap/pkg/b/a/j;->c:Lcom/uzmap/pkg/b/a/j$b;

    goto :goto_1

    :cond_f
    return v0

    :pswitch_6
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    if-nez v1, :cond_11

    new-instance v1, Lcom/uzmap/pkg/b/a/j$a;

    invoke-direct {v1, p0, p3}, Lcom/uzmap/pkg/b/a/j$a;-><init>(Lcom/uzmap/pkg/b/a/j;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v1, p0, Lcom/uzmap/pkg/b/a/j;->b:Lcom/uzmap/pkg/b/a/j$a;

    :goto_1
    iget-object p3, p0, Lcom/uzmap/pkg/b/a/j;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p3, v1, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_11
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
