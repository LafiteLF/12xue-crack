.class Lcom/apicloud/a/f/f/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/f/f/d;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/f/f/d;

.field private final synthetic b:Lcom/apicloud/a/f/f/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/f/f/d;Lcom/apicloud/a/f/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/f/f/d$1;->a:Lcom/apicloud/a/f/f/d;

    iput-object p2, p0, Lcom/apicloud/a/f/f/d$1;->b:Lcom/apicloud/a/f/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/f/f/d$1;->a:Lcom/apicloud/a/f/f/d;

    iget-object v1, p0, Lcom/apicloud/a/f/f/d$1;->b:Lcom/apicloud/a/f/f/a;

    invoke-static {v0, v1}, Lcom/apicloud/a/f/f/d;->a(Lcom/apicloud/a/f/f/d;Lcom/apicloud/a/f/f/a;)V

    return-void
.end method
