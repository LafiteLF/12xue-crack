.class Lcom/uzmap/pkg/uzcore/h/g$1;
.super Lcom/uzmap/pkg/uzcore/h/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/g;->a(Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:[Ljava/lang/Boolean;


# direct methods
.method constructor <init>([Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/g$1;->a:[Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 3

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/g;->b(Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/g$1;->a:[Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v0

    return v1

    :cond_0
    return v0
.end method
