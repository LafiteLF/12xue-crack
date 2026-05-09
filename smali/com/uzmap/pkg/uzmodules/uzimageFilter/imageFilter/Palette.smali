.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# instance fields
.field public Blue:[I

.field public Green:[I

.field public Length:I

.field public Red:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Length:I

    .line 31
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Red:[I

    .line 32
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Green:[I

    .line 33
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Blue:[I

    return-void
.end method
