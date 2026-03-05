.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$40;
.super Lcom/uzmap/pkg/uzcore/g/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->aM(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$40;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$40;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/g/b$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$40;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
