.class Lcom/artifex/mupdf/ProgressDialogX;
.super Landroid/app/ProgressDialog;
.source "MuPDFActivity.java"


# instance fields
.field private mCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/artifex/mupdf/ProgressDialogX;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/artifex/mupdf/ProgressDialogX;->mCancelled:Z

    .line 80
    invoke-super {p0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/artifex/mupdf/ProgressDialogX;->mCancelled:Z

    return v0
.end method
