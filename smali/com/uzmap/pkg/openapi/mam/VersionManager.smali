.class public final Lcom/uzmap/pkg/openapi/mam/VersionManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V
    .locals 1

    invoke-static {}, Lcom/deepe/b/e/a;->a()Lcom/deepe/b/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;Lcom/deepe/b/e/b;)V

    return-void
.end method

.method public static final checkUpdate(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V
    .locals 1

    invoke-static {}, Lcom/deepe/b/e/a;->a()Lcom/deepe/b/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/deepe/b/e/b;)V

    return-void
.end method

.method public static final resetSmartUpdate(Lcom/uzmap/pkg/openapi/mam/ResetListener;)V
    .locals 1

    invoke-static {}, Lcom/deepe/b/e/a;->a()Lcom/deepe/b/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/ResetListener;)V

    return-void
.end method

.method public static final startSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/uzmap/pkg/openapi/mam/VersionManager;->startSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V

    return-void
.end method

.method public static final startSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;",
            "Lcom/uzmap/pkg/openapi/mam/ServerRewriter;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/deepe/b/e/a;->a()Lcom/deepe/b/e/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/deepe/b/e/b;)V

    return-void
.end method
