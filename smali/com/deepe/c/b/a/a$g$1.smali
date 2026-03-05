.class Lcom/deepe/c/b/a/a$g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/a/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/a/a$g;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/a/a$g;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/a/a$g$1;->a:Lcom/deepe/c/b/a/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g$1;->a:Lcom/deepe/c/b/a/a$g;

    invoke-virtual {v0}, Lcom/deepe/c/b/a/a$g;->b()V

    return-void
.end method
