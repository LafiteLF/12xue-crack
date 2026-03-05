.class Lcom/deepe/a/g/a/a$2$1;
.super Lcom/deepe/a/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a/a$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a/a$2;


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a/a$2;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$2$1;->a:Lcom/deepe/a/g/a/a$2;

    invoke-direct {p0}, Lcom/deepe/a/g/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a/a$2$1;->a:Lcom/deepe/a/g/a/a$2;

    invoke-static {v0}, Lcom/deepe/a/g/a/a$2;->a(Lcom/deepe/a/g/a/a$2;)Lcom/deepe/a/g/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;Z)V

    return-void
.end method
