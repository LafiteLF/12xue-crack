.class Lcom/apicloud/a/c/v$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/eclipsesource/v8/JavaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/c/v;->e(Lcom/eclipsesource/v8/V8Object;)V
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

    iput-object p1, p0, Lcom/apicloud/a/c/v$6;->a:Lcom/apicloud/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 6

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "flush"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Lcom/eclipsesource/v8/V8Array;->getObject(I)Lcom/eclipsesource/v8/V8Object;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/i/a/e/f;->a(Lcom/eclipsesource/v8/V8Object;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/c/v$6;->a:Lcom/apicloud/a/c/v;

    invoke-static {p1}, Lcom/apicloud/a/c/v;->b(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/r;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    :goto_0
    move-object v3, p1

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v4, 0x3

    if-le p1, v4, :cond_2

    invoke-virtual {p2, v4}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result p1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_2

    new-instance p1, Lcom/apicloud/a/c/f;

    invoke-direct {p1}, Lcom/apicloud/a/c/f;-><init>()V

    iget-object v5, p0, Lcom/apicloud/a/c/v$6;->a:Lcom/apicloud/a/c/v;

    invoke-static {v5}, Lcom/apicloud/a/c/v;->b(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/r;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->getValue(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/apicloud/a/c/f;->a(Ljava/lang/Object;)V

    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result p1

    const/4 v5, 0x4

    if-le p1, v5, :cond_3

    invoke-virtual {p2, v5}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result p1

    if-ne p1, v5, :cond_3

    invoke-virtual {p2, v5}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/c/v$6;->a:Lcom/apicloud/a/c/v;

    invoke-static {p1}, Lcom/apicloud/a/c/v;->c(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/s;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c/f;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/c/v$6;->a:Lcom/apicloud/a/c/v;

    invoke-static {p2}, Lcom/apicloud/a/c/v;->d(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/x;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
