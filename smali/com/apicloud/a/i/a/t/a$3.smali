.class Lcom/apicloud/a/i/a/t/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/t/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/t/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/t/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/a$3;->a:Lcom/apicloud/a/i/a/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/a$3;->a:Lcom/apicloud/a/i/a/t/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/t/a;->c(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/t/d;->a()V

    return-void
.end method
