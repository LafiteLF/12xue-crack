.class final Lcom/uzmap/pkg/b/a/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/a/e;

.field private final b:Lcom/uzmap/pkg/b/a/e$a;

.field private final c:Lcom/uzmap/pkg/b/a/e$c;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/a/e;Lcom/uzmap/pkg/b/a/e$a;Lcom/uzmap/pkg/b/a/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/b/a/e$b;->c:Lcom/uzmap/pkg/b/a/e$c;

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/a/e$b;)Lcom/uzmap/pkg/b/a/e$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    return-object p0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/b/a/e$b$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/a/e$b$1;-><init>(Lcom/uzmap/pkg/b/a/e$b;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    invoke-static {v1}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/deepe/a/c/b;->a(Landroid/content/Context;Landroid/location/Location;Lcom/deepe/a/c/f;)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/a/e$b;)Lcom/uzmap/pkg/b/a/e;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "timeout"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/a/e$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/b/a/e;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFlushComplete(I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/a/e$b;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->c:Lcom/uzmap/pkg/b/a/e$c;

    iget-boolean v0, v0, Lcom/uzmap/pkg/b/a/e$c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$a;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->c:Lcom/uzmap/pkg/b/a/e$c;

    iget-boolean v0, v0, Lcom/uzmap/pkg/b/a/e$c;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/e$b;->a(Landroid/location/Location;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e$b;->a:Lcom/uzmap/pkg/b/a/e;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/uzmap/pkg/b/a/e$b;->b:Lcom/uzmap/pkg/b/a/e$a;

    if-eqz p1, :cond_3

    const-string v3, "success"

    goto :goto_1

    :cond_3
    const-string v3, "location list empty."

    :goto_1
    invoke-static {v0, v1, p1, v2, v3}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/a/e$b;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/a/e$b;->a()V

    return-void
.end method
