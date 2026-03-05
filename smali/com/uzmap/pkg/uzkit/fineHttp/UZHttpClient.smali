.class public Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static instance:Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;
    .locals 4

    const-class v0, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->instance:Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/fineHttp/d;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/d;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v1, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->instance:Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;

    :cond_0
    sget-object v1, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;->instance:Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public cancelDownload(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    return-void
.end method

.method public executeBitmap(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    return-void
.end method

.method public sysExecuteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
