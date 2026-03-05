.class Lcom/deepe/b/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->a(ID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:I

.field private final synthetic c:D


# direct methods
.method constructor <init>(Lcom/deepe/b/d;ID)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    iput p2, p0, Lcom/deepe/b/d$6;->b:I

    iput-wide p3, p0, Lcom/deepe/b/d$6;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/deepe/b/d$6;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/deepe/b/d$6;->c:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setProgress(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/deepe/b/d$6;->c:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/h/a;->setProgress(I)V

    iget-object v0, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->c(Lcom/deepe/b/d;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/deepe/b/d$6;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->c(Lcom/deepe/b/d;)V

    sget-object v0, Lcom/deepe/b;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
