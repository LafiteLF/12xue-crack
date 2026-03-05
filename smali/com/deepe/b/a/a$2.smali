.class Lcom/deepe/b/a/a$2;
.super Lcom/deepe/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/a/a;->a(Lcom/deepe/d/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/a/a;

.field private final synthetic b:Lcom/deepe/d/g;


# direct methods
.method constructor <init>(Lcom/deepe/b/a/a;Lcom/deepe/d/g;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/a/a$2;->a:Lcom/deepe/b/a/a;

    iput-object p2, p0, Lcom/deepe/b/a/a$2;->b:Lcom/deepe/d/g;

    invoke-direct {p0}, Lcom/deepe/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/a/a$2;->a:Lcom/deepe/b/a/a;

    invoke-static {v0}, Lcom/deepe/b/a/a;->a(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/a/a$2;->b:Lcom/deepe/d/g;

    check-cast v1, Lcom/deepe/b/a/h;

    invoke-virtual {v0, v1}, Lcom/deepe/b/a/c;->a(Lcom/deepe/b/a/h;)V

    return-void
.end method
