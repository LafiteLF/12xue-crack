.class public Lcom/uzmap/pkg/uzcore/h/l;
.super Lcom/uzmap/pkg/uzcore/h/i;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Lcom/uzmap/pkg/uzcore/h/j;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/h/k;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/h/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/i;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
