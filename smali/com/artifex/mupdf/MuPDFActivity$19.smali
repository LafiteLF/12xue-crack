.class Lcom/artifex/mupdf/MuPDFActivity$19;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->search(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$19;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 773
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$19;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/MuPDFActivity;->killSearch()V

    return-void
.end method
