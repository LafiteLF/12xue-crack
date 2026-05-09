.class public Lcom/uzmap/pkg/uzcore/i/a/c;
.super Landroid/webkit/WebResourceResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/a/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/c$a;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/c$a;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/uzmap/pkg/uzcore/i/a/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/uzmap/pkg/uzcore/i/a/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/c$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/a/c$a;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance p2, Lcom/uzmap/pkg/uzcore/i/a/c;

    invoke-direct {p2, p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2
.end method
