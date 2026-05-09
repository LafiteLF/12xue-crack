.class Lcom/uzmap/pkg/uzcore/external/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/c;->f(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/c$8;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/external/c$8;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;

    check-cast p1, Lcom/deepe/a/g/a;

    invoke-virtual {p1}, Lcom/deepe/a/g/a;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p2, v0, p1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;ILjava/lang/String;)V

    return-void
.end method
