.class Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eclipsesource/v8/V8TypedArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V8ArrayData"
.end annotation


# instance fields
.field private buffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

.field private offset:I

.field private size:I

.field private type:I


# direct methods
.method public constructor <init>(Lcom/eclipsesource/v8/V8ArrayBuffer;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->buffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

    iput p2, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->offset:I

    iput p3, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->size:I

    iput p4, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->type:I

    return-void
.end method

.method static synthetic access$0(Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;)I
    .locals 0

    iget p0, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->type:I

    return p0
.end method

.method static synthetic access$1(Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 0

    iget-object p0, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->buffer:Lcom/eclipsesource/v8/V8ArrayBuffer;

    return-object p0
.end method

.method static synthetic access$2(Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;)I
    .locals 0

    iget p0, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->offset:I

    return p0
.end method

.method static synthetic access$3(Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;)I
    .locals 0

    iget p0, p0, Lcom/eclipsesource/v8/V8TypedArray$V8ArrayData;->size:I

    return p0
.end method
