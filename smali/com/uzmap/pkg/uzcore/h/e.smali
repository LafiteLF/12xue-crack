.class public Lcom/uzmap/pkg/uzcore/h/e;
.super Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/h/e$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->a()Lcom/uzmap/pkg/uzcore/uzmodule/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRefreshingThreshold(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object p1

    iget p1, p1, Lcom/uzmap/pkg/uzcore/z;->e:I

    return p1
.end method

.method public getViewHeight(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object p1

    iget p1, p1, Lcom/uzmap/pkg/uzcore/z;->a:I

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public isDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/e$a;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;-><init>(Lcom/uzmap/pkg/uzcore/h/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onForceRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->c()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->b()V

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->a()V

    :cond_0
    return-void
.end method

.method public onScrollY(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;->b(I)V

    :cond_0
    return-void
.end method

.method public onSetRefreshInfo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/p;)V

    :cond_0
    return-void
.end method

.method public onSetVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStateChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e;->a:Lcom/uzmap/pkg/uzcore/h/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(I)V

    :cond_0
    return-void
.end method
