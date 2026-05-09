.class public Lcom/apicloud/a/g/g;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/apicloud/a/c;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/apicloud/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/g;->a:Lcom/apicloud/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/g;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/apicloud/a/g/f;)Lcom/apicloud/a/g/g;
    .locals 4

    new-instance v0, Lcom/apicloud/a/g/g;

    invoke-direct {v0}, Lcom/apicloud/a/g/g;-><init>()V

    invoke-virtual {p1}, Lcom/apicloud/a/g/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/f;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/apicloud/a/g/g;->a(Ljava/lang/Integer;Lcom/apicloud/a/c;)V

    :cond_0
    new-instance v2, Lcom/apicloud/a/g/g$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/apicloud/a/g/g$1;-><init>(Ljava/lang/String;Lcom/apicloud/a/g/f;Ljava/lang/String;Lcom/apicloud/a/g/g;)V

    invoke-static {v2}, Lcom/apicloud/a/g/b/a;->a(Lcom/apicloud/a/g/b/a$c;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/g;->a(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/apicloud/a/c;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/g/g;->a(I)Lcom/apicloud/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/apicloud/a/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public a(Lcom/apicloud/a/g/g;)V
    .locals 4

    iget-object p1, p1, Lcom/apicloud/a/g/g;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apicloud/a/c;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/apicloud/a/g/g;->a(Ljava/lang/Integer;Lcom/apicloud/a/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Lcom/apicloud/a/c;)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/g/g;->a(I)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/apicloud/a/c;->a(Lcom/apicloud/a/c;)V

    return-void

    :cond_1
    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0, p2}, Lcom/apicloud/a/c;-><init>(Lcom/apicloud/a/c;)V

    iget-object p2, p0, Lcom/apicloud/a/g/g;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/g;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 1

    const v0, 0x10100a4

    invoke-virtual {p0, v0}, Lcom/apicloud/a/g/g;->a(I)Lcom/apicloud/a/c;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/g;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
