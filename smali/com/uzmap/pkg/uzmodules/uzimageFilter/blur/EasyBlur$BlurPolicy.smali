.class public final enum Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;
.super Ljava/lang/Enum;
.source "EasyBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

.field public static final enum FAST_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

.field public static final enum RS_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    const/4 v1, 0x0

    const-string v2, "RS_BLUR"

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    .line 30
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    const/4 v2, 0x1

    const-string v3, "FAST_BLUR"

    invoke-direct {v0, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->FAST_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    .line 28
    sget-object v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->RS_BLUR:Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    return-object p0
.end method

.method public static values()[Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;
    .locals 4

    .line 1
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;->ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    array-length v1, v0

    new-array v2, v1, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur$BlurPolicy;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
