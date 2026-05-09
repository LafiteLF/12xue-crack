.class Lcom/apicloud/c/a/a/j$r$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/apicloud/c/a/a/j$r;
    .locals 2

    new-instance v0, Lcom/apicloud/c/a/a/j$r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/apicloud/c/a/a/j$r;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/apicloud/c/a/a/j$r;
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/j$r;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/c/a/a/j$r;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/apicloud/c/a/a/j$r;
    .locals 0

    new-array p1, p1, [Lcom/apicloud/c/a/a/j$r;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$r$1;->a(Landroid/os/Parcel;)Lcom/apicloud/c/a/a/j$r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$r$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/apicloud/c/a/a/j$r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$r$1;->a(I)[Lcom/apicloud/c/a/a/j$r;

    move-result-object p1

    return-object p1
.end method
