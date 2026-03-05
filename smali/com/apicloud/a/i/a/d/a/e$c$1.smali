.class Lcom/apicloud/a/i/a/d/a/e$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/d/a/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/apicloud/a/i/a/d/a/e$c;",
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
.method public a(Landroid/os/Parcel;)Lcom/apicloud/a/i/a/d/a/e$c;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/d/a/e$c$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/apicloud/a/i/a/d/a/e$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/apicloud/a/i/a/d/a/e$c;
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/d/a/e$c;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/a/i/a/d/a/e$c;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/apicloud/a/i/a/d/a/e$c;
    .locals 0

    new-array p1, p1, [Lcom/apicloud/a/i/a/d/a/e$c;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/e$c$1;->a(Landroid/os/Parcel;)Lcom/apicloud/a/i/a/d/a/e$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/d/a/e$c$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/apicloud/a/i/a/d/a/e$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/e$c$1;->a(I)[Lcom/apicloud/a/i/a/d/a/e$c;

    move-result-object p1

    return-object p1
.end method
