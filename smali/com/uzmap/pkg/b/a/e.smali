.class public Lcom/uzmap/pkg/b/a/e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/a/e$a;,
        Lcom/uzmap/pkg/b/a/e$b;,
        Lcom/uzmap/pkg/b/a/e$c;,
        Lcom/uzmap/pkg/b/a/e$d;
    }
.end annotation


# static fields
.field private static e:Lcom/uzmap/pkg/b/a/e;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/b/a/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/deepe/a/c/h;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/a/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a()Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->o(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/e;->a:Landroid/location/LocationManager;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/e;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/a/e;->e:Lcom/uzmap/pkg/b/a/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/b/a/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/b/a/e;->e:Lcom/uzmap/pkg/b/a/e;

    :cond_1
    sget-object p0, Lcom/uzmap/pkg/b/a/e;->e:Lcom/uzmap/pkg/b/a/e;

    return-object p0
.end method

.method private a(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iget-object v1, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/e;->a()Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v0, "network"

    :cond_1
    move-object v2, v0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/e;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "provider "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " disabled."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/b/a/e$b;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/e;->a()Landroid/location/LocationManager;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget v5, p1, Lcom/uzmap/pkg/b/a/e$c;->a:F

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-wide v0, p1, Lcom/uzmap/pkg/b/a/e$c;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Lcom/uzmap/pkg/b/a/e$c;->d:J

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0xea60

    :goto_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/uzmap/pkg/b/a/e;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/a/e;ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/b/a/e;->a(ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    :cond_2
    const/4 v4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_2
    new-instance v8, Lcom/deepe/c/i/i;

    invoke-direct {v8}, Lcom/deepe/c/i/i;-><init>()V

    const-string v9, "status"

    invoke-virtual {v8, v9, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v9, "latitude"

    invoke-virtual {v8, v9, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string v2, "longitude"

    invoke-virtual {v8, v2, v0, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;D)V

    const-string v0, "timestamp"

    invoke-virtual {v8, v0, v6, v7}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;J)V

    if-eqz p4, :cond_5

    move-object v0, p4

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    const-string v1, "msg"

    invoke-virtual {v8, v1, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_6

    const-string v0, "provider"

    invoke-virtual {v8, v0, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_9

    const-string p2, "address"

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, p2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string p2, "isLast"

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, p2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    :cond_9
    invoke-interface {p3, v8}, Lcom/uzmap/pkg/b/a/e$a;->a(Lcom/deepe/c/i/i;)V

    if-nez p1, :cond_a

    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$a;)V

    const/4 p1, 0x6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LocationService location exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/deepe/d/a;->b(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method private a(Lcom/uzmap/pkg/b/a/e$b;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()Lcom/deepe/a/c/h;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->d:Lcom/deepe/a/c/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/a/c/h;->a(Landroid/content/Context;)Lcom/deepe/a/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/e;->d:Lcom/deepe/a/c/h;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->d:Lcom/deepe/a/c/h;

    return-object v0
.end method

.method private b(Lcom/uzmap/pkg/b/a/e$a;)Lcom/uzmap/pkg/b/a/e$b;
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/b/a/e$b;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/b/a/e$b;->a(Lcom/uzmap/pkg/b/a/e$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Lcom/uzmap/pkg/b/a/e$b;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/uzmap/pkg/b/a/e$a;)Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/f/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "require location permission."

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/uzmap/pkg/b/a/e;->a(ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/b/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/e;->b(Lcom/uzmap/pkg/b/a/e$a;)Lcom/uzmap/pkg/b/a/e$b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/e;->b(Lcom/uzmap/pkg/b/a/e$b;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/e;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/a/e;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/b/a/e;->d:Lcom/deepe/a/c/h;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/deepe/a/c/h;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/a/e;->c(Lcom/uzmap/pkg/b/a/e$a;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$a;)V

    iget-object v0, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/e;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/a/e;->b(Lcom/uzmap/pkg/b/a/e$a;)Lcom/uzmap/pkg/b/a/e$b;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/uzmap/pkg/b/a/e$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/uzmap/pkg/b/a/e$b;-><init>(Lcom/uzmap/pkg/b/a/e;Lcom/uzmap/pkg/b/a/e$a;Lcom/uzmap/pkg/b/a/e$c;)V

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$b;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/uzmap/pkg/b/a/e;->a(ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/b/a/e;->c(Lcom/uzmap/pkg/b/a/e$a;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/a/e;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/b/a/e$c;->e:Ljava/lang/Integer;

    :cond_2
    :try_start_0
    new-instance v0, Lcom/uzmap/pkg/b/a/e$d;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/e;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/uzmap/pkg/b/a/e$d;-><init>(Lcom/uzmap/pkg/b/a/e;Landroid/content/Context;Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/e;->b()Lcom/deepe/a/c/h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/deepe/a/c/h;->a(Lcom/deepe/a/c/d;Lcom/deepe/a/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/uzmap/pkg/b/a/e;->a(ZLandroid/location/Location;Lcom/uzmap/pkg/b/a/e$a;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
