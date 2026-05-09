.class Lcom/apicloud/a/c/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/h$2;->a:Lcom/apicloud/a/c/h;

    iput-object p2, p0, Lcom/apicloud/a/c/h$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/h$2;->a:Lcom/apicloud/a/c/h;

    invoke-static {v0}, Lcom/apicloud/a/c/h;->a(Lcom/apicloud/a/c/h;)Lcom/apicloud/a/c/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/c/h$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
