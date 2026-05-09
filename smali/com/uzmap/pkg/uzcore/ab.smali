.class public Lcom/uzmap/pkg/uzcore/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/f/h;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ab;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ab;->a:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/deepe/c/f/c;->a(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/deepe/c/f/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ab;->a:Landroid/app/Activity;

    invoke-static {v1, v0, p1, p2}, Lcom/deepe/c/f/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/util/List;)V

    :cond_0
    return-void
.end method
