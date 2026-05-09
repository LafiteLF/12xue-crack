.class Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;
.super Ljava/lang/Object;
.source "ChoosePDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/ChoosePDFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileEntity"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private flie:Ljava/io/File;

.field final synthetic this$0:Lcom/artifex/mupdf/ChoosePDFActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/ChoosePDFActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;->this$0:Lcom/artifex/mupdf/ChoosePDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlie()Ljava/io/File;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;->flie:Ljava/io/File;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFlie(Ljava/io/File;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/artifex/mupdf/ChoosePDFActivity$FileEntity;->flie:Ljava/io/File;

    return-void
.end method
