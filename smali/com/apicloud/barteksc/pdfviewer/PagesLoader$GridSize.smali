.class Lcom/apicloud/barteksc/pdfviewer/PagesLoader$GridSize;
.super Ljava/lang/Object;
.source "PagesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/barteksc/pdfviewer/PagesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridSize"
.end annotation


# instance fields
.field cols:I

.field rows:I

.field final synthetic this$0:Lcom/apicloud/barteksc/pdfviewer/PagesLoader;


# direct methods
.method private constructor <init>(Lcom/apicloud/barteksc/pdfviewer/PagesLoader;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PagesLoader$GridSize;->this$0:Lcom/apicloud/barteksc/pdfviewer/PagesLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/barteksc/pdfviewer/PagesLoader;Lcom/apicloud/barteksc/pdfviewer/PagesLoader$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/apicloud/barteksc/pdfviewer/PagesLoader$GridSize;-><init>(Lcom/apicloud/barteksc/pdfviewer/PagesLoader;)V

    return-void
.end method
