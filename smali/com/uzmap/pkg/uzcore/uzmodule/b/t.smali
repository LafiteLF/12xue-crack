.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/t;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->e:Ljava/lang/String;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "w"

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->a:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->b:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->c:I

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->d:I

    return-void
.end method
