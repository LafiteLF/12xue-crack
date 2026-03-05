.class public Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;
.super Lcom/deepe/b/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/openapi/mam/ServerRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SEncrypt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/e/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setIV(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->b:Ljava/lang/String;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->a:Ljava/lang/String;

    return-void
.end method
