.class Lcom/apicloud/a/c/v$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/v;->d(Lcom/eclipsesource/v8/V8Object;)V
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

    iput-object p1, p0, Lcom/apicloud/a/c/v$5;->a:Lcom/apicloud/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 4

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/c/v$5;->a:Lcom/apicloud/a/c/v;

    invoke-static {v1}, Lcom/apicloud/a/c/v;->c(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/c/v$5;->a:Lcom/apicloud/a/c/v;

    invoke-static {p2}, Lcom/apicloud/a/c/v;->d(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/x;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
