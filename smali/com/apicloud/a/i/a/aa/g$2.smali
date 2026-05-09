.class Lcom/apicloud/a/i/a/aa/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/apicloud/a/i/a/aa/f;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/aa/f;II)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/g$2;->a:Lcom/apicloud/a/i/a/aa/f;

    iput p2, p0, Lcom/apicloud/a/i/a/aa/g$2;->b:I

    iput p3, p0, Lcom/apicloud/a/i/a/aa/g$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/g$2;->a:Lcom/apicloud/a/i/a/aa/f;

    iget v1, p0, Lcom/apicloud/a/i/a/aa/g$2;->b:I

    iget v2, p0, Lcom/apicloud/a/i/a/aa/g$2;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/a/aa/f;->a(II)V

    return-void
.end method
