.class Lcom/uzmap/pkg/uzcore/ak$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ak$4;->a:Lcom/uzmap/pkg/uzcore/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ak$4;->a:Lcom/uzmap/pkg/uzcore/ak;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/ak;)Lcom/uzmap/pkg/uzcore/h/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/x;->d()Lcom/uzmap/pkg/uzcore/h/m;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/ak;->a(Lcom/uzmap/pkg/uzcore/ak;Lcom/uzmap/pkg/uzcore/h/m;)V

    return-void
.end method
