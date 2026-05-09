.class Lcom/apicloud/a/i/a/y/a/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/y/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/h$b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/y/a/h$b;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/y/a/h$b;->a:I

    return p0
.end method
