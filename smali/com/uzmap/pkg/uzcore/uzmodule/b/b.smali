.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/b;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public d:Lcom/uzmap/pkg/uzcore/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->a(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;Z)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    return-void

    :cond_0
    const-string v0, "animation"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string p1, "type"

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "subType"

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "duration"

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssTime(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    :cond_1
    double-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    const-wide/16 v2, 0x12c

    :cond_2
    invoke-static {p1, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/b;->a(IIJ)Lcom/uzmap/pkg/uzcore/b;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/b;->a(Z)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->f()Lcom/uzmap/pkg/uzcore/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    :goto_1
    return-void
.end method


# virtual methods
.method public f()Lcom/uzmap/pkg/uzcore/c;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b;->b()V

    return-void
.end method

.method public h()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->f()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->d:Lcom/uzmap/pkg/uzcore/b;

    return-void
.end method

.method public i()Z
    .locals 1

    const-string v0, "animation"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;->isNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
