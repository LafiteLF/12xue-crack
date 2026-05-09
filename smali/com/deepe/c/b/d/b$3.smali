.class Lcom/deepe/c/b/d/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/d/b;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/d/b$3;->a:Lcom/deepe/c/b/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/d/b$3;->a:Lcom/deepe/c/b/d/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/b;->f(I)V

    iget-object v0, p0, Lcom/deepe/c/b/d/b$3;->a:Lcom/deepe/c/b/d/b;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/b;->n()V

    return-void
.end method
