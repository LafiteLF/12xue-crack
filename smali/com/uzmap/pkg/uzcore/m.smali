.class public final Lcom/uzmap/pkg/uzcore/m;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
