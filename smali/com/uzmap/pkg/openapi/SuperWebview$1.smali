.class Lcom/uzmap/pkg/openapi/SuperWebview$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/openapi/SuperWebview;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/openapi/SuperWebview;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/openapi/SuperWebview;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview$1;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview$1;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    invoke-static {v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->access$0(Lcom/uzmap/pkg/openapi/SuperWebview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/openapi/SuperWebview;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview$1;->a:Lcom/uzmap/pkg/openapi/SuperWebview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/openapi/SuperWebview;->access$1(Lcom/uzmap/pkg/openapi/SuperWebview;Ljava/lang/String;)V

    return-void
.end method
