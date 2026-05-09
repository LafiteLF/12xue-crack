.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/external/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "year"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "month"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "day"

    invoke-virtual {v0, p1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "hour"

    invoke-virtual {v0, p1, p4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "minute"

    invoke-virtual {v0, p1, p5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Landroid/app/AlertDialog;)V

    return-void
.end method
