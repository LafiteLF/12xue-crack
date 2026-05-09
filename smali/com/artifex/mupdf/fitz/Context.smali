.class public Lcom/artifex/mupdf/fitz/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static inited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native gprfSupportedNative()I
.end method

.method public static init()V
    .locals 2

    .line 23
    sget-boolean v0, Lcom/artifex/mupdf/fitz/Context;->inited:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/artifex/mupdf/fitz/Context;->inited:Z

    :try_start_0
    const-string v0, "mupdf_java"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "mupdf_java64"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "mupdf_java32"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    :goto_0
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->initNative()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot initialize mupdf library"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method private static native initNative()I
.end method
