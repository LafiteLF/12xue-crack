.class public Lcom/apicloud/pdfReader/FileUtils$FileInfo;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/pdfReader/FileUtils;
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->filePath:Ljava/lang/String;

    .line 81
    iput-boolean p2, p0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;->isAssert:Z

    return-void
.end method
