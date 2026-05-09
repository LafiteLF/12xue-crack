.class public Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;
.super Lcom/deepe/b/e/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/openapi/mam/ServerRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIncNoReport"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/e/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final getParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->c:Ljava/util/Map;

    return-void
.end method

.method public final setParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->b:Ljava/util/Map;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->a:Ljava/lang/String;

    return-void
.end method
