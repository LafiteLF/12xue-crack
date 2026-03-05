.class public abstract Lcom/uzmap/pkg/openapi/mam/ServerRewriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/b/e/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;,
        Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;,
        Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getEncrypt()Lcom/deepe/b/e/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter;->getEncrypt()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEncrypt()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;
.end method

.method public bridge synthetic getIncNoReport()Lcom/deepe/b/e/b$b;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter;->getIncNoReport()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIncNoReport()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;
.end method

.method public bridge synthetic getSmartUpdate()Lcom/deepe/b/e/b$c;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter;->getSmartUpdate()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSmartUpdate()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;
.end method
