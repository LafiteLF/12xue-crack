.class Lcom/deepe/c/j/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/j/l;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/j/l;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/deepe/c/j/l;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/l$1;->a:Lcom/deepe/c/j/l;

    iput-object p2, p0, Lcom/deepe/c/j/l$1;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/deepe/c/j/l$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/j/l$1;->a:Lcom/deepe/c/j/l;

    invoke-static {v0}, Lcom/deepe/c/j/l;->access$1(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/j/l$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/deepe/c/j/l$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/deepe/c/j/s$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/deepe/c/j/l$1;->a:Lcom/deepe/c/j/l;

    invoke-static {v0}, Lcom/deepe/c/j/l;->access$1(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/j/l$1;->a:Lcom/deepe/c/j/l;

    invoke-virtual {v1}, Lcom/deepe/c/j/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/s$a;->a(Ljava/lang/String;)V

    return-void
.end method
