.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->ak(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$32;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$32;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$32;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->cancelDownload(Ljava/lang/Object;)V

    return-void
.end method
