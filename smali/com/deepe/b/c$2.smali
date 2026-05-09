.class Lcom/deepe/b/c$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/c$2;->a:Lcom/deepe/b/c;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/c$2;->a:Lcom/deepe/b/c;

    invoke-static {v0}, Lcom/deepe/b/c;->a(Lcom/deepe/b/c;)Lcom/deepe/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/d/a;->b()V

    iget-object v0, p0, Lcom/deepe/b/c$2;->a:Lcom/deepe/b/c;

    invoke-virtual {v0}, Lcom/deepe/b/c;->e()V

    return-void
.end method
