.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;
.super Ljava/lang/Object;
.source "ImageBlender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlendMode"
.end annotation


# static fields
.field public static Additive:I = 0x1

.field public static ColorBurn:I = 0x6

.field public static ColorDodge:I = 0x5

.field public static Darken:I = 0x8

.field public static Frame:I = 0xc

.field public static Glow:I = 0xa

.field public static Lighten:I = 0x7

.field public static LinearLight:I = 0xb

.field public static Multiply:I = 0x3

.field public static Normal:I = 0x0

.field public static Overlay:I = 0x4

.field public static Reflect:I = 0x9

.field public static Subractive:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
