.class Lcom/apicloud/a/i/a/ae/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:I

.field c:I

.field d:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/ae/a$a;)V
    .locals 1

    iget v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iget v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget p1, p1, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    return-void
.end method
