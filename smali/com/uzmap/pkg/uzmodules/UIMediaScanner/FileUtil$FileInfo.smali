.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public isAssert:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;->filePath:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;->isAssert:Z

    return-void
.end method
