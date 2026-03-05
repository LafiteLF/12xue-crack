.class Lcom/uzmap/pkg/b/b/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/l;->a(Landroid/app/Activity;Lcom/uzmap/pkg/b/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/uzmap/pkg/b/b/g;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/l$1;->a:Lcom/uzmap/pkg/b/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p1, "result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/b/b/l$1;->a:Lcom/uzmap/pkg/b/b/g;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/b/l;->a(Ljava/lang/String;Lcom/uzmap/pkg/b/b/g;)V

    :cond_0
    return-void
.end method
