.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1014
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0

    .line 1018
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1019
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method private getErrorCode(I)J
    .locals 2

    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    :cond_1
    int-to-long v0, p1

    return-wide v0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-wide/16 v0, 0x3e8

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x3ef

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x3ee

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x3ed

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x3ec

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x3ea

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x3e9

    return-wide v0

    :pswitch_7
    const-wide/16 v0, 0x3f0

    return-wide v0

    :pswitch_8
    const-wide/16 v0, 0x3f1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1e8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 4

    const-string v0, "destination"

    .line 1125
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string v0, "hint"

    .line 1128
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "_data"

    .line 1133
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1137
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "_id"

    .line 1141
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1142
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPausedReason(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_0
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2

    .line 1171
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1173
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 1176
    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingLong(Ljava/lang/String;)J
    .locals 2

    .line 1238
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1242
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isLongColumn(Ljava/lang/String;)Z
    .locals 1

    .line 1069
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$300()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private translateLong(Ljava/lang/String;)J
    .locals 2

    .line 1146
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "_id"

    .line 1151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "total_size"

    .line 1154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "total_bytes"

    .line 1155
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-string v0, "status"

    .line 1157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1158
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_3
    const-string v1, "reason"

    .line 1160
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1161
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    :cond_4
    const-string v0, "bytes_so_far"

    .line 1163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "current_bytes"

    .line 1164
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const-string p1, "lastmod"

    .line 1167
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private translateStatus(I)I
    .locals 1

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x10

    return p1

    :pswitch_0
    const/4 p1, 0x4

    return p1

    :cond_0
    :pswitch_1
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private translateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1098
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->isLongColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "title"

    .line 1101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "description"

    .line 1104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "uri"

    .line 1107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1108
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "icon_uri"

    .line 1110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1111
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "media_type"

    .line 1113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "mimetype"

    .line 1114
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "mediaprovider_uri"

    .line 1116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1117
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getUnderlyingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1121
    :cond_6
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 0

    .line 1060
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1055
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 1024
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1029
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1031
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 4

    .line 1038
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1043
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 1040
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid column index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " columns exist"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .line 1048
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1049
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1065
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 1074
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getDouble(I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1079
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1084
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1089
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 1094
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$CursorTranslator;->translateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
