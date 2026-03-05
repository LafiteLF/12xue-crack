.class Lcom/deepe/b/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/b;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b$2;->a:Lcom/deepe/b/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/d/b$2;->a:Lcom/deepe/b/d/b;

    invoke-static {v0}, Lcom/deepe/b/d/b;->b(Lcom/deepe/b/d/b;)V

    return-void
.end method
