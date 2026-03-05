.class Lcom/apicloud/a/c/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/h;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/h$1;->a:Lcom/apicloud/a/c/h;

    iput-object p2, p0, Lcom/apicloud/a/c/h$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/apicloud/a/c/h$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/c/h$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/c/h$1;->a:Lcom/apicloud/a/c/h;

    invoke-static {v0}, Lcom/apicloud/a/c/h;->a(Lcom/apicloud/a/c/h;)Lcom/apicloud/a/c/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/c/h$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/apicloud/a/c/h$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/a/c/h$1;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
