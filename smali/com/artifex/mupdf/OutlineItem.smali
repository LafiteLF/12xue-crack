.class public Lcom/artifex/mupdf/OutlineItem;
.super Ljava/lang/Object;
.source "OutlineItem.java"


# instance fields
.field public final level:I

.field public final page:I

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/artifex/mupdf/OutlineItem;->level:I

    .line 10
    iput-object p2, p0, Lcom/artifex/mupdf/OutlineItem;->title:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/artifex/mupdf/OutlineItem;->page:I

    return-void
.end method
