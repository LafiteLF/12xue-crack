.class public abstract Lcom/uzmap/pkg/uzcore/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/uzmap/pkg/uzcore/b/d;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public abstract a(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/e;->b:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/e;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/b/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/b/e;->a(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    return-void
.end method

.method protected b(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/e;->b:Z

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/e;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/b/e;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/e;->e:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/e;->e:Z

    return v0
.end method
