.class Lcom/uzmap/pkg/uzcore/ak$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/ak;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ak$5;->a:Lcom/uzmap/pkg/uzcore/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak$5;->a:Lcom/uzmap/pkg/uzcore/ak;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/ak;->b(Lcom/uzmap/pkg/uzcore/ak;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ak$5;->a:Lcom/uzmap/pkg/uzcore/ak;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/ak;Landroid/view/View;)V

    return-void
.end method
