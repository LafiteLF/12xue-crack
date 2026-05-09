.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlSelection"
.end annotation


# instance fields
.field public mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs appendClause(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 146
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    .line 147
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getParameters()[Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
