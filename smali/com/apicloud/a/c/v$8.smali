.class Lcom/apicloud/a/c/v$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaVoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/v;->g(Lcom/eclipsesource/v8/V8Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/v;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/v$8;->a:Lcom/apicloud/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/c/v$8;->a:Lcom/apicloud/a/c/v;

    invoke-static {p1}, Lcom/apicloud/a/c/v;->b(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/r;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/c/v$8;->a:Lcom/apicloud/a/c/v;

    invoke-static {p2}, Lcom/apicloud/a/c/v;->c(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/s;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/s;->a(Ljava/lang/Object;)V

    return-void
.end method
