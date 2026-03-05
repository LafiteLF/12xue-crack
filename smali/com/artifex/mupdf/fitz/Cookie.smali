.class public Lcom/artifex/mupdf/fitz/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/artifex/mupdf/fitz/Cookie;->newNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Cookie;->pointer:J

    return-void
.end method

.method private native newNative()J
.end method


# virtual methods
.method public native abort()V
.end method

.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Cookie;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Cookie;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method
