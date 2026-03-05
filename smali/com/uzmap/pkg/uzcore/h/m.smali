.class public Lcom/uzmap/pkg/uzcore/h/m;
.super Lcom/uzmap/pkg/uzcore/h/i;


# instance fields
.field public j:Z

.field public k:I

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/uzmodule/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/h/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/h/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/i;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    iget-object v3, v3, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/m;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
