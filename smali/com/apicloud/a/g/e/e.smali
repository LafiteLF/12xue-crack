.class public Lcom/apicloud/a/g/e/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "maxHeight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "maxWidth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "minHeight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->a:Ljava/util/List;

    const-string v1, "minWidth"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/e/e;->b:Ljava/util/List;

    const-string v1, "margin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->b:Ljava/util/List;

    const-string v1, "marginBottom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->b:Ljava/util/List;

    const-string v1, "marginLeft"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->b:Ljava/util/List;

    const-string v1, "marginRight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->b:Ljava/util/List;

    const-string v1, "marginTop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/e/e;->c:Ljava/util/List;

    const-string v1, "padding"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->c:Ljava/util/List;

    const-string v1, "paddingBottom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->c:Ljava/util/List;

    const-string v1, "paddingLeft"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->c:Ljava/util/List;

    const-string v1, "paddingRight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/apicloud/a/g/e/e;->c:Ljava/util/List;

    const-string v1, "paddingTop"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/apicloud/c/b/b;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/a/q/a;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p0

    return-object p0
.end method
