.class final enum Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONE:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

.field private static final synthetic ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    const/4 v1, 0x0

    const-string v2, "PREVIEW"

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    const/4 v3, 0x2

    const-string v4, "DONE"

    invoke-direct {v0, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 51
    sget-object v5, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 1
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;
    .locals 4

    .line 1
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->ENUM$VALUES:[Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
