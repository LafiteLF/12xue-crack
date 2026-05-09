.class public Lcom/artifex/mupdf/mini/OutlineActivity$Item;
.super Ljava/lang/Object;
.source "OutlineActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/mini/OutlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public page:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/artifex/mupdf/mini/OutlineActivity$Item;->title:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/artifex/mupdf/mini/OutlineActivity$Item;->page:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/artifex/mupdf/mini/OutlineActivity$Item;->title:Ljava/lang/String;

    return-object v0
.end method
