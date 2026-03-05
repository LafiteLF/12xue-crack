.class Lcom/deepe/b/f/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/f/a;->d(Lcom/deepe/b/f/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/deepe/b/f/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/f/a$1;->a:Lcom/deepe/b/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/deepe/b/f/a$1$1;

    iget-object v1, p0, Lcom/deepe/b/f/a$1;->a:Lcom/deepe/b/f/c;

    invoke-direct {v0, p0, v1}, Lcom/deepe/b/f/a$1$1;-><init>(Lcom/deepe/b/f/a$1;Lcom/deepe/b/f/c;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/deepe/b/f/a;->a(Ljava/lang/String;Lcom/deepe/b/f/c;)V

    new-instance v0, Lcom/deepe/b/f/a$1$2;

    iget-object v2, p0, Lcom/deepe/b/f/a$1;->a:Lcom/deepe/b/f/c;

    invoke-direct {v0, p0, v2}, Lcom/deepe/b/f/a$1$2;-><init>(Lcom/deepe/b/f/a$1;Lcom/deepe/b/f/c;)V

    new-instance v2, Lcom/deepe/b/f/a$a;

    invoke-direct {v2, v0}, Lcom/deepe/b/f/a$a;-><init>(Lcom/deepe/b/f/c;)V

    invoke-static {v1, v2}, Lcom/deepe/b/f/a;->b(Ljava/lang/String;Lcom/deepe/b/f/c;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepe/b/f/a;->a(Z)V

    return-void
.end method
