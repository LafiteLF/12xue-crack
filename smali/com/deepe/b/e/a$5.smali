.class Lcom/deepe/b/e/a$5;
.super Lcom/deepe/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/ResetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/e/a;

.field private final synthetic b:Lcom/uzmap/pkg/openapi/mam/ResetListener;


# direct methods
.method constructor <init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/ResetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/e/a$5;->a:Lcom/deepe/b/e/a;

    iput-object p2, p0, Lcom/deepe/b/e/a$5;->b:Lcom/uzmap/pkg/openapi/mam/ResetListener;

    invoke-direct {p0}, Lcom/deepe/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/e/a$5;->b:Lcom/uzmap/pkg/openapi/mam/ResetListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/mam/ResetListener;->onProgress(D)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/e/a$5;->b:Lcom/uzmap/pkg/openapi/mam/ResetListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/mam/ResetListener;->onStart(J)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/e/a$5;->b:Lcom/uzmap/pkg/openapi/mam/ResetListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/openapi/mam/ResetListener;->onEnd(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
