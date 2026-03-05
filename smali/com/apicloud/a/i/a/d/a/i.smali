.class abstract Lcom/apicloud/a/i/a/d/a/i;
.super Ljava/lang/Object;


# static fields
.field static final b:Landroid/util/SparseIntArray;


# instance fields
.field private final a:Landroid/view/OrientationEventListener;

.field c:Landroid/view/Display;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/d/a/i;->d:I

    new-instance v0, Lcom/apicloud/a/i/a/d/a/i$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/d/a/i$1;-><init>(Lcom/apicloud/a/i/a/d/a/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/i;->a:Landroid/view/OrientationEventListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/i;->a:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/i;->c:Landroid/view/Display;

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/view/Display;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/i;->c:Landroid/view/Display;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/i;->a:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    sget-object v0, Lcom/apicloud/a/i/a/d/a/i;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/i;->b(I)V

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/i;->d:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/i;->a(I)V

    return-void
.end method
