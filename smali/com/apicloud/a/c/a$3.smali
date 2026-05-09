.class Lcom/apicloud/a/c/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/a;->c(Lcom/eclipsesource/v8/V8Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/c/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/a$3;->a:Lcom/apicloud/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lcom/apicloud/a/c/a$3;->a:Lcom/apicloud/a/c/a;

    invoke-static {p1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/apicloud/a/c/a$3;->a:Lcom/apicloud/a/c/a;

    invoke-static {v2}, Lcom/apicloud/a/c/a;->b(Lcom/apicloud/a/c/a;)Lcom/eclipsesource/v8/utils/TypeAdapter;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lcom/apicloud/a/c/a$3;->a:Lcom/apicloud/a/c/a;

    invoke-static {v1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object v1

    invoke-static {p2}, Lcom/apicloud/a/c;->a(Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2}, Lcom/apicloud/a/f/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
