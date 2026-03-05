.class Lcom/deepe/c/b/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/n;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/n$2;->a:Lcom/deepe/c/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/n$2;->a:Lcom/deepe/c/b/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/n;->c(I)V

    return-void
.end method
