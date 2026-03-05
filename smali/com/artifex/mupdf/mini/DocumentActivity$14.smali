.class Lcom/artifex/mupdf/mini/DocumentActivity$14;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->askPassword(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$14;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 319
    iget-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$14;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->finish()V

    return-void
.end method
