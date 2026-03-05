.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$4;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$4;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Landroid/app/AlertDialog;)V

    return-void
.end method
