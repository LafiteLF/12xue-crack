.class Lcom/uzmap/pkg/uzcore/b/a$a;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x26a3cff70fffde33L


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/b/a;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/a$a;->a:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/a$a;->b:Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, p0, Lcom/uzmap/pkg/uzcore/b/a$a;->b:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1
.end method
