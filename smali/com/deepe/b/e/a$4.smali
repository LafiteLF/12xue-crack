.class Lcom/deepe/b/e/a$4;
.super Lcom/deepe/b/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/deepe/b/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/e/a;

.field private final synthetic b:Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;


# direct methods
.method constructor <init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/e/a$4;->a:Lcom/deepe/b/e/a;

    iput-object p2, p0, Lcom/deepe/b/e/a$4;->b:Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;

    invoke-direct {p0}, Lcom/deepe/b/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIDLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/deepe/b/e/a$4;->b:Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;->onStatusChange(IIIDLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/deepe/b/d/c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/deepe/b/d/c;->a(Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/b/e/a$4;->b:Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/deepe/b/e/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;->onStart(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/e/a$4;->b:Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/deepe/b/b/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;->onFinish(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
