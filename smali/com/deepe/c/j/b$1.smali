.class Lcom/deepe/c/j/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/j/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/j/b;

.field private final synthetic b:Lcom/deepe/c/j/l;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/b;Lcom/deepe/c/j/l;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/b$1;->a:Lcom/deepe/c/j/b;

    iput-object p2, p0, Lcom/deepe/c/j/b$1;->b:Lcom/deepe/c/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/j/b$1;->a:Lcom/deepe/c/j/b;

    invoke-static {v0}, Lcom/deepe/c/j/b;->a(Lcom/deepe/c/j/b;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/j/b$1;->b:Lcom/deepe/c/j/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
