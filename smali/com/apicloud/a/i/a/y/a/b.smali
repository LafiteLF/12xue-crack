.class Lcom/apicloud/a/i/a/y/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/y/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/y/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/y/a/b;->c:I

    add-int v2, v1, v0

    new-instance v3, Lcom/apicloud/a/i/a/y/a/b$a;

    invoke-direct {v3, p0, p2}, Lcom/apicloud/a/i/a/y/a/b$a;-><init>(Lcom/apicloud/a/i/a/y/a/b;Ljava/lang/String;)V

    iput v1, v3, Lcom/apicloud/a/i/a/y/a/b$a;->b:I

    iput v2, v3, Lcom/apicloud/a/i/a/y/a/b$a;->c:I

    iput p1, v3, Lcom/apicloud/a/i/a/y/a/b$a;->a:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/b;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/apicloud/a/i/a/y/a/b;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/b;->b:I

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/b;->c:I

    :cond_1
    :goto_0
    return-void
.end method
