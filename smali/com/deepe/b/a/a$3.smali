.class Lcom/deepe/b/a/a$3;
.super Lcom/deepe/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/a/a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/a/a;


# direct methods
.method constructor <init>(Lcom/deepe/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/a/a$3;->a:Lcom/deepe/b/a/a;

    invoke-direct {p0}, Lcom/deepe/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/a/a$3;->a:Lcom/deepe/b/a/a;

    invoke-static {v0}, Lcom/deepe/b/a/a;->a(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/a/a$3;->a:Lcom/deepe/b/a/a;

    invoke-static {v1}, Lcom/deepe/b/a/a;->b(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/b/a/c;->a(Lcom/deepe/b/a/g;)V

    return-void
.end method
