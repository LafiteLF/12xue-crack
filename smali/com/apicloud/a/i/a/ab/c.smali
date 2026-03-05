.class Lcom/apicloud/a/i/a/ab/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ab/c;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ab/c;->b:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ab/c;->c:Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-boolean p2, p0, Lcom/apicloud/a/i/a/ab/c;->c:Z

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance p2, Lcom/apicloud/a/i/c/d;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/d;-><init>()V

    move-object p3, p1

    check-cast p3, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p3}, Lcom/apicloud/a/i/a/ab/a;->d()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string v0, "value"

    invoke-virtual {p2, v0, p3}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/apicloud/a/i/a/ab/c;->a:Lcom/apicloud/a/d;

    invoke-interface {p3}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    const-string p3, "changing"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ab/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ab/a;->d()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ab/c;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    const-string v1, "change"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
