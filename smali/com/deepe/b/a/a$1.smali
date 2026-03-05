.class Lcom/deepe/b/a/a$1;
.super Lcom/deepe/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/a/a;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/a/a;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/b/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/a/a$1;->a:Lcom/deepe/b/a/a;

    iput-object p2, p0, Lcom/deepe/b/a/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/deepe/b/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/a/a$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/b/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/a/a$1;->a:Lcom/deepe/b/a/a;

    invoke-static {v0}, Lcom/deepe/b/a/a;->a(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/a/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/b/a/c;->a(Ljava/lang/String;)V

    return-void
.end method
