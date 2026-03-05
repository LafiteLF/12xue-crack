.class Lcom/deepe/c/c/h$a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/h$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/h$a;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/h$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/h$a$1;->a:Lcom/deepe/c/c/h$a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/h$a$1;->a:Lcom/deepe/c/c/h$a;

    invoke-static {v0}, Lcom/deepe/c/c/h$a;->a(Lcom/deepe/c/c/h$a;)V

    iget-object v0, p0, Lcom/deepe/c/c/h$a$1;->a:Lcom/deepe/c/c/h$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/c/c/h$a;->a(Lcom/deepe/c/c/h$a;Z)V

    return-void
.end method
