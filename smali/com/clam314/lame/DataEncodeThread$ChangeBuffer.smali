.class Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;
.super Ljava/lang/Object;
.source "DataEncodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clam314/lame/DataEncodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeBuffer"
.end annotation


# instance fields
.field private rawData:[S

.field private readSize:I

.field final synthetic this$0:Lcom/clam314/lame/DataEncodeThread;


# direct methods
.method public constructor <init>(Lcom/clam314/lame/DataEncodeThread;[SI)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->this$0:Lcom/clam314/lame/DataEncodeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p2}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->rawData:[S

    .line 155
    iput p3, p0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->readSize:I

    return-void
.end method


# virtual methods
.method public getData()[S
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->rawData:[S

    return-object v0
.end method

.method public getReadSize()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->readSize:I

    return v0
.end method
