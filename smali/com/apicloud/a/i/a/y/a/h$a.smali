.class Lcom/apicloud/a/i/a/y/a/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/y/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/h$a;->a:I

    new-instance p1, Lcom/apicloud/a/i/a/y/a/j;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/y/a/j;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/h$a;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILcom/apicloud/a/i/a/y/a/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/h$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/h$a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/h$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    return-object v0
.end method
