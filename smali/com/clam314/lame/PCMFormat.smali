.class public final enum Lcom/clam314/lame/PCMFormat;
.super Ljava/lang/Enum;
.source "PCMFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/clam314/lame/PCMFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/clam314/lame/PCMFormat;

.field public static final enum PCM_16BIT:Lcom/clam314/lame/PCMFormat;

.field public static final enum PCM_8BIT:Lcom/clam314/lame/PCMFormat;


# instance fields
.field private audioFormat:I

.field private bytesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/clam314/lame/PCMFormat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PCM_8BIT"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/clam314/lame/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/clam314/lame/PCMFormat;->PCM_8BIT:Lcom/clam314/lame/PCMFormat;

    .line 11
    new-instance v0, Lcom/clam314/lame/PCMFormat;

    const/4 v3, 0x2

    const-string v4, "PCM_16BIT"

    invoke-direct {v0, v4, v2, v3, v3}, Lcom/clam314/lame/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/clam314/lame/PCMFormat;->PCM_16BIT:Lcom/clam314/lame/PCMFormat;

    new-array v3, v3, [Lcom/clam314/lame/PCMFormat;

    .line 9
    sget-object v4, Lcom/clam314/lame/PCMFormat;->PCM_8BIT:Lcom/clam314/lame/PCMFormat;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/clam314/lame/PCMFormat;->$VALUES:[Lcom/clam314/lame/PCMFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/clam314/lame/PCMFormat;->bytesPerFrame:I

    .line 18
    iput p4, p0, Lcom/clam314/lame/PCMFormat;->audioFormat:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clam314/lame/PCMFormat;
    .locals 1

    .line 9
    const-class v0, Lcom/clam314/lame/PCMFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clam314/lame/PCMFormat;

    return-object p0
.end method

.method public static values()[Lcom/clam314/lame/PCMFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/clam314/lame/PCMFormat;->$VALUES:[Lcom/clam314/lame/PCMFormat;

    invoke-virtual {v0}, [Lcom/clam314/lame/PCMFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/clam314/lame/PCMFormat;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/clam314/lame/PCMFormat;->audioFormat:I

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/clam314/lame/PCMFormat;->bytesPerFrame:I

    return v0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/clam314/lame/PCMFormat;->audioFormat:I

    return-void
.end method

.method public setBytesPerFrame(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/clam314/lame/PCMFormat;->bytesPerFrame:I

    return-void
.end method
