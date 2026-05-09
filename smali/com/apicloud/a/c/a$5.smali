.class Lcom/apicloud/a/c/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/a;->e(Lcom/eclipsesource/v8/V8Object;)V
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

    iput-object p1, p0, Lcom/apicloud/a/c/a$5;->a:Lcom/apicloud/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/c/a$5;->a:Lcom/apicloud/a/c/a;

    invoke-static {p1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/c/a$5;->a:Lcom/apicloud/a/c/a;

    invoke-static {p2}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/apicloud/a/f/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    iget-object p2, p0, Lcom/apicloud/a/c/a$5;->a:Lcom/apicloud/a/c/a;

    invoke-static {p2, p1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/c/a;Ljava/lang/String;)V

    return-object v0
.end method
