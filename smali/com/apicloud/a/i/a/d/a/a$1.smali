.class Lcom/apicloud/a/i/a/d/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/apicloud/a/i/a/d/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/apicloud/a/i/a/d/a/a;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/d/a/a;->a(II)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lcom/apicloud/a/i/a/d/a/a;
    .locals 0

    new-array p1, p1, [Lcom/apicloud/a/i/a/d/a/a;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/a$1;->a(Landroid/os/Parcel;)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/a$1;->a(I)[Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p1

    return-object p1
.end method
