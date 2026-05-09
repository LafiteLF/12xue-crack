.class public Lcom/apicloud/c/a/a/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final d:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/apicloud/c/a/a/f$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/f$d$1;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/f$d$1;-><init>()V

    sput-object v0, Lcom/apicloud/c/a/a/f$d;->d:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/apicloud/c/a/a/f$d;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/apicloud/c/a/a/f$d;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/apicloud/c/a/a/f$d;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/c/a/a/f$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/apicloud/c/a/a/f$d;->a:I

    iput v0, p0, Lcom/apicloud/c/a/a/f$d;->a:I

    iget v0, p1, Lcom/apicloud/c/a/a/f$d;->b:I

    iput v0, p0, Lcom/apicloud/c/a/a/f$d;->b:I

    iget-boolean p1, p1, Lcom/apicloud/c/a/a/f$d;->c:Z

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/f$d;->c:Z

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/f$d;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/c/a/a/f$d;->a:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/apicloud/c/a/a/f$d;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/apicloud/c/a/a/f$d;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/apicloud/c/a/a/f$d;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
