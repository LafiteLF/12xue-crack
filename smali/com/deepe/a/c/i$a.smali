.class abstract Lcom/deepe/a/c/i$a;
.super Lcom/deepe/a/c/a;

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/a/c/a;",
        "Ljava/util/function/Consumer<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/os/CancellationSignal;

.field final synthetic c:Lcom/deepe/a/c/i;


# direct methods
.method public constructor <init>(Lcom/deepe/a/c/i;Landroid/os/CancellationSignal;J)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/i$a;->c:Lcom/deepe/a/c/i;

    invoke-direct {p0, p3, p4}, Lcom/deepe/a/c/a;-><init>(J)V

    iput-object p2, p0, Lcom/deepe/a/c/i$a;->b:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/a/c/i$a;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "success"

    goto :goto_1

    :cond_1
    const-string v1, "location list empty."

    :goto_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/a/c/i$a;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/deepe/a/c/i$a;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/c/i$a;->b:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepe/a/c/i$a;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "timeout"

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/a/c/i$a;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    return-void
.end method
