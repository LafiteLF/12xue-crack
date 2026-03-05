.class Lcom/uzmap/pkg/uzcore/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/sdk/OptResult$ResultReceiver;


# instance fields
.field private final a:Lcom/uzmap/pkg/uzcore/g;

.field private final b:Lcom/uzmap/pkg/uzcore/d/c;

.field private final c:Lcom/uzmap/pkg/uzcore/a;

.field private final d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/am;->a:Lcom/uzmap/pkg/uzcore/g;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/am;->b:Lcom/uzmap/pkg/uzcore/d/c;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/am;->c:Lcom/uzmap/pkg/uzcore/a;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/am;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    return-void
.end method

.method static a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)Lcom/deepe/sdk/OptResult;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/am;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/am;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    new-instance p0, Lcom/deepe/sdk/OptResult;

    invoke-direct {p0, v0}, Lcom/deepe/sdk/OptResult;-><init>(Lcom/deepe/sdk/OptResult$ResultReceiver;)V

    return-object p0
.end method


# virtual methods
.method public onComplete(Lcom/deepe/sdk/OptResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/deepe/sdk/OptResult;->getResult()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/am;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/am;->b:Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/am;->c:Lcom/uzmap/pkg/uzcore/a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/am;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    goto :goto_0

    :cond_0
    const-string p1, "WinCreateReceiver be ignore."

    invoke-static {p1}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
