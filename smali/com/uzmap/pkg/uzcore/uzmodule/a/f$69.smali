.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$69;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->bD(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$69;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$69;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    if-ltz p2, :cond_0

    const-string p1, "progress"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "title"

    invoke-virtual {v0, p1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "url"

    invoke-virtual {v0, p1, p4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$69;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
