.class Lcom/uzmap/pkg/b/b/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/h;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/h;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "ip"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "port"

    invoke-virtual {v0, v1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "connected"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {v0, v1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->b(Lcom/uzmap/pkg/b/b/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v2

    :goto_0
    iget-object v4, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v4}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt p1, v4, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v4}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iget-object p2, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p2}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    sub-int/2addr p2, v3

    if-eq p1, p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "ws://"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v4}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;

    move-result-object v4

    add-int/2addr p1, v3

    invoke-virtual {v4, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/b/b/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    :goto_3
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->c(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$3;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->c(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    move-result-object p1

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    :cond_4
    return-void
.end method
