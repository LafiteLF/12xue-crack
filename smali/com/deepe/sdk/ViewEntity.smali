.class public Lcom/deepe/sdk/ViewEntity;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_NAV_SHOW:Ljava/lang/String; = "navShow"

.field public static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field public delta:I

.field private mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

.field public silent:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-void
.end method


# virtual methods
.method public final has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->has(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optAll()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final optBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepe/sdk/ViewEntity;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final optBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public final optDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/deepe/sdk/ViewEntity;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final optDouble(Ljava/lang/String;D)D
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optDouble(Ljava/lang/String;D)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepe/sdk/ViewEntity;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final optInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-nez v0, :cond_0

    return p2

    :cond_0
    const-string v0, "navShow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/deepe/sdk/ViewEntity;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_2

    move p2, p1

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    const-string v1, "hideNavigationBar"

    invoke-virtual {p0, v1}, Lcom/deepe/sdk/ViewEntity;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/deepe/sdk/ViewEntity;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v0

    :cond_3
    const-string v0, "navigateToOpen"

    invoke-virtual {p0, v0}, Lcom/deepe/sdk/ViewEntity;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    return p1

    :cond_5
    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final optLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/deepe/sdk/ViewEntity;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final optLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepe/sdk/ViewEntity;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/deepe/sdk/ViewEntity;->url:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/deepe/sdk/ViewEntity;->mArgs:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/sdk/ViewEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/sdk/ViewEntity;->delta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", silent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepe/sdk/ViewEntity;->silent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
