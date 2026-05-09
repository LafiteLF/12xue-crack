.class Lcom/uzmap/pkg/uzcore/d/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/d/f;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/d/f;Lcom/uzmap/pkg/uzcore/d/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/f$b;-><init>(Lcom/uzmap/pkg/uzcore/d/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/a/b/f;)V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/deepe/a/b/f;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget v1, p1, Lcom/deepe/a/b/f;->a:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const-string v2, "keyboardshow"

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->c:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/deepe/a/b/f;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const/4 v0, 0x0

    const-string v1, "keyboardhide"

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->b:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/f$b;->c:Z

    return-void
.end method
