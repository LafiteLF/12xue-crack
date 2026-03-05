.class public Lcom/apicloud/a/g/l;
.super Ljava/lang/Number;


# static fields
.field private static final serialVersionUID:J = -0x6ca7a1b975c166abL


# instance fields
.field private a:Ljava/lang/Number;

.field private b:I

.field private c:I

.field private d:[Lcom/apicloud/a/g/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/g/l;->b:I

    iput-object p1, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    iput p2, p0, Lcom/apicloud/a/g/l;->c:I

    return-void
.end method

.method public static b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;
    .locals 2

    new-instance v0, Lcom/apicloud/a/g/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Number;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    return-void
.end method

.method public a()[Lcom/apicloud/a/g/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/g/l;->d:[Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/g/l;->d:[Lcom/apicloud/a/g/l;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/l;->d:[Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/g/l;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/g/l;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/g/l;->b:I

    return v0
.end method

.method public final doubleValue()D
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/apicloud/a/g/l;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/apicloud/a/g/l;

    iget v0, p1, Lcom/apicloud/a/g/l;->c:I

    iget v1, p0, Lcom/apicloud/a/g/l;->c:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final floatValue()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final intValue()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final longValue()J
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/g/l;->a:Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/apicloud/a/g/l;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "value=%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/a/g/l;->b:I

    invoke-static {v1}, Lcom/apicloud/a/g/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
