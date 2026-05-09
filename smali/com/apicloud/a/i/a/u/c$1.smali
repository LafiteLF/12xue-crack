.class Lcom/apicloud/a/i/a/u/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/c;

.field private final synthetic b:Lcom/apicloud/a/i/a/u/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/c;Lcom/apicloud/a/i/a/u/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/c$1;->a:Lcom/apicloud/a/i/a/u/c;

    iput-object p2, p0, Lcom/apicloud/a/i/a/u/c$1;->b:Lcom/apicloud/a/i/a/u/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/c$1;->b:Lcom/apicloud/a/i/a/u/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/b;->requestLayout()V

    return-void
.end method
