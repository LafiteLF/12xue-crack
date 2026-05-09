.class public Lcom/artifex/mupdf/fitz/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# static fields
.field public static DeviceBGR:Lcom/artifex/mupdf/fitz/ColorSpace;

.field public static DeviceCMYK:Lcom/artifex/mupdf/fitz/ColorSpace;

.field public static DeviceGray:Lcom/artifex/mupdf/fitz/ColorSpace;

.field public static DeviceRGB:Lcom/artifex/mupdf/fitz/ColorSpace;


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    .line 35
    new-instance v0, Lcom/artifex/mupdf/fitz/ColorSpace;

    invoke-static {}, Lcom/artifex/mupdf/fitz/ColorSpace;->nativeDeviceGray()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/artifex/mupdf/fitz/ColorSpace;-><init>(J)V

    sput-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceGray:Lcom/artifex/mupdf/fitz/ColorSpace;

    .line 36
    new-instance v0, Lcom/artifex/mupdf/fitz/ColorSpace;

    invoke-static {}, Lcom/artifex/mupdf/fitz/ColorSpace;->nativeDeviceRGB()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/artifex/mupdf/fitz/ColorSpace;-><init>(J)V

    sput-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceRGB:Lcom/artifex/mupdf/fitz/ColorSpace;

    .line 37
    new-instance v0, Lcom/artifex/mupdf/fitz/ColorSpace;

    invoke-static {}, Lcom/artifex/mupdf/fitz/ColorSpace;->nativeDeviceBGR()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/artifex/mupdf/fitz/ColorSpace;-><init>(J)V

    sput-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceBGR:Lcom/artifex/mupdf/fitz/ColorSpace;

    .line 38
    new-instance v0, Lcom/artifex/mupdf/fitz/ColorSpace;

    invoke-static {}, Lcom/artifex/mupdf/fitz/ColorSpace;->nativeDeviceCMYK()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/artifex/mupdf/fitz/ColorSpace;-><init>(J)V

    sput-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceCMYK:Lcom/artifex/mupdf/fitz/ColorSpace;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    return-void
.end method

.method protected static fromPointer(J)Lcom/artifex/mupdf/fitz/ColorSpace;
    .locals 3

    .line 28
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceGray:Lcom/artifex/mupdf/fitz/ColorSpace;

    iget-wide v1, v0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceRGB:Lcom/artifex/mupdf/fitz/ColorSpace;

    iget-wide v1, v0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    return-object v0

    .line 30
    :cond_1
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceBGR:Lcom/artifex/mupdf/fitz/ColorSpace;

    iget-wide v1, v0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_2

    return-object v0

    .line 31
    :cond_2
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceCMYK:Lcom/artifex/mupdf/fitz/ColorSpace;

    iget-wide v1, v0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    cmp-long v1, p0, v1

    if-nez v1, :cond_3

    return-object v0

    .line 32
    :cond_3
    new-instance v0, Lcom/artifex/mupdf/fitz/ColorSpace;

    invoke-direct {v0, p0, p1}, Lcom/artifex/mupdf/fitz/ColorSpace;-><init>(J)V

    return-object v0
.end method

.method private static native nativeDeviceBGR()J
.end method

.method private static native nativeDeviceCMYK()J
.end method

.method private static native nativeDeviceGray()J
.end method

.method private static native nativeDeviceRGB()J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/ColorSpace;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/ColorSpace;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getNumberOfComponents()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceGray:Lcom/artifex/mupdf/fitz/ColorSpace;

    if-ne p0, v0, :cond_0

    const-string v0, "DeviceGray"

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceRGB:Lcom/artifex/mupdf/fitz/ColorSpace;

    if-ne p0, v0, :cond_1

    const-string v0, "DeviceRGB"

    return-object v0

    .line 45
    :cond_1
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceBGR:Lcom/artifex/mupdf/fitz/ColorSpace;

    if-ne p0, v0, :cond_2

    const-string v0, "DeviceBGR"

    return-object v0

    .line 46
    :cond_2
    sget-object v0, Lcom/artifex/mupdf/fitz/ColorSpace;->DeviceCMYK:Lcom/artifex/mupdf/fitz/ColorSpace;

    if-ne p0, v0, :cond_3

    const-string v0, "DeviceCMYK"

    return-object v0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSpace("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/ColorSpace;->getNumberOfComponents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
