.class abstract Lcom/deepe/a/c/h$a;
.super Lcom/deepe/a/c/a;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/deepe/a/c/h;


# direct methods
.method public constructor <init>(Lcom/deepe/a/c/h;J)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/h$a;->c:Lcom/deepe/a/c/h;

    invoke-direct {p0, p2, p3}, Lcom/deepe/a/c/a;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/h$a;->c:Lcom/deepe/a/c/h;

    invoke-virtual {v0}, Lcom/deepe/a/c/h;->d()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepe/a/c/h$a;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "timeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/a/c/h$a;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public onFlushComplete(I)V
    .locals 0

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/a/c/h$a;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "success"

    goto :goto_1

    :cond_1
    const-string v1, "location list empty."

    :goto_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/a/c/h$a;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public final onLocationChanged(Ljava/util/List;)V
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
    invoke-virtual {p0, p1}, Lcom/deepe/a/c/h$a;->onLocationChanged(Landroid/location/Location;)V

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
