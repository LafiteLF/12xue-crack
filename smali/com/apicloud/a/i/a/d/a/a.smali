.class public Lcom/apicloud/a/i/a/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/apicloud/a/i/a/d/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/a;->b:Landroid/util/SparseArray;

    new-instance v0, Lcom/apicloud/a/i/a/d/a/a$1;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/d/a/a$1;-><init>()V

    sput-object v0, Lcom/apicloud/a/i/a/d/a/a;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    iput p2, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    return-void
.end method

.method public static a(II)Lcom/apicloud/a/i/a/d/a/a;
    .locals 2

    invoke-static {p0, p1}, Lcom/apicloud/a/i/a/d/a/a;->b(II)I

    move-result v0

    div-int/2addr p0, v0

    div-int/2addr p1, v0

    sget-object v0, Lcom/apicloud/a/i/a/d/a/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/a/a;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/d/a/a;-><init>(II)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/apicloud/a/i/a/d/a/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/apicloud/a/i/a/d/a/a;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/a/d/a/a;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a/a;
    .locals 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "Malformed aspect ratio: "

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/apicloud/a/i/a/d/a/a;->a(II)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-nez p0, :cond_0

    return p1

    :cond_0
    rem-int/2addr p1, p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a/a;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/i/a/d/a/a;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()F
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/a;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/a;->a()F

    move-result v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/a;->a()F

    move-result p1

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/k;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/d/a/a;->b(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result p1

    div-int/2addr p1, v0

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/a;->a(Lcom/apicloud/a/i/a/d/a/a;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/apicloud/a/i/a/d/a/a;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/apicloud/a/i/a/d/a/a;

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    iget v3, p1, Lcom/apicloud/a/i/a/d/a/a;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    iget p1, p1, Lcom/apicloud/a/i/a/d/a/a;->d:I

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/apicloud/a/i/a/d/a/a;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/apicloud/a/i/a/d/a/a;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
