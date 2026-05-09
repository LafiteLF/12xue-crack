.class Lcom/apicloud/a/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/a;->a(Lcom/eclipsesource/v8/V8Object;)V
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

    iput-object p1, p0, Lcom/apicloud/a/c/a$1;->a:Lcom/apicloud/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/c/a$1;->a:Lcom/apicloud/a/c/a;

    invoke-static {p1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getInteger(I)I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/a/c/a$1;->a:Lcom/apicloud/a/c/a;

    invoke-static {p2}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/apicloud/a/f/a/a;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
