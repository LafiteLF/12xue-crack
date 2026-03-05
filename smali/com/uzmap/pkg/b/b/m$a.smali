.class Lcom/uzmap/pkg/b/b/m$a;
.super Lcom/deepe/c/l/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;-><init>()V

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/m$a;->a:Z

    iput-object p2, p0, Lcom/uzmap/pkg/b/b/m$a;->d:Ljava/lang/String;

    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "cusloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lcom/uzmap/pkg/b/b/m$a;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/m$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/deepe/c/l/g/b;)Lcom/deepe/c/l/g/b;
    .locals 2

    invoke-super {p0, p1}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/g/b;)Lcom/deepe/c/l/g/b;

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/m$a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic c()Lcom/deepe/c/l/b/a;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/m$a;->i()Lcom/uzmap/pkg/b/b/m$a;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/uzmap/pkg/b/b/m$a;
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/b/b/m$a;

    iget-boolean v1, p0, Lcom/uzmap/pkg/b/b/m$a;->a:Z

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/m$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/b/b/m$a;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
