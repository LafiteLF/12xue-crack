.class public Lcom/artifex/mupdf/fitz/Separations;
.super Ljava/lang/Object;
.source "Separations.java"


# static fields
.field public static final SEPARATION_COMPOSITE:I = 0x0

.field public static final SEPARATION_DISABLED:I = 0x2

.field public static final SEPARATION_SPOT:I = 0x1


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Separations;->pointer:J

    return-void
.end method


# virtual methods
.method public native areSeparationsControllable()Z
.end method

.method public destroy()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Separations;->finalize()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Separations;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getNumberOfSeparations()I
.end method

.method public native getSeparation(I)Lcom/artifex/mupdf/fitz/Separation;
.end method

.method public native getSeparationBehavior(I)I
.end method

.method public native setSeparationBehavior(II)V
.end method
