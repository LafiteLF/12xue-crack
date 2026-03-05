.class final Lcom/deepe/a/c/g;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/location/Location;

.field private b:Landroid/location/Geocoder;

.field private c:Lcom/deepe/a/c/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/Location;Lcom/deepe/a/c/f;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/deepe/a/c/g;->a:Landroid/location/Location;

    iput-object p3, p0, Lcom/deepe/a/c/g;->c:Lcom/deepe/a/c/f;

    new-instance p2, Landroid/location/Geocoder;

    invoke-direct {p2, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/deepe/a/c/g;->b:Landroid/location/Geocoder;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/deepe/a/c/g;->a:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object p1, p0, Lcom/deepe/a/c/g;->a:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/deepe/a/c/g;->b:Landroid/location/Geocoder;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Address;->toString()Ljava/lang/String;

    :cond_1
    invoke-virtual {v3}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/c/g;->c:Lcom/deepe/a/c/f;

    iget-object v1, p0, Lcom/deepe/a/c/g;->a:Landroid/location/Location;

    invoke-interface {v0, v1, p1}, Lcom/deepe/a/c/f;->a(Landroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/deepe/a/c/g;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/deepe/a/c/g;->a(Ljava/lang/String;)V

    return-void
.end method
