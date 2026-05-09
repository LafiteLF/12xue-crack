.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/l;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->empty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->f:I

    iput v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->g:I

    return-void

    :cond_0
    const-string v0, "sourceType"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->a:I

    const-string v0, "encodingType"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->b:I

    const-string v0, "mediaValue"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c:I

    const-string v0, "destinationType"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->d:I

    const-string v0, "allowEdit"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->e:Z

    const-string v0, "quality"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->f:I

    const-string v0, "videoQuality"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->g:I

    const-string v0, "saveToPhotoAlbum"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->h:Z

    const-string v0, "targetWidth"

    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    const-string v0, "targetHeight"

    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    const/4 v0, 0x0

    const-string v1, "groupName"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->k:Ljava/lang/String;

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    :goto_0
    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    if-eqz v1, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->f:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    mul-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
