.class Lcom/apicloud/c/a/a/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/apicloud/c/a/a/j$w;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j$w;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/c$b;->a:Lcom/apicloud/c/a/a/j$w;

    iput p2, p0, Lcom/apicloud/c/a/a/c$b;->b:I

    iput p3, p0, Lcom/apicloud/c/a/a/c$b;->c:I

    iput p4, p0, Lcom/apicloud/c/a/a/c$b;->d:I

    iput p5, p0, Lcom/apicloud/c/a/a/c$b;->e:I

    return-void
.end method
