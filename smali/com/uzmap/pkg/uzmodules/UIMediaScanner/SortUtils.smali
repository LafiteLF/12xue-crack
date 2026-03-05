.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;
.super Ljava/lang/Object;
.source "SortUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 91
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 95
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 96
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p0, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static ascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 44
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v3, v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 48
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 49
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p0, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static dascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v3, v0

    move v2, v1

    .line 68
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 75
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p0, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v6, v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static dascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v3, v0

    move v2, v1

    .line 22
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 29
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p0, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v6, v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
