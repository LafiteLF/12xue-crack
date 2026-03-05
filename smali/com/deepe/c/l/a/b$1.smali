.class Lcom/deepe/c/l/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/l/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/l/a/b;-><init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/l/a/b;


# direct methods
.method constructor <init>(Lcom/deepe/c/l/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/l/a/b$1;->a:Lcom/deepe/c/l/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
