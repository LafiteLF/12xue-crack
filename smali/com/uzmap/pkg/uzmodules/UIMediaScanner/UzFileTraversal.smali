.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;
.super Ljava/lang/Object;
.source "UzFileTraversal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fileInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public filecontent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal$1;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal$1;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->fileInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 30
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->fileInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
