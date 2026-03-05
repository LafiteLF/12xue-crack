.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static SORT_BY_ASC:I = 0x3

.field public static SORT_BY_DESC:I = 0x2

.field public static SORT_BY_SIZE:I = 0x1

.field public static SORT_BY_TIME:I = 0x0

.field public static SORT_FLAG:I = 0x0

.field public static SORT_LAW:I = 0x3

.field private static final serialVersionUID:J = -0x1be9d8dafc69041fL


# instance fields
.field public groupName:Ljava/lang/String;

.field public imgId:I

.field public isChecked:Z

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:J

.field public thumbImgPath:Ljava/lang/String;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
