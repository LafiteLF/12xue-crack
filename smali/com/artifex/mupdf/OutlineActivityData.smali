.class public Lcom/artifex/mupdf/OutlineActivityData;
.super Ljava/lang/Object;
.source "OutlineActivityData.java"


# static fields
.field private static singleton:Lcom/artifex/mupdf/OutlineActivityData;


# instance fields
.field public items:[Lcom/artifex/mupdf/OutlineItem;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/artifex/mupdf/OutlineActivityData;
    .locals 1

    .line 13
    sget-object v0, Lcom/artifex/mupdf/OutlineActivityData;->singleton:Lcom/artifex/mupdf/OutlineActivityData;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/artifex/mupdf/OutlineActivityData;

    invoke-direct {v0}, Lcom/artifex/mupdf/OutlineActivityData;-><init>()V

    sput-object v0, Lcom/artifex/mupdf/OutlineActivityData;->singleton:Lcom/artifex/mupdf/OutlineActivityData;

    .line 15
    :cond_0
    sget-object v0, Lcom/artifex/mupdf/OutlineActivityData;->singleton:Lcom/artifex/mupdf/OutlineActivityData;

    return-object v0
.end method

.method public static set(Lcom/artifex/mupdf/OutlineActivityData;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/artifex/mupdf/OutlineActivityData;->singleton:Lcom/artifex/mupdf/OutlineActivityData;

    return-void
.end method
