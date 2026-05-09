.class abstract Lcom/deepe/e/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/e/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/deepe/e/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->context()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
.end method

.method a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method b()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;
    .locals 1

    iget-object v0, p0, Lcom/deepe/e/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    return-object v0
.end method
