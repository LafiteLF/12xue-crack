.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal$1;
.super Ljava/lang/Object;
.source "UzFileTraversal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;
    .locals 2

    .line 44
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filename:Ljava/lang/String;

    .line 46
    const-class v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    .line 47
    const-class v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->fileInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal$1;->createFromParcel(Landroid/os/Parcel;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal$1;->newArray(I)[Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    move-result-object p1

    return-object p1
.end method
