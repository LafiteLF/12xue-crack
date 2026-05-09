.class abstract Lcom/deepe/c/c/a/a/k$ah;
.super Lcom/deepe/c/c/a/a/k$aj;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ah"
.end annotation


# instance fields
.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/String;

.field j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$aj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->h:Ljava/util/Set;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->j:Ljava/util/Set;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->k:Ljava/util/Set;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->l:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ah;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ah;->h:Ljava/util/Set;

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ah;->j:Ljava/util/Set;

    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->h:Ljava/util/Set;

    return-object v0
.end method

.method public c(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ah;->k:Ljava/util/Set;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$ah;->l:Ljava/util/Set;

    return-void
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->j:Ljava/util/Set;

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->k:Ljava/util/Set;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$ah;->l:Ljava/util/Set;

    return-object v0
.end method
