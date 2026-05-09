.class Lcom/deepe/e/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/e/g;->c(Lcom/deepe/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/e/g;

.field private final synthetic b:Lcom/deepe/e/d;


# direct methods
.method constructor <init>(Lcom/deepe/e/g;Lcom/deepe/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/e/g$3;->a:Lcom/deepe/e/g;

    iput-object p2, p0, Lcom/deepe/e/g$3;->b:Lcom/deepe/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ILorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/g$3;->a:Lcom/deepe/e/g;

    iget-object v1, p0, Lcom/deepe/e/g$3;->b:Lcom/deepe/e/d;

    invoke-static {v0, v1, p1, p2}, Lcom/deepe/e/g;->a(Lcom/deepe/e/g;Lcom/deepe/e/d;ILorg/json/JSONObject;)V

    return-void
.end method

.method public onResult(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/g$3;->a:Lcom/deepe/e/g;

    iget-object v1, p0, Lcom/deepe/e/g$3;->b:Lcom/deepe/e/d;

    invoke-static {v0, v1, p1}, Lcom/deepe/e/g;->a(Lcom/deepe/e/g;Lcom/deepe/e/d;Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V

    return-void
.end method
