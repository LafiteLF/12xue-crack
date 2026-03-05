.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->i(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/i/i;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
